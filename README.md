# WASM-Memory

Some tests to evaluate memory behavior in webassembly


## [bradley-malloc:](https://github.com/julenbhy/WASM-Memory/tree/main/bradley-malloc)
Based on: https://github.com/kuszmaul/SuperMalloc/blob/master/tests/bradley-malloc-test.c

The code has been adapted to have a non-pthreaded version to compare the performance between the two cases.

## [max-static-memory:](https://github.com/julenbhy/WASM-Memory/tree/main/max-static-memory)
This benchmark is intended to evaluate the maximum amount of static memory that a program can allocate. 
- gcc max mem: < 8MB (default stack size on linux 8MB).
- wasi-sdk/clang: 64KB (default stack size 64KB, same as wasm page size, can be modified using -z stack-size=n).
- emcc: 5MB (default stack size 5MB, can be modified using -s TOTAL_STACK=10MB)

## [max-dynamic-memory:](https://github.com/julenbhy/WASM-Memory/tree/main/max-dynamic-memory)
- wasm max heap size: 4GB.

