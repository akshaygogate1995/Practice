#!/bin/bash

count=10

until [ $count -lt 1 ]; do
    echo "$count"
    sleep 1
    count=$((count - 1))
done

echo "End of countdown"
