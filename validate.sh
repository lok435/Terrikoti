#!/bin/bash
if [ $1 -ne - 0 ]
then
    echo -e " $R ERROR:: $2 .. is FAILED $N "
    exit 1
else 
    echo -e "$G $2 .. success $N"
fi