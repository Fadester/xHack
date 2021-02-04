#!/bin/bash 
#installer for xHack

green='\033[1;32m'
red='\e[1;91m'
yellow='\e[0m\e[1;93m'
lightgreen='\e[1;32m'
farblos='\e[0m'
BlueF='\e[1;34m'
cyan='\e[0;36m'
lightred='\e[101m'
blink='\e[5m'
magenta='\e[35m'

v=0

user_id=$(id -u)

if [[ $user_id == 1000 ]]; then 
	echo -e $red You need to be root to run this script!	
	exit 1
fi

command -v fcrackzip > /dev/null 2>&1
if [[ $? == 1 ]]; then
	echo -e "$red fcrackzip not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing fcrackzip... $farblos"
	sleep 0.5
	xterm -T " Installer " -bg black -fg green -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e sudo apt-get install -y fcrackzip & 
	sleep 1
	let v++
fi 
command -v openssl > /dev/null 2>&1
if [[ $? == 1 ]]; then
	echo -e "$red openssl not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing openssl... $farblos"
	sleep 0.5
	xterm -T " Installer " -bg black -fg green -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e sudo apt-get install -y openssl &
	sleep 1
	let v++
fi 
command -v tor > /dev/null 2>&1
if [[ $? == 1 ]]; then 
	echo -e "$red TOR not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing TOR... $farblos"
	sleep 0.5
	xterm -T " Installer " -bg black -fg green -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e sudo apt-get install -y tor &  
	sleep1 
	let v++
fi
command -v aircrack-ng > /dev/null 2>&1
if [[ $? == 1 ]]; then 
	echo -e "$red aircrack-ng not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing aircrack-ng... $farblos"
	sleep 0.5
	xterm -T " Installer " -bg black -fg green -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e sudo apt-get install -y aircrack-ng &
	sleep 1
	let v++
fi
command -v wifite > /dev/null 2>&1
if [[ $? == 1 ]]; then 
	echo -e "$red wifite not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing wifite... $farblos"
	sleep 0.5
	xterm -T " Installer " -bg black -fg green -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e sudo apt-get install -y wifite & 
	sleep 1
	let v++
fi
command -v curl > /dev/null 2>&1
if [[ $? == 1 ]]; then 
	echo -e "$red curl not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing curl $farblos"
	sleep 0.5
	xterm -T " Installer " -bg black -fg green -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e sudo apt-get install -y curl & 
	sleep 1
	let v++
fi 
command -v php > /dev/null 2>&1 
if [[ $? == 1 ]]; then 
	echo -e "$red php not found! $farblos" 
	sleep 0.5
	echo -e "$yellow installing php... $farblos"
	sleep 0.5
	xterm -T " Installer " -bg black -fg green -fa monaco -fs 9 -geometry 110x16-0+0 -hold -e sudo apt-get install -y php & 
	sleep 1
	let v++
fi
if [[ $v == 0 ]]; then 
	echo -e "$green All requirements are installed! $farblos"
else 
	echo -e "$yellow Run this script again to check requirements! $farblos"
fi
