#!/bin/bash
echo "Starting Metasploit installation. It takes 10-20 minutes"
cd ~
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
apt install curl wget -y
wget -q https://hax4us.github.io/TermuxBlack/termuxblack.key -O termuxblack.key && apt-key add termuxblack.key 
curl -sSf https://raw.githubusercontent.com/Jemacivan/metasploit-installer-termux/main/install_metasploit.sh | bash
rm -rf metasploit.sh
echo "Metasploit has been installed. You can open it by msfconsole command."
