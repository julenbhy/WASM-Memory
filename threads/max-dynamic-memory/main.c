/*
This program serves as a tool to observe the behavior of memory allocation in a multi-threaded 
environment. It helps evaluate how memory allocation is managed and synchronized among different 
threads, providing insights into the efficiency and performance of concurrent memory operations.

When native c the heap is divided into thread arenas. However, when compiling to wasm, 
the threads compete to write in the same heap space. The 4Gb of heap are dividing along the threads

   Modified by Julen Bohoyo Bengoetxea.
   Modified:   29.06.2023.
*/

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <inttypes.h> // for uintptr_t
#include <unistd.h> 



#define DEFAULT_TOTAL 1073741824LL
#define DEFAULT_SIZE 1000L
#define DEFAULT_THREADS 4

long long total_mem = DEFAULT_TOTAL;
long chunk_size = DEFAULT_SIZE;


static void *mem_allocator (void *arg) {
    int thread_id = *(int *)arg;
    long long allocated_memory = 0;
    int chunk;

    
    printf("Thread %d Initializing %lld Bytes. \n\tStack at: %p (%lu)\n", thread_id, total_mem, &thread_id, (uintptr_t)&thread_id);
    
    for(chunk=0; allocated_memory < total_mem; chunk++) {
    	usleep(1); //to ensure that threads alternate
        if (allocated_memory + chunk_size > total_mem) {
            chunk_size = total_mem - allocated_memory;
        }

        char *memory_block = malloc(chunk_size);
        if (memory_block == NULL) {
            printf("Thread %d, Failed to allocate additional memory at %lld Bytes.\n", thread_id, allocated_memory);
            return NULL;
        }

        allocated_memory += chunk_size;
        printf("Tread %d Allocated memory: %lld Bytes. \n\tHeap at %p (%lu)\n", thread_id, allocated_memory, memory_block, (uintptr_t)memory_block);
    }

    printf("Thread %d finishing\n", thread_id);
    return NULL;
}



void usage(char *prog)
{
	printf("%s [-t total] [-s size] [-n threads]\n", prog);
	printf("\t -t total memory to allocate (default %lld bytes)\n", DEFAULT_TOTAL);
	printf("\t -s size of objects to allocate (default %ld bytes)\n", DEFAULT_SIZE);
	printf("\t -n number of threads to use (default %d threads)\n", DEFAULT_THREADS);
	exit(1);
}


int main(int argc, char *argv[]) {
    
    int num_threads = DEFAULT_THREADS;
    int c;
    while ((c = getopt(argc, argv, "t:s:n:")) != -1) {		
        switch (c) {
            case 't':
                total_mem = atoll(optarg);
		break;
            case 's':
                chunk_size = atoi(optarg);
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

