#include <stdio.h>

#define HAS_PREFETCH __has_builtin(__builtin_prefetch)

int main()
{
#ifdef HAS_PREFETCH
    printf("Has __builtin_prefetch\n");
#else
    printf("Does not have __builtin_prefetch\n");
#endif
    return 0;
}