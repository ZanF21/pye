#include <limits.h>
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "config.h"
#include "ompdist/graph.h"
#include "ompdist/graph_gen.h"
#include "ompdist/msr.h"
#include "ompdist/queues.h"
#include "ompdist/utils.h"
// #define ENERGY
// Uncomment the above line if you want to measure energy

#define INF INT_MAX

// // Modified payload structure
// typedef struct {
//   int distance;
//   int junk_int;
//   char junk_buffer[56];
//   // above is 64 bytes

//   char bulk_data[1280]; // 20*64
// } payload;

// OG payload structure
typedef struct {
  int distance;
} payload;

typedef struct {
  int from;
  int y;
} message;

int ROOT;

/**
 * initialize_graph - Initializes the graph nodes with the payload data.
 *
 * @g: the graph
 */
void initialize_graph(graph *g) {
  for (int i = 0; i < g->N; i++) {
    node *u = elem_at(&g->vertices, i);

    payload *data = malloc(sizeof(payload));

    data->distance = INF;

    u->data = data;
  }

  node *root = elem_at(&g->vertices, ROOT);
  payload *root_data = root->data;
  root_data->distance = 0;
}

/**
 * root_message - Intiates the root message.
 *
 * @g:    the graph
 * @recv: the recv queuelist
 */
void root_message(graph *g, queuelist *recv) {
  DEBUG("sending root message\n");

  node *root = elem_at(&g->vertices, ROOT);

  for (int j = 0; j < root->degree; j++) {
    node *u = *((node **)elem_at(&root->neighbors, j));

    message m = {ROOT, 1};
    enqueue(recv, u->label, &m);
  }
}

/**
 * messages_in_queue - Checks if there are any messages in the queues of any
 * of the nodes.
 *
 * @g:    the graph
 * @recv: the recv queuelist
 *
 * Returns 1 if there are any messages, 0 otherwise.
 */
int messages_in_queue(int N, queuelist *recv) {
  int result = 0;

#pragma omp parallel for schedule(SCHEDULING_METHOD)
  for (int i = 0; i < N; i++) {
    if (!is_ql_queue_empty(recv, i))
      result = 1;
  }

  DEBUG("messages in queue = %d\n", result);

  return result;
}

/**
 * recv_and_send - Receives messages and passes them on (after incrementing
 * the message distance) to its neighbors.
 *
 * @g:    the graph
 * @recv: the recv queuelist
 * @send: the send queuelist
 */
void recv_and_send(graph *g, queuelist *recv, queuelist *send) {
  DEBUG("receiving and sending messages\n");
  // -------------------------------------------------------------------
  // Not writing this as a function(to avoid jumps), code might get
  // repeatative
  int STRIDE = 2; // assuming it is lesser that g->N

  node *pf_node;
  //   payload *pf_payload; // bulk data acessed if needed

  for (int i = 0; i < STRIDE; i++) {

    // ====== prefetch routine ====== (looks very similar to existing
    // non-prefetch code)
    pf_node = elem_at(&g->vertices, i);
    // this might not be as useful
    _mm_prefetch(elem_at(&g->vertices, i), _MM_HINT_T0);
    

    // ====== prefetch routine ======
  }
  // -------------------------------------------------------------------

#pragma omp parallel for schedule(SCHEDULING_METHOD)
  for (int i = 0; i < g->N; i++) {
    if (i + STRIDE < g->N) {
      _mm_prefetch(elem_at(&g->vertices, i + STRIDE), _MM_HINT_T0);
      _mm_prefetch(elem_at(), int)
    }
    node *u = elem_at(&g->vertices, i);
    payload *u_data = u->data;

    int lowest_y = INT_MAX;
    int lowest_from = 0;
    while (!is_ql_queue_empty(recv, i)) {
      message *m = dequeue(recv, i);

      if (lowest_y > m->y) {
        lowest_y = m->y;
        lowest_from = m->from;
      }
    }

    if (lowest_y != INT_MAX && lowest_y < u_data->distance) {
      u_data->distance = lowest_y;

      for (int j = 0; j < u->degree; j++) {
        node *v = *((node **)elem_at(&u->neighbors, j));
        payload *u_data = u->data;

        if (v->label == lowest_from)
          continue;

        message m = {u->label, lowest_y + 1};
        enqueue(send, v->label, &m);
      }
    }
  }
}

/**
 * propagate_messages - Moves messages from the send queuelist to the recv
 * queuelist.
 *
 * @g:    the graph
 * @recv: the recv queuelist
 * @send: the send queuelist
 */
void propagate_messages(graph *g, queuelist *recv, queuelist *send) {
  DEBUG("propagating messages from the send queuelist to recv\n");

#pragma omp parallel for schedule(SCHEDULING_METHOD)
  for (int i = 0; i < g->N; i++) {
    node *u = elem_at(&g->vertices, i);

    while (!is_ql_queue_empty(send, u->label))
      enqueue(recv, u->label, dequeue(send, u->label));
  }
}

/**
 * print_solution - prints a BFS Bellman-Ford solution
 *
 * @g: a pointer to the graph object
 */
void print_solution(graph *g) {
  int max_distance = 0;

  for (int i = 0; i < g->N; i++) {
    node *cur = elem_at(&g->vertices, i);
    payload *data = cur->data;

    if (data->distance > max_distance)
      max_distance = data->distance;

    INFO("%d->distance = %d\n", cur->label, data->distance);
  }

  INFO("max_distance = %d\n", max_distance);
}

/**
 * Based on Roger Wattenhofer's Principles of Distributed Computing's
 * Algorithm 2.13 (Bellman-Ford BFS) to solve the single-source shortest
 * path problem.
 */
int main(int argc, char *argv[]) {
  int N;
  int M;
  graph *g;

  int iterate;
  int iterations = 1;

  if ((iterate = input_through_argv(argc, argv))) {
    int ret_code;
    MM_typecode matcode;
    int num_of_rows, num_of_columm, number_of_non_zero_elements;
    int *I, *J;

    FILE *in = fopen(argv[2], "r");
    if (in == NULL)
      exit(1);

    if (mm_read_banner(in, &matcode) != 0) {
      printf("Could not process Matrix Market banner.\n");
      exit(1);
    }

    /*  This is how one can screen matrix types if their application */
    /*  only supports a subset of the Matrix Market data types.      */
    if (mm_is_complex(matcode) && mm_is_matrix(matcode) &&
        mm_is_sparse(matcode)) {
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
    for (i = 0; i < number_of_non_zero_elements; i++) {
      int rowi, colj;
      fscanf(in, "%d %d\n", &rowi, &colj);
      add_edge(g, rowi - 1, colj - 1);
    }

    fclose(in);
    sscanf(argv[3], "%d", &iterations);
  } else {
    printf("No arguments provided! Exiting the program!!! ...\n");
    exit(1);
  }

  long long duration = 0;
#ifdef ENERGY
  double total_energy = 0;
#endif

  for (int i = 0; i < iterations; i++) {
    queuelist *recv = new_queuelist(N, sizeof(message));
    queuelist *send = new_queuelist(N, sizeof(message));

    begin_timer();
#ifdef ENERGY
    init_energy_measure();
#endif

    initialize_graph(g);

    root_message(g, recv);
    while (messages_in_queue(g->N, recv)) {
      recv_and_send(g, recv, send);
      propagate_messages(g, recv, send);
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
