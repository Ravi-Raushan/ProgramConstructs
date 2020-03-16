#!/bin/bash -x
echo "****  WELCOME TO AIRTHMETICAL COMPUTATION AND SORTING PROGRAMS ****"
read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c
resultOfComputation1=$(awk -v x=$a -v y=$b -v z=$c 'BEGIN {print(x+y*z)}')
resultOfComputation2=$(awk -v x=$a -v y=$b -v z=$c 'BEGIN {print(x*y+z)}')
resultOfComputation3=$(awk -v x=$a -v y=$b -v z=$c 'BEGIN {print(z+x/y)}')
resultOfComputation4=$(awk -v x=$a -v y=$b -v z=$c 'BEGIN {print(x%y+z)}')
declare -A resultInDictionary
resultInDictionary["a+b*c"]=$resultOfComputation1
resultInDictionary["a*b+c"]=$resultOfComputation2
resultInDictionary["c+a/b"]=$resultOfComputation3
resultInDictionary["a%b+c"]=$resultOfComputation4
echo Stored data in dictionary ${resultInDictionary[@]}
declare -a resultInArray
resultInArray=(${resultInDictionary["a+b*c"]}
       ${resultInDictionary["a*b+c"]}
       ${resultInDictionary["c+a/b"]}
       ${resultInDictionary["a%b+c"]})
echo "Stored data in array ${resultInArray[@]}"
ascending=($(echo ${resultInArray[@]} | tr " " "\n" | sort -n ))
descending=($(echo ${resultInArray[@]} | tr " " "\n" | sort -nr ))
echo "Sorted Array in Accending order ${ascending[@]}"
echo "Sorted Array in Descending order ${descending[@]}"
