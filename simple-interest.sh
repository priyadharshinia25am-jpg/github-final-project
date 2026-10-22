#!/bin/bash

# Simple Interest Calculator

# Author: Priyadharshini

# Additional Authors:

# harikrish-8

echo "Simple Interest Calculator"

read -p "Enter Principal Amount: " principal
read -p "Enter Annual Rate of Interest (%): " rate
read -p "Enter Time (in years): " time

if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
echo "Error: Please enter valid non-negative numbers."
exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 
'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest: $interest"
