#include <stdio.h>
#include <stdlib.h>

#ifndef PAGE_SIZE 
    #define PAGE_SIZE 65536	//max=4293847964 (3GB, 1022MB, 954KB, 924B)
#endif


int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <memory_amount>\n", argv[0]);
        return 1;
    }

    long long memory_amount = atoll(argv[1]);
    long long allocated_memory = 0;
    long memory_increment = PAGE_SIZE;
    int chunk;

    for(chunk=0; allocated_memory < memory_amount; chunk++) {
        if (allocated_memory + memory_increment > memory_amount) {
            memory_increment = memory_amount - allocated_memory;
        }

        void *memory_block = malloc(memory_increment);
        if (memory_block == NULL) {
            printf("Failed to allocate additional memory.\n");
            return 1;
        }
        
        printf("%p contains: %d\n", memory_block, *((int *)memory_block));

        allocated_memory += memory_increment;
        printf("Allocated memory: %lld \n", allocated_memory);
    }

    printf("Allocated memory: %lld bytes in %d chunks of %d bytes\n", allocated_memory, chunk, PAGE_SIZE);
    return 0;
}

