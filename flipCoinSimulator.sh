#!/bin/bash
getResult(){
   number=$1
   if [ $number -eq 0 ]
   then result=H
   else
        result=T
   fi
   echo $result
}
getPercentage(){
	combination=$1
	size=$2
	echo "$combination Outcomes Frequency Percentage"
	for key in "${!outcomes[@]}";
	do
      if (( ${#key}==$size ))
      then
          percentage=`expr "scale=2;${outcomes[$key]}*100/10" | bc`
          echo "     $key            ${outcomes[$key]}       $percentage "
      fi
	done
}
result="$( getResult $((RANDOM%2)) )"
echo Output of singal time flip one coin $result
declare -A outcomes
read -p "Enter the number of times for flip coins: " numberOfFlips
for (( i=0; i<$numberOfFlips; i++ ))
do
   result="$( getResult $((RANDOM%2)) )"
   outcomes[$result]=$((${outcomes[$result]}+1))
done
getPercentage "Singlates" 1
for (( i=0; i<$numberOfFlips; i++ ))
do
   result1="$( getResult $((RANDOM%2)) )"
   result2="$( getResult $((RANDOM%2)) )"
   outcomes[$result1$result2]=$((${outcomes[$result1$result2]}+1))
done
getPercentage "Doublates" 2
for (( i=0; i<$numberOfFlips; i++ ))
do
   result1="$( getResult $((RANDOM%2)) )"
   result2="$( getResult $((RANDOM%2)) )"
   result3="$( getResult $((RANDOM%2)) )"
  outcomes[$result1$result2$result3]=$((${outcomes[$result1$result2$result3]}+1))
done
getPercentage "Triplates" 3
sortedValue=($(
    for key in "${!outcomes[@]}"; do
      printf '%s:%s\n' "$key" "${outcomes[$key]}"
    done | sort -t : -k 2n))
echo "Winning Combination ${sortedValue[@]}"
echo "${sortedValue[${#sortedValue[@]}-1]} is came Maximum times"
