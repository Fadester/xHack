#!/bin/bash 
#installer

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

command -v openssl > /dev/null 2>&1
if [[ $? == 1 ]]; then
	echo -e "$red openssl not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing openssl... $farblos"
	sudo apt-get install openssl
	let v++
fi 
command -v tor > /dev/null 2>&1
if [[ $? == 1 ]]; then 
	echo -e "$red TOR not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing TOR... $farblos"
	sudo apt-get install tor
	let v++
fi
command -v aircrack-ng > /dev/null 2>&1
if [[ $? == 1 ]]; then 
	echo -e "$red aircrack-ng not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing aircrack-ng... $farblos"
	sudo apt-get install aircrack-ng
	let v++
fi
command -v curl > /dev/null 2>&1
if [[ $? == 1 ]]; then 
	echo -e "$red curl not found! $farblos"
	sleep 0.5
	echo -e "$yellow installing curl $farblos"
	sudo apt-get install curl
	let v++
fi 
command -v php > /dev/null 2>&1 
if [[ $? == 1 ]]; then 
	echo -e "$red php not found! $farblos" 
	sleep 0.5
	echo -e "$yellow installing php... $farblos"
	sudo apt-get install php
	let v++
fi
if [[ $v == 0 ]]; then 
	echo -e "$green All requirements are installed! $farblos"
else 
	echo -e "$yellow Run this script again to check requirements! $farblos"
fi
