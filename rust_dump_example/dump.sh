rustc --target wasm32-wasi fib.rs -O

sudo perf record -k mono /home/julen/.wasmtime/bin/wasmtime --profile=jitdump fib.wasm
sudo perf inject --jit --input perf.data --output perf.jit.data
sudo perf report --input perf.jit.data

rm -f *.wasm *.so *.data *.dump
