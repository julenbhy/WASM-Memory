TARGET = main

# Compilation with gcc
CC = gcc
CFLAGS = -Wall

# Compilation with wasi-sdk/clang
CLANG_CC = /opt/wasi-sdk/bin/clang
CLANG_CFLAGS = -z stack-size=65536		# max stack modified by: -z stack-size=65536 (default value)

# Compilation with wasi-sdk/clang
EMCC_CC = emcc
EMCC_CFLAGS = -s TOTAL_STACK=5MB			# max stack modified by: -s TOTAL_STACK=5MB (default value)


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



# gcc default stack size = 8MB = 8388608
# wasi-sdk / clang default stack size = 64KB = 65536
# emcc default stack size = 5MB = 5242880
PARAMS ?= 65536
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
