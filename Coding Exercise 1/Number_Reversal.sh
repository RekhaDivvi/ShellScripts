#!/bin/bash

#Storing command line paramenters in an array
arr=$@
#Validating if the script is executed with command line parameters or not
if [ $# -ne 0 ]
then
#Using for loop to print reversal of more than one number
        for n in ${arr[@]}
		do
                echo $n | rev
        done
else
        echo "Error! Please provide command line arguments"
fi


#Alternate method
#!/bin/bash
input="$1"
len=${#input}
if [ $# -ne 0 ]
then
	for (( i=$len-1; i>=0; i-- )) 
	do 
		rev="$rev${input:$i:1}" 
	done 
	echo "$rev"
else
	echo "Error! Please provide command line arguments"
fi



#Using while loop
: '
arr=$@
if [ $# -ne 0 ]
then
        for n in ${arr[@]}; do
                REM=0
                REV_NUM=0
                NUMBER=$n
                while [ $NUMBER -gt 0 ]
                do
                        REM=`expr $NUMBER % 10`
                        REV_NUM=`expr $REV_NUM \* 10 + $REM`
                        NUMBER=`expr $NUMBER / 10`
                done
                echo "Reverse of $n is: " $REV_NUM
        done
else
        echo "Error! Please provide command line arguments"
fi
'
