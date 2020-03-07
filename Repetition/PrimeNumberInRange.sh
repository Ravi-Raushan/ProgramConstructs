#!/bin/bash 
read -p "Enter starting point: " start;
read -p "Enter Ending point: " end;
flag=1;
if [ $start -lt 2 ]
then
     start=2;
fi
     for (( n=$start; n<$end; n++ ))
      do
           flag=1;
         for (( i=2; $i*$i<=$n; i++ ))
         do
            if [ $(($n%$i)) -eq 0 ]
            then
                   flag=0;
                    break;
            fi
        done
       if [ $flag -eq 1 ]
        then
           echo $n;
       fi
    done


