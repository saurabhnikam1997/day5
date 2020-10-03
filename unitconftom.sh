#!/bin/bash -x

declare -A value
read -p "Enter first value1:" value1
read -p "Enter second value2:" value2

value=$(( $value1 * $value2 ))

echo $value Square meter
