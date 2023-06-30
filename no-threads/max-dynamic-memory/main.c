/*
This C program is a memory allocation tool designed to evaluate the maximum amount of 
dynamic memory that can be reserved. It allows users to allocate a specific amount of 
memory and provides information about the allocated memory chunks, including their addresses and sizes. 

   Modified by Julen Bohoyo Bengoetxea.
   Modified:   29.06.2023.
*/


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>


#define DEFAULT_TOTAL 1073741824LL
#define DEFAULT_SIZE 65536



static const char *formatBytes(long long bytes)
{
	char *suffix[] = {"B", "KB", "MB", "GB", "TB"};
	char length = sizeof(suffix) / sizeof(suffix[0]);

	int i = 0;
	double dblBytes = bytes;

	if (bytes > 1024) {
		for (i = 0; (bytes / 1024) > 0 && i<length-1; i++, bytes /= 1024)
			dblBytes = bytes / 1024.0;
	}

	static char output[200];
	sprintf(output, "%.02lf %s", dblBytes, suffix[i]);
	return output;
}


void bench(long long total_mem,  long chunk_size) {

    long long allocated_memory = 0;
    int chunk;
    void *memory_block;
    long current_chunk_size;

    

    for(chunk=0; allocated_memory < total_mem; chunk++) {
    
        if (allocated_memory + chunk_size <= total_mem) current_chunk_size = chunk_size;
        else current_chunk_size = total_mem - allocated_memory;


        memory_block = malloc(current_chunk_size);
        if (memory_block == NULL) {
            printf("Failed to allocate additional memory at %lld bytes (%s).\n", allocated_memory, formatBytes(allocated_memory));
            exit(1);
        }

        allocated_memory += current_chunk_size;
        printf("Allocated addr: %p (%lu). Total allocated mem: %lld \n", memory_block, (uintptr_t) memory_block, allocated_memory);
    }

    printf("Allocated memory: %lld bytes (%s) in %d chunks of %ld bytes\n", allocated_memory, formatBytes(allocated_memory), chunk, chunk_size);

}


void usage(char *prog)
{
	printf("%s [-t total] [-s size]\n", prog);
	printf("\t -t total memory to allocate (default %lld bytes)\n", DEFAULT_TOTAL);
	printf("\t -s size of objects to allocate (default %d bytes)\n", DEFAULT_SIZE);
	exit(1);
}


int main(int argc, char *argv[]) {

    long long total_mem = DEFAULT_TOTAL;
    long chunk_size = DEFAULT_SIZE;
    
    
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


