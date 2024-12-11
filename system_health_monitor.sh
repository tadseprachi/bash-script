#!/bin/bash

# Define threshold values
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

# Get the current CPU usage as a percentage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

# Get the current memory usage as a percentage
MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# Get the current disk usage as a percentage
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Check CPU usage
if [ $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc) -eq 1 ]; then
    echo "ALERT: High CPU usage! Current: $CPU_USAGE%"
else
    echo "CPU usage is within normal limits: $CPU_USAGE%"
fi

# Check memory usage
if [ $(echo "$MEMORY_USAGE > $MEMORY_THRESHOLD" | bc) -eq 1 ]; then
    echo "ALERT: High Memory usage! Current: $MEMORY_USAGE%"
else
    echo "Memory usage is within normal limits: $MEMORY_USAGE%"
fi

# Check disk usage
if [ $DISK_USAGE -gt $DISK_THRESHOLD ]; then
    echo "ALERT: High Disk usage! Current: $DISK_USAGE%"
else
    echo "Disk usage is within normal limits: $DISK_USAGE%"
fi
