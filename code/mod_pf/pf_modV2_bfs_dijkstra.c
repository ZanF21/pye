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
#include <time.h>

// L1: THE BULK_DATA workload is RANDOM (we prefetch all blocks)
// PREFETCHING UPTO 2 LVL
// L2: WILL BE PREFETCHED

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

// L1 : RANDOM ACCESS (NEED ALL BLOCKS)
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

  // ---------------------------------------------------------
  // *_*_*_*_*_*_* Start up code for prefetching *_*_*_*_*_*_*
  // ---------------------------------------------------------
  int STRIDE = 3;
  node *pf_cur;
  payload *pf_data;
  int STRIDE_2 = 6;
  for (int i = 0; i < STRIDE; i++)
  {
    // LVL 1 access[i] ( - LVL 1 ) { PRESENT IN CURR ITERATION }
    pf_cur = elem_at(&g_pf->vertices, i);
    // *** LVL 1 needed[i+1] ( + LVL 1 ) { PREFETCH FOR NEXT ITERATION }
    _mm_prefetch(elem_at(&g_pf->vertices, i + 1), _MM_HINT_T0);

    // LVL 2 access[i] ( - LVL 2 ) { CACHE MISS in first iteration(pf_node only address was present)}
    pf_data = pf_cur->data;
    // LVL 2 needed[i] ( + LVL 2 )
    _mm_prefetch(pf_data, _MM_HINT_T0); // USELESS
                                        // cant technically prefetch pf_node_1->phase_discovered as it is not

    // ------------ NO sig work PREFETCH FAIL ---------------
    // { PREFETCH USELESS } ?? // might need to ignore (additional overhead cause of cache miss)
    
    
    // LVL 3 access[i] ( - LVL 3 )
    if (pf_data->phase_discovered == p)
    {
      // L1 // USED by perform_work_on_bulk (need to figure this out somehow)
      // LVL 2 needed[i] ( + LVL 2 ) { PREFETCH FOR CURR ITERATION}
      for (int i = 0; i < 20; i++)
      {
        _mm_prefetch(pf_data + 64 + 64 * i, _MM_HINT_T0);
      }

      // ---------------------------------------------------------
      // *_*_*_*_*_*_* Start up code for prefetching *_*_*_*_*_*_*
      // ---------------------------------------------------------

      // L2 //USED by inner loop // breaks after a few iterations
      for (int j = 0; j < pf_cur->degree && j < STRIDE_2; j++)
      {
        // LVL 1 access[i]
        node *pf_neighbor = *((node **)elem_at(&pf_cur->neighbors, j));
        // LVL 1 needed[i+1]
        _mm_prefetch(*((node **)elem_at(&pf_cur->neighbors, j + 1)), _MM_HINT_T0);
        // LVL 2 needed[i] // miss in first iteration
        payload *pf_neighbor_data = pf_neighbor->data;

        // LVL 3 needed[i]
        // LL1
        _mm_prefetch(pf_neighbor_data, _MM_HINT_T0);
      }
      // ---------------------------------------------------------
      // *_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*
      // ---------------------------------------------------------
    }
  }
  // PF COUNT = ( 1 + 1 + 20 ) * 3 = 66 (MAX) | 6 (MIN)
  // ---------------------------------------------------------
  // *_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*
  // ---------------------------------------------------------

#pragma omp parallel for schedule(SCHEDULING_METHOD)
  for (int i = 0; i < g->N; i++)
  {

    // #########################################################
    // *=*=*=*=*=*=*  regular code for prefetching *=*=*=*=*=*=*
    // #########################################################
    node *pf_cur;
    payload *pf_data;
    if (i + STRIDE + 1 < g->N)
    {
      // LVL 1 access[i + STRIDE] ( - LVL 1 ) { PRESENT IN CURR ITERATION }
      node *pf_cur = elem_at(&g_pf->vertices, i + STRIDE);
      // LVL 1 needed[i + STRIDE + 1] ( + LVL 1 ) { PREFETCH FOR NEXT ITERATION }
      _mm_prefetch(elem_at(&g_pf->vertices, i + STRIDE + 1), _MM_HINT_T0);

      // LVL 2 access[i + STRIDE] ( - LVL 2 ) { - - - }
      payload *pf_data = pf_cur->data;

      // LVL 2 needed[i + STRIDE] ( + LVL 2 ) { PREFETCH FOR CURR ITERATION }
      _mm_prefetch(pf_data, _MM_HINT_T0);
      // cant technically prefetch pf_node_1->phase_discovered as it is not

      // ------------ NO sig work PREFETCH FAIL --------------- { PREFETCH USELESS } ?? // might need to ignore (additional overhead)

      // LVL 3 access[i + STRIDE] ( - LVL 3 )
      if (pf_data->phase_discovered == p)
      {
        // L1 // USED by perform_work_on_bulk //
        // LVL 2 needed[i + STRIDE] ( + LVL 2 ) { PREFETCH FOR CURR ITERATION}
        for (int i = 0; i < 20; i++)
        {
          _mm_prefetch(pf_data + 64 + 64 * i, _MM_HINT_T0);
          // break when necessary
        }

        // ---------------------------------------------------------
        // *_*_*_*_*_*_* Start up code for prefetching *_*_*_*_*_*_*
        // ---------------------------------------------------------
        for (int j = 0; j < pf_cur->degree && j < STRIDE_2; j++)
        {
          // LVL 1 access[i]
          node *pf_neighbor = *((node **)elem_at(&pf_cur->neighbors, j));
          // LVL 1 needed[i+1]
          _mm_prefetch(*((node **)elem_at(&pf_cur->neighbors, j + 1)), _MM_HINT_T0);
          // LVL 2 needed[i] // miss not sure how itll fare in further iterations
          payload *pf_neighbor_data = pf_neighbor->data;

          // LVL 3 needed[i]
          _mm_prefetch(pf_neighbor_data, _MM_HINT_T0);
        }
        // ---------------------------------------------------------
        // *_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*
        // ---------------------------------------------------------
      }
    }
    // #########################################################
    // *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
    // #########################################################

    node *cur = elem_at(&g->vertices, i);
    payload *data = cur->data;

    // this node was just discovered in phase `p`
    if (data->phase_discovered == p)
    {
      node *neighbor_pf_node;
      payload *neighbor_pf_payload;

      // L1
      perform_work_on_bulk(data);

      // L2
      // -- not enough work -- will need huge stride (how to decide?) --
      for (int j = 0; j < cur->degree; j++)
      {
        // #########################################################
        // *=*=*=*=*=*=*  regular code for prefetching *=*=*=*=*=*=*
        // #########################################################
        if (j + STRIDE_2 + 1 < pf_cur->degree)
        {
          // LVL 1 access[i]
          node *pf_neighbor = *((node **)elem_at(&cur->neighbors, j + STRIDE_2));
          // LVL 1 needed[i+1]
          _mm_prefetch(*((node **)elem_at(&cur->neighbors, j + STRIDE_2 + 1)), _MM_HINT_T0);
          // LVL 2 needed[i]
          _mm_prefetch(pf_neighbor->data, _MM_HINT_T0);
        }
        // #########################################################
        // *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
        // #########################################################
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
#ifdef HAS_BUILTIN_PREFETCH
  printf("HAS_BUILTIN_PREFETCH\n");
#endif
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
