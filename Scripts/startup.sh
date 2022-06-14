#!/bin/bash

echo "> > > > > > > > Configuring keys ESP: "
setxkbmap es

echo "[v] Done!"

echo "> > > > > > > > Updating Kali-Linux: "
sudo apt update
sudo apt -y full-upgrade
sudo apt -y autoremove
lsb_release -a

echo "[v] STARTUP COMPLETED SUCCESSFULLY!"

