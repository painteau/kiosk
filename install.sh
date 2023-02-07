#!/bin/bash

apt clean
apt autoremove -y
apt update -y
apt upgrade -y
apt install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox xdotool unclutter sed chromium-browser -y
apt clean
apt autoremove -y

echo '[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx' >> /home/pi/.bash_profile

cat kiosk >> /etc/xdg/openbox/autostart 
