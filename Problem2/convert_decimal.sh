hexadecimal=(0 1 2 3 4 5 6 7 8 9 A B C D E F)

convert_decimal_to_hexadecimal() {
	n=$1
	arr=()
	for pow in {5..1}; do
		place_in_hexadecimal=$((n % (16 ** pow) / (16 ** (pow-1))))
		converted_val=${hexadecimal[place_in_hexadecimal]}
		arr+=$converted_val
	done
	echo $arr
}

convert_decimal_to_binary() {
	n=$1
	arr=()
	for pow in {14..1}; do
		place_in_binary=$((n % (2 ** pow) / (2 ** (pow-1))))
		arr+=$place_in_binary
	done
	echo $arr
}

hexadecimal_result=$(convert_decimal_to_hexadecimal $1)
echo Hexadecimal is $hexadecimal_result

binary_result=$(convert_decimal_to_binary $1)
echo Binary is $binary_result
