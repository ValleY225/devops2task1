#!/bin/bash
# Disk monitoring script v1
THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')

if [ $USAGE -gt $THRESHOLD ]; then
    echo "WARNING: Disk usage is above $THRESHOLD%"
fi