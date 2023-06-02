TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS =	--target=wasm32-wasi-threads -pthread -Wl,--import-memory,--export-memory,--max-memory=4294967296		# max heap modified by: -Wl,--max-memory=4294967296

# Compilation with wasi-sdk/clang
EMCC_CC = emcc
EMCC_CFLAGS =		# max heap modified by: -s ALLOW_MEMORY_GROWTH=1 -s MAXIMUM_MEMORY=4294967296


# Flags for wasmtime
WASMTIME_FLAGS = --wasm-features=threads --wasi-modules=experimental-wasi-threads# Add any additional wasmtime flags here

.PHONY: all clean

all: $(TARGET) clang.wasm

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $(TARGET).c			#default max = 8388608

clang.wasm: $(TARGET).c
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c		#default max = 65536
	
emcc.wasm: $(TARGET).c
	$(EMCC_CC) $(EMCC_CFLAGS) -o $@ $(TARGET).c s		#default max = 5242880


# 4294967296 (4GB)
PARAMS ?= 
run: $(TARGET)
	./$(TARGET) $(PARAMS)

runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm $(PARAMS)
	
runemcc: emcc.wasm
	wasmtime $(WASMTIME_FLAGS) emcc.wasm $(PARAMS)
	
	

clean:
	rm -f $(TARGET) *.wasm
