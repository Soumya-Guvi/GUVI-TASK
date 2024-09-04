#!/bin/bash

# Check if the filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

# Replace "give" with "learning" from the 5th line onwards in lines containing "welcome"
awk 'NR >= 5 && /welcome/ {gsub(/give/, "learning")} {print}' "$filename" > temp_file && mv temp_file "$filename"

echo "Replacement completed in $filename."
