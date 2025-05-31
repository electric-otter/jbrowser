#!/bin/bash
trap "" SIGINT

# Disable closing with Ctrl+Z (suspend)
trap "" SIGTSTP
firefox https://www.youtube.com/watch?v=dQw4w9WgXcQ&pp=ygUIcmlja3JvbGw%3D
echo "LOL UR PRANKD"
echo "this wasnt really a browser, also u seem ready for dark mode!"
sleep 20
echo "This is getting boring..."
sleep 20
echo "Okay, goodnight"
xset dpms force off
