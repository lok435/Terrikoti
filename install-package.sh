#!/bin/bash
#!/bin/bash
R="\e[33m"
G="\e[32m"
y="\e[31m"
N="\e[0m"


echo "THIS script name is : $0"
VALIDATE (){

 if [ $1 -ne  0 ]
 then
    echo -e " $R ERROR:: $2 .. is FAILED $N "
    exit 1
 else
    echo -e "$G $2 .. success $N"
 fi
}
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
ID=$(id -u)
if [ $ID -ne 0 ]
then 
 echo -e $R "ERROR:: please run this script with root access $N"
else 
 echo "your root user"
fi 
for i in $package
do
if [ $package -ne 0 ]
then 
    yum install $package -y &>> $LOGFILE
    VALIDATE $? "installing $package"
else
    echo -e "$Y skipping .. $package is already installed$N"
fi
done
