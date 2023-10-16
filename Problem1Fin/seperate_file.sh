#!/bin/bash

cd "electron_scattering_data/" || exit

mkdir -p odd
mkdir -p even

index=1

for file in *; do
	[ -d "$file" ] && continue
	
	if ((index % 2 == 0)); then
		mv "$file" "even/"
	else
		mv "$file" "odd/"
	fi
	((index++))
done
