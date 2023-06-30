TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS =

# Compilation with EMCC
EMCC_CC = emcc
EMCC_CFLAGS =


# Flags for wasmtime
WASMTIME_FLAGS = --dir=.  # Add any additional wasmtime flags here

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


PARAMS ?=
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
