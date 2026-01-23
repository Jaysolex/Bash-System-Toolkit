#!/bin/bash
set -euo pipefail

# This script removes log files older than a specified number of days.

log_dir="logs"
days_old=7

if [ ! -d "$log_dir" ]; then
  echo "Error: Log directory '$log_dir' not found."
  exit 1
fi

find "$log_dir" -type f -name "*.log" -mtime +"$days_old" -print -delete

echo "Old log files cleanup completed."
