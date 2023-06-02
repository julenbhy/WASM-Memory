#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>



int main(int argc, char *argv[]) {
    
    long long chunk_size = 8;
    if (argc != 2) {
        printf("Usage: %s <chunk_size> (default = 8B)\n", argv[0]);
    }
    else chunk_size = atoll(argv[1]);
    
    int chunks = 10000000;
    long long total_bytes = (long long)chunks*chunk_size;
    void *mem_block;
    struct timeval start, end;
    double total_time = 0.0;

    
    for(int i=0; i<chunks; i++) { 
        //printf("Chunk: %d\n", i);
        gettimeofday(&start, NULL);
       
        mem_block = malloc(chunk_size);  
        if (mem_block == NULL) {
            printf("Failed to allocate additional memory.\n");
            return 1;
        }
        
        gettimeofday(&end, NULL);
        
        // seconds to milisegconds + Microseconds a miliseconds
        double elapsed_time = (end.tv_sec - start.tv_sec) * 1000.0 + (end.tv_usec - start.tv_usec) / 1000.0;  
        total_time += elapsed_time;

        free(mem_block);  // Liberar la memoria asignada por malloc

    }
   
    double average_time = total_time / chunks;

    printf("Allocated %lld bytes in %d chunks, of size %lld Bytes, in %.2f miliseconds (%.2f seconds)\n", total_bytes, chunks, chunk_size, total_time, total_time/1000.0);
    
    printf("\tAllocated chuncks per milisecond: %.2f (per second: %.2f)\n", chunks/total_time, chunks/total_time/1000.0);
    printf("\tAllocated Bytes per milisecond: %.2f (per second: %.2f)\n", total_bytes/total_time, total_bytes/total_time/1000.0);
    
    printf("\tAverage chunk allocation time: %.10f miliseconds.\n", average_time);
    return 0;
}

