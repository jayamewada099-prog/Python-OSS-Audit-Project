#!/bin/bash
# Script 3: Disk and Permission Auditor
# Loops through important directories

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/usr/lib/python3")

echo "--- Directory Audit Report for Jaya Mewada ---"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done
