#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <inttypes.h> // for uintptr_t
#include <unistd.h> 

#ifndef PAGE_SIZE 
    #define PAGE_SIZE 1
#endif

long long memory_amount;
long long total_memory;


static void *mem_allocator (void *arg) {
    int thread_id = *(int *)arg;
    long long allocated_memory = 0;
    long memory_increment = PAGE_SIZE;
    int chunk;

    
    printf("Thread %d Initializing %lld Bytes. \n\tStack at: %p (%lu)\n", thread_id, memory_amount, &thread_id, (uintptr_t)&thread_id);
    
    for(chunk=0; allocated_memory < memory_amount; chunk++) {
    	sleep(1); //to ensure that threads alternate
        if (allocated_memory + memory_increment > memory_amount) {
            memory_increment = memory_amount - allocated_memory;
        }

        char *memory_block = malloc(memory_increment);
        if (memory_block == NULL) {
            printf("Thread %d, Failed to allocate additional memory at %lld Bytes.\n", thread_id, allocated_memory);
            return NULL;
        }
        
        memory_block[0] = 'x';

        allocated_memory += memory_increment;
        printf("Tread %d Allocated memory: %lld Bytes. \n\tHeap at %p (%lu)\n", thread_id, allocated_memory, memory_block, (uintptr_t)memory_block);
    }

    printf("Thread %d finishing\n", thread_id);
    return NULL;
}




int main(int argc, char *argv[]) {

    if (argc != 2) {
        printf("Usage: %s <memory_amount> (default = 10Bytes)\n", argv[0]);
        memory_amount = 10;
    }
    else memory_amount = atoll(argv[1]);
    
    
    int num_threads=4;     
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

