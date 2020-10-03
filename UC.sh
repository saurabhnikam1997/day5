#!/bin/bash -x

declare -A value
read -p "Enter value1 in feet: " value1
read -p "Enter value2 in feet: " value2
value=$(( value1 * value2))
read -p "Enter src_unit: " src_unit
read -p "Enter dest_unit: " dest_unit



case "$src_unit-$dest_unit" in

        feet-inches)
        Inches=$(echo "$value * 12" | bc )
                ;;
        sqfeet-sqmeter)
        sqmeter=$(echo "$value / 10.76" | bc )
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

read -p "enter no of plots: " plot
acres=$(echo "$sqmeter * $plot * 0.0002471" | bc )
 
