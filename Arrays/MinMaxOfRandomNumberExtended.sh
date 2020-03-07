#!/bin/bash -x
for (( i=0; i<10; i++ ))
do
     arrOfRandomNum[i]=$((RANDOM%900 + 100));
done
for (( i=0; i<9; i++ ))
do
     min=$i;
     for (( j=$i+1; j<10; j++ ))
     do
        if [ ${arrOfRandomNum[min]} -gt ${arrOfRandomNum[j]} ]
        then
               min=$j;
        fi
     done
     if [ $min -ne $i ]
     then
         temp=${arrOfRandomNum[min]};
         arrOfRandomNum[min]=${arrOfRandomNum[i]};
         arrOfRandomNum[i]=$temp;
     fi
done
echo Second max = ${arrOfRandomNum[8]} and Second min = ${arrOfRandomNum[1]};
