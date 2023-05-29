TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall -O3

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS = -O3

# Compilation with EMCC
EMCC_CC = emcc
EMCC_CFLAGS = -O3


# Flags for wasmtime
WASMTIME_FLAGS = --dir=.  # Add any additional wasmtime flags here

.PHONY: all clean

all: $(TARGET) clang.wasm

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $(TARGET).c

clang.wasm: $(TARGET).c
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c
	
emcc.wasm: $(TARGET).c
	$(EMCC_CC) $(EMCC_CFLAGS) -o $@ $(TARGET).c


PARAMS ?=
run: $(TARGET)
	./$(TARGET) $(PARAMS)

runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm $(PARAMS)
	
	
COMPILER ?= clang
perf_annotate:
	sudo perf record -k mono /home/$(USER)/.wasmtime/bin/wasmtime --profile=jitdump $(COMPILER).wasm
	sudo perf inject --jit --input perf.data --output perf.jit.data
	sudo perf annotate --input perf.jit.data # > $(COMPILER).annotate
	make clean
	
perf_report:
	sudo perf record -k mono /home/$(USER)/.wasmtime/bin/wasmtime --profile=jitdump $(COMPILER).wasm
	sudo perf inject --jit --input perf.data --output perf.jit.data
	sudo perf report --input perf.jit.data # > $(COMPILER).report
	make clean
	
	
clean:
	rm -f *.so
	rm -f *.data
	rm -f *.dump
	

	
	
clean:
	rm -f $(TARGET) *.wasm
