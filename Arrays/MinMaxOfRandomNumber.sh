#!/bin/bash -x
max=100;
min=999;
for (( i=0; i<10; i++ ))
do
     arrOfRandomNum[i]=$((RANDOM%900 + 100));
      if [ $max -lt ${arrOfRandomNum[i]} ]
      then
           max=${arrOfRandomNum[i]};
      fi
      if [ $min -gt ${arrOfRandomNum[i]} ]
      then
           min=${arrOfRandomNum[i]};
      fi
done
max2=100;
min2=999;
for (( i=0; i<10; i++ ))
do
     if [ $max2 -lt ${arrOfRandomNum[i]} ] && [ ${arrOfRandomNum[i]} -ne $max ]
     then
           max2=${arrOfRandomNum[i]};
     fi
     if [ $min2 -gt ${arrOfRandomNum[i]} ] && [ ${arrOfRandomNum[i]} -ne $min ]
     then
           min2=${arrOfRandomNum[i]};
     fi
done
echo Second max = $max2 and Second min = $min2;
