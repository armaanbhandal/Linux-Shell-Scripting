#!/bin/bash

# Logs folder lives next to this script
LOG_DIR="$(cd "$(dirname "$0")" && pwd)/logs"

# Set input and output files
input_file="$LOG_DIR/Proj2-2.txt"
output_file="$LOG_DIR/Proj3-1.txt"

if [ ! -f "$input_file" ]; then
    echo "$input_file not found. Run task2.sh first."
    exit 1
fi

# Start with an empty output file so re-runs don't duplicate lines
: > "$output_file"

# Initialize counter
counter=1

# Read each line from input and write to output with line number
while read -r line; do
  echo "${counter}) $line" >> "$output_file"
  ((counter++))
done < "$input_file"

echo "Numbered $((counter - 1)) lines into logs/Proj3-1.txt"
