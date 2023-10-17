#!/bin/bash

mkdir -p electron_scattering_data/odd
mkdir -p electron_scattering_data/even

for file in electron_scattering_data/*; do
	filename=$(basename "$file")
	index=$(echo "$filename" | awk -F'_' '{print $NF}' | cut -d'.' -f1)

	if ((index % 2 == 0)); then
		mv "$file" electron_scattering_data/even
	else
		mv "$file" electron_scattering_data/odd
	fi
done
