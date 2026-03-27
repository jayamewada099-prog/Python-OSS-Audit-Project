#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Hello Jaya, answer 3 questions for your manifesto."
read -p "1. Favourite OSS Tool: " TOOL
read -p "2. What is Freedom?: " FREEDOM
read -p "3. What will you build?: " BUILD

OUTPUT="manifesto_jaya.txt"
DATE=$(date +'%d %B %Y')

echo "--- Open Source Manifesto by Jaya Mewada ---" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "I believe in the power of $TOOL." >> $OUTPUT
echo "To me, freedom means $FREEDOM." >> $OUTPUT
echo "I promise to build $BUILD and share it with the world." >> $OUTPUT

echo "Your manifesto has been saved to $OUTPUT"
cat $OUTPUT
