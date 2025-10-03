#!/bin/bash
R="\e[33m"
G="\e[32m"
y="\e[31m"
N="\e[0m"




VALIDATE (){

 if [ $1 -ne  0 ]
 then
    echo -e " $R ERROR:: $2 .. is FAILED $N "
    exit 1
 else
    echo -e "$G $2 .. success $N"
 fi
}

ID=$(id -u)
if [ $ID -ne 0 ]
then 
 echo -e $R "ERROR:: please run this script with root access $N"
else 
 echo "your root user"
fi # closing tag for this block

sudo yum install https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm -y

VALIDATE $? "installing mysql"


yum install git -y
VALIDATE $? "installing git"

 

