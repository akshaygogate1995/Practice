#!/bin/bash

sum=0

echo "Enter positive numbers to add (if you enter a negative number while loop will exit):"

while true; do
    read -p "Enter a number: " number

    # Check if the number is negative and exit the loop if it is
    
    if ((number < 0)); then
        break
    fi

    # Add the positive number to the sum
    sum=$((sum + number))
done

echo "Sum of positive numbers entered: $sum"

                                         
