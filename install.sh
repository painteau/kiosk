#!/bin/bash

apt clean
apt autoremove -y
apt update -y
apt upgrade -y
apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox
apt install --no-install-recommends xdotool unclutter sed
apt-get install --no-install-recommends chromium-browser

echo '[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx' >> /home/pi/.bash_profile

apt clean
apt autoremove -y
