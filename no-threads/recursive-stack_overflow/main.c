/*
This C program explores stack overflow behavior by recursively calling a function until the stack limit is reached.
The maximum number of recursive calls can be specified as a command-line argument, with a default value of 100.

   Modified by Julen Bohoyo Bengoetxea.
   Modified:   29.06.2023.
*/


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

// Aprox max n;
//	gcc:      8052	(with default stack size = 8MB)
//	wasi-sdk: 62	(with default stack size = 64KB)
//	emcc:     5118	(with default stack size = 5MB)

#define BUF_SIZE 1000

int call = 0;
int verbose = 1;


void stack_overflow(int n, char* src) {
    
    // Use a buffer in order to increase frame size and reduce recursive calls
    char buf[BUF_SIZE];
    strcpy(buf, src);

    if(verbose) printf("call %d: frame pointer at: %p (%lu)\n", n, __builtin_frame_address(0), (uintptr_t) __builtin_frame_address(0));
    

    if(n) stack_overflow(--n, buf); 
}




int main(int argc, char *argv[]) {

   int recursivity = 100;
   
   if (argc != 2) {
       printf("Usage: %s <number of recursive calls (default %d)\n", argv[0], recursivity);
   }
   else recursivity = atoi(argv[1]);
   
   char src[BUF_SIZE];
   stack_overflow(recursivity, src);

   return 0;
}
