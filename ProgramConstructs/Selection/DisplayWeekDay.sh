#!/bin/bash -x
read -p "Enter any number: " num;
num=$(($num%7));
if [ $num -eq 1 ]
   then   echo Mondey;
elif [ $num -eq 2 ]
   then  echo Tuesday;
elif [ $num -eq 3 ]
   then echo Wednesday;
elif [ $num -eq 4 ]
   then echo Thursday;
elif [ $num -eq 5 ]
   then echo Friday;
elif [ $num -eq 6 ]
   then  echo Saturday;
else
        echo Sunday;
fi
