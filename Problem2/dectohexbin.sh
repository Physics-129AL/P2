#!/bin/bash

hexMap=(0 1 2 3 4 5 6 7 8 9 A B C D E F)


decimalToHex() {
    local decimal="$1"
    local hex=""
    while [ "$decimal" -ne 0 ]; do
        remainder=$((decimal % 16))
        hex="${hexMap[remainder]}$hex"
        decimal=$((decimal / 16))
    done
    [ -z "$hex" ] && hex="0"  # If hex is empty (input was 0), set hex to 0
    echo "$hex"
}


decimalToBinary() {
    local decimal="$1"
    local binary=""
    while [ "$decimal" -ne 0 ]; do
        remainder=$((decimal % 2))
        binary="$remainder$binary"
        decimal=$((decimal / 2))
    done


    while [ $(( ${#binary} % 4 )) -ne 0 ]; do
        binary="0$binary"
    done

    echo "$binary"
}


main() {
    echo "Enter a decimal number smaller than 100000:"
    read decimal

    if [[ ! "$decimal" =~ ^[0-9]+$ ]] || [ "$decimal" -ge 100000 ]; then
        echo "Invalid input"
        exit 1
    fi

    hexValue=$(decimalToHex "$decimal")
    binaryValue=$(decimalToBinary "$decimal")

    echo "Hexadecimal value: $hexValue"
    echo "Binary value: $binaryValue"
}

main

