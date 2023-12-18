#!/bin/bash

echo -e "\e[1;33m> > > > > > > > Configuring keys ESP: \e[0m"
setxkbmap es

echo -e "\e[1;32m[v] Done! \e[0m"

echo -e "\e[1;33m> > > > > > > > Checking Screenfetch... \e[0m"

sudo apt install screenfetch -y

echo -e "\e[1;32m[v] Done! Screenfetch is ready. \e[0m"

echo -e "\e[1;33m> > > > > > > > Updating Kali-Linux: \e[0m"
sudo apt update
sudo apt -y full-upgrade
sudo apt -y autoremove
lsb_release -a
screenfetch

echo -e "\e[1;35m[\e[0m\e[1;37m*\e[0m\e[1;35m] STARTUP COMPLETED SUCCESSFULLY! \e[0m"
