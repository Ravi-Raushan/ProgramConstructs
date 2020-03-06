#!/bin/bash 
#read -p "Think a number between 1 to 100 : " num;
low=1;
high=100;
while (( $high>$low ))
   do
        mid=$(( $(($low+$high))/2 ));
        echo "press 1 for guess number lies between $low and $mid else press 2 ";
       read -p "input is : " input
        if [ $(($high-$low)) -eq 1 ]
          then   echo $high;
                 break;
        fi
        if [ $input -eq 1 ]
        then
              high=$mid;
        else
              low=$mid;
        fi
   done
#echo guess number is $low
