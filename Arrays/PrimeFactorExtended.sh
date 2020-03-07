#!/bin/bash -x
read -p "Enter n: " n;
index=0;
while (( $n%2==0 ))
   do
       arrayOfPrimeFactor[index]=2;
       n=$(( $n / 2));
       ((index++));
   done
for (( j=3; $j*$j<=$n; j=$j+2 ))
     do
         while (( $n%$j==0 ))
           do
               arrayOfPrimeFactor[index]=$j;
               n=$(( $n / $j));
               ((index++));
           done
     done
if [ $n -gt 2 ]
then
    arrayOfPrimeFactor[index]=$n;
fi
echo Prime Factor is ${arrayOfPrimeFactor[@]};
