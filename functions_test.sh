#!/bin/bash



<<info
This is an explaination of functions
info

function create_user {
read -p "enter the username: " username
sudo useradd -m $username
echo "user creater successfully"
}

for (( i=1 ; i<=5 ; i++ ))
do
	create_user
done

