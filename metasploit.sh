#!/data/data/com.termux/files/usr/bin/bash
echo "Starting Metasploit installation. It takes 10-20 minutes"
cd ~
apt update -y
apt upgrade -y
apt install curl wget gnupg -y
wget -q https://hax4us.github.io/TermuxBlack/termuxblack.key -O termuxblack.key && apt-key add termuxblack.key
echo "deb https://hax4us.github.io/TermuxBlack/ termuxblack main" >> $PREFIX/etc/apt/sources.list.d/termublack.list
curl -sSf https://raw.githubusercontent.com/Jemacivan/metasploit-installer-termux/main/install_metasploit.sh | bash
rm -rf metasploit.sh
echo "Metasploit has been installed. You can open it by msfconsole command."
