#!/bin/bash -x
read -p "Enter the value of n: " n;
ans=1;
i=0;
while (( ans<=$[2**$n] && ans<=256 ))
   do
         echo "2^$i   =  " $ans;
         ans=$(( $ans * 2 ));
         ((i++));
   done
