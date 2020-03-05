#!/bin/bash -x
read -p "Enter Temprature in Celcius: " celciusTemp;
read -p "Enter Temprature in Fahrenheit: " fahrenheitTemp;
farenheit= $(echo "scale=2; $(echo "scale=2;$celciusTemp * $(echo "scale=2;9/5;" | bc)"; | bc ) + 32"; | bc );
celcius=$(( $(( $fahrenheitTemp -32 )) * $(echo "sacle=2;5/9;" | bc) ));
echo $celciusTemp "in farenheit is" $farenheit.
echo $fahrenheitTemp "in celcius is" $celcius.
