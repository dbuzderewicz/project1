#! /bin/bash

echo "Enter hexadecimal number: "
read hex
echo "Decimal value of $hex is $((16#$hex))"
echo "Binary value of hex is: "
echo "obase=2;ibase=16;$hex" | bc

