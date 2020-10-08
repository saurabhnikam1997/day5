#! /bin/bash -x

read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c

number1=$(( a+b*c ))
number2=$(( a%b+c ))
number3=$(( c+a/b ))
number4=$(( a*b+c ))

echo -p "Max Number Equation"

	if [[ number1 -gt number2 && number1 -gt number3 && number1 -gt number4 ]]
	then
		echo "Number one is Max Number :: " $number1

	elif [[ number2 -gt number1 && number2 -gt number3 && number2 -gt number4 ]]
	then
		echo "Number two is Max Number :: " $number2

	elif [[ number3 -gt number1 && number3 -gt number2 && number3 -gt number4 ]]
	then
        	echo "Number three is Max Number :: " $number3

	else
		echo "Number four is Max Number :: " $number4

	fi

echo -p "Minimum Number Operation"

	if [[ number1 -lt number2 && number1 -lt number3 && number1 -lt number4 ]]
	then
        	echo "Number one is Min Number :: " $number1

	elif [[ number2 -lt number1 && number2 -lt number3 && number2 -lt number4 ]]
	then
        	echo "Number two is Min Number :: " $number2

	elif [[ number3 -lt number1 && number3 -lt number2 && number3 -lt number4 ]]
	then
        	echo "Number three is Min Number :: " $number3

	else
        	echo "Number four is Min Number :: " $number4

	fi
