#!/bin/bash

# Update and install
apt update -y
apt upgrade -y
apt install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox xdotool unclutter sed chromium-browser -y
apt clean
apt autoremove -y

# Launch X at login
echo '[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx' >> /home/pi/.bash_profile

# Launch commands when X starts
cat kiosk >> /etc/xdg/openbox/autostart 
