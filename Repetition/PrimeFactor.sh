#!/bin/bash -x
read -p "Enter n: " n;
for (( i=1; $n%2==0; i++ ))
   do
       echo 2;
       n=$(( $n / 2));
   done
for (( j=3; $j*$j<=$n; j=$j+2 ))
     do
         for (( i=1; $n%$j==0; i++ ))
           do
               echo $j;
               n=$(( $n / $j));
           done
     done
if [ $n -gt 2 ]
then
    echo $n;
fi
