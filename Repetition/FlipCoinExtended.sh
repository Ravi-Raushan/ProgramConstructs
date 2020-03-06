#!/bin/bash -x
i=1;
while (( i<=11 ))
   do
       if (( 1==$((RANDOM%2)) ))
          then   echo Head;
       else
                 echo Tail;
       fi
       ((i++));
   done
