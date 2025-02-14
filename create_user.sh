#!/bin/bash


<<disclaimer

this is a shell 
-script to create user

disclaimer

echo "========== creation of user ==========="
read -p "enter the username: " username
read -p "enter the password: " password

sudo useradd -m "$username"

sudo passwd "$username"

echo -e "$password\n$password" | sudo passwd "$username" 

echo "========== creation of user ended ============"

sudo userdel $username

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "as wc is 0 the user is deleted"
else
	echo "the user was not deleted"
fi
