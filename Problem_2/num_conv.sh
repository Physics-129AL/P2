#! /bin/bash

number=$1
hex_number=""

remainder=$((number % 16)
result=$((number / 16))

remainder_conversion(){
	local remainder="$1"
	hex_number=""
	if ((remainder -lt 10)); then
		hex_number="$remainder$hex_number"
	elif ((remainder == 10)); then
		hex_number="A$hex_number"
	elif ((remainder == 11)); then
		hex_number="B$hex_number"
	elif ((remainder == 12)); then
		hex_number="C$hex_number"
	elif ((remainder == 13)); then
		hex_number="D$hex_number"
	elif ((remainder == 14)); then
		hex_number="E$hex_number"
	elif ((remainder == 15)); then
		hex_number="F$hex_number"
	fi
	return hex_number
	}
while ((result -gt 0)); do
	hex_number="$hex_conversion remainder$hex_number"
	result = result

echo "the hexdecimal number of $number is $hex_number"

