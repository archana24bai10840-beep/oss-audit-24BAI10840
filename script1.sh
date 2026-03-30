#!/bin/bash
# Script 1: System Identity Report
# Author: Archana Santhosh | Reg No: 24BAI10840
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Archana Santhosh"
REG_NO="24BAI10840"
SOFTWARE_CHOICE="Firefox"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release 2>/dev/null | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S')

# --- Display welcome banner ---
echo "=================================================="
echo "       Open Source Audit — $STUDENT_NAME"
echo "       Reg No : $REG_NO"
echo "       Software: $SOFTWARE_CHOICE"
echo "=================================================="
echo ""
echo "  System Information"
echo "--------------------------------------------------"
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home         : $HOME"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Info"
echo "--------------------------------------------------"
echo "  This system runs on Linux, licensed under"
echo "  GNU General Public License v2 (GPL v2)."
echo "  Firefox is licensed under Mozilla Public License 2.0 (MPL 2.0)."
echo "=================================================="
