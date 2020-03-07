#!/bin/bash -x
isFullTime=1;
isPartTime=2;
rate=20;
totalSalary=0;
WorkingDays=20;
for (( i=1; i<=WorkingDays; i++ ))
do    
   empCheck=$((RANDOM%3));
    case $empCheck in
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
totalSalary=$(( $totalSalary + $salary ));
done

echo $totalSalary;
