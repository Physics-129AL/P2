#!/bin/bash

mkdir odd
mkdir even

for file in ./*; do
	if [[ $file == *.bin ]]; then
		# Extract digit before .bin and check if even
		if (( ${file: -5:-4} % 2 == 0)); then
			mv $file even
		else
			mv $file odd
		fi
		echo $file
	fi
done
