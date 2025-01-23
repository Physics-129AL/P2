#!/bin/bash

# Define the function file_remove directly
file_remove() {
  # Check if directory is provided
  if [ -z "$1" ]; then
    echo "Usage: file_remove <directory>"
    exit 1
  fi

  # Find and remove all files in the specified directory
  find "$1" -type f -exec rm -f {} \;
}

# Call the function with the provided argument
file_remove "$1"
