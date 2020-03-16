#!/bin/bash -x
echo "*****	WELCOME TO SNAKELADER GAME	*****"
DESTINATION=100
player1Position=0
player2Position=0
position=0
count1=0
count2=0
getPosition(){
   previousPosition=$1
	resultOfDice=$(($((RANDOM%6))+1))
   checkForMove=$((RANDOM%3))
	if [ $checkForMove -eq 0 ]
	then
		 position=$previousPosition
	elif [ $checkForMove -eq 1 ]
	then
		  position=$(($previousPosition+$resultOfDice))
		case $position in
				19)
				position=66
				;;
				32)
				position=53
				;;
				67)
				position=100
				;;
				73)
				position=90
				;;
		esac
	elif [ $checkForMove -eq 2 ]
	then
		 position=$(($previousPosition+$resultOfDice))
                case $position in
                                26)
                                position=6
                                ;;
                                46)
                                position=12
                                ;;
                                74)
                                position=52
                                ;;
                esac
	fi
}
while [ $player1Position -lt $DESTINATION ] && [ $player2Position -lt $DESTINATION ]
do
	getPosition $player1Position
   player1Position=$position
   getPosition $player2Position
   player2Position=$position
((count1++))
((count2++))
done
if [ $player1Position -eq $DESTINATION  ]
then
		echo "Player1 is Win and num of turn is $count1"
else
		echo "Player2 is Win and num of turn is $count2"
fi
