#!/bin/bash  -x
RANDOM=$$

for i in {1..5}
do

        n=$(( RANDOM%5 + 10 ))
        sum=$((sum+n))

done
avg=$(echo $sum / 5 | bc -l)
