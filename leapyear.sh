#!/bin/bash -x

echo "Enter the year (yyyy)"
read year

if [[ $(($year % 4)) -ne 0 ]]
then
	echo "Invalid Year"
else
	if [[ $year%4 -eq 0 && $year%100 -ne 0 || $year%400 -eq 0 ]]
	then
	echo "Year is leap year :: $year"

	else
	echo "Year is not  leap year :: $year"
	fi
fi
