#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

#include "ompdist/graph.h"
#include "ompdist/graph_gen.h"
#include "ompdist/msr.h"
#include "ompdist/utils.h"
#include "ompdist/vector.h"

#include "config.h"

#include <emmintrin.h>
#include <stdio.h>
#include <xmmintrin.h>

// #define ENERGY
// Uncomment the above line if you want to measure energy

#define START 1
#define JOIN 2

int ROOT;

typedef struct {
    int parent_label;
    int phase_discovered;
    char junk_buffer[56];
    // above is 64 bytes

    char bulk_data[128]; // 2*64
} payload;

/**
 * initialize_graph - Initializes the graph with basic data
 *
 * @g: a pointer to the graph object
 */
void initialize_graph(graph *g) {
// allocate the data field for each node
#pragma omp parallel for schedule(SCHEDULING_METHOD)
    for (int i = 0; i < g->N; i++) {
        node *cur = elem_at(&g->vertices, i);

        payload *data = malloc(sizeof(payload));

        data->parent_label = -1;
        data->phase_discovered = -1;

        cur->data = data;
    }

    // set the root node to be a part of T_1 at the beginning
    node *root = elem_at(&g->vertices, ROOT);
    payload *data = root->data;
    data->phase_discovered = 0;
}

/**
 * broadcast_start - Broadcasts the start message to elements of T_p
 *
 * @g: a pointer to the graph object
 * @p: current phase
 *
 * Returns 1 if no new vertices were discovered, and 0 if new vertices were
 * discovered.
 */
int broadcast_start(graph *g, int p) {
    int nobody_was_discovered = 1;

    graph *g_pf = g;

    // _mm_prefetch(&c, _MM_HINT_T0);
    // _mm_prefetch(&c, _MM_HINT_T1);
    // _mm_prefetch(&c, _MM_HINT_T2);
    // _mm_prefetch(&c, _MM_HINT_NTA);

    // -------------------------------------------------------------------
    // Not writing this as a function(to avoid jumps), code might get
    // repeatative
    int STRIDE = 2; // assuming it is lesser that g->N

    node *pf_node;
    payload *pf_payload; // bulk data acessed if needed

    for (int i = 0; i < STRIDE; i++) {

        // ====== prefetch routine ====== (looks very similar to existing non-prefetch code)
        pf_node = elem_at(&g_pf->vertices, i);
        // this call in itself will cause a cache miss (assuming it doesnt)
        pf_payload = pf_node->data;

        _mm_prefetch(pf_node, _MM_HINT_T0);
        _mm_prefetch(pf_payload + 0, _MM_HINT_T0); // + 0 as data segment is in first 64 bytes

        // bringing bulk data into cache if required
        if (pf_payload->phase_discovered == p) {
            _mm_prefetch(pf_payload + 64, _MM_HINT_T0);
            // + 64 as bulk_data segment is after first 64 bytes
            _mm_prefetch(pf_payload + 128, _MM_HINT_T0);
        }
        // ====== prefetch routine ======
    }
    // -------------------------------------------------------------------

#pragma omp parallel for schedule(SCHEDULING_METHOD)
    for (int i = 0; i < g->N; i++) {

        // -------------------------------------------------------------------
        if (i + STRIDE < g->N) {
            // ====== prefetch routine ====== (looks very similar to existing non-prefetch code)
            pf_node = elem_at(&g_pf->vertices, i + STRIDE);
            // this(above) call in itself will cause a cache miss(assuming it doesnt)
            // {ok not really sure about prev statement}
            pf_payload = pf_node->data;

            _mm_prefetch(pf_node, _MM_HINT_T0);
            _mm_prefetch(pf_payload + 0, _MM_HINT_T0); // + 0 as data segment is in first 64 bytes

            // bringing bulk data into cache if required
            if (pf_payload->phase_discovered == p) {
                _mm_prefetch(pf_payload + 64, _MM_HINT_T0); 
                // + 64 as bulk_data segment is after first 64 bytes
                _mm_prefetch(pf_payload + 128, _MM_HINT_T0);
            }
            // ====== prefetch routine ======
        }
        // -------------------------------------------------------------------

        node *cur = elem_at(&g->vertices, i);
        payload *data = cur->data;

        // this node was just discovered in phase `p`
        if (data->phase_discovered == p) {
            // we send a "join p+1" message to all quiet neighbors
            for (int j = 0; j < cur->degree; j++) {
                node *neighbor = *((node **)elem_at(&cur->neighbors, j));
                payload *neighbor_data = neighbor->data;

                if (neighbor_data->phase_discovered < 0) {
                    neighbor_data->phase_discovered = p + 1;
                    neighbor_data->parent_label = cur->label;
                    nobody_was_discovered = 0;
                }
            }
        }
    }

    return nobody_was_discovered;
}

/**
 * print_solution - prints a BFS Dijkstra solution
 *
 * @g: a pointer to the graph object
 */
void print_solution(graph *g) {
    int max_distance = 0;

    /**
     * Note: there's no `#pragma omp parallel` required here - this is not a
     * part of the solution computation.
     */
    for (int i = 0; i < g->N; i++) {
        node *cur = elem_at(&g->vertices, i);
        payload *data = cur->data;

        if (data->phase_discovered > max_distance)
            max_distance = data->phase_discovered;

        INFO("node_%d: parent = %d, dist = %d\n", cur->label,
             data->parent_label, data->phase_discovered);
    }

    INFO("max_distance = %d\n", max_distance);
}

/**
 * Based on Roger Wattenhofer's Principles of Distributed Computing's
 * Algorithm 2.11 Dijkstra BFS (synchronous version), where nodes are added
 * in phases.
 */
int main(int argc, char *argv[]) {
    int N;
    int M;
    graph *g;

    int iterate;
    int iterations = 1;

    if ((iterate = input_through_argv(argc, argv))) {
        FILE *in = fopen(argv[2], "r");

        fscanf(in, "%d\n", &N);
        g = new_graph(N, 0);

        fscanf(in, "%d\n", &ROOT);

        g->M = M = read_graph(g, in);

        fclose(in);

        sscanf(argv[3], "%d", &iterations);
    } else {
        N = 16;
        M = 64;

        if (argc > 1) {
            sscanf(argv[1], "%d", &N);
            sscanf(argv[2], "%d", &M);
        }

        g = generate_new_connected_graph(N, M);

        ROOT = 0;
    }

    long long duration = 0;
#ifdef ENERGY
    double total_energy = 0;
#endif

    for (int i = 0; i < iterations; i++) {
        begin_timer();
#ifdef ENERGY
        init_energy_measure();
#endif

        int p = 0;
        int nobody_was_discovered = 0;

        initialize_graph(g);
        while (!nobody_was_discovered) {
            nobody_was_discovered = broadcast_start(g, p);
            p++;
        }

#ifdef ENERGY
        total_energy += total_energy_used();
#endif
        duration += time_elapsed();

        // print_solution(g);
    }

#ifdef ENERGY
    if (iterate)
        printf("%.2lf %.2lf\n", ((double)duration) / iterations,
               total_energy / iterations);
#else
    if (iterate)
        printf("%.2lf\n", ((double)duration) / iterations);
#endif

    return 0;
}
