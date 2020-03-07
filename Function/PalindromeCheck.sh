#!/bin/bash -x
isPalindrome() {
     sum=0;
     num=$1;
     while (( $num>0 ))
     do
        rem=$(($num%10));
        sum=$(( $rem + $(( $sum * 10 )) ));
        num=$(( $num/10 ));
     done
     echo $sum;
}
read -p "Enter numbe: " n;
reverseNum="$( isPalindrome $n )";
#reverseNum=$?

if [ $n -eq $reverseNum ]
then
    echo $n is Palindrome
else
    echo $n is not Palindrome
fi
