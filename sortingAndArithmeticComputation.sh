#! /bin/bash -x
read -p "Enter a number " a
read -p "Enter a number " b
read -p "Enter a number " c
declare -A computations
computations["a+b*c"]=$(( $a+$b*$c ))
computations["a*b+c"]=$(( $a*$b+$c ))
computations["c+a/b"]=$(( $c+$a/$b ))
computations["a%b+c"]=$(( $a%$b+$c ))
echo ${!computations[@]}
echo ${computations[@]}
