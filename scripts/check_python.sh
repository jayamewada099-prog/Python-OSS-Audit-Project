#!/bin/bash
# Script 2: FOSS Package Inspector
# Checks if Python is installed and prints its purpose

PACKAGE="python3"

if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    python3 --version | grep -E 'Python'
    
    case $PACKAGE in
        python3)
            echo "Python: A language shaped entirely by community and open source ethics."
            ;;
        *)
            echo "Open source software powers the modern web."
            ;;
    esac
else
    echo "$PACKAGE is NOT installed."
fi
