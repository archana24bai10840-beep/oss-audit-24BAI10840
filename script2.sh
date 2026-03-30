#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Archana Santhosh | Reg No: 24BAI10840
# Course: Open Source Software

# --- Package to inspect ---
PACKAGE="firefox"

echo "=================================================="
echo "         FOSS Package Inspector"
echo "=================================================="
echo ""

# --- Check if Firefox is installed ---
if command -v firefox &>/dev/null; then
    echo "  [FOUND] $PACKAGE is installed on this system."
    echo ""
    echo "  Version Info"
    echo "--------------------------------------------------"
    firefox --version 2>/dev/null || echo "  Version info not available via CLI"
    echo ""
    echo "  Package Details (if available)"
    echo "--------------------------------------------------"
    # Try dpkg first (Ubuntu/Debian), then rpm (Fedora/RHEL)
    if dpkg -l firefox &>/dev/null 2>&1; then
        dpkg -l firefox | grep firefox | awk '{print "  Package : "$2"\n  Version : "$3"\n  Arch    : "$4}'
    elif rpm -qi firefox &>/dev/null 2>&1; then
        rpm -qi firefox | grep -E 'Version|License|Summary'
    else
        echo "  Package manager info not available."
    fi
else
    echo "  [NOT FOUND] $PACKAGE is not installed."
    echo "  Install it using: sudo apt install firefox"
fi

echo ""
echo "  Philosophy Notes"
echo "--------------------------------------------------"

# --- Case statement: philosophy note per package ---
case $PACKAGE in
    firefox)
        echo "  Firefox: A nonprofit's fight to keep the web open and free." ;;
    httpd|apache2)
        echo "  Apache: The web server that built the open internet." ;;
    mysql)
        echo "  MySQL: Open source at the heart of millions of apps." ;;
    git)
        echo "  Git: Built by Linus when proprietary version control failed him." ;;
    vlc)
        echo "  VLC: Built by students in Paris — plays anything, runs everywhere." ;;
    *)
        echo "  $PACKAGE: An open source tool that the world depends on." ;;
esac

echo "=================================================="
