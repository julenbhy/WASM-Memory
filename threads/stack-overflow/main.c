/*
This C program aims to investigate the consequences of stack overflow caused by recursive calls 
in a multi-threaded environment. By creating multiple threads and performing recursive function calls, 
it explores the limitations of stack memory and observes the behavior when those limits are exceeded. 
The program helps in understanding the impact of stack overflow on program execution, such as crashes 
or unexpected behavior, and provides insights into stack management in multi-threaded applications.

   Modified by Julen Bohoyo Bengoetxea.
   Modified:   29.06.2023.
*/

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <inttypes.h> // for uintptr_t
#include <unistd.h> 
#include <string.h> 
#include <assert.h>


// Check if the condition should be <= or >= based on the compilation option
#if WASM
    #define CONDITION(x, y) ((x) <= (y)) // In wasm thread stacks are in increasing order
#else
    #define CONDITION(x, y) ((x) >= (y)) // In C thread stacks are in decreasing order
#endif

/*
With buffer size 1: up from recursivity 1365 thread n-1 breaks, but Warning starts at 1368
	
With buffer size 1000: up from recursivity 61 thread n-1 breaks, but Warning starts at 62

This issue may be due to comparing the stack pointer of both threads, not the stack pointer of one with the end of the stack of the other.
*/

int recursive_thread = 2;
int recursivity = 61;

#define NUM_THREADS 4
void* stacks[NUM_THREADS];

#define SIZE 1000

pthread_barrier_t barrier;

char verbose = 0;



void stack_overflow(int n, char* src) {
    
    // Use a buffer in order to increase frame size and reduce recursive calls
    char buf[SIZE];
    strcpy(buf, src);

    void* stack = __builtin_frame_address(0); 
    if(verbose) printf("Function call %d: frame pointer at: %p (%lu)\n", n, __builtin_frame_address(0), (uintptr_t) __builtin_frame_address(0));
    

    // Check if stack overflow
    for(int i=0; i<recursive_thread; i++) {    
        if(verbose && CONDITION(stack, stacks[i])) printf("ERROR: Recursive function at thread %d has reached the stack of thread %d at: %p (%lu)\n", recursive_thread, i, stack, (uintptr_t)stack);
        else assert(!CONDITION(stack, stacks[i]));
    }

    if(n) stack_overflow(--n, buf); 
}


void *thread_loop (void *arg) {
    int thread_id = *(int *)arg;

    stacks[thread_id]=__builtin_frame_address(0);    
    
    // Wait all threads
    pthread_barrier_wait(&barrier);
    
    if(verbose && thread_id == 0) 
    	for(int i=0; i<NUM_THREADS; i++) 
    		printf("Thread %d Stack at: %p (%lu)\n", i, stacks[i], (uintptr_t)stacks[i]);
    
    pthread_barrier_wait(&barrier);
    	
    
    if(thread_id==recursive_thread){
    	if(verbose) printf("Thread %d starting recursive function\n", thread_id);
    	char buf [SIZE];
    	// if the array is not initialized the lower threads are not affected 
    	// when stack overflow occurs
    	for(int i=0; i<SIZE; i++) buf[i]='x';
        stack_overflow(recursivity, buf);
    }
    
    if(verbose) do{ printf("\tThread %d alive\n", thread_id); usleep(10000); }while(1);
        
    return NULL;
}



void usage(char *prog)
{
	printf("%s [-r recursivity] [-t recursive_thread] [-v]\n", prog);
	printf("\t -r number of recursive calls (default %d)\n", recursivity);
	printf("\t -t thread to call recursice functions (default %d bytes)\n", recursive_thread);
	printf("\t -v verbose mode (-v produces more verbose)\n");
	exit(1);
}



int main(int argc, char *argv[]) {

    int c;
    while ((c = getopt(argc, argv, "r:t:v")) != -1) {		
        switch (c) {
            case 'r':
                recursivity = atoi(optarg);
		break;
            case 't':
                recursive_thread = atoi(optarg);
		break;
            case 'v':
                verbose++;
                break;
            default:
                usage(argv[0]);
        }
    }
    
    
    pthread_t threads[NUM_THREADS];
    int thread_ids[NUM_THREADS];
    
    pthread_barrier_init(&barrier, NULL, NUM_THREADS);

    
    for (int i = 0; i < NUM_THREADS; i++) {
        thread_ids[i] = i;
        pthread_create(&threads[i], NULL, thread_loop, (void*) &thread_ids[i]);
    }

    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    
    return 0;
}

