#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h> // for uintptr_t
#include <pthread.h>

#define NUM_THREADS 4

const char * const_str = "global const string";


__attribute__((noinline))
void leaf(char * arg_str, char * stack_str, char * heap_str, char * heap_str_end, int thread_id) {
  printf("***IN LEAF (Thread %d)***\n", thread_id);
  printf("__builtin_frame_address at: %p (%lu)\n\n", __builtin_frame_address(0), (uintptr_t) __builtin_frame_address(0));

  int stack_callee = 42;


  printf("    %s, addr: %p (%lu)\n", const_str, const_str, (uintptr_t) const_str);
  printf("    %s, addr: %p (%lu)\n", stack_str, stack_str, (uintptr_t) stack_str);
  printf("    stack value in leaf() function, addr: %p (%lu)\n", &stack_callee, (uintptr_t) &stack_callee);
  printf("    \tstack grows: %ld\n", ((void*) &stack_callee) - ((void*) stack_str));
  printf("    %s, addr: %p (%lu)\n", heap_str, heap_str, (uintptr_t) heap_str);
  printf("    \t%s, addr: %p (%lu)\n", heap_str_end, heap_str_end, (uintptr_t) heap_str_end);
  printf("    \tmalloc has grown heap in: %ld but 42 was requested\n", heap_str_end - heap_str);
  printf("    argv[0]: %s, addr: %p (%lu)\n\n", arg_str, arg_str, (uintptr_t) arg_str);
}

__attribute__((noinline))
void *intermediate(void *arg) {
    int *params = (int *)arg;
    int thread_id = params[0];
    char *arg_str = (char *)params[1];

    printf("***IN INTERMEDIATE (Thread %d)***\n", thread_id);
    printf("__builtin_frame_address at: %p (%lu)\n\n", __builtin_frame_address(0), (uintptr_t)__builtin_frame_address(0));

    char stack_str[64];
    sprintf(stack_str, "stack-allocated (local) string (Thread %d)", thread_id);

    char *heap_str = (char *)malloc(42 * sizeof(char));
    sprintf(heap_str, "dynamically (heap) allocated string (Thread %d)", thread_id);

    char *heap_str_end = (char *)malloc(42 * sizeof(char));
    sprintf(heap_str_end, "second dynamically (heap) allocated (Thread %d)", thread_id);

    leaf(arg_str, stack_str, heap_str, heap_str_end, thread_id);

    pthread_exit(NULL);
}

int main(int argc, char **argv) {
    printf("***IN MAIN***\n");
    printf("__builtin_frame_address at: %p (%lu)\n\n", __builtin_frame_address(0), (uintptr_t)__builtin_frame_address(0));

    pthread_t threads[NUM_THREADS];
    int params[NUM_THREADS][2];

    for (int i = 0; i < NUM_THREADS; i++) {
        params[i][0] = i + 1;
        params[i][1] = (int)argv[0];
        int result = pthread_create(&threads[i], NULL, intermediate, params[i]);
        if (result != 0) {
            printf("Error creating thread %d\n", i + 1);
            return -1;
        }
    }

    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    return 0;
}
