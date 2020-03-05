#!/bin/bash -x
read -p "Enter any number between 0 to 6: " num;
case $num in
   0)  echo Sunday;
       ;;
   1)  echo Monday;
       ;;
   2)  echo Tuesday;
       ;;
   3)  echo Wednesday;
       ;;
   4)  echo Thrusday;
       ;;
   5)  echo Friday;
       ;;
   6)  echo Saturday;
       ;;
   *)  echo Invalid Number
       ;;
esac
