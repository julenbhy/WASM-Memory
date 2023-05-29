sudo perf record -k mono /home/julen/.wasmtime/bin/wasmtime --profile=jitdump clang.wasm
sudo perf inject --jit --input perf.data --output perf.jit.data
sudo perf report --input perf.jit.data

rm -f *.so *.data *.dump
