mkdir -p odd even

for file in electron_scattering_*_sample_index_*.bin; do
    # Ensure the current item is a file
    if [[ -f "$file" ]]; then
        # Extract the index by using the last character before ".bin"
        index=$(echo "$file" | sed -E 's/.*_([0-9]+)\.bin/\1/')

        # Check if the index is odd or even
        if (( index % 2 == 0 )); then
            # Move the file to the even directory
            mv "$file" even/
        else
            # Move the file to the odd directory
            mv "$file" odd/
        fi
    fi
done

echo "Files successfully separated into 'odd' and 'even' directories."

