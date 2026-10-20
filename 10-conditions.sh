#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "please run this script with sudo access.."
    exit 1
fi

echo "proceeding..."

dnf install ngnix -y

if [ $? -ne 0 ]; then
    echo "ngnix installation is fail"
    exit 1
else
    echo "Ngnix installation is sucess"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "mysql installation is fail"
    exit 1
else
    echo "mysql installation is sucess"
fi


