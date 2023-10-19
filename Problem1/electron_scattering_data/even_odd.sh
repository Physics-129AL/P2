# !/bin/bash

for file in electron_scattering_2023-10-04_sample_index_*.bin; do
    if [ -f "$file" ]; then

        index=${file#electron_scattering_2023-10-04_sample_index_}
        index=${index%.bin}

        if (( index % 2 == 0 )); then
            mv "$file" even/
        else
            mv "$file" odd/
        fi
    fi
done

