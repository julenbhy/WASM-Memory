rustc --target wasm32-wasi fib.rs -O -o rust.wasm

sudo perf record -k mono /home/julen/.wasmtime/bin/wasmtime --profile=jitdump rust.wasm
sudo perf inject --jit --input perf.data --output perf.jit.data
sudo perf report --input perf.jit.data

rm -f *.wasm *.so *.data *.dump
