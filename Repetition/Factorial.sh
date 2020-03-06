#!/bin/bash -x
read -p "Enter the value of n: " n;
ans=1;
for (( i=1; i<=n; i++ ))
   do
         ans=$(( $ans * $i ));
   done
echo Factorial of $n is $ans
