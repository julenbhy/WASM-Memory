TARGET = static

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

all: $(TARGET) clang.wasm emcc.wasm

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $(TARGET).c -DSIZE=8388608			#default max = 8388608

clang.wasm: $(TARGET).c
	$(CLANG_CC) $(CLANG_CFLAGS) -o $@ $(TARGET).c -DSIZE=65536		#default max = 65536
	
emcc.wasm: $(TARGET).c
	$(EMCC_CC) $(EMCC_CFLAGS) -o $@ $(TARGET).c -DSIZE=5242880		#default max = 5242880


PARAMS ?=
run: $(TARGET)
	./$(TARGET) $(PARAMS)

runclang: clang.wasm
	wasmtime $(WASMTIME_FLAGS) clang.wasm $(PARAMS)
	
runemcc: emcc.wasm
	wasmtime $(WASMTIME_FLAGS) emcc.wasm $(PARAMS)
	
	

clean:
	rm -f $(TARGET) *.wasm
