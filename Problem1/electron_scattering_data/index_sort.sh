#! /bin/bash

directory="$directory_name"

mkdir directory/odd
mkdir directory/even

for file in directory
	index=${file%.*}
	if [ $((index % 2)) -eq 0]; then
		mv file directory/even
	else
		mv file directory/odd
	fi


