#!/bin/bash

# Name - Akshay Gogate
# Purpose - To check if user exist in Linux Server

read -p " Please enter your username to check if you exist in linux server - " USERNAME

grep $USERNAME /etc/passwd

if [ $? -eq 0 ]
then
        echo " Hello $USERNAME, welcome to linux server"
else
        echo " Sorry you are not allowed"
fi


