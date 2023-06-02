#include <stdio.h>
 

// gcc default stack size = 8MB = 8388608
// wasi-sdk / clang default stack size = 64KB = 65536
// emcc default stack size = 5MB = 65536

#ifndef SIZE
    #define SIZE 8388608
#endif


int main(int argc, char *argv[]) {

    printf("Allocating %d Bytes\n", SIZE);
    
    char v[SIZE];
    
    printf("Initializing %d Bytes\n", SIZE);
    for(int i=0; i<SIZE; i++)
    	v[i]='x';
    
    printf("First: %c, last: %c\n", v[0], v[SIZE-1]);
    
   

    return 0;
}

