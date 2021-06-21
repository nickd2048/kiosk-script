# kiosk-script
Build for Ubuntu Desktop (or other Debian based distro's)

# To-Do :
- HDMI (cec) script to turn screen on or off at certain times.
- Refresh browserpage at certain times (F5 crontab) because of changes in CMS (if needed).
- Automatic updates https://github.com/IrisBroadcast/OphrysSignage/blob/master/storage/scripts/crontab-update-os.sh , https://github.com/luke255/pi-kiosk-setup/blob/main/pi.sh#L112
- Auto reboot if chromium crashes (start as service?)
- Installation script

# Installation :
- Install Ubuntu Desktop (https://ubuntu.com/download/desktop)
  - Username: nc
  - Hostname: NCLOCATION1
  - set check for updates automaticly & notify new ubuntu version to never in software updater
  - set do not disturb to on in settings
- sudo apt-get update && sudo apt-get upgrade -y
- sudo apt-get install -y chromium-browser unclutter xdotool cec-utils x11vnc htop git 
- reboot?
- mkdir /home/nc/kiosk && git clone http://github.com/nickd2048/kiosk-script /home/nc/kiosk
- Set screen related settings
```
sudo export DISPLAY=:0 (if configured via terminal)
sudo xrandr --size 1920x1080
Portrait
  - sudo xrandr -o right
Back to normal
  - sudo xrandr -o normaal
```
- gsettings set org.gnome.desktop.background picture-uri /home/nc/kiosk/nd-background-nc.jpg
- sudo crontab /home/nc/kiosk/crontab.example
- sudo chmod +x /home/nc/kiosk/nc.sh
- mkdir /home/nc/.config/autostart && cp /home/nc/kiosk/nc.desktop /home/nc/.config/autostart/nc.desktop

# Troubleshooting :
- sudo crontab -l (view all cron jobs for sudo user)

# Remote control :
- Start SSH session
- Enter: x11vnc
- Open VNC client and connect to client

# Stop kiosk mode :
- ALT+F4
