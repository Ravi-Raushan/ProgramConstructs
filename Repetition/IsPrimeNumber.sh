#!/bin/bash -x
read -p "Enter the value of n: " n;
flag=1;
if [ $n -lt 2 ]
then
     echo $n not a prime number
else
     
     for (( i=2; $i*$i<=$n; i++ ))
      do
        if [ $(($n%$i)) -eq 0 ]
           then
                   flag=0;
                    break;
        fi
     done
fi
if [ $flag -eq 1 ]
then
     echo $n is a prime number
else
     echo $n is not a prime number
fi
