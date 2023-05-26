TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
WASM_CC = /opt/wasi-sdk/bin/clang
WASM_CFLAGS = 

# Source file
SOURCE = main.c

# Flags for wasmtime
WASMTIME_FLAGS =  # Add any additional wasmtime flags here

.PHONY: all clean

all: $(TARGET) $(TARGET).wasm

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $(TARGET).c

$(TARGET).wasm: $(SOURCE)
	$(WASM_CC) $(WASM_CFLAGS) -o $@ $(TARGET).c


run: $(TARGET)
	./$(TARGET) 174499 # With n=>174499 iterations makes Segmentation fault (core dumped) sometimes, the higher n, the commonly occurs

runwasm: $(TARGET).wasm
	wasmtime $(WASMTIME_FLAGS) $(TARGET).wasm 2049 # With n=>2049 iterations makes Segmentation fault (core dumped) always
	

clean:
	rm -f $(TARGET) $(TARGET).wasm
