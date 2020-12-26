# kiosk-script
Standard hostname: NC-LOCATION1

# To-Do :
- HDMI (cec) script to turn screen on or off at certain times.
- Refresh browserpage at certain times (F5) because of changes in CMS (if needed).
- Automatic updates? https://github.com/IrisBroadcast/OphrysSignage/blob/master/storage/scripts/crontab-update-os.sh , https://github.com/luke255/pi-kiosk-setup/blob/main/pi.sh#L112
- Dual screen 
- Auto reboot if chromium crashes
- Installation script
- Custom background or black screen when booting

# Installation :
- Set sceen resolution to 1920x1080
- Set hostname
- Set networkconf
- Set background
- sudo apt-get update && sudo apt-get upgrade -Y
- sudo apt-get install -y chromium-browser unclutter xdotool cec-utils
- wget nc.sh
- sudo chmod +x nc.sh
- sudo mkdir /home/nc-location1/.config/autostart && sudo nano /home/nc-location1/.config/autostart/nc.desktop
```
[Desktop Entry]
Type=Application
Name=Kiosk
Exec=/home/NC-LOCATION1/kiosk.sh
X-GNOME-Autostart-enabled=true
```

# Stop kiosk mode :
- ALT+F4 or sudo killall chromium-browser
- sudo killall nc.sh
