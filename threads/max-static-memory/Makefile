TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS =	--target=wasm32-wasi-threads -pthread -Wl,--import-memory,--export-memory,--max-memory=4294967296 # max stack modified by: -z stack-size=8388608 (8MB)

# Compilation with wasi-sdk/clang
EMCC_CC = emcc
EMCC_CFLAGS = # max stack modified by: -s TOTAL_STACK=10MB


# Flags for wasmtime
WASMTIME_FLAGS = --wasm-features=threads --wasi-modules=experimental-wasi-threads # Add any additional wasmtime flags here

.PHONY: all clean

all: $(TARGET) clang.wasm

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $(TARGET).c -DNUM_THREADS=4 -DMAX_SIZE=8388608			#default max = 8388608

clang.wasm: $(TARGET).c
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c -DNUM_THREADS=4 -DMAX_SIZE=60000		#default max = 65536
	
emcc.wasm: $(TARGET).c
	$(EMCC_CC) $(EMCC_CFLAGS) -o $@ $(TARGET).c -DNUM_THREADS=4 -DMAX_SIZE=5242880		#default max = 5242880


PARAMS ?=
run: $(TARGET)
	./$(TARGET) $(PARAMS)

runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm $(PARAMS)
	
runemcc: emcc.wasm
	wasmtime $(WASMTIME_FLAGS) emcc.wasm $(PARAMS)
	
	

clean:
	rm -f $(TARGET) *.wasmsss
