#!/bin/bash
while true; do
  trap "" SIGINT
  trap "" SIGTSTP
  trap "" SIGTERM

  # Disable mouse until reboot
  MOUSE_ID=$(xinput list --name-only | grep -i 'mouse' | head -n 1 | xargs -I{} xinput list --id-only "{}")
  if [ -n "$MOUSE_ID" ]; then
    xinput disable "$MOUSE_ID"
    echo "Mouse disabled until reboot."
  else
    echo "Mouse device not found."
  fi

  # Open prank tabs in Firefox with autoplay
  firefox --new-tab "https://www.youtube.com/watch?v=dQw4w9WgXcQ&autoplay=1" &
  firefox --new-tab "https://www.youtube.com/watch?v=9cPxh2DikIA&autoplay=1" &
  firefox --new-tab "https://www.youtube.com/watch?v=QhYrO6sdARw&autoplay=1" &
  firefox --new-tab "https://www.google.com/search?q=funny+cat+memes" &

  # Optional: Wait a bit before glitching
  sleep 3

  # Glitch effect function
  glitch() {
    local chars='@#$%&*+=-?'
    for i in {1..50}; do
      x=$((RANDOM % 50 + 10))
      y=$((RANDOM % 10 + 5))
      c=${chars:RANDOM%${#chars}:1}
      echo -ne "\e[${y};${x}H\e[3$((RANDOM%7+1))m$c\e[0m"
    done
  }

  clear
  echo "Initializing JBrowser glitch effect..."

  for i in {1..100}; do glitch; done

  echo -e "\nLOL UR PRANKD"
  echo "this wasnt really a browser, also u seem ready for dark mode!"
  echo "This is getting boring..."
  echo "Okay, goodnight"

  # Turn off screen (goes black)
  xset dpms force off
done
