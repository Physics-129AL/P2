#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <decimal_number>"
	exit 1
fi

decimal_number=$1

if [ "$decimal_number" -ge 100000 ]; then
	echo "Error: The number must be less than 100000."
	exit 1
fi

function decimal_to_binary {
	echo "Binary: $(echo "obase=2;$1" | bc)"
}

function decimal_to_hex {
	echo "Hexadecimal: $(echo "obase=16;$1" | bc | tr '[:lower:]' '[:upper:]')"
}

decimal_to_binary $decimal_number
decimal_to_hex $decimal_number
