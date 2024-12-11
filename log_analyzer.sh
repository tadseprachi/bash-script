#!/bin/bash

# Check if the log file is passed as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE=$1

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

echo "Analyzing log file: $LOG_FILE"
echo "---------------------------------"

# Number of 404 errors
echo "Number of 404 Errors:"
grep -c " 404 " "$LOG_FILE"
echo

# Most Requested Pages (Top 10)
echo "Top 10 Most Requested Pages:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 10
echo

# IP Addresses with Most Requests (Top 10)
echo "Top 10 IP Addresses with Most Requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 10
echo

# Summary Report
echo "Summary Report:"
echo "---------------------------------"
echo "Total Lines in Log: $(wc -l < "$LOG_FILE")"
echo "Total Unique IP Addresses: $(awk '{print $1}' "$LOG_FILE" | sort | uniq | wc -l)"
echo "Total Unique Requested Pages: $(awk '{print $7}' "$LOG_FILE" | sort | uniq | wc -l)"
