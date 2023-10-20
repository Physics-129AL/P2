#!/bin/bash

source_dir="./"

even_dir="even"
odd_dir="odd"

if [ ! -d "$source_dir" ]; then
	echo "Source directory not found: $source_dir"
	exit 1
fi

if [ ! -d "even_dir" ]; then
	mkdir -p "$even_dir"
fi

if [ ! -d "odd_dir" ]; then
	mkdir -p "$odd_dir"
fi

index=0

for file in "$source_dir"/*; do 
	if [[ $file == *.bin ]]; then
		#echo ${file: -5:-4}

		if (( ${file: -5:-4} % 2 == 0 )); then
			echo "Moving $file to $even_dir"
			mv "$file" "$even_dir"
		else
			echo "Moving $file to $odd_dir"
			mv "$file" "$odd_dir"
		fi

		index=$((index + 1))
	fi
done

echo "Separation complete."
 
