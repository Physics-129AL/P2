#!/bin/bash

# Define the 'file_remove' alias
alias file_remove='remove_files'

# Function to remove files in the target directory
remove_files() {
  if [ -z "$1" ]; then
    echo "Usage: file_remove <directory>"
    return 1
  fi

  target_directory="$1"

  if [ ! -d "$target_directory" ]; then
    echo "Directory '$target_directory' does not exist."
    return 1
  fi

  # Use find and rm to delete files in the specified directory
  find "$target_directory" -type f -exec rm {} +

  echo "Files in '$target_directory' have been removed."
}

# Make the remove_files function available in the current shell
export -f remove_files
