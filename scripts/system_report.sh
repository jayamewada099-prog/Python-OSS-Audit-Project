#!/bin/bash
# Script 1: System Identity Report
# Author: Jaya Mewada (24BCE11442)
# Course: Open Source Software

STUDENT_NAME="Jaya Mewada"
REG_NO="24BCE11442"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(hostnamectl | grep "Operating System" | cut -d: -f2)

echo "=========================================="
echo " $SOFTWARE_CHOICE - Open Source Audit"
echo "=========================================="
echo "Student Name   : $STUDENT_NAME"
echo "Reg Number     : $REG_NO"
echo "Kernel Version : $KERNEL"
echo "Current User   : $USER_NAME"
echo "System Uptime  : $UPTIME"
echo "Distribution   : $DISTRO"
echo "License: This OS is covered by the GNU GPL License."
