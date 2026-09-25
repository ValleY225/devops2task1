#!/bin/bash
# DISK MONITOR - UNIFIED VERSION
WARNING_THRESHOLD=80
CRITICAL_THRESHOLD=90

USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')

if [ "$USAGE" -ge "$CRITICAL_THRESHOLD" ]; then
    echo "CRITICAL: Disk usage is at ${USAGE}%"
elif [ "$USAGE" -ge "$WARNING_THRESHOLD" ]; then
    echo "WARNING: Disk usage is at ${USAGE}%"
fi
