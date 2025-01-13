#!/bin/bash
mkdir -p odd even
for file in *.bin; do
    dropbin="${file%.bin}"
    digit="${dropbin: -1}"
    if [ $((digit % 2)) -eq 0 ]; then
        mv $file even/
    else
        mv $file odd/
    fi
done