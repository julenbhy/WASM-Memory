TARGET = dynamic

# Compilation with gcc
CC = gcc
CFLAGS = -Wall -O3

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS =			# max heap modified by: -Wl,--max-memory=4294967296

# Compilation with wasi-sdk/clang
EMCC_CC = emcc
EMCC_CFLAGS =			# max heap modified by: -s ALLOW_MEMORY_GROWTH=1 -s MAXIMUM_MEMORY=4294967296


# Flags for wasmtime
WASMTIME_FLAGS = # Add any additional wasmtime flags here

.PHONY: all clean

all: $(TARGET) clang.wasm emcc.wasm

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $(TARGET).c -DMAX_SIZE=8388608			#default max = 8388608

clang.wasm: $(SOURCE)
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c -DMAX_SIZE=65536		#default max = 65536
	
emcc.wasm: $(SOURCE)
	$(EMCC_CC) $(EMCC_CFLAGS) -o $@ $(TARGET).c -DMAX_SIZE=5242880		#default max = 5242880


# 4294967296 (4GB)
PARAMS ?= 4294967296
run: $(TARGET)
	./$(TARGET) $(PARAMS)

runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm $(PARAMS)
	
runemcc: emcc.wasm
	wasmtime $(WASMTIME_FLAGS) emcc.wasm $(PARAMS)
	
	

clean:
	rm -f $(TARGET) *.wasm
