#!/bin/bash -x
isFullTime=1;
isPartTime=2;
rate=20;
totalSalary=0;
WorkingDays=20;
count=0;
while [ true ]
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
if [ $count -eq $WorkingDays ]
then   break;
else
        ((count++));
fi
salary=$(( $rate * $empHour ));
totalSalary=$(( $totalSalary + $salary ));
done

echo $totalSalary;
