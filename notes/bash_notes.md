
# Bash Scripting Notes

This document is a living reference.
Every script in /scripts maps to concepts explained here.

## Core Rules
- Always use `#!/bin/bash`
- Always quote variables
- Spaces inside `[ ]` are mandatory
- Exit code `0` = success


## Script: 01_file_checker.sh

Concepts:
- Positional parameters (`$1`)
- Default values (`${1:-}`)
- File tests (`-f`)
- Exit codes

Key pattern:
```bash
if [ -z "$var" ]; then
  exit 1
fi


## Script: 02_ping_sweep.sh

Concepts:
- Reading files with `while read`
- Input redirection (`< file`)
- Command exit codes
- Network testing with `ping`

Key pattern:
```bash
while read -r line; do
  command "$line"
done < file.txt


## Script: 03_backup.sh

Concepts:
- Timestamps with `date`
- Directory checks (`-d`)
- Archive creation (`tar`)
- Automation patterns

Key pattern:
```bash
timestamp="$(date +%Y%m%d_%H%M%S)"


## Script: 04_disk_monitor.sh

Concepts:
- Command substitution (`$(...)`)
- Parsing output with `awk`
- Numeric comparison (`-ge`)
- Threshold-based alerts

Key pattern:
```bash
usage=$(command | awk '...')


## Script: 05_log_cleaner.sh

Concepts:
- File discovery with `find`
- Time-based file selection (`-mtime`)
- Safe deletion
- Defensive checks

Key pattern:
```bash
find dir -type f -mtime +N -delete


## Script: 06_master.sh

Concepts:
- Functions
- Script orchestration
- User input (`read`)
- Case statements
- Modular design

Key pattern:
```bash
case "$var" in
  1) func ;;
  *) default ;;
esac

