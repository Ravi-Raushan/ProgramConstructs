#!/bin/bash -x
farenheitToCelcius() {
	degF=$1;
	degC=$(echo "scale=4;($degF - 32)*5/9;" |bc);
   echo $degC;
}
celciusToFarenheit() {
   degC=$1;
   degF=$(echo "scale=4;($degC*9/5) + 32;" |bc);
	echo $degF;
}
echo "Press 1 for Farenheit to Cellcius conversion "
echo "Press 2 for Celcius to Farenheit conversion "
read -p "Enter value " input;
degFToDegC=1;
degCToDegF=2;
case $input in
	$degFToDegC) read -p "Enter the value between 32 F to 212 F " degF;
                if [ $degF -gt 32 ] && [ $degF -lt 212 ]
                then
                		degC="$( farenheitToCelcius $degF )";
 							echo " Celcius value = "$degC C;
					 else
							echo "Inavlid Input";
                fi
					 ;;
	$degCToDegF) read -p "Enter the value between 0 C to 100 C " degC;
                if [ $degC -gt 0 ] && [ $degC -lt 100 ]
                then
                     degF="$( celciusToFarenheit $degC )";
                     echo " Farenheit value = "$degF F;
                else
                     echo "Inavlid Input";
                fi
                ;;
             *) echo Invalid Input
                ;;
esac
