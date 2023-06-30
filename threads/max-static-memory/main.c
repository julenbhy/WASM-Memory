/*
This C program aims to determine the maximum size of the stack and observe the behavior when it 
is exceeded if using threads. It takes a command-line argument specifying the desired size of the array. The program 
then creates an array of the specified size on the stack. By running this program with different sizes, 
one can explore the limitations and behavior of the stack in WebAssembly applications when exceeding its maximum size.

Unlike the heap, in both, native c and wasm, each thread does have its own full-sized stack without 
dividing the stack size among threads. 
The thread stacks are arranged in ascending order and at a distance of 65680b between stack pointers.
A thread can access and modify positions in the stack of another thread.

   Modified by Julen Bohoyo Bengoetxea.
   Modified:   29.06.2023.
*/

#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h> 
#include <inttypes.h> // for uintptr_t
 

// gcc stack size = 8MB = 8388608
// wasi-sdk / clang stack size = 64KB = 65536
// emcc stack size = 5MB = 5242880

#define DEFAULT_SIZE 6000L
#define DEFAULT_THREADS 4

long size = DEFAULT_SIZE;



static void *mem_allocator (void *arg) {

    int thread_id = *(int *)arg;
    char v[size];
    
    printf("Thread %d Stack at: %p (%lu)\n",thread_id, __builtin_frame_address(0), (uintptr_t)__builtin_frame_address(0));
    
    // if the array positions aren't accessed no segmentations fault is raised
    printf("Thread %d Initializing %ld Bytes\n", thread_id, size);
    for(int i=0; i<size; i++)
    	v[i]='x';
  
  
    printf("Thread %d finishing\n", thread_id);
    return NULL;
}


void usage(char *prog)
{
	printf("%s [-s size] [-n threads]\n", prog);
	printf("\t -s size of the array (default %ld bytes)\n", DEFAULT_SIZE);
	printf("\t -n number of threads to use (default %d threads)\n", DEFAULT_THREADS);
	exit(1);
}


int main(int argc, char *argv[]) {

    int num_threads = DEFAULT_THREADS;
        
    int c;
    while ((c = getopt(argc, argv, "t:s:n:")) != -1) {		
        switch (c) {
            case 's':
                size = atoll(optarg);
		break;
            case 'n':
                num_threads = atoi(optarg);
		break;
            default:
                usage(argv[0]);
        }
    }
    

    pthread_t threads[num_threads];
    int thread_ids[num_threads];
    
    for (int i = 0; i < num_threads; i++) {
        thread_ids[i] = i;
        pthread_create(&threads[i], NULL, mem_allocator, (void*) &thread_ids[i]);
    }

    for (int i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
    }
    
   
    
    return 0;
}
