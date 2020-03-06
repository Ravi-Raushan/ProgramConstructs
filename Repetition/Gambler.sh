#!/bin/bash -x
cash=100;
goal=200;
bets=0;
win=0;
while (( $cash>0 && $cash<$goal ))
   do
        ((bets++));
        if (( 1==$((RANDOM%2)) ))
            then
                   ((cash++));
                    ((win++))
        else
                    ((cash--));
        fi
   done
echo "Number of time won : " $win
echo "Number of bets : " $bets
