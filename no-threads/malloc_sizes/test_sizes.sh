#!/bin/bash

# Byte sizes  (1B, 8B, 512B, 1KB, 8KB, 512KB, 1MB, 8MB, 31MB, 32MB, 512MB, 1GB)
sizes=("128" "512" "1024" "8192" "524288" "1048576" "8388608" "32505856" "33554432" "536870912" "1073741824")

# Number of iterations
iterations=10

# Wasm compilers
compilers=("clang" "emcc")

# Wasm runtimes
runtimes=("wasmtime" "wasmedge" "iwasm")


mkdir -p results

echo "running C"

# CSV file name
file="results/c.csv"

# CSV file header
echo "Size (bytes),Times (ms)" > $file

# Run the program for each size
for size in "${sizes[@]}"; do
    echo "runnig size $size"
    line="$size"
    for (( i=1; i<=iterations; i++ )); do
        time=$(./main -s $size)
        line="$line,$time"
    done
    echo "$line" >> $file
done

echo "The results have been saved in $file"



for compiler in "${compilers[@]}"; do
	for runtime in "${runtimes[@]}"; do
	
		echo "running runtime $runtime"
		
		# CSV file name
		file="results/"$compiler"-"$runtime".csv"

		# CSV file header
		echo "Size (bytes),Times (ms)" > $file

		# Run the program for each size
		for size in "${sizes[@]}"; do
		   echo "running size $size"
	 	   line="$size"
		    for (( i=1; i<=iterations; i++ )); do
	 	       time=$($runtime $compiler.wasm -- -s $size)
	 	       line="$line,$time"
	 	   done
	 	   echo "$line" >> $file
		done
		
		echo "The results have been saved in $file"

	done
done


