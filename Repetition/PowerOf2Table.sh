#!/bin/bash -x
read -p "Enter the value of n: " n;
ans=1;
for (( i=0; i<=n; i++ ))
   do
        echo "2^$i   =  " $ans;
         ans=$(( $ans * 2 ));
   done
