#!/bin/bash

file_remove() {
	find "$1" -maxdepth 1 -type f | xargs rm -f
}

export -f file_remove
