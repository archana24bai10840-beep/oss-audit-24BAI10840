#!/bin/bash
# Script 4: Log File Analyzer
# Author: Archana Santhosh | Reg No: 24BAI10840
# Course: Open Source Software

# --- Accept log file and keyword as arguments ---
LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

echo "=================================================="
echo "           Log File Analyzer"
echo "=================================================="
echo ""
echo "  Log File : $LOGFILE"
echo "  Keyword  : $KEYWORD"
echo "--------------------------------------------------"

# --- Check if log file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "  [ERROR] File '$LOGFILE' not found."
    echo "  Trying fallback: /var/log/dmesg"
    LOGFILE="/var/log/dmesg"
    # Retry check
    if [ ! -f "$LOGFILE" ]; then
        echo "  [ERROR] Fallback also not found. Exiting."
        exit 1
    fi
    echo "  Using fallback: $LOGFILE"
fi

# --- Read file line by line and count keyword matches ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "  Result"
echo "--------------------------------------------------"
echo "  Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Print last 5 matching lines ---
echo "  Last 5 matching lines:"
echo "--------------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "=================================================="
