#!/bin/bash -x
function myfunc(){
	empCheck=$1
	case $empCheck in
		$isFullTime)
						empHrs=8
						;;
		$isPartTime)
						empHrs=4
						;;
					*)
						empHrs=0;
						;;
	esac
	echo $empHrs;
}
isPartTime=1;
isFullTime=2;
Max_Hrs_In_Month=50;
Emp_Rate_Per_Hr=20;
Num_Working_Days=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $Max_Hrs_In_Month && $totalWorkingDays -lt $Num_Working_Days ]]
do
((totalWorkingDays++))
empCheck=$((RANDOM%3));
empHrs="$( myfunc $empCheck )"
totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$Emp_Rate_Per_Hr));
echo "Total Salary = "$totalSalary;
