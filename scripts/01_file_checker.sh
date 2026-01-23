#!/bin/bash
set -euo pipefail

# This script checks if a file exists before continuing.
# It demonstrates argument handling and exit codes.

file="${1:-}"

if [ -z "$file" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

if [ ! -f "$file" ]; then
  echo "Error: File '$file' does not exist."
  exit 1
fi

echo "File '$file' exists."
