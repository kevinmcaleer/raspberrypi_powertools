#!/bin/bash

# Replace buster with bullseye
sudo sed -i 's/buster/bullseye/g' etc/apt/sources.list
sudo sed -i 's/buster/bullseye/g' etc/apt/sources.list.d/raspi.list

sudo apt update
sudo apt clean
sudo apt upgrade
sudo install gcc-8-base
sudo apt full-upgrade

# Add updater to menu panel
echo ‘rfkill unblock 0’ >> /etc/local.rc
