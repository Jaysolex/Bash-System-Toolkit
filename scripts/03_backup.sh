#!/bin/bash
set -euo pipefail

# This script creates a timestamped backup archive
# of a specified directory.

source_dir="data"
backup_dir="backups"
timestamp="$(date +%Y%m%d_%H%M%S)"

if [ ! -d "$source_dir" ]; then
  echo "Error: Source directory '$source_dir' not found."
  exit 1
fi

mkdir -p "$backup_dir"

archive_name="$backup_dir/backup_$timestamp.tar.gz"

tar -czf "$archive_name" "$source_dir"

echo "Backup created: $archive_name"
