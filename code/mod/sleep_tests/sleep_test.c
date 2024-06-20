
// C Program to demonstrate
// use of nanosleep
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char *argv[])
{
    if(argc != 2) {
        printf("Usage: ./sleep_test <work_time>\n");
        exit(1);
    }
    long work_time = strtol(argv[1], NULL, 10)*1000;
    struct timespec remaining, request = {0, work_time};

    clock_t tic = clock();

    for (int i = 0; i < 100; i++)
    {
        int response = nanosleep(&request, &remaining);
    }
    clock_t toc = clock();

    // printf("Elapsed: %f us\n", (double)(toc - tic) * 1000000 / CLOCKS_PER_SEC);
    printf("%f\n", (double)(toc - tic) * 1000000);
}
