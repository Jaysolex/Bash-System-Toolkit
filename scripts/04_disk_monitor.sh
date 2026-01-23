#!/bin/bash
set -euo pipefail

# This script checks disk usage and warns if usage exceeds a threshold.

threshold=80
usage=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

if [ "$usage" -ge "$threshold" ]; then
  echo "WARNING: Disk usage is at ${usage}%"
else
  echo "OK: Disk usage is at ${usage}%"
fi
