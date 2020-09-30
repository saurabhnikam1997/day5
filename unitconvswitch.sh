#!/bin/bash -x

declare -A value
read -p "Enter src_unit: " src_unit
read -p "Enter dest_unit: " dest_unit
read -p "enter value of vsrc_unit" value


case "$src_unit-$dest_unit" in

	feet-inches)
	Inches=$(echo "$value * 12" | bc )
		;;
	feet-meter)
        meter=$(echo "$value * 0.3048" | bc )
                ;;
	inch-feet)
        Feet=$(echo "$value * 0.0833" | bc )
                ;;
	meter-feet)
        feet=$(echo "$value * 3.281" | bc )
                ;;
	*)
	echo "INVALID INPUT"
		;;
esac
