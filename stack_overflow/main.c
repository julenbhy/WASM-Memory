#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


//MAX n when compiled with WASI-SDK/clang = 2048

int call = 0;

long long fibb(long long a, long long b, int n) {
    printf("Call %d stack pointer at: %p\n", call++,  __builtin_frame_address(0));
    return (--n>0)?(fibb(b, a+b, n)):(a);
}

int main(int argc, char *argv[]) {

   int n = atoi(argv[1]);	
   printf("Fibbonacci of %d: %lld\n", n, fibb(0, 1, n));


   return 0;
}
