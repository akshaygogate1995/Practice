#!/bin/bash

# Specify the directory containing text files
directory="/path/to/your/directory"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory $directory does not exist."
    exit 1
fi

# Loop through text files in the directory
for file in "$directory"/*.txt; do
    # Check if the file is readable
    if [ -r "$file" ]; then
        echo "Processing file: $file"

        # Calculate average word length for the file
        total_words=0
        total_length=0

        while IFS= read -r line; do
            words=($line)
            for word in "${words[@]}"; do
                length=${#word}
                total_length=$((total_length + length))
                total_words=$((total_words + 1))
            done
        done < "$file"

        if [ "$total_words" -gt 0 ]; then
            average_length=$(echo "scale=2; $total_length / $total_words" | bc)
            echo "Average word length: $average_length characters"
        else
            echo "No words found in the file."
        fi

        echo # Add a blank line for separation
    else
        echo "Unable to read file: $file"
    fi
done
