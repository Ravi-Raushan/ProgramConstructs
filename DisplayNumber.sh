#!/bin/bash -x
read -p "Enter any number like 1, 10, 100 ..: " num;
case $num in
   1)             echo Unit;
                   ;;
   10)            echo Ten;
                   ;;
   100)           echo Hundred;
                   ;;
   1000)          echo Thousand;
                   ;;
   10000)         echo Ten Thousand;
                   ;;
   100000)        echo Lacs;
                   ;;
   1000000)       echo Million;
                   ;;
   10000000)      echo Crore;
                   ;;
   100000000)     echo Ten Crore;
                   ;;
   1000000000)    echo Billion;
                   ;;
   *)  echo please input only in formate and till crore.
       ;;
esac
