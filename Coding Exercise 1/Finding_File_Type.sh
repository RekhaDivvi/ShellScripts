#!/bin/bash

read -p "Enter a name: " name

#Finding the file type using "file test operators"
if [ -d $name ]
then
	echo "$name is a directory"
	elif [ -f $name ]
	then
		echo "$name is a file"
else
	echo "$name is neither a file nor directory"
fi