#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

ID=(id -u)
if [ ID -ne 0 ]; then
    echo -e "$R ERROR :: kindly run this script with root user $N"
exit 1 
else
    echo -e "$G your a root user $N"
fi