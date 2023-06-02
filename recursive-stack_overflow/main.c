#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


// Aprox max n;
//	gcc:      174515
//	wasi-sdk: 2012
//	emcc:     8151

int call = 0;

long long fibb(long long a, long long b, int n) {
    printf("__builtin_frame_address at: %p (%lu)\n", __builtin_frame_address(0), (uintptr_t) __builtin_frame_address(0));
    printf("%d stack pointer at: %p\n", call++,  &a);
    return (--n>0)?(fibb(b, a+b, n)):(a);
}

int main(int argc, char *argv[]) {

   int n = 2048;
   
   if (argc != 2) {
       printf("Usage: %s <fibonacci position> (default 2048)\n", argv[0]);
   }
   else n = atoll(argv[1]);
   
   printf("Fibbonacci of %d: %lld\n", n, fibb(0, 1, n));


   return 0;
}
