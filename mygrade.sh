#!/bin/bash
#Lab 8 - Shell Script I
echo
read -p "Enter assignment mark (0 to 40): " count1
read -p "Enter Test1 mark (0 to 15): " count2
read -p "Enter Test2 mark (1 to 15): " count3
read -p "Enter Final Exam mark (0 to 30): " count4

echo

totalMark=$(($count1 + $count2 + $count3 + $count4))

if [ $totalMark -ge 90 ] && [ $totalMark -le 100 ]
then
	echo "Your final grade is A+"
elif [ $totalMark -ge 85 ] && [ $totalMark -le 89 ] 
then
	echo "Your final grade is A"
elif [ $totalMark -ge 80 ] && [ $totalMark -le 84 ]
then
	echo "Your final grade is A-"
elif [ $totalMark -ge 77 ] && [ $totalMark -le 79 ]
then
	echo "Your final grade is B+"
elif [ $totalMark -ge 73 ] && [ $totalMark -le 76 ]
then
	echo "Your final grade is B"
elif [ $totalMark -ge 70 ] && [ $totalMark -le 72 ]
then
	echo "Your final grade is B-"
elif [ $totalMark -ge 67 ] && [ $totalMark -le 69 ]
then

	echo "Your final grade is C+"
elif [ $totalMark -ge 63 ] && [ $totalMark -le 66 ]
then
	echo "Your final grade is C"
elif [ $totalMark -ge 60 ] && [ $totalMark -le 62 ]
then
	echo "Your final grade is C-"
elif [ $totalMark -ge 57 ] && [ $totalMark -le 59 ]
then
	echo "Your final grade is D+"
elif [ $totalMark -ge 53 ] && [ $totalMark -le 56 ]
then
	echo "Your final grade is D"
elif [ $totalMark -ge 50 ] && [ $totalMark -le 52 ]
then
	echo "Your final grade is D-"
elif [ $totalMark -ge 0 ] && [ $totalMark -le 49 ]
then
	echo "Your final grade is F"
else 
echo "Invalid input"
fi

