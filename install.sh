#!/bin/bash
R=\e[33m]
G=\e[32m]
y=\e[31m]
N=\e[0m]

LOGFILE=/tmp/hello
git --version
if [ $? -ne 0 ]
then
    yum install git -y >> 2>&1 LOGFILE 
else
    echo -e "$G git is already installed $N"
fi