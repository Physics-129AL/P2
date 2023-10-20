#!/bin/bash

hexadecimal_digits=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "A" "B" "C" "D" "E" "F" "10" "1A" "1F" "20")
binary_digits=("0000" "0001" "0010" "0011" "0100" "0101" "0110" "0111" "1000" "1001" "1010" "1011" "1100" "1101" "1110" "1111" "00010000" "00011010" "00011111" "00100000")

decimal_to_hexadecimal() {
	decimal=$1
	echo "Decimal: $decimal"
	
	hexadecimal=""
	
	while [ $decimal -gt 0 ]; do
		remainder=$((decimal % 16))
		hexadecimal="${hexadecimal_digits[$remainder]}$hexadecimal"
		decimal=$((decimal / 16))
	done
	
	echo "Hexadecimal: $hexadecimal"
}

 decimal_to_binary() {
	decimal=$1
	echo "Decimal: $decimal"
	
	binary=""
	
	while [ $decimal -gt 0 ]; do
		remainder=$(($decimal % 2))
		binary="$remainder$binary"
		decimal=$(($decimal / 2))
	done
	
	echo "Binary: $binary"
}

if [ $# -ne 1 ]; then
	echo "usage: $0 <decimal_number>"
	exit 1
fi

decimal_number=$1

decimal_to_hexadecimal "$decimal_number"
decimal_to_binary "$decimal_number"


