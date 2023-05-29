#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#define MIX_CHUNK 1024
#define MAX_CHUNK 1*1024*1024


struct timeval begin;

static void
tvsub(tdiff, t1, t0)
	struct timeval *tdiff, *t1, *t0;
{

	tdiff->tv_sec = t1->tv_sec - t0->tv_sec;
	tdiff->tv_usec = t1->tv_usec - t0->tv_usec;
	if (tdiff->tv_usec < 0)
		tdiff->tv_sec--, tdiff->tv_usec += 1000000;
}

double elapsed_time(struct timeval *time0)
{
	struct timeval timedol;
	struct timeval td;
	double et = 0.0;

	gettimeofday(&timedol, (struct timezone *)0);
	tvsub( &td, &timedol, time0 );
	et = td.tv_sec + ((double)td.tv_usec) / 1000000;

	return( et );
}


int main(int argc, char *argv[]) {
    
    
    long long mem_req = (long long)3*1024*1024*1024; 
    long long allocated_mem = 0;
    int mem_increment;
    void *mem_block;
    int chunk;
    double elapse_time = 0.0;
    
    if (argc != 2) {
        printf("Usage: %s <memory_requested> (default 3GB)\n", argv[0]);
    }
    else mem_req = atoll(argv[1]);
    printf("Allocating %lldB  \n", mem_req);
    
    srand(123);

    gettimeofday(&begin, (struct timezone *)0);
    
    for(chunk=0; allocated_mem < mem_req; chunk++) {
        mem_increment=rand() % (MAX_CHUNK-MIX_CHUNK+1)+MIX_CHUNK;
        if (allocated_mem + mem_increment > mem_req) {
            mem_increment = mem_req - allocated_mem;
        }
        
        void *mem_block = malloc(mem_increment);
        
        if (mem_block == NULL) {
            printf("Failed to allocate additional memory.\n");
            return 1;
        }
        
        allocated_mem += mem_increment;
        
        printf("Mem block %p with size %d contains: %d, total allocated memory: %lld\n", mem_block, mem_increment, *((int *)mem_block), allocated_mem);

    }
    elapse_time = elapsed_time (&begin);

    printf("Allocated memory: %lld bytes in %d chunks, in %f seconds\n", allocated_mem, chunk, elapse_time);
    return 0;
}

