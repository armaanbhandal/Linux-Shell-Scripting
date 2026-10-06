#!/bin/bash

# Logs and tmp folders live next to this script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOG_DIR="$SCRIPT_DIR/logs"
TMP_DIR="$SCRIPT_DIR/tmp"
mkdir -p "$LOG_DIR" "$TMP_DIR"

# Find all directories within /etc and write to Proj2-1.txt
find /etc -type d > "$LOG_DIR/Proj2-1.txt" 2>/dev/null

# Find all directories within / and write to Proj2-2.txt in tmp directory
# (directories we lack permission to read are skipped quietly)
find / -type d > "$TMP_DIR/Proj2-2.txt" 2>/dev/null

# Move Proj2-2.txt to the logs directory
mv "$TMP_DIR/Proj2-2.txt" "$LOG_DIR/"
rmdir "$TMP_DIR" 2>/dev/null

echo "Wrote $(wc -l < "$LOG_DIR/Proj2-1.txt") directories to logs/Proj2-1.txt"
echo "Wrote $(wc -l < "$LOG_DIR/Proj2-2.txt") directories to logs/Proj2-2.txt"
