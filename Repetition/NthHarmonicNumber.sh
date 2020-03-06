#!/bin/bash -x
read -p "Enter the value of n: " n;
ans=0;
for (( i=1; i<=$n; i++ ))
   do
          num=$(echo "scale=4;1/$i;" | bc);
          ans=$(echo "scale=4;$ans+$num;" | bc);
   done
echo $n th Harmonic number is $ans
