#!/bin/bash
mkdir -p electron_scattering_data/odd
mkdir -p electron_scattering_data/even

for file in *.bin; do
  index=$(echo "$file" | grep -oP 'index_\K\d+')
  
  if (( index % 2 == 0 )); then
    mv "$file" electron_scattering_data/even/
  else
    mv "$file" electron_scattering_data/odd/
  fi
done