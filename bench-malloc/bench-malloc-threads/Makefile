TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS = --target=wasm32-wasi-threads -pthread -Wl,--import-memory,--export-memory,--max-memory=4294967296	
CLANG_CFLAGS += -D_WASI_EMULATED_PROCESS_CLOCKS -lwasi-emulated-process-clocks # To enable getrusage 


# Flags for wasmtime
WASMTIME_FLAGS = --wasm-features=threads --wasi-modules=experimental-wasi-threads# Add any additional wasmtime flags here

.PHONY: all clean

all: $(TARGET) $(TARGET)32 clang.wasm

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $(TARGET).c
	
$(TARGET)32: $(TARGET).c
	$(CC) -m32 $(CFLAGS) -o $@ $(TARGET).c

clang.wasm: $(TARGET).c
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c
	


PARAMS ?= 
run: $(TARGET)
	./$(TARGET) $(PARAMS)
	
run32: $(TARGET)32
	./$(TARGET)32 $(PARAMS)

runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm -- $(PARAMS)

	
	

clean:
	rm -f $(TARGET) $(TARGET)32 *.wasm
