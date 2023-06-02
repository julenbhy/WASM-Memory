#!/bin/bash

# C
gcc main.c -O2 -o main

# Clang wasi
/opt/wasi-sdk/bin/clang main.c -O2 -o clang.wasm

/opt/wasi-sdk/bin/clang main.c -O2 -Wl,--stack-first -o clang-stack-first.wasm


# Emscripten
emcc main.c -O2 -o emcc-upstream.wasm


# Binary information
objdump --disassemble main > c.objdump
for wasm in *.wasm
do
    echo "$wasm"
    wasm2wat --generate-names "$wasm" > "$wasm.wat"
    wasm-objdump -xhd "$wasm" > "$wasm.objdump"
done


# Dynamic information
./main | tee "c.stdout"
for wasm in *.wasm
do
    echo "$wasm"
    wasmtime "$wasm" | tee "$wasm.stdout"
done
