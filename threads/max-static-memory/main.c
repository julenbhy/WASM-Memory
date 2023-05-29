#include <stdio.h>
#include <pthread.h>
 

// gcc stack size = 8MB = 8388608
// wasi-sdk / clang stack size = 64KB = 65536
// emcc stack size = 5MB = 5242880

#ifndef MAX_SIZE
    #define MAX_SIZE 65536
#endif

#ifndef MAX_SIZE
    #define NUM_THREADS 4
#endif

static void *mem_allocator (void *arg) {
    int thread_id = *(int *)arg;
    char v[MAX_SIZE];
    
    printf("Thread %d Initializing %d Bytes\n", thread_id, MAX_SIZE);
    for(int i=0; i<MAX_SIZE; i++)
    	v[i]='x';
  
  
    printf("Thread %d finishing\n", thread_id);
    return NULL;
}

int main(int argc, char *argv[]) {
    
    
    
    pthread_t threads[NUM_THREADS];
    int thread_ids[NUM_THREADS];
    for (int i = 0; i < NUM_THREADS; i++) {
        thread_ids[i] = i;
        pthread_create(&threads[i], NULL, mem_allocator, (void*) &thread_ids[i]);
    }

    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }
    
   

    return 0;
}

