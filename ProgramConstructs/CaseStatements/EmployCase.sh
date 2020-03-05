#!/bin/bash -x
isFullTime=1;
isPartTime=2;
rate=20;
randomCheck=$((RANDOM%3));
case $randomCheck in
$isFullTime)
         empHour=8
            ;;
$isPartTime)
         empHour=4
          ;;

*)
       empHour=0
       ;;
esac
salary=$(( $rate * $empHour ));
echo $salary;
