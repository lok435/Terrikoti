#!/bin/bash
R=\e[33m]
G=\e[32m]
y=\e[31m]
N=\e[0m]
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
LOGFILE=/tmp/$TIMESTAMP-$0-loki.log

ID=$(id -u)
if [ $ID -ne 0 ]
then 
 echo -e $R "ERROR:: please run this script with root access $N"
else 
 echo "your root user"
<<<<<<< HEAD
fi
yum install mysql -y
=======
fi # closing tag for this block

sudo yum install https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm -y
validate $? "installing mysql"
fi
 
>>>>>>> eaf958d68f577fbaaadb9fae47c3ff2d5185d595
