#!/bin/bash

echo "Enter string: "
read string
len=${#string}
while [ $len -ne 0 ]
do
	reverse=$reverse`echo $string | cut -c $len`
	((len--))
done
echo $reverse

#Using rev command
: '
echo "Enter string: "
read string
#Using rev command to reverse lines and further reverse characters in each string
echo $string | rev
'
