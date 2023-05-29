#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>


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
    
    
    long long max_mem = (long long)3*1024*1024*1024;
    int chunk_size = 1024*1024*1024;
    long long chunks = max_mem/chunk_size;
    void *mem_block;
    double elapse_time = 0.0;


    gettimeofday(&begin, (struct timezone *)0);
    
    for(int i=0; i<chunks; i++) {        
        mem_block = malloc(chunk_size);  
        if (mem_block == NULL) {
            printf("Failed to allocate additional memory.\n");
            return 1;
        }

    }
   
    elapse_time = elapsed_time (&begin);

    printf("Allocated %lld bytes in %lld chunks, of size %d, in %f seconds\n", max_mem, chunks, chunk_size, elapse_time);
    printf("\tAllocated chuncks per second: %.2f\n", (double)chunks/elapse_time);
    printf("\tAverage allocation time: %f\n", elapse_time/(double)chunks);
    return 0;
}

