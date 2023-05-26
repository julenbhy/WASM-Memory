#include <assert.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <string.h>
#include <unistd.h>
#include <stdbool.h>

#include "random.h"

#define CACHE_ALIGNED 1

#define xmalloc malloc
#define xfree free

#define DEFAULT_OBJECT_SIZE 1024

int debug_flag = 0;
int verbose_flag = 0;
int per_iter_work_count = 20 * 1024 * 1024; // how many mallocs and frees should each iter do?
int object_size = DEFAULT_OBJECT_SIZE;

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
  int objcount;
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
  //If the bag has space available to add new batches.
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


struct counter *counters;
struct batchbag *batchbags;



void mem_allocator () {
  struct lran2_st lr;
  lran2_init(&lr, 0);

  int ocount = 0;
  while (ocount < per_iter_work_count) {
    struct batch *b = xmalloc(sizeof(*b));
    b->objcount = 0;
    for (int i = 0; i < OBJECTS_PER_BATCH && ocount < per_iter_work_count; i++) {
      size_t siz = object_size > 0 ? object_size : possible_sizes[lran2(&lr)%n_sizes];
      b->objects[i] = xmalloc(siz);
      memset(b->objects[i], i%256, siz);
      b->objcount++;
      ocount++;
      if (ocount >= per_iter_work_count) break;
    }
    //printf("ocount=%d per_iter_work_count=%d\n", ocount, per_iter_work_count);
    batchbag_enqueue(batchbags, b);
  }
  
  
  batchbag_note_end(batchbags);
  if (verbose_flag) printf("mem_allocator finishing\n");
  return;
}



void mem_releaser() {

  while (1) {
    if (verbose_flag) printf("%s:%d dequeuing\n", __FILE__, __LINE__);
    struct batch *b = batchbag_dequeue(batchbags);
    if (verbose_flag) printf("%s:%d got %p\n", __FILE__, __LINE__, b);
    if (b) {
      for (int i = 0; i < b->objcount; i++) {
	xfree(b->objects[i]);
      }
      counters->c += b->objcount;
      xfree(b);
    } else {
      if (verbose_flag) printf("%s:%d releaser finishing\n", __FILE__, __LINE__);
      return;
    }
  }
}


int run_memory_free_test()
{
	
	double elapse_time = 0.0;
	
	// Initialize counters
	if (verbose_flag) printf("Initializing counters ...\n");
	counters->c = 0;
	batchbag_init(batchbags);
		
	gettimeofday(&begin, (struct timezone *)0);


	// Run mem_allocator for each iteration
	if (verbose_flag) printf("Starting mem_allocator ...\n");
	mem_allocator();
		
	if (verbose_flag) printf("Starting mem_releaset ...\n");
	mem_releaser();
	

	// Calculate elapsed time
	elapse_time = elapsed_time (&begin);
	
	
	if (verbose_flag) printf("Testing for %d allocations per iteration\n", per_iter_work_count);

	printf("Freed %ld blocks in %.2f seconds. %.2f free/sec (%.2fM free/second).\n",
			       counters->c, elapse_time, ((double)counters->c/elapse_time), ((double)counters->c/elapse_time)*1e-6);

	if (verbose_flag) printf("----------------------------------------------------------------\n");


	batchbag_destroy(&batchbags[0]);

	if (verbose_flag) printf("Program done\n");
	return(0);

}


void usage(char *prog)
{
	printf("%s [-t run_time] [-d] [-v]\n", prog);
	printf("\t -t run time in seconds, default 20.0 seconds.\n");
	printf("\t -s size of object to allocate (default %d bytes) (specify -1 to get many different object sizes)\n", DEFAULT_OBJECT_SIZE);
	printf("\t -d debug mode\n");
	printf("\t -v verbose mode (-v -v produces more verbose)\n");
	exit(1);
}

int main(int argc, char **argv)
{
	int c;
	while ((c = getopt(argc, argv, "n:ds:v")) != -1) {
		
		switch (c) {

		case 'n':
		        per_iter_work_count = atof(optarg);
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

	if (verbose_flag) printf("Starting %d per_iter_work_count, %d object_size ...\n", per_iter_work_count, object_size);
	
	/* allocate memory for working arrays */
	counters = (struct counter *) xmalloc(sizeof(*counters));
	batchbags = (struct batchbag *) xmalloc(sizeof(*batchbags));
	
	run_memory_free_test();
	return 0;
}

