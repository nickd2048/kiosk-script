# kiosk-script
Standard hostname: NC-LOCATION1

# To-Do :
- HDMI (cec) script to turn screen on or off at certain times.
- Refresh browserpage at certain times (F5) because of changes in CMS (if needed).
- Automatic updates? https://github.com/IrisBroadcast/OphrysSignage/blob/master/storage/scripts/crontab-update-os.sh , https://github.com/luke255/pi-kiosk-setup/blob/main/pi.sh#L112
- Dual screen 
- Auto reboot if chromium crashes
- Installation script
- perfect crontab

# Installation :
- get github repo
- sudo apt-get update && sudo apt-get upgrade -Y
- Set sceen resolution to 1920x1080 (xrandr --size 1920x1080) and rotation
- gsettings get org.gnome.desktop.background picture-uri background.jpg
- sudo crontab crontab.example
- sudo apt-get install -y chromium-browser unclutter xdotool cec-utils openssh-server htop
- sudo chmod +x nc.sh
- sudo mkdir /home/nc/.config/autostart && sudo nano /home/nc/.config/autostart/nc.desktop
```
[Desktop Entry]
Type=Application
Name=Kiosk
Exec=/home/nc/nc.sh
X-GNOME-Autostart-enabled=true
```

# Stop kiosk mode :
- ALT+F4
