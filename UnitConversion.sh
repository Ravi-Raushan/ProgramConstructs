#!/bin/bash -x
echo 1. Feet to Inch
echo 2. Feet to Meter
echo 3. Inch to Feet
echo 4. Meter to Feet
read -p "Enter a number between 1 to 4: " num;
read -p "Enter the value: " val;
case $num in
   1)  echo $( echo "scale=4;12*$val;" | bc );
       ;;
   2)  echo $( echo "scale=4;0.3048*$val;" | bc );
       ;;
   3)  echo $( echo "scale=4;$val/12;" | bc );
       ;;
   4)  echo $( echo "scale=4;$val/0.3048;" | bc );
       ;;
   *)  echo Invalid Number
       ;;
esac
