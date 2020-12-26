#!/bin/bash

# Run this script in display 0 - the monitor
export DISPLAY=:0

# Hide the mouse from the display
unclutter &

# If Chromium crashes (usually due to rebooting), clear the crash flag so we don't have the annoying warning bar
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/kiosk/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/kiosk/.config/chromium/Default/Preferences

# Variables
BROWSER="/usr/bin/chromium-browser"
TARGET="http://localhost/"

# Run Chromium and open tabs
$BROWSER $TARGET --window-size=1920,1080 --kiosk --incognito --window-position=0,0 --noerrdialogs --disable-session-crashed-bubble --disable-infobars --disable-pinch --no-first-run --disable-features=TranslateUI &

# Anti-idle loop
# #
while (true)
  do
    xdotool keydown ctrl; xdotool keyup ctrl;
    sleep 15
done

# Switch tab loop
# #
# while (true)
#   do
#     xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
#     sleep 15
# done
