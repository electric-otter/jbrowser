#!/bin/bash
trap "" SIGINT

# Disable closing with Ctrl+Z (suspend)
trap "" SIGTSTP
firefox https://www.youtube.com/watch?v=dQw4w9WgXcQ&pp=ygUIcmlja3JvbGw%3D
# Function to print random glitch characters
glitch() {
  local chars='@#$%&*+=-?'
  for i in {1..50}; do
    # Random position on screen
    x=$((RANDOM % 50 + 10))
    y=$((RANDOM % 10 + 5))
    # Random char from chars
    c=${chars:RANDOM%${#chars}:1}
    # Move cursor and print char with random color
    echo -ne "\e[${y};${x}H\e[3$((RANDOM%7+1))m$c\e[0m"
    sleep 0.02
  done
}

clear
echo "Initializing JBrowser glitch effect..."
glitch

echo "LOL UR PRANKD"
echo "this wasnt really a browser, also u seem ready for dark mode!"
sleep 20
echo "This is getting boring..."
sleep 20
echo "Okay, goodnight"
xset dpms force off
