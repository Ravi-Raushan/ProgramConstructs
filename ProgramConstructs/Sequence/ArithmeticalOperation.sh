#!/bin/bash -x
read -p "Enter 1st number:" a;
read -p "Enter 2nd number:" b;
read -p "Enter 3rd number:" c;
d=$(echo "scale=2;$a/$b;" | bc);
ans=$(echo "scale=2;$c+$d;" | bc);
echo $(( $a + $b * $c ));
echo $(( $a % $b + $c ));
echo $ans;
echo $(( $a * $b + $c ));

