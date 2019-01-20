#!/bin/bash
#Lab 10
#mycalc.sh
#Seongyeop Jeong
#040885882
#course: CST8102 300
#2017-01-11
#The script takes 3 parameters...


num1=$1
oper=$2
num2=$3

add ()
{
	echo "The sum of $num1 plus $num2 equals" $((num1 + num2))
}

sub ()
{
	echo "The subtraction of $num1 minus $num2 equals" $((num1-num2))
}

if [ $# != 0 ] && [ $# != 3 ]
then
	echo "invalid input"
	exit
fi

if [ $# = 3 ]
then
	i=true

	while [ $i = "true" ]
	do
	if [ $2 = "+" ]
	then
		add $1 $2 $3
		exit

	elif [ $2 = "-" ]
	then
		sub $1 $2 $3
		exit
	fi
	done
fi

choice=n
while [ $choice != "X" ] && [ $choice != "x" ]
do
	echo
	echo "C) Calculation"
	echo "X) Exit"
	echo "Enter the selection or x to exit"
	read choice
            
	if [ $choice = "c" ] || [ $choice = "C" ]
	then

        echo "Please enter an integer number or X to exit: " 
	read num1
        num1=$num1
	fi
        while [ $choice = "X" ] || [ $choice = "x" ]
        do
#       clear
	exit
        done

	echo
        echo '+) Add'
        echo '-) Subtract'
        echo 'X) Exit'
        echo "Enter the selection or X to exit: " 
	read operation
        oper=$operation
        
        while [ $operation = "X" ] || [ $operation = "x" ]
        do
#	clear
	exit
        done
        
        if [ $operation = "+" ]
        then
            
		echo "Please enter an integer number or X to exit: "
		read num2
		num2=$num2
		add
		while [ $choice = "X" ] || [ $choice = "x" ]
		do
		exit
		done
        fi
        if [ $operation = "-" ]
        then    
		echo "Please enter an integer number or X to exit: "
		read num2
		num2=$num2
		sub
		while [ $choice = "X" ] || [ $choice = "x" ]
		do
                exit
		done
	fi
done
