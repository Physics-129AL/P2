#!/bin/bash

dec_to_bin() {
	local num=$1
	local bin=""

	while [ $num -gt 0 ]; do
    	remainder=$((num % 2))
    	bin=$remainder$bin
    	num=$((num / 2))
	done

	[ -z "$bin" ] && bin="0"
	echo "$bin"
}

dec_to_hex() {
	local num=$1
	local hex=""
	local hex_chars=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "A" "B" "C" "D" "E" "F")

	while [ $num -gt 0 ]; do
    	remainder=$((num % 16))
    	hex=${hex_chars[$remainder]}$hex
    	num=$((num / 16))
	done

	[ -z "$hex" ] && hex="0"
	echo "$hex"
}

main() {
    read -p "Enter a decimal number: " num
	if [[ $num -ge 100000 || ! $num =~ ^[0-9]+$ ]]; then
    	echo "Input entered not valid (should be less than 100000)"
    	exit 1
	fi

	bin=$(dec_to_bin $num)
	hex=$(dec_to_hex $num)
	echo "Decimal: $num"
	echo "Binary: $bin"
	echo "Hexadecimal: $hex"
}

main


