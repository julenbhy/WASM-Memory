/*
This C program aims to determine the maximum size of the stack and observe the behavior when it 
is exceeded. It takes a command-line argument specifying the desired size of the array. The program 
then creates an array of the specified size on the stack. By running this program with different sizes, 
one can explore the limitations and behavior of the stack in WebAssembly applications when exceeding its maximum size.

   Modified by Julen Bohoyo Bengoetxea.
   Modified:   29.06.2023.
*/

#include <stdio.h>
#include <inttypes.h> // for uintptr_t
#include <stdlib.h>
 

// gcc default stack size = 8MB = 8388608
// wasi-sdk / clang default stack size = 64KB = 65536
// emcc default stack size = 5MB = 5242880




int main(int argc, char *argv[]) {


    int size = 65536;
   
    if (argc != 2) {
       printf("Usage: %s <size of the array (default %d)\n", argv[0], size);
    }
    else size = atoll(argv[1]);

    
/*
    // Checking how static variables are aligned
    char a,b;
    printf("char a pointer at: %p (%lu), char b pointer at: %p (%lu)\n", &a, (uintptr_t)&a, &b, (uintptr_t)&b);
    
    int i,j;
    printf("int i pointer at: %p (%lu), int j pointer at: %p (%lu)\n", &i, (uintptr_t)&i, &j, (uintptr_t)&j);
    
    long x,y;
    printf("long x pointer at: %p (%lu), long y pointer at: %p (%lu)\n", &x, (uintptr_t)&x, &y, (uintptr_t)&y);
    
    long long w,z;
    printf("long long w pointer at: %p (%lu), long long z pointer at: %p (%lu)\n", &w, (uintptr_t)&w, &z, (uintptr_t)&z);
*/

    printf("Creating array of %d Bytes\n", size);
    
    char v[size];
    
    printf("Initializing %d Bytes\n", size);
    for(int i=0; i<size; i++)
    	v[i]='x';
    
    printf("First: %c, last: %c\n", v[0], v[size-1]);
    
   

    return 0;
}

