#!/bin/bash
echo " ********** WELCOME TO TICTOC GAME *********** "
declare -A array
setBoard()
{
  for (( i=0; i<n; i++ ))
  do
        for (( j=0; j<n; j++ ))
        do
          array[$i,$j]=_
        done
  done
}
displayBoard(){
   for (( i=0; i<n; i++ ))
   do
          for (( j=0; j<n; j++))
          do
               echo -n "${array[$i,$j]} | "
          done
               echo
   done
}
playComputer(){
   symbole="x"
   row=$(( $RANDOM % n ));
   column=$(( $RANDOM % n ));
   if [[ "${array[$row,$column]}" == "_" ]]
   then
       array[$row,$column]="$symbole"
   else
      playComputer
   fi
}
playUser(){
       symbole="o"
       read -p "Enter Row " row
       read -p "Enter Column " column
       if [[ "${array[$row,$column]}" == "_" ]]
       then
           array[$row,$column]="$symbole"
       else
           echo "This place is already filled"
           playUser
       fi
}
checkForWin(){
row1="${array[0,0]}${array[0,1]}${array[0,2]}"
row2="${array[1,0]}${array[1,1]}${array[1,2]}"
row3="${array[2,0]}${array[2,1]}${array[2,2]}"
col1="${array[0,0]}${array[1,0]}${array[2,0]}"
col2="${array[0,1]}${array[1,1]}${array[2,1]}"
col3="${array[0,2]}${array[1,2]}${array[2,2]}"
dia1="${array[0,0]}${array[1,1]}${array[2,2]}"
dia2="${array[0,2]}${array[1,1]}${array[2,0]}"
com="xxx"
user="ooo"
if [[ $row1 == $com || $row2 == $com || $row3 == $com || $col1 == $com || $col2 == $com || $col3 == $com || $dia1 == $com || $dia2 == $com ]]
then
echo "Congrats computer is win..."
exit
elif [[ $row1 == $user || $row2 == $user || $row3 == $user || $col1 == $user ||$col2 == $user || $col3 == $user || $dia1 == $user || $dia2 == $user ]]
then
echo "Congrats user is win..."
exit
elif (( $count<=0 ))
then
    echo "Game Draw"
    exit
fi
}
read -p "Enter the order n x n: " n
setBoard
echo "x for computer and o for User"
read -p "Let's Start Toss, Enter 1 for Head and 0 for Tail: " input
gameStart=$((RANDOM%2))
echo "Toss Result is $gameStart "
count=$(($n*$n))
while (($count))
do
if [ $gameStart -eq $input ]
then
      echo "User turn"
      playUser
else
		echo "Computer turn"
      playComputer
fi
count=$(($count-1))
displayBoard
checkForWin
if [ $gameStart -eq $input ]
then
      echo "Computer turn"
		playComputer
else
      echo "User turn"
      playUser
fi
count=$(($count-1))
displayBoard
checkForWin
done
