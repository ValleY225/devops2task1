#!/bin/bash
# Disk monitoring script v2 with critical alert
ALERT_LEVEL=90
CURRENT_UTIL=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$CURRENT_UTIL" -ge "$ALERT_LEVEL" ]; then
    echo "CRITICAL ALERT: Storage exceeds $ALERT_LEVEL%"
fi
