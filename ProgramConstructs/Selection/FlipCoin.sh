#!/bin/bash -x
if [ 0 -eq $((RANDOM%2)) ]
    then echo HEAD;
else
         echo TAIL;
fi
