#!/bin/bash -x


echo "Enter the first name and last name"
read first
read last

patUser="^[A-Z]{1}[a-z]{2,}$"

if [[ $first =~ $patUser && $last =~ $patUser ]]
then
	echo valid
else
	echo invalid
fi

echo "Enter the email address"
read email

patEmail="^[a-z]{3,}[-.+]?[A-Za-z0-9]*[@][a-z]{3,}[.][a-z]{2,3}([.]?[a-z]{0,2}?)$"

if [[ $email =~ $patEmail ]]
then
	echo valid
else
	echo invalid
fi

echo "Enter the mobile number with country code"
read number

patMobile="^[1-9]{2}[ ]{1}[1-9][0-9]{9}$"

if [[ $number =~ $patMobile ]]
then
	echo valid
else
	echo invalid
fi

echo "Enter the password minimum 8 characters"
read password

#patPass="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$!?])[a-zA-Z0-9@#$!?]{8,}"

#if [[ $password =~ $patPass ]]
if [[ ${#password} -ge 8 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]* && "$password" == *[0-9]* && "$password" == *[-@#$%'&'*=+]*  ]]
then
	echo valid
else
	echo invalid
fi
#!/bin/bash -x


echo "Enter the first name and last name"
read first
read last

patUser="^[A-Z]{1}[a-z]{2,}$"

if [[ $first =~ $patUser && $last =~ $patUser ]]
then
	echo valid
else
	echo invalid
fi

echo "Enter the email address"
read email

patEmail="^[a-z]{3,}[-.+]?[A-Za-z0-9]*[@][a-z]{3,}[.][a-z]{2,3}([.]?[a-z]{0,2}?)$"

if [[ $email =~ $patEmail ]]
then
	echo valid
else
	echo invalid
fi

echo "Enter the mobile number with country code"
read number

patMobile="^[1-9]{2}[ ]{1}[1-9][0-9]{9}$"

if [[ $number =~ $patMobile ]]
then
	echo valid
else
	echo invalid
fi

echo "Enter the password minimum 8 characters"
read password

#patPass="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$!?])[a-zA-Z0-9@#$!?]{8,}"

#if [[ $password =~ $patPass ]]
if [[ ${#password} -ge 8 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]* && "$password" == *[0-9]* && "$password" == *[-@#$%'&'*=+]*  ]]
then
	echo valid
else
	echo invalid
fi
