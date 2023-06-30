/**
 * Author:    Marc Sanchez Artigas
 * Created:   20.06.2023
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
**/
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#ifndef __USE_GNU
#define __USE_GNU
#endif

#include <execinfo.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define ucontext asm_ucontext
#include <asm/ucontext.h>
#undef asm_ucontext

void crit_err_hdlr(int sig_num, siginfo_t * info, void * ucontext) {
    void *                    array[50];
    void *                    caller_address;
    char **                   messages;
    int                       size, i;
    struct asm_ucontext *     uc;

    uc = (struct asm_ucontext *) ucontext;

    /* Get the address at the time the signal was raised */
    #if defined(__i386__) // gcc specific
        caller_address = (void *) uc->uc_mcontext.eip; // EIP: x86 specific
    #elif defined(__x86_64__) // gcc specific
        caller_address = (void *) uc->uc_mcontext.rip; // RIP: x86_64 specific
    #else
    #error Unsupported architecture. 
    #endif

    fprintf(stderr, "signal %d (%s), address is %p from %p\n",
    sig_num, strsignal(sig_num), info->si_addr,
    (void *)caller_address);

    size = backtrace(array, 50);

    /* overwrite sigaction with caller's address */
    array[1] = caller_address;

    messages = backtrace_symbols(array, size);

    /* skip first stack frame (points here) */
    for (i = 1; i < size && messages != NULL; ++i) {
        fprintf(stderr, "[bt]: (%d) %s\n", i, messages[i]);
    }

    free(messages);

    exit(EXIT_FAILURE);
}





#include <pthread.h>
#include <inttypes.h> // for uintptr_t

#define NUM_THREADS 4
void* stacks[NUM_THREADS];

int recursive_thread = 2; // The thread to execute the recursive function
int recursivity = 10000;	// Number of recursive calls

#define SIZE 100000	// Size of the buffer to decrease the ammount of recursive calls 

pthread_barrier_t barrier;

char verbose = 0;

void stack_overflow(int n, char* src) {
    // Use a buffer in order to increase frame size and reduce recursive calls
    char buf[SIZE];
    strcpy(buf, src);

    void* stack = __builtin_frame_address(0); 
    if(verbose) printf("Function call %d: frame pointer at: %p (%lu)\n", n, __builtin_frame_address(0), (uintptr_t) __builtin_frame_address(0));
    

    if(n) stack_overflow(--n, buf); 
}


void *thread_loop (void *arg) {
    int thread_id = *(int *)arg;

    stacks[thread_id]=__builtin_frame_address(0);    
    
    // Wait all threads
    pthread_barrier_wait(&barrier);
    
    if(verbose && thread_id == 0) 
    	for(int i=0; i<NUM_THREADS; i++) 
    		printf("Thread %d Stack at: %p (%lu)\n", i, stacks[i], (uintptr_t)stacks[i]);
    
    pthread_barrier_wait(&barrier);
    	
    
    if(thread_id==recursive_thread){
    	if(verbose) printf("Thread %d starting recursive function\n", thread_id);
    	char buf [SIZE];
        stack_overflow(recursivity, buf);
    }
    
    if(verbose) do{ printf("\tThread %d alive\n", thread_id); sleep(1); }while(1);
        
    return NULL;
}






int crash() {  char * p = NULL;  *p = 0;  return 0; }

void req(){req();}

// Same as thread_loop but without threads
void no_thread() {
    printf("Starting recursive function\n");
    char buf [SIZE];
    //stack_overflow(recursivity, buf);	// Doesn't work
    //crash();				// Works
    req();				// Doesn't work either
}


int main(int argc, char ** argv) {
    /* Regsiter a handler to catch signal 11, also known as SIGSEGV (signal segmentation violation)  */
    struct sigaction sigact;

    sigact.sa_sigaction = crit_err_hdlr;
    sigact.sa_flags = SA_RESTART | SA_SIGINFO;

    if (sigaction(SIGSEGV, &sigact, (struct sigaction *)NULL) != 0)  {
        fprintf(stderr, "error setting signal handler for %d (%s)\n", SIGSEGV, strsignal(SIGSEGV));
        exit(EXIT_FAILURE);
    }
    

    
    
    no_thread();

    /*
    pthread_t threads[NUM_THREADS];
    int thread_ids[NUM_THREADS];
    
    pthread_barrier_init(&barrier, NULL, NUM_THREADS);

    
    for (int i = 0; i < NUM_THREADS; i++) {
        thread_ids[i] = i;
        pthread_create(&threads[i], NULL, thread_loop, (void*) &thread_ids[i]);
    }

    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }
*/

    exit(EXIT_SUCCESS);
}
