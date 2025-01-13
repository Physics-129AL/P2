#!/bin/bash

mkdir -p odd
mkdir -p even

for file in *; do
    # Check if it's a regular file and ends with .bin
    if [ -f "$file" ] && [[ "$file" == *.bin ]]; then
        # Extract the last number from the filename
        number=$(echo "$file" | grep -oE '[0-9]+' | tail -n 1)
        
        # Perform the even/odd check
        if (( number % 2 == 0 )); then
            mv "$file" even/
        else
            mv "$file" odd/
        fi
    fi
done
