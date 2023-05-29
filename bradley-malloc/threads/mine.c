/**
 * \file   test-malloc_test.c
 * \author C. Lever and D. Boreham, Christian Eder ( ederc@mathematik.uni-kl.de )
 * \date   2000
 * \brief  Test file for xmalloc. This is a multi-threaded test system by 
 *         Lever and Boreham. It is first noted in their paper "malloc() 
 *         Performance in a Multithreaded Linux Environment", appeared at the
 *         USENIX 2000 Annual Technical Conference: FREENIX Track.
 *         This file is part of XMALLOC, licensed under the GNU General
 *         Public License version 3. See COPYING for more information.
 *
 * This verison does a fixed amount of work rather than running for a fixed amount of time.
 * Also the queue is not a shared queue.
 */
#define _GNU_SOURCE
#include <assert.h>
#include <errno.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <unistd.h>

#include "random.h"

#define CACHE_ALIGNED 1

#define xmalloc malloc
#define xfree free

#define DEFAULT_OBJECT_SIZE 1024

int debug_flag = 0;
int verbose_flag = 0;
int num_workers = 1;
int per_thread_work_count = 20 * 1024 * 1024; // how many mallocs and frees should each thread do?
int object_size = DEFAULT_OBJECT_SIZE;

/* array for saving result of each thread */
struct counter {
  long c
#if CACHE_ALIGNED
 __attribute__((aligned(64)))
#endif
;
};
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

static const long possible_sizes[] = {8,12,16,24,32,48,64,96,128,192,256,(256*3)/2,512, (512*3)/2, 1024, (1024*3)/2, 2048};
static const int n_sizes = sizeof(possible_sizes)/sizeof(long);

#define OBJECTS_PER_BATCH 4096
struct batch {
  void *objects[OBJECTS_PER_BATCH];
  int   objcount;
};

#define BATCH_COUNT_LIMIT 100
struct batchbag {
  int n_in_bag __attribute__((aligned(64)));
  bool noted_end;
  struct batch *batches[BATCH_COUNT_LIMIT];
} *batchbags;

static void batchbag_init(struct batchbag *b) {
  b->n_in_bag = 0;
}

static void batchbag_destroy(struct batchbag *b) {
  assert(b->n_in_bag == 0);
}

static void batchbag_enqueue(struct batchbag *b, struct batch *batch) {
  // Wait until the bag has space available to add new batches.
  if (b->n_in_bag < BATCH_COUNT_LIMIT){
    b->batches[b->n_in_bag++] = batch; //Add new batch and increment counter
  }
}

static void batchbag_note_end(struct batchbag *b) {
  assert(!b->noted_end);
  b->noted_end = true;
}

static struct batch* batchbag_dequeue(struct batchbag *b) {
  // Return a batch.  If we return a NULL, that means end of bag.
  if (b->n_in_bag == 0) {
    assert(b->noted_end);
    return NULL;
  } else {
    struct batch *result = b->batches[--b->n_in_bag];
    return result;
  }
}   

//#define atomic_load(addr) __atomic_load_n(addr, __ATOMIC_CONSUME)
//#define atomic_store(addr, v) __atomic_store_n(addr, v, __ATOMIC_RELEASE)

struct counter *counters;
struct batchbag *batchbags;

static void *mem_allocator (int thread_id) {

  struct lran2_st lr;
  lran2_init(&lr, thread_id);

  int ocount = 0;
  while (ocount < per_thread_work_count) {
    struct batch *b = xmalloc(sizeof(*b));
    b->objcount = 0;
    for (int i = 0; i < OBJECTS_PER_BATCH && ocount < per_thread_work_count; i++) {
      size_t siz = object_size > 0 ? object_size : possible_sizes[lran2(&lr)%n_sizes];
      b->objects[i] = xmalloc(siz);
      memset(b->objects[i], i%256, siz);
      b->objcount++;
      ocount++;
      if (ocount >= per_thread_work_count) break;
    }
    //printf("ocount=%d per_thread_work_count=%d\n", ocount, per_thread_work_count);
    batchbag_enqueue(&batchbags[thread_id], b);
  }
  
  batchbag_note_end(&batchbags[thread_id]);
  if (verbose_flag) printf("mem_allocator %d finishing\n", thread_id);
  return NULL;
}



static void *mem_releaser(int thread_id) {


  while (1) {
    if (verbose_flag) printf("%s:%d %d dequeuing\n", __FILE__, __LINE__, thread_id);
    struct batch *b = batchbag_dequeue(&batchbags[thread_id]);
    if (verbose_flag) printf("%s:%d %d got %p\n", __FILE__, __LINE__, thread_id, b);
    if (b) {
      for (int i = 0; i < b->objcount; i++) {
	xfree(b->objects[i]);
      }
      counters[thread_id].c += b->objcount;
      xfree(b);
    } else {
      if (verbose_flag) printf("%s:%d releaser %d finishing\n", __FILE__, __LINE__, thread_id);
      return NULL;
    }
  }
}

int run_memory_free_test()
{
	void *ptr = NULL;
	int i;
	double elapse_time = 0.0;
	long total = 0;

	/* Initialize counter */
	for(i = 0; i < num_workers; ++i) {
		counters[i].c = 0;
		batchbag_init(&batchbags[i]);
	}

	gettimeofday(&begin, (struct timezone *)0);

	/* Start up the mem_allocator and mem_releaser threads  */
	for(i = 0; i < num_workers; ++i) {
		
		if (verbose_flag) printf("Starting mem_allocator %i ...\n", i);
		mem_allocator(0);
		
		if (verbose_flag) printf("Starting mem_releaser %i ...\n", i);
		mem_releaser(0);
	}
	
	  printf("ESTAMOS\n");

	if (verbose_flag) printf("Testing for %d allocations per thread\n\n", per_thread_work_count);

	elapse_time = elapsed_time (&begin);

	for(i = 0; i < num_workers; ++i) {
		printf("Thread %2i frees %ld blocks in %.2f seconds. %.2f free/sec (%.2fM free/second).\n",
			       i, counters[i].c, elapse_time, ((double)counters[i].c/elapse_time), ((double)counters[i].c/elapse_time)*1e-6);
	}
	
	printf("----------------------------------------------------------------\n");
	for(i = 0; i < num_workers; ++i) total += counters[i].c;
	
	printf("Total %ld freed in %.2f seconds. %.2fM free/second\n",
		 total, elapse_time, ((double) total/elapse_time)*1e-6);

	for(i = 0; i < num_workers; ++i) {
	  batchbag_destroy(&batchbags[i]);
	}

	if (verbose_flag) printf("Program done\n");
	return(0);
}

void usage(char *prog)
{
	printf("%s [-w workers] [-t run_time] [-d] [-v]\n", prog);
	printf("\t -w number of producer threads (and number of consumer threads), default %d\n", num_workers);
	printf("\t -t run time in seconds, default 20.0 seconds.\n");
	printf("\t -s size of object to allocate (default %d bytes) (specify -1 to get many different object sizes)\n", DEFAULT_OBJECT_SIZE);
	printf("\t -d debug mode\n");
	printf("\t -v verbose mode (-v -v produces more verbose)\n");
	exit(1);
}

int main(int argc, char **argv)
{
	int c;
	while ((c = getopt(argc, argv, "w:n:ds:v")) != -1) {
		
		switch (c) {

		case 'w':
			num_workers = atoi(optarg);
			break;
		case 'n':
		        per_thread_work_count = atof(optarg);
			break;
		case 'd':
			debug_flag = 1;
			break;
		case 's':
			object_size = atoi(optarg);
			break;
		case 'v':
			verbose_flag++;
			break;
		default:
			usage(argv[0]);
		}
	}

	/* allocate memory for working arrays */
	counters = (struct counter *) xmalloc(sizeof(*counters) * num_workers);
	batchbags = (struct batchbag *) xmalloc(sizeof(*batchbags) * num_workers);
	
	run_memory_free_test();
	return 0;
}
