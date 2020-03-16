#!/bin/bash
INITIAL_STAKE=100
NUM_OF_DAYS=30
BET=1
START=true
LAST_LOSS_AMOUNT=0

stakePercentAmount=$(( 50*$INITIAL_STAKE/100 ))
maxWinOfDay=$(( $stakePercentAmount+$INITIAL_STAKE ))
maxLossOfDay=$(( $INITIAL_STAKE-$stakePercentAmount ))
totalWinOrLoss=0
countOfDayWin=0
countOfDayLoss=0
month=0
declare -A dayChart
declare -A monthChart

function getResultOfDay()
{
   stakeOfDay=$INITIAL_STAKE
   while [ $stakeOfDay -lt $maxWinOfDay ] && [ $stakeOfDay -gt $maxLossOfDay ]
   do
     resultOfBet=$(( RANDOM % 2 ))
     if [ $resultOfBet -eq 1 ]
     then
        stakeOfDay=$(( $stakeOfDay+$BET ))
     else
        stakeOfDay=$(( $stakeOfDay-$BET ))
     fi
   done
}

function getResultOfMonth(){

   for (( day=1; day<=$NUM_OF_DAYS; day++ ))
   do
   getResultOfDay
      if [ $stakeOfDay -eq $maxLossOfDay ]
      then
         totalWinOrLoss=$(( $totalWinOrLoss - $stakePercentAmount ))
         dayChart["Day $day"]=-$stakePercentAmount
         ((countOfDayLoss++))
      else
         totalWinOrLoss=$(( $totalWinOrLoss + $stakePercentAmount ))
         dayChart["Day $day"]=$stakePercentAmount
         ((countOfDayWin++))
      fi
       monthChart["Day $day"]=$totalWinOrLoss
   done
   ((month++))
   echo "********* MONTH $month RESULT *************"
   echo "Total Won/loss Amount : $totalWinOrLoss"
   echo "No. of days Win $countOfDayWin and amount is $(($countOfDayWin*$stakePercentAmount))" 
   echo "No. of days Loss $countOfDayLoss and amount is $(($countOfDayLoss*$stakePercentAmount))"
#   echo "${!monthChart[@]} : ${monthChart[@]}"
    for day in "${!monthChart[@]}";
    do
      echo -n "$day:${monthChart[$day]} "
    done
   luckyDay=$( printf "%s\n" ${monthChart[@]} | sort -nr | head -1 )
   unluckyDay=$( printf "%s\n" ${monthChart[@]} | sort -nr | tail -1 )

   for data in "${!monthChart[@]}"
   do
      if [[ ${monthChart[$data]} -eq $luckyDay ]]
      then
         echo "LUCKIEST DAY $data $luckyDay"
      elif [[ ${monthChart[$data]} -eq $unluckyDay ]]
      then
         echo "UNLUCKIEST DAY $data $unluckyDay"
      fi
   done
}

while [ $START ]
do
   getResultOfMonth
   if (( $totalWinOrLoss<=$LAST_LOSS_AMOUNT ))
   then
      echo "you lost, can't paly"
      break
   else
      echo "you won $totalWinOrLoss, continue playing"
      echo ""
   fi
done
