#!/bin/bash

# Name - akshay gogate
# date - 21/09/2023
# email - akshay.gogate@hotmail.com

count=10

until [ $count -lt 1 ]; do
    echo "$count"
    sleep 1
    count=$((count - 1))
done

echo "End of the Countdown"
