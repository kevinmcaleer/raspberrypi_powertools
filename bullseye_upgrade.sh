#!/bin/bash
# Kevin McAleer
# 11 November 2021

echo "Kev's Powertools - Raspberry Pi OS Buster to Bullseye installation Script"

# fix the wifi bug
echo ‘rfkill unblock 0’ >> /etc/rc.local

# Replace buster with bullseye
sudo sed -i 's/buster/bullseye/g' /etc/apt/sources.list
sudo sed -i 's/buster/bullseye/g' /etc/apt/sources.list.d/raspi.list

sudo apt update
sudo apt clean
sudo apt upgrade -y
sudo apt autoremove -y
sudo install gcc-8-base
sudo apt full-upgrade -y

# Add updater to menu panel
