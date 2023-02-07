#!/bin/bash
xset s noblank
xset s off
xset -dpms

setxkbmap -option terminate:ctrl_alt_bksp


unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/$USER/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/$USER/.config/chromium/Default/Preferences

chromium-browser --noerrdialogs --disable-infobars --kiosk https://pimylifeup.com https://www.adafruit.com &

# while true; do
#   xdotool keydown ctrl+Next; xdotool keyup ctrl+Next;
#   sleep 10
# done
