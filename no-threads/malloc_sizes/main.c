/*
It measures the time taken to allocate a specified amount of memory in chunks of a given size. 
The program uses the malloc() function to dynamically allocate memory.

   Modified by Julen Bohoyo Bengoetxea.
   Modified:   29.06.2023.
*/


#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>


#define DEFAULT_SIZE 8
#define DEFAULT_TOTAL 3LL*1024*1024*1024


void bench(long long total_mem, long long chunk_size){
    long long chunks = total_mem/chunk_size;
    long long allocated_chunks;
    void *mem_block;
    
    //elapsed time counters
    struct timeval start, end;
    double elapsed_time;
    
    gettimeofday(&start, NULL);
    for(allocated_chunks=0; allocated_chunks<chunks; allocated_chunks++) {
         
        mem_block = malloc(chunk_size);  
        
        if (mem_block == NULL) {
            printf("Failed to allocate additional memory at chunck %lld.\n", allocated_chunks);
            break;
        }

        //free(mem_block);
    }
    gettimeofday(&end, NULL);
    
    // seconds to milisegconds + Microseconds to miliseconds
    elapsed_time = (end.tv_sec - start.tv_sec) * 1000.0 + (end.tv_usec - start.tv_usec) / 1000.0;  
    

    
    printf("Allocated %lld bytes in %lld chunks, of size %lld Bytes, in %.2f ms (%.2f s)\n", total_mem, allocated_chunks, chunk_size, elapsed_time, elapsed_time/1000.0);
    printf("\tAllocated chuncks per milisecond: %.2f\n", allocated_chunks/elapsed_time);
    printf("\tAllocated Bytes per milisecond: %.2f\n", total_mem/elapsed_time);
    printf("\tAverage chunk allocation time: %.10f miliseconds.\n", elapsed_time/allocated_chunks);


}

void usage(char *prog)
{
	printf("%s [-t total] [-s size]\n", prog);
	printf("\t -t total memory to allocate (default %lld bytes)\n", DEFAULT_TOTAL);
	printf("\t -s size of object to allocate (default %d bytes)\n", DEFAULT_SIZE);
	exit(1);
}


int main(int argc, char *argv[]) {

    long long total_mem = DEFAULT_TOTAL;
    long long chunk_size = DEFAULT_SIZE;
    
    
    int c;
    while ((c = getopt(argc, argv, "t:s:")) != -1) {		
        switch (c) {
            case 't':
                total_mem = atoll(optarg);
		break;
            case 's':
                chunk_size = atoll(optarg);
		break;
            default:
                usage(argv[0]);
        }
    }
    
    bench(total_mem, chunk_size);

    
    return 0;
}

