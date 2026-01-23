#!/bin/bash
set -euo pipefail

# This script reads a list of IP addresses from a file
# and checks network reachability using ping.

ip_file="scripts/iplist.txt"

if [ ! -f "$ip_file" ]; then
  echo "Error: IP list file '$ip_file' not found."
  exit 1
fi

while read -r ip; do
  if ping -c 1 "$ip" &>/dev/null; then
    echo "$ip : reachable"
  else
    echo "$ip : unreachable"
  fi
done < "$ip_file"
