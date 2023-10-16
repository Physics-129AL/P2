#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <directory_name>"
	exit 1
fi

TARGET_DIR=$1

alias file_remove="find $TARGET_DIR -type f ! -name 'electron_scattering_data' -exec rm {} \;" >> ~/.bashrc

echo "Alias 'file_remove' has been defined. You can now use it to remove files from the directory $TARGET_DIR, excluding 'electron_scattering_data'."



