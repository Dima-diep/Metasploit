#!/bin/bash
echo "Starting Metasploit installation. It takes 10-20 minutes"
cd ~
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
apt install curl -y
curl -sSf https://raw.githubusercontent.com/Jemacivan/metasploit-installer-termux/main/install_metasploit.sh | bash
echo "Metasploit has been installed. You can open it by msfconsole command. Open it now? y/n"
if y
then
msfconsole
elif n
then
cd ~
clear
