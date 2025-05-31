#!/bin/bash

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

# Open prank tabs in Firefox (in background)
firefox "https://www.youtube.com/watch?v=dQw4w9WgXcQ&pp=ygUIcmlja3JvbGw%3D" &
firefox "https://www.youtube.com/watch?v=9cPxh2DikIA" &
firefox "https://www.google.com/search?q=funny+cat+memes&sca_esv=21786a6342113ead&udm=14&sxsrf=AE3TifNvJ6b3AVctPqq5NCacrkceJDtDpQ%3A1748717375610&ei=P087aKOAJeCW5OMPuMiYQA&ved=0ahUKEwjjm_Hvr86NAxVgC3kBggQ4dUDCBA&uact=5&oq=funny+cat+memes&gs_lp=Ehlnd3Mtd2l6LW1vZGVsZXNzLXdlYi1vbmx5Ig9mdW5ueSBjYXQgbWVtZXMyCBAAGIAEGLEDMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAESMssUMIKWM0qcAJ4AZABAJgBngGgAdUNqgEENC4xMbgBA8gBAPgBAZgCEaACjQ-oAg7CAgoQABiwAxjWBBhHwgIHECMYJxjqAsICDhAAGIAEGJECGIoFGOoCwgIEECMYJ8ICCxAAGIAEGJECGIoFwgIQEAAYgAQYsQMYQxiDARiKBcICCxAAGIAEGLEDGIMBwgIKEAAYgAQYQxiKBcICDBAAGIAEGEMYigUYCsICDhAAGIAEGJECGLEDGIoFwgIKEAAYgAQYFBiHAsICDRAAGIAEGLEDGBQYhwLCAgYQABgDGAqYAw3xBV5dmdXR56xoiAYBkAYEkgcENC4xM6AHlVeyBwQyLjEzuAftDsIHBjItNy4xMMgHlwE&sclient=gws-wiz-modeless-web-only" &
firefox "https://www.youtube.com/watch?v=QhYrO6sdARw&pp=ygUacGVhbnV0IGJ1dHRlciBmb29kIG5ldHdvcmvSBwkJsAkBhyohjO8%3D" &

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

echo "LOL UR PRANKD"
echo "this wasnt really a browser, also u seem ready for dark mode!"
echo "This is getting boring..."
echo "Okay, goodnight"

xset dpms force off

