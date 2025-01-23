#!/bin/bash

# Create the directories
mkdir -p odd even

# Initialize counter
counter=1

# Loop through each file in the current directory (not including subdirectories)
for file in *; do
    # Check if it's a regular file 
    if [ -f "$file" ]; then
        if (( counter % 2 == 0 )); then
            # Even index file
            mv "$file" ./even/
        else
            # Odd index file
            mv "$file" ./odd/
        fi
        # Increment the counter
        ((counter++))
    fi
done

# Feedback message: 
echo "Files have been sorted into 'odd' and 'even' directories."
