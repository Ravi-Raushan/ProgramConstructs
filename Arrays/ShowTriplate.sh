#!/bin/bash -x 
declare -a arr;
arr=(1 -3 2 4 -5);
size=${#arr[@]};
flag=0;
for (( i=0; i<$(($size-2)); i++ ))
do
   for (( j=$(($i+1)); j<$(($size-1)); j++ ))
   do
      for (( k=$(($j+1)); k<$size; k++ ))
      do
          ans=$(( ${arr[i]} + ${arr[j]} ));
          if [  $(( $ans + ${arr[k]} ))  -eq 0 ]
          then
               echo [ ${arr[i]},${arr[j]},${arr[k]} ];
               flag=1;
          fi
      done
    done
done
if [ $flag -eq 0 ]
then
     echo No any Triplates found;
fi
