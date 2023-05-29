#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h> // for uintptr_t

const char * const_str = "global const string";
const int malloc_size= 42;


__attribute__((noinline))
void leaf(char * arg_str, char * stack_str, char * heap_str, char * heap_str_end) {
  int stack_callee = 42;

  printf("  in leaf()\n");

  printf("    %s, addr: %p (%lu)\n", const_str, const_str, (uintptr_t) const_str);
//  printf("    global const int, addr: %p (%lu)\n", &malloc_size, (uintptr_t) &malloc_size);
  printf("    %s, addr: %p (%lu)\n", stack_str, stack_str, (uintptr_t) stack_str);
  printf("    stack value in leaf() function, addr: %p (%lu)\n", &stack_callee, (uintptr_t) &stack_callee);
  printf("    \tstack grows: %ld\n", ((void*) &stack_callee) - ((void*) stack_str));
  printf("    %s, addr: %p (%lu)\n", heap_str, heap_str, (uintptr_t) heap_str);
  printf("    \t%s, addr: %p (%lu)\n", heap_str_end, heap_str_end, (uintptr_t) heap_str_end);
  printf("    \tmalloc has grown heap in: %ld but %d wasm requested\n", heap_str_end - heap_str, malloc_size);
  printf("    argv[0]: %s, addr: %p (%lu)\n\n", arg_str, arg_str, (uintptr_t) arg_str);
}

__attribute__((noinline))
void intermediate(char * arg_str) {
  printf("    \tstack at the beginning, addr :%p (%lu)\n", __builtin_frame_address(0), (uintptr_t) __builtin_frame_address(0));
  char stack_str[64];
  strcpy(stack_str, "stack-allocated (local) string");
  
  char * heap_str = (char*) malloc(malloc_size*sizeof(char));
  strcpy(heap_str, "dynamically (heap) allocated string");
  char * heap_str_end = (char*) malloc(malloc_size*sizeof(char));
  strcpy(heap_str_end, "next dynamically (heap) allocated");

  printf("  in intermediate()\n");
  leaf(arg_str, stack_str, heap_str, heap_str_end);
}

int main(int argc, char **argv) {
  printf("  in main()\n");
  intermediate(argv[0]);
  return 0;
}

