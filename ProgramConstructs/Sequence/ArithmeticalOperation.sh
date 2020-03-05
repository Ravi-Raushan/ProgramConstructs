#!/bin/bash -x
read -p "Enter 1st number:" a;
read -p "Enter 2nd number:" b;
read -p "Enter 3rd number:" c;
echo $(( $a + $b * $c ));
echo $(( $a % $b + $c ));
echo $(( $c + $a / $b ));
echo $(( $a * $b + $c ));

