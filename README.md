# kiosk-script
Build for Ubuntu Desktop (or other Debian based distro's)

# To-Do :
- HDMI (cec) script to turn screen on or off at certain times.
- Refresh browserpage at certain times (F5 crontab) because of changes in CMS (if needed).
- Automatic updates https://github.com/IrisBroadcast/OphrysSignage/blob/master/storage/scripts/crontab-update-os.sh , https://github.com/luke255/pi-kiosk-setup/blob/main/pi.sh#L112
- Auto reboot if chromium crashes (start as service?)
- Installation script
- perfect crontab

# Installation :
- Install Ubuntu Desktop (https://ubuntu.com/download/desktop)
- Username: nc
- Hostname: NC-LOCATION1
- Set sceen resolution to 1920x1080 (sudo xrandr --size 1920x1080) and rotation
- gsettings get org.gnome.desktop.background picture-uri background.jpg
- sudo apt-get update && sudo apt-get upgrade -Y
- sudo apt-get install -y chromium-browser unclutter xdotool cec-utils openssh-server htop
- get github repo
- sudo crontab /home/nc/kiosk/crontab.example
- sudo chmod +x /home/nc/kiosk/nc.sh
- sudo mkdir /home/nc/.config/autostart && sudo nano /home/nc/.config/autostart/nc.desktop
```
[Desktop Entry]
Type=Application
Name=Kiosk
Exec=/home/nc/kiosk/nc.sh
X-GNOME-Autostart-enabled=true
```

# Stop kiosk mode :
- ALT+F4
