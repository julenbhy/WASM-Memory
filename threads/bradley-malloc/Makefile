TARGET = breadley-malloc

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS = --target=wasm32-wasi-threads -pthread -Wl,--import-memory,--export-memory,--max-memory=4294967296


# Flags for wasmtime
WASMTIME_FLAGS = --wasm-features=threads --wasi-modules=experimental-wasi-threads

.PHONY: all clean

all: $(TARGET) clang.wasm

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $(TARGET).c

clang.wasm: $(SOURCE)
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c


PARAMS ?=
run: $(TARGET)
	./$(TARGET) $(PARAMS) | tee c.out

runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm -- $(PARAMS) | tee clang.out
	
	

clean:
	rm -f $(TARGET) clang.wasm
