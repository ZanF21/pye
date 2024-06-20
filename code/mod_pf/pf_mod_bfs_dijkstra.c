#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

#include "ompdist/graph.h"
#include "ompdist/graph_gen.h"
#include "ompdist/msr.h"
#include "ompdist/utils.h"
#include "ompdist/vector.h"

#include "config.h"
#include "mmio.h"
#include <emmintrin.h>
#include <stdio.h>
#include <xmmintrin.h>

#define HAS_BUILTIN_PREFETCH __has_builtin(__builtin_prefetch)

// #define ENERGY
// Uncomment the above line if you want to measure energy

#define START 1
#define JOIN 2

int ROOT;

typedef struct
{
  int parent_label;
  int phase_discovered;
  char junk_buffer[56];
  // above is 64 bytes

  char bulk_data[1280]; // 20*64
} payload;

void perform_work_on_bulk(payload *data)
{
  // access all elements of bulk data in random order
  for (int i = 0; i < 1274; i++)
  {
    int index = rand() % 1274;
    char *ptr = (char *)(data->bulk_data + index);
    *ptr = *ptr + 1;
    ptr[0] = (ptr[0] + rand() % 10) % 256;
    for (int j = 0; j < 1e2; j++)
    {
      j++;
      j--;
      int l = j;
    }
  }
}

/**
 * initialize_graph - Initializes the graph with basic data
 *
 * @g: a pointer to the graph object
 */
void initialize_graph(graph *g)
{
// allocate the data field for each node
#pragma omp parallel for schedule(SCHEDULING_METHOD)
  for (int i = 0; i < g->N; i++)
  {
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
int broadcast_start(graph *g, int p)
{
  int nobody_was_discovered = 1;

  graph *g_pf = g;

#ifdef HAS_BUILTIN_PREFETCH
  int STRIDE = 5; // assuming it is lesser that g->N

  node *pf_node;
  payload *pf_payload; // bulk data accessed if needed

  for (int i = 0; i < STRIDE; i++)
  {

    // ====== prefetch routine ====== (looks very similar to existing
    // non-prefetch code)
    pf_node = elem_at(&g_pf->vertices, i);
    _mm_prefetch(elem_at(&g_pf->vertices, i + 1), _MM_HINT_T0);

    // this call in itself will cause a cache miss for the first elem
    pf_payload = pf_node->data;

    // _mm_prefetch(pf_node, _MM_HINT_T0); // This will already be prefetched as
    // we access the data field
    _mm_prefetch(pf_payload + 0,
                 _MM_HINT_T0); // + 0 as data segment is in first 64 bytes

    // bringing bulk data into cache if required
    if (pf_payload->phase_discovered == p)
    {
      // + 64 as bulk_data segment is after first 64 bytes
      for (int i = 0; i < 20; i++)
      {
        _mm_prefetch(pf_payload + 64 + 64 * i, _MM_HINT_T0);
      }
    }
    // ====== prefetch routine ======
  }
#endif
  // -------------------------------------------------------------------

#pragma omp parallel for schedule(SCHEDULING_METHOD)
  for (int i = 0; i < g->N; i++)
  {

    // -------------------------------------------------------------------
    // int STRIDE_2 = 2;
    if (i + STRIDE + 1 < g->N)
    {
      // ====== prefetch routine ====== (looks very similar to existing
      // non-prefetch code)
      pf_node = elem_at(&g_pf->vertices, i + STRIDE);
      _mm_prefetch(elem_at(&g_pf->vertices, i + STRIDE + 1), _MM_HINT_T0);

      pf_payload = pf_node->data;

      _mm_prefetch(pf_payload + 0,
                   _MM_HINT_T0); // + 0 as data segment is in first 64 bytes

      // bringing bulk data into cache if required

      // node *neighbor_pf_node = *((node **)elem_at(&pf_node->neighbors, 0));
      // _mm_prefetch(neighbor_pf_node, _MM_HINT_T0);
      if (pf_payload->phase_discovered == p)
      {
        for (int i = 0; i < 20; i++)
        {
          _mm_prefetch(pf_payload + 64 + 64 * i, _MM_HINT_T0);
        }
        // for (int j = 0; j < STRIDE_2; j++) {
        //   neighbor_pf_node = *((node **)elem_at(&pf_node->neighbors, j));
        //   _mm_prefetch(neighbor_pf_node, _MM_HINT_T0);
        //   _mm_prefetch(neighbor_pf_node->data, _MM_HINT_T0);
        // }
      }
      // ====== prefetch routine ======
    }
    // -------------------------------------------------------------------

    node *cur = elem_at(&g->vertices, i);
    payload *data = cur->data;

    // this node was just discovered in phase `p`
    if (data->phase_discovered == p)
    {
      // ---------------------
      // prefetch routine
      node *neighbor_pf_node;
      payload *neighbor_pf_payload;

      perform_work_on_bulk(data);
      // we send a "join p+1" message to all quiet neighbors
      for (int j = 0; j < cur->degree; j++)
      {
        // if (j + STRIDE_2 < cur->degree) {
        //   neighbor_pf_node = *((node **)elem_at(&cur->neighbors, j + STRIDE_2));
        //   _mm_prefetch(neighbor_pf_node, _MM_HINT_T0);
        //   _mm_prefetch(neighbor_pf_node->data, _MM_HINT_T0);
        // }
        node *neighbor = *((node **)elem_at(&cur->neighbors, j));
        payload *neighbor_data = neighbor->data;

        if (neighbor_data->phase_discovered < 0)
        {
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
void print_solution(graph *g)
{
  int max_distance = 0;

  /**
   * Note: there's no `#pragma omp parallel` required here - this is not a
   * part of the solution computation.
   */
  for (int i = 0; i < g->N; i++)
  {
    node *cur = elem_at(&g->vertices, i);
    payload *data = cur->data;

    if (data->phase_discovered > max_distance)
      max_distance = data->phase_discovered;

    INFO("node_%d: parent = %d, dist = %d\n", cur->label, data->parent_label,
         data->phase_discovered);
  }

  INFO("max_distance = %d\n", max_distance);
}

/**
 * Based on Roger Wattenhofer's Principles of Distributed Computing's
 * Algorithm 2.11 Dijkstra BFS (synchronous version), where nodes are added
 * in phases.
 */
int main(int argc, char *argv[])
{
  int N;
  int M;
  graph *g;

  int iterate;
  int iterations = 1;

  if ((iterate = input_through_argv(argc, argv)))
  {
    int ret_code;
    MM_typecode matcode;
    int num_of_rows, num_of_columm, number_of_non_zero_elements;
    int *I, *J;

    FILE *in = fopen(argv[2], "r");
    if (in == NULL)
      exit(1);

    if (mm_read_banner(in, &matcode) != 0)
    {
      printf("Could not process Matrix Market banner.\n");
      exit(1);
    }

    /*  This is how one can screen matrix types if their application */
    /*  only supports a subset of the Matrix Market data types.      */
    if (mm_is_complex(matcode) && mm_is_matrix(matcode) &&
        mm_is_sparse(matcode))
    {
      printf("Sorry, this application does not support ");
      printf("Market Market type: [%s]\n", mm_typecode_to_str(matcode));
      exit(1);
    }

    /* Find out size of sparse matrix .... */
    if ((ret_code = mm_read_mtx_crd_size(in, &num_of_rows, &num_of_columm,
                                         &number_of_non_zero_elements)) != 0)
      exit(1);

    /* Creation of graph (both incoming and outgoing graph) */
    N = num_of_rows;
    g = new_graph(N, 0);
    g->M = number_of_non_zero_elements;

    int i;
    for (i = 0; i < number_of_non_zero_elements; i++)
    {
      int rowi, colj;
      fscanf(in, "%d %d\n", &rowi, &colj);
      add_edge(g, rowi - 1, colj - 1);
    }

    fclose(in);
    sscanf(argv[3], "%d", &iterations);
  }
  else
  {
    printf("No arguments provided! Exiting the program!!! ...\n");
    exit(1);
  }

  long long duration = 0;
#ifdef ENERGY
  double total_energy = 0;
#endif

  for (int i = 0; i < iterations; i++)
  {
    begin_timer();
#ifdef ENERGY
    init_energy_measure();
#endif

    int p = 0;
    int nobody_was_discovered = 0;

    initialize_graph(g);
    while (!nobody_was_discovered)
    {
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
