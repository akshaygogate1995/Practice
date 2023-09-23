#!/bin/bash

# Name - akshay gogate
# date - 21/09/2023
# email - akshay.gogate@hotmail.com


# Define the number of rows for the pattern

rows=5

# Loop for the number of rows

for ((i = 1; i <= rows; i++)); do
    # Internal loop to print numbers from 1 to i
    for ((j = 1; j <= i; j++)); do
        echo -n "$j"
    done
    echo   # Move to the next line after each row
done
