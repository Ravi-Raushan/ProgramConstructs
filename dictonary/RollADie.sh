#!/bin/bash -x
declare -A outcomesOfDie;
indexOnDie=1;
outcomesOfDie[$indexOnDie]=0;
while ((  ${outcomesOfDie[$indexOnDie]}!=10 ))
do
	indexOnDie=$((RANDOM%6+1));
	outcomesOfDie[$indexOnDie]=$(( ${outcomesOfDie[$indexOnDie]}+1 ));
done
numberThatReachedMaxiTime=$indexOnDie;
minCount=10;
echo "Value      Frequency  "
for (( indexOnDie=1; indexOnDie<=6; indexOnDie++ ))
do
	echo "  $indexOnDie   --->    ${outcomesOfDie[$indexOnDie]}"
   if [ $minCount -gt ${outcomesOfDie[$indexOnDie]} ]
	then
			minCount=${outcomesOfDie[$indexOnDie]}
			numberThatReachedMinTime=$indexOnDie;
	fi
done
echo Number that reached minimum time is $numberThatReachedMinTime
echo Number that reached maximum time is $numberThatReachedMaxiTime
