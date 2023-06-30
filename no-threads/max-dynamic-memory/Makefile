TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS = -z stack-size=65536	# max heap modified by: -Wl,--max-memory=4294967296    max stack: -z stack-size=65536

# Compilation with wasi-sdk/clang
EMCC_CC = emcc
EMCC_CFLAGS = -s TOTAL_MEMORY=4095MB	# max total mem modified by: -s TOTAL_MEMORY=4095MB    max stack: -s TOTAL_STACK=5MB


# Flags for wasmtime
WASMTIME_FLAGS = # Add any additional wasmtime flags here


.PHONY: all clean

all: $(TARGET) $(TARGET)32 clang.wasm emcc.wasm

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $(TARGET).c

$(TARGET)32: $(TARGET).c
	$(CC) -m32 $(CFLAGS) -o $@ $(TARGET).c
	
clang.wasm: $(TARGET).c
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c
	
emcc.wasm: $(TARGET).c
	$(EMCC_CC) $(EMCC_CFLAGS) -o $@ $(TARGET).c


# 4294967296 (4GB)
PARAMS ?= -t 4294967296
run: $(TARGET)
	./$(TARGET) $(PARAMS)
	
run32: $(TARGET)32
	./$(TARGET)32 $(PARAMS)
	
runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm -- $(PARAMS)
	
runemcc: emcc.wasm
	wasmtime $(WASMTIME_FLAGS) emcc.wasm -- $(PARAMS)
	
	

clean:
	rm -f $(TARGET) $(TARGET)32 *.wasm
