#!/bin/bash
#Resize
#resize -s 40 92 > /dev/null
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#ROOT PRIVILEGIES
if [[ $EUID -ne 0 ]]; then
        echo -e "	$yellow[!]$white execute program as root $yellow[!]$nc"
        exit 1
fi
echo -e "$green update $yellow[✔]$nc"
sudo apt-get update
# keytool
if hash keytool 2>/dev/null; then
        echo -e "$green keytool $yellow[✔]$nc"
else
        echo -e "$green keytool $yellow[✘]$nc"
sudo apt-get install keytool
fi
# jarsigner
if hash jarsigner 2>/dev/null; then
        echo -e "$green jarsigner $yellow[✔]$nc"
else
        echo -e "$green jarsigner $yellow[✘]$nc"
sudo apt-get install jarsigner
fi
#Apache2
if hash apache2 2>/dev/null; then
	echo -e "$green Apache2 $yellow[✔]$nc"
else
	echo -e "$green Apache2 $yellow[✘]$nc"
sudo apt-get install apache2
fi
#Metasploit
if hash msfconsole 2>/dev/null; then
        echo -e "$green Metasploit-Framework $yellow[✔]$nc"
else
        echo -e "$green Metasploit-Framework $yellow[✘]$nc"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > metasploit_installer && chmod 755 metasploit_installer && ./metasploit_installer
fi
#curl
if hash xterm 2>/dev/null; then
        echo -e "$green xterm $yellow[✔]$nc"
else
        echo -e "$grenn xterm $yellow[✘]$nc"
sudo apt-get install xterm
fi

