#include<stdio.h>

#define macro_call(ptr) \
    printf("ptr = %d\n", ptr); \
    printf("done with macro\n");

int main() {
    printf("Hello World\n");
    int k = 69;
    macro_call(k);
    return 0;
}