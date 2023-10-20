#!/bin/bash

directory=$1

if [ -d "$directory" ]; then
	for file in "$directory"/*.bin; do
		if [ -f "$file" ]; then
			echo "Removing $file"
			rm "$file"
		fi
	done
	echo " ALl .bin files in $directory have been removed"
else
	echo "Directory not found: $directory"
fi
