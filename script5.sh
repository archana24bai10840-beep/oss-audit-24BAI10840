#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Archana Santhosh | Reg No: 24BAI10840
# Course: Open Source Software

echo "=================================================="
echo "       Open Source Manifesto Generator"
echo "=================================================="
echo ""
echo "  Answer three questions to generate your manifesto."
echo ""

# --- Read user inputs interactively ---
read -p "  1. Name one open-source tool you use every day: " TOOL
read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "  3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username for filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "--------------------------------------------------"

# --- Compose and write manifesto to file ---
{
echo "=================================================="
echo "        My Open Source Manifesto"
echo "        Generated on: $DATE"
echo "        By: Archana Santhosh | 24BAI10840"
echo "=================================================="
echo ""
echo "Every day, I rely on $TOOL — a tool built not for profit,"
echo "but for people. To me, freedom means $FREEDOM, and that is"
echo "exactly what open source represents. It is the freedom to"
echo "use, study, modify, and share without restriction."
echo ""
echo "I believe that knowledge grows when it is shared. That is"
echo "why, given the chance, I would build $BUILD and release it"
echo "freely for anyone in the world to use, improve, and pass on."
echo ""
echo "Open source is not just a licence. It is a philosophy —"
echo "a commitment to building a world where tools belong to"
echo "everyone, not just those who can afford them."
echo ""
echo "  — Archana Santhosh, 24BAI10840"
echo "=================================================="
} > "$OUTPUT"

# --- Display the saved manifesto ---
echo "  Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
echo "=================================================="
