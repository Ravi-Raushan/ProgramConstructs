#!/bin/bash -x
isFullTime=1;
isPartTime=2;
rate=20;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ];
then
          
         empHour=8;
      
elif [ $isPartTime -eq $randomCheck ];
then     
         empHour=4;
          
else      
       empHour=0;
fi
salary=$(( $rate * $empHour ));
echo $salary;
