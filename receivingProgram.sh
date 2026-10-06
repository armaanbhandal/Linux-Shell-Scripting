#!/bin/bash

# Validate input
if [ $# -eq 0 ]; then
    echo "No file name provided."
    exit 1
fi

# Variables
input_file=$1
if [ ! -f "$input_file" ]; then
    echo "File not found: $input_file"
    exit 1
fi
myName="Abhor Bhandy"
Today=$(date +"%d%m%y-%H:%M")

# Display the file name
echo "File name: $input_file"

# Display each line from the file (including a last line with no trailing newline)
total_lines=0
while read -r line || [ -n "$line" ]; do
  echo "$line"
  ((total_lines++))
done < "$input_file"

# Display the total count and name/date
echo "Total count: $total_lines"
echo "Name: $myName, Date: $Today"