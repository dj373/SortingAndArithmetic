#! /bin/bash -x
read -p "Enter a number " a
read -p "Enter a number " b
read -p "Enter a number " c
declare -A computations
computations["a+b*c"]=$(( $a+$b*$c ))
computations["a*b+c"]=$(( $a*$b+$c ))
computations["c+a/b"]=$(( $c+$a/$b ))
computations["a%b+c"]=$(( $a%$b+$c ))
declare -a compArray
itr=0
function sortArrayDesc() {
        for (( ctr1=0; ctr1<${#compArray[@]}; ctr1++ ))
        do
                for (( ctr2=0; ctr2<$(( ${#compArray[@]}-$ctr1-1 )); ctr2++ ))
                do
                        next=$(( $ctr2+1 ))
                        if [ ${compArray[ctr2]} -lt ${compArray[next]} ]
                        then
                                temp=${compArray[ctr2]}
                                compArray[$ctr2]=${compArray[next]}
                                compArray[$next]=$temp
                        fi
                done
        done
}

for val in ${computations[@]}
do
	compArray[(( itr++ ))]=$val
done
echo ${!computations[@]}
echo ${computations[@]}
sortArrayDesc ${compArray[@]}
echo "computations in descending order "${compArray[@]}
