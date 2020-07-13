#! /bin/bash -x
read -p "Enter a number " a
read -p "Enter a number " b
read -p "Enter a number " c
echo "a+b*c = "$(( $a+$b*$c ))
echo "a*b+c = "$(( $a*$b+$c ))
