#!/bin/bash

dec2bin() {
	local num=$1
	local bin=$(echo "obase=2;$num" | bc)
	printf "%08d" $bin
}

dec2hex() {
	local num=$1
	local hex=""

	local values=(0 1 2 3 4 5 6 7 8 9 A B C D E F)

	while [ $num -ne 0 ]; do
		remainder=$(($num % 16))
		hex="${values[$remainder]}$hex"
		num=$(($num / 16))
	done

	echo "$hex"
}

echo "Enter a decimal number (less than 100000):"
read input

if [ "$input" -lt 100000 ]; then
	hexValue=$(dec2hex $input)
	binValue=$(dec2bin $input)
	echo "Decimal $input is equivlent to Hexadeciaml $hexValue and Binary $binValue"
else
	echo "Please enter a number smaller than 100000"
fi
