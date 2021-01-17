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
  - Hostname: NCLOCATION1
  - set check for updates automaticly & notify new ubuntu version to never in software updater
  - set do not disturb to on in settings
- sudo apt-get update && sudo apt-get upgrade -y
- sudo apt-get install -y chromium-browser unclutter xdotool cec-utils openssh-server htop git
- mkdir /home/nc/kiosk && git clone http://github.com/nickd2048/kiosk-script /home/nc/kiosk
- Set sceen resolution to 1920x1080 (sudo xrandr --size 1920x1080) and rotation
- gsettings set org.gnome.desktop.background picture-uri /home/nc/kiosk/background.jpg
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

# Troubleshooting :
- sudo crontab -l (view all cron jobs for sudo user)

# Stop kiosk mode :
- ALT+F4
