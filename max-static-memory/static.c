#include <stdio.h>
 

// gcc stack size = 8MB = 8388608
// wasi-sdk / clang stack size = 64KB = 65536
// emcc stack size = 5MB = 5242880

#ifndef MAX_SIZE
    #define MAX_SIZE 8388608
#endif


int main(int argc, char *argv[]) {

    printf("Allocating %d Bytes\n", MAX_SIZE);
    
    char v[MAX_SIZE];
    
    printf("Initializing %d Bytes\n", MAX_SIZE);
    for(int i=0; i<MAX_SIZE; i++)
    	v[i]='x';
    
    printf("First: %c, last: %c\n", v[0], v[MAX_SIZE-1]);
    
   

    return 0;
}

