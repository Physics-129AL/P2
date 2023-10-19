#!/bin/bash

cd ~/P2/Problem1/electron_scattering_data

mkdir -p odd
mkdir -p even


for file in *.bin; do
    
    index=$(echo $file | grep -o -E '[0-9]+' | tail -1)

    if ((index % 2 == 0)); then
        mv "$file" even/
    else
        mv "$file" odd/
    fi
done

