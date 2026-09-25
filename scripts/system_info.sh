#!/bin/bash
echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p 2>/dev/null || echo 'N/A')"
echo "Memory Usage:"
free -h 2>/dev/null || echo "Memory check available on Linux targets"
