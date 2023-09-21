#!/bin/bash

# Define the number of rows for the pattern
rows=5

# Outer loop for the number of rows
for ((i = 1; i <= rows; i++)); do
    # Inner loop to print numbers from 1 to i
    for ((j = 1; j <= i; j++)); do
        echo -n "$j"
    done
    echo   # Move to the next line after each row
done
