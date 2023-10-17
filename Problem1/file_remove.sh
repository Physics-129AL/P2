#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 Problem1"
	exit 1
fi


find "$1" -maxdepth 1 -type f -delete

