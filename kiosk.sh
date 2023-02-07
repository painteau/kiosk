#!/bin/bash
xset s noblank
xset s off
xset -dpms

setxkbmap -option terminate:ctrl_alt_bksp


unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/$USER/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/$USER/.config/chromium/Default/Preferences

chromium-browser --start-fullscreen --kiosk --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-features=TranslateUI --disk-cache-dir=/dev/null  --password-store=basic --disable-pinch --overscroll-history-navigation=disabled --disable-features=TouchpadOverscrollHistoryNavigation https://www.meteofrance.com/ &

# while true; do
#   xdotool keydown ctrl+Next; xdotool keyup ctrl+Next;
#   sleep 10
# done
