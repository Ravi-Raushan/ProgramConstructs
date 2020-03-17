#!/bin/bash 
echo "*****	WELCOME TO SNAKELADER GAME	*****"
DESTINATION=100
CASE_OF_LADDER=1
CASE_OF_SNAKE=2

resetPosition(){
player1Position=0
player2Position=0
noOfTurn=0
}
getPosition(){
   previousPosition=$1
   resultOfDice=$(($RANDOM%6+1))
   checkForMove=$((RANDOM%3))
   if [ $checkForMove -eq $CASE_OF_LADDER ]
   then
       position=$(($previousPosition+$resultOfDice))
       if [ $position -gt 100 ]
       then
           position=$previousPosition
       fi

    elif [ $checkForMove -eq $CASE_OF_SNAKE ]
    then
	position=$(($previousPosition-$resultOfDice))
        if [ $position -lt 0 ]
        then
            position=0
        fi
    else
        position=$previousPosition
    fi
}
#For one Player
resetPosition
echo " NoOfTurn  Position"
while [ $player1Position -lt $DESTINATION ]
do
   getPosition $player1Position
   player1Position=$position
   echo " $noOfTurn      $position"
   ((noOfTurn++))
done
#For Two Players
resetPosition
while [ $player1Position -lt $DESTINATION ] && [ $player2Position -lt $DESTINATION ]
do
   getPosition $player1Position
   player1Position=$position
   getPosition $player2Position
   player2Position=$position
   ((noOfTurn++))
done
if [ $player1Position -eq $DESTINATION  ]
then
	echo "Player1 is Win and num of turn is $noOfTurn"
elif [ $player2Position -eq $DESTINATION  ]
then
	echo "Player2 is Win and num of turn is $noOfTurn"
fi
