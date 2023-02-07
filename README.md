# kiosk

## Raspberry Pi Kiosk using Chromium

### Setup

```
cd /home/pi/
sudo su
git clone https://github.com/ldlcol/kiosk && cd kiosk
chmod +x install.sh && ./install.sh
```

### Setup auto login 
```
raspi-config 
```
go to 1 System Options -> S5 Boot / Auto Login -> B4 Console Autologin

### reboot and enjoy
