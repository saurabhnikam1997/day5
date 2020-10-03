#!/bin/bash  -x

RANDOM=$$

for i in {1..5}
do
	echo $(( RANDOM%5 + 10 ))
	n=$RANDOM
	sum=$((sum+n))

done
avg=$(echo $sum / $n | bc -l)

