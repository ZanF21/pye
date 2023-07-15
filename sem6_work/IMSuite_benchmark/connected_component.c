#include<stdio.h>
#include<stdlib.h>
#include<omp.h>

#include "ompdist/graph.h"
#include "ompdist/utils.h"
#include "mmio.h"

typedef struct {
    int distance;
    int distance_next;
    int updated;
    int updated_next;
} payload;


/**
 * initialize_graph - Initializes the graph with initial page rank value
 *
 * @g:     a pointer to the graph object
 */
void initialize_graph(graph* g) {
    for (int i = 0; i < g->N; i++) {
        node* cur = elem_at(&g->vertices, i);
        payload* p = malloc(sizeof(payload));

        p->distance = i;
        p->distance_next = i;
        p->updated = 1;
        p->updated_next = 0;

        cur->data = p;
    }
}

void cc(graph *g) {
    int change = 1;
    
    while(change){
        change = 0;

        int i;
        #pragma omp parallel for schedule(runtime)
        for(i = 0; i < g->N; i++) {
            node* cur = elem_at(&g->vertices, i);
            payload* data = cur->data;

            //if(data->updated == 0) continue;
            
            int j;
            for (j = 0; j < cur->degree; j++) {
                node* neighbor = *((node**) elem_at(&cur->neighbors, j));
                payload* neighbor_p = neighbor->data;
                
                
                if(neighbor_p->distance < data->distance){
                    data->distance_next = neighbor_p->distance;
                    data->updated_next = 1;
                    change = 1;
                }
            }

            data->distance = data->distance_next;
            data->updated = data->updated_next;
            data->updated_next = 0;
        }
    }

    int i;
    #pragma omp parallel for schedule(static)
    for(i = 0; i < g->N; i++){
      node* cur = elem_at(&g->vertices, i);
      payload* data = cur->data;
      //data->distance = data->distance_next;
      printf("D:%d\n",data->distance);
    }
}

int verify_and_print_solution(graph* g) {
    int disagreement = 0;

    #pragma omp parallel for schedule(static)
    for (int i = 0; i < g->N; i++) {
        node* cur = elem_at(&g->vertices, i);
        payload* data = cur->data;

        for(int j = 0; j < cur->degree; j++){
            node* neighbor = *((node**) elem_at(&cur->neighbors, j));
            payload* neighbor_p = neighbor->data;

            if(neighbor_p->distance != data->distance){
                disagreement = 1;
                break;
            }
        }
    }


    if(disagreement)
        printf("Solution is wrong as neighbors should have same distance which was not in the above solution.\n");
    else
        printf("Correct Solution!\n");        
    return !disagreement;
}

int main(int argc, char* argv[])
{
    int N;
    int M;
    graph *g;

    int iterate;
    int iterations = 1;

    if((iterate = input_through_argv(argc, argv))){
        int ret_code;
        MM_typecode matcode;
        int num_of_rows, num_of_columm, number_of_non_zero_elements;   
        int *I, *J;
        
        FILE* in = fopen(argv[2], "r");
        if(in == NULL) exit(1);

        if (mm_read_banner(in, &matcode) != 0){
            printf("Could not process Matrix Market banner.\n");
            exit(1);
        }

        /*  This is how one can screen matrix types if their application */
        /*  only supports a subset of the Matrix Market data types.      */
        if (mm_is_complex(matcode) && mm_is_matrix(matcode) && mm_is_sparse(matcode)) {
            printf("Sorry, this application does not support ");
            printf("Market Market type: [%s]\n", mm_typecode_to_str(matcode));
            exit(1);
        }

        /* Find out size of sparse matrix .... */
        if ((ret_code = mm_read_mtx_crd_size(in, &num_of_rows, &num_of_columm, &number_of_non_zero_elements)) !=0)
            exit(1);
        

        /* Creation of graph (both incoming and outgoing graph) */
        N = num_of_rows;
        g = new_graph(N, 0);
        g->M = number_of_non_zero_elements;
        
        int i;
        for (i = 0; i < number_of_non_zero_elements; i++){
            int rowi, colj;
            fscanf(in, "%d %d\n", &rowi, &colj);
            add_edge(g, rowi-1,colj-1);
        }

        fclose(in);
        sscanf(argv[3], "%d", &iterations);
    }
    else {
      printf("No arguments provided! Exiting the program!!! ...\n");
      exit(1);
    }  
    // --------------

    long long duration = 0;
    int verification;

    for (int i = 0; i < iterations; i++) {
        begin_timer();

        initialize_graph(g);
        cc(g);

        duration += time_elapsed();


        verification = verify_and_print_solution(g);
        for (int v = 0; v < g->N; v++) {
            node* cur = elem_at(&g->vertices, v);
            free(cur->data);
        }
    }

    if (iterate)
        printf("%.2lf\n", ((double) duration) / iterations);
}




