#!/bin/bash

# Logs folder lives next to this script
LOG_DIR="$(cd "$(dirname "$0")" && pwd)/logs"
mkdir -p "$LOG_DIR"

# Navigate to the logs directory
cd "$LOG_DIR" || exit 1

# List /dev directory contents and write to Proj1.txt
ls /dev > Proj1.txt

# Count the number of lines in Proj1.txt and display
total_files=$(wc -l < Proj1.txt)
echo "total files listed in proj1 = $total_files"
