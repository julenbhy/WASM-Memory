CC=/opt/wasi-sdk/bin/clang

$CC fib.c -O2 -o c.wasm

sudo perf record -k mono /home/julen/.wasmtime/bin/wasmtime --profile=jitdump c.wasm
sudo perf inject --jit --input perf.data --output perf.jit.data
sudo perf report --input perf.jit.data

rm -f *.wasm *.so *.data *.dump
