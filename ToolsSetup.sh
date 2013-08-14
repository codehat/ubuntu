#!/bin/sh
sudo apt-get update
sudo apt-get install -y android-tools-fastboot
sudo apt-get install -y android-tools-adb
sudo apt-get install -y icedtea-netx
sudo apt-get install -y ctags
sudo apt-get install -y vim
sudo apt-get install -y kdesvn
sudo apt-get install -y subversion
sudo apt-get install -y iptux
sudo apt-get install -y rdesktop
sudo apt-get install -y meld
sudo apt-get install -y filezilla
sudo apt-get install -y nautilus-open-terminal
sudo apt-get install -y samba
sudo apt-get install -y wine
# support google-chrome-stable
sudo apt-get install -y libnss3-1d
# support bcompare3
sudo apt-get install -y libxft2:i386

sudo smbpasswd -a diao

# Set USB to support user access adb device
sudo echo "SUBSYSTEM==\"usb\", ATTR{idVendor}==\"18d1\", MODE=\"0600\", OWNER=\"diao\"" >> 51-android.rules
sudo echo "SUBSYSTEM==\"usb\", ATTR{idVendor}==\"05c6\", MODE=\"0600\", OWNER=\"diao\"" >> 51-android.rules
sudo mv 51-android.rules /etc/udev/rules.d/51-android.rules

# install gnome-tool
sudo apt-get install -y gnome-panel

