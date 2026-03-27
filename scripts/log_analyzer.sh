#!/bin/bash
# Script 4: Log File Analyzer
# Author: Jaya Mewada

LOGFILE=${1:-"/var/log/syslog"}
KEYWORD="error"
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    # Agar syslog nahi milti toh dmesg check karein
    LOGFILE="/var/log/messages"
fi

if [ -f "$LOGFILE" ]; then
    while IFS= read -r LINE; do
        if echo "$LINE" | grep -iq "$KEYWORD"; then
            COUNT=$((COUNT + 1))
        fi
    done < "$LOGFILE"
    echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
else
    echo "Log file not found. Please provide a valid path."
fi
