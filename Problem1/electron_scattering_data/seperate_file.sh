#!/bin/bash

# Create the "odd" and "even" directories if they don't exist
mkdir -p odd even

# Iterate through the files in the current directory
for file in electron_scattering_*_sample_index_*.bin; do
  # Extract the index from the file name
  index=$(echo "$file" | grep -oP 'sample_index_(\d+)' | cut -d '_' -f 3)

  # Check if the index is even or odd
  if [ $((index % 2)) -eq 0 ]; then
    # Move the file to the "even" directory
    mv "$file" even/
  else
    # Move the file to the "odd" directory
    mv "$file" odd/
  fi
done
