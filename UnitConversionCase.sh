#! /bin/bash -x
echo "1.Convert Feet To Inch"
echo "2.Convert Feet To Meter"
echo "3.Convert Inch To Feet"
echo "4.Convert Meter To Feet"
echo "Enter Your Choice"
read choice

case $choice in
		1)
			echo "How Many Feets You Want To Convert to Inch"
			read feet
			inch=$(echo "$feet * 12" | bc )
			echo "$feet ft = $inch in"
			;;
		2)
			echo "How Many Feets You Want To Convert To Meter"
			read feet
			meter=$(echo "$feet * 0.3048" | bc )
			echo "$feet ft = $meter mtrs "
			;;
		3)
			echo "How Many Inch You Want To Convert To Feet"
			read inch
			feet=$(echo "$inch / 12" | bc )
			echo "$inch in = $feet ft"
			;;
		4)
			echo "How Many Meters You want to convert to feet"
			read meter
			feet=$(echo "$meter * 3.2808" | bc )
			echo "$meter mtrs = $feet ft "
			;;

			*)
			echo "Invalid Choice"
			;;
esac
