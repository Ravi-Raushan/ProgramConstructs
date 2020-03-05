#!/bin/bash -x
randValue1=$((RANDOM%900 + 100));
randValue2=$((RANDOM%900 + 100));
randValue3=$((RANDOM%900 + 100));
randValue4=$((RANDOM%900 + 100));
randValue5=$((RANDOM%900 + 100));
if [ $randValue1 -lt $randValue2 ]
   then  max=$randValue2;
         min=$randValue1;
else
         max=$randValue1;
         min=$randValue2;
fi

if [ $max -lt $randValue3 ]
   then  max=$randValue3;
elif [ $max -lt $randValue4 ]
   then  max=$randValue4;
elif [ $max -lt $randValue5 ]
   then  max=$randValue5;
else
        max=$max;
fi
if [ $min -gt $randValue3 ]
    then  min=$randValue3;
elif [ $min -gt $randValue4 ]
    then  min=$randValue4;
elif [ $min -gt $randValue5 ]
    then  min=$randValue5;
else
      min=$min;
fi
echo max $max and min $min;
