#!/bin/bash

read -p "Enter password: " password
#Obtain length of the password
length="${#password}"

#Checks if the password length is greater than or equal to 8 characters. If not, promts invalid password
if [ $length -ge 8 ]
then
	#Using grep command against the password to check if it has atleast one uppercase, lowercase letter and a number. If this criteria passes, it returns 0
    echo $password | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]"
	#validates the return value obtained from the above command is 0. If not, promts weak password
    if [ $? -eq 0 ]
    then
        echo "Valid password"
    else
        echo "Weak password! Password must include uppercase, lowercase letters and a number"
    fi
else
    echo "Invalid password! Password should contain atleast 8 characters with uppercase, lowercase letters and a number"
fi
