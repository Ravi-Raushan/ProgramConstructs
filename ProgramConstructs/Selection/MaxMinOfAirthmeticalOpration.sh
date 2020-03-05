#!/bin/bash -x
read -p "Enter 1st number: " num1;
read -p "Enter 2nd number: " num2;
read -p "Enter 3rd number: " num3;
#d=$(echo "scale=2;$num2/$num3" | bc);
#result3=$(echo "scale=2;$num1+$d" | bc);
result1=$(( $num1 + $num2 * $num3 ));
result2=$(( $num1 % $num2 + $num3 ));
result3=$(( $num1 + $num2 / $num3 ));
result4=$(( $num1 * $num2 + $num3 ));
echo a+b*c $result1;
echo a%b+c $result2;
echo a+b/c $result3;
echo a*b+c $result4;
if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ]
   then   max=$result1;
elif [ $result2 -gt $result1 ] && [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ]
   then   max=$result2;
elif [ $result3 -gt $result1 ] && [ $result3 -gt $result2 ] && [ $result3 -gt $result4 ]
   then   max=$result3;
else
          max=$result4;
fi
if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [ $result1 -lt $result4 ]
   then   min=$result1;
elif [ $result2 -lt $result1 ] && [ $result2 -lt $result3 ] && [ $result2 -lt $result4 ]
   then   min=$result2;
elif [ $result3 -lt $result1 ] && [ $result3 -lt $result2 ] && [ $result3 -lt $result4 ]
   then   min=$result3;
else
          min=$result4;
fi
echo max  $max and min  $min;
