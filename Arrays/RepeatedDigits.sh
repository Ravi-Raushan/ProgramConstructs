#!/bin/bash -x
index=0;
for (( i=1; i<100; i++ ))
do
     n=$i;
     digit1st=$(($n%10));
     n=$(($n/10));
     if [ $n -eq $digit1st ]
     then
         arr[index]=$i;
          ((index++));
     fi
done
echo Number with repeated digits are ${arr[@]}

