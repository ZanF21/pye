#include <emmintrin.h>
#include <stdio.h>
#include <xmmintrin.h>

int main() {
  int a = 1;
  int b = 2;
  int c = a + b;
  // // mm_T0
  // _mm_prefetch(&c, _MM_HINT_T0);
  // // mm_T1
  // _mm_prefetch(&c, _MM_HINT_T1);
  // _mm_prefetch(&c, _MM_HINT_T2);    // mm_T2
  // _mm_prefetch(&c, _MM_HINT_NTA);
  // _mm_prefetch(&c, _MM_HINT_ET0);
  // _mm_prefetch(&c, _MM_HINT_ET1);
  // _mm_prefetch(&c, );  NO HINT FOR WRITE????
  // __builtin_prefetch(&c);
  __builtin_prefetch(&c,1 ,0);
  __builtin_prefetch(&c, 0 ,0);
  // __builtin
  return 0;
}