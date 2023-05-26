TARGET = breadley-malloc-no-threads

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
WASM_CC = /opt/wasi-sdk/bin/clang
WASM_CFLAGS =


# Flags for wasmtime
WASMTIME_FLAGS =

.PHONY: all clean

all: $(TARGET) $(TARGET).wasm

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $(TARGET).c

$(TARGET).wasm: $(SOURCE)
	$(WASM_CC) $(WASM_CFLAGS) -o $@ $(TARGET).c


PARAMS ?=
run: $(TARGET)
	./$(TARGET) $(PARAMS) | tee c.out

runwasm: $(TARGET).wasm
	wasmtime $(WASMTIME_FLAGS) $(TARGET).wasm -- $(PARAMS) | tee wasm.out
	
	

clean:
	rm -f $(TARGET) $(TARGET).wasm
