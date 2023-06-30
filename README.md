# WASM-Memory

The WebAssembly-Memory Repository is a dedicated resource designed to facilitate in-depth exploration and evaluation of memory management within WebAssembly (Wasm) applications. This repository provides a diverse collection of C programs for researchers and developers seeking to understand and analyze the intricate workings of memory in both single-threaded and multi-threaded scenarios. All programs within this repository are developed and tested using the WebAssembly System Interface (WASI) version 20, ensuring compatibility and relevance within the evolving WebAssembly ecosystem.

Please note that Emscripten does not currently support threads, while the wasi-sdk-20 clang compiler does provide thread support. Therefore, experiments involving threads will only be executed using wasi-sdk/clang compiler.


## no-threads

#### malloc_sizes: 
This C program serves as a memory benchmarking tool, measuring the time taken to allocate a specified amount of memory in chunks of a given size. It provides detailed statistics on the total allocated memory, the number of allocated chunks, and the average chunk allocation time. This tool is valuable for evaluating memory performance and efficiency in WebAssembly applications.

#### max-dynamic-memory:
This C program is a memory allocation tool designed to evaluate the maximum amount of dynamic memory that can be reserved. It allows users to allocate a specific amount of memory and provides information about the allocated memory chunks, including their addresses and sizes. By running this program, developers and researchers can gain insights into the memory allocation capabilities of the system and optimize memory usage in WebAssembly applications.

#### max-dynamic-memory:
This C program aims to determine the maximum size of the stack and observe the behavior when it is exceeded. It takes a command-line argument specifying the desired size of the array. The program then creates an array of the specified size on the stack. By running this program with different sizes, one can explore the limitations and behavior of the stack in WebAssembly applications when exceeding its maximum size.

#### stack_overflow:
This C program explores stack overflow behavior by recursively calling a function until the stack limit is reached. The maximum number of recursive calls can be specified as a command-line argument, with a default value of 100.

#### stack-heap-arrangement:
This C program explores the memory layout and addresses of various variables in different memory regions, such as the stack, heap, and global constant area. It relies on the use of __builtin_frame_address to retrieve the frame pointer address.

## threads
#### breadley-malloc:

#### max-dynamic-memory:
This program serves as a tool to observe the behavior of memory allocation in a multi-threaded environment. It helps evaluate how memory allocation is managed and synchronized among different threads, providing insights into the efficiency and performance of concurrent memory operations.

When native c the heap is divided into thread arenas. However, when compiling to wasm, the threads compete to write in the same heap space. The 4Gb of heap are dividing along the threads

#### max-static-memory:
This C program aims to determine the maximum size of the stack and observe the behavior when it 
is exceeded if using threads. It takes a command-line argument specifying the desired size of the array. The program 
then creates an array of the specified size on the stack. By running this program with different sizes, 
one can explore the limitations and behavior of the stack in WebAssembly applications when exceeding its maximum size.


Unlike the heap, in both, native c and wasm, each thread does have its own full-sized stack without 
dividing the stack size among threads.
The thread stacks are arranged in ascending order and at a distance of 65680b between stack pointers.
A thread can access and modify positions in the stack of another thread.

#### stack-overflow:
This C program aims to investigate the consequences of stack overflow caused by recursive calls in a multi-threaded environment. By creating multiple threads and performing recursive function calls, it explores the limitations of stack memory and observes the behavior when those limits are exceeded. The program helps in understanding the impact of stack overflow on program execution, such as crashes or unexpected behavior, and provides insights into stack management in multi-threaded applications.


## Bench-malloc
[bench-malloc-simple](https://github.com/daanx/mimalloc-bench/blob/master/bench/glibc-bench/bench-malloc-simple.c) and bench-malloc-simple adapted to multithreading in order to evaluate malloc performance for different malloc sizes.
