#!/bin/bash -x
read -p "Enter Temperature to convert : " temp;
read -p "Enter Temperature Unit : " tempUnit;
if [ $tempUnit == "f" ] ;
then
       degC=$((($temp-32)*5/9));
       echo $degC;
elif [ $tempUnit == "c" ] ;
then
       degF=$((($temp*9/5)+32));
       echo $degF;
else
       echo "Invalid Input" ;
fi

