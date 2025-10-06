#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "this script is started execution at : $TIMESTAMP" &>> $LOGFILE
TIMESTAMP=$(date -%F)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
     if [ $1 -ne 0 ]; then
      echo -e "$2..$R failed$N"
     else 
      echo  -e "$2..$G is succes$N" 
     fi
}
ID=$(id -u)
if [ $ID -eq 0 ]; then
   echo -e "${G}your a root user${N}"
   for package in $@
   do
        yum list installed $package
        if [ if $? -ne 0 ]
        then
          yum install $package -y &>> $LOGFILE
          VALIDATE $? "installation of $package"
        else
         echo -e "$Y $package is already installed$N"
        fi  

else
     echo -e "$R ERROR :: kindly run this script with root user $N"
exit 1 
fi