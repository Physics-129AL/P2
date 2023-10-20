#!/bin/bash

# Function to convert a decimal number to hexadecimal and binary
convert_decimal() {
  local decimal="$1"

  if ((decimal >= 100000)); then
    echo "Decimal number must be smaller than 100000."
    exit 1
  fi

  # Convert to hexadecimal
  hexadecimal=$(printf "%X" "$decimal")

  # Convert to binary (using the bc command)
  binary=$(echo "obase=2; $decimal" | bc)

  echo "Decimal: $decimal"
  echo "Hexadecimal: $hexadecimal"
  echo "Binary: $binary"
}

# Check if a decimal number is provided as an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <decimal_number>"
  exit 1
fi

# Call the conversion function with the provided decimal number
convert_decimal "$1"
