#!/bin/bash
set -euo pipefail

# Master script to orchestrate system checks and maintenance tasks.

run_file_check() {
  ./scripts/01_file_checker.sh notes/bash_notes.md
}

run_ping_sweep() {
  ./scripts/02_ping_sweep.sh
}

run_backup() {
  ./scripts/03_backup.sh
}

run_disk_monitor() {
  ./scripts/04_disk_monitor.sh
}

run_log_cleanup() {
  ./scripts/05_log_cleaner.sh
}

echo "===== System Maintenance Toolkit ====="
echo "1) File checker"
echo "2) Ping sweep"
echo "3) Backup data"
echo "4) Disk monitor"
echo "5) Log cleanup"
echo "6) Run ALL"
echo "====================================="
read -rp "Select an option: " choice

case "$choice" in
  1) run_file_check ;;
  2) run_ping_sweep ;;
  3) run_backup ;;
  4) run_disk_monitor ;;
  5) run_log_cleanup ;;
  6)
     run_file_check
     run_ping_sweep
     run_backup
     run_disk_monitor
     run_log_cleanup
     ;;
  *) echo "Invalid option" ;;
esac
