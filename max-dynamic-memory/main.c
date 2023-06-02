#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#ifndef PAGE_SIZE 
    #define PAGE_SIZE 1024	//max=4293847964 (3GB, 1022MB, 954KB, 924B)
#endif

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

int main(int argc, char *argv[]) {

    long long memory_amount;
    long long allocated_memory = 0;
    long memory_increment = PAGE_SIZE;
    int chunk;
    void *memory_block;
    
    if (argc != 2) {
        printf("Usage: %s <memory_amount> (default = 1GB)\n", argv[0]);
        memory_amount = 1073741824;
    }
    else memory_amount = atoll(argv[1]);



    for(chunk=0; allocated_memory < memory_amount; chunk++) {
        if (allocated_memory + memory_increment > memory_amount) {
            memory_increment = memory_amount - allocated_memory;
        }

        memory_block = malloc(memory_increment);
        if (memory_block == NULL) {
            printf("Failed to allocate additional memory at %lld bytes (%s).\n", allocated_memory, formatBytes(allocated_memory));
            return 1;
        }

        allocated_memory += memory_increment;
        printf("Allocated addr: %p (%lu). Total allocated mem: %lld \n", memory_block, (uintptr_t) memory_block, allocated_memory);
    }

    printf("Allocated memory: %lld bytes in %d chunks of %d bytes (%s)\n", allocated_memory, chunk, PAGE_SIZE, formatBytes(allocated_memory));
    return 0;
}

