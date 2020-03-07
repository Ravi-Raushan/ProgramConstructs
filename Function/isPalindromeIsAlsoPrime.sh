#!/bin/bash -x
isPrime() {
	number=$1
   flag=1
   if [ $number -lt 2 ]
	then
			flag=0
	fi
	for (( count=2; count<$number/2; count++ ))
	do
		if [ $(($number%$count)) -eq 0 ];
		then
				flag=0;
				break
		fi
   done
	echo $flag
}
getPalindrome() {
	number=$1
	reverseNumber=0;
	while (( $number > 0 ))
	do
		remainder=$(($number%10))
		reverseNumber=$(($reverseNumber*10+$remainder))
		number=$(($number/10))
	done
	echo $reverseNumber
}
read -p "Enter the number to check prime and it is palindrome or not " number
isPrimeNum="$( isPrime $number )"
if [ $isPrimeNum -eq 1 ]
then
		palindromeOfNum="$( getPalindrome $number )"
		if [ $palindromeOfNum -eq $number ]
		then
				isPrimeNum="$( isPrime $palindromeOfNum )"
            if [ $isPrimeNum -eq 1 ]
				then
						echo Palindrome number is also prime.
				else
						echo Palindrome number is not prime.
				fi
		else
				echo Number is Prime but not a palindrome number.
		fi
else
		echo Number is not Prime number.
fi
