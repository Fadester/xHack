#!/bin/bash
#installer
#colors
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

which /usr/bin/openssl > /dev/null 2>&1
echo $? > /dev/null 2>&1
if [[ $? == "0" ]]; then
	sleep 0.5
	echo -e "$green [openssl]................FOUND! $farblos"
else
	sleep 0.5
	echo -e "$red [openssl]...............FAIL! $farblos"
	sleep 0.5
	echo -e "$yellow [openssl]................INSTALLING... $farblos"
	sudo apt-get install openssl > /dev/null 2>&1
fi
which /usr/bin/curl > /dev/null 2>&1
echo $? > /dev/null 2>&1
if [[ $? == "0" ]]; then
	sleep 0.5
	echo -e "$green [curl]...................FOUND! $farblos"
else
	sleep 0.5
	echo -e "$red [curl]..................FAIL! $farblos"
	sleep 0.5
	echo -e "$yellow [curl]...................INSTALLING... $farblos"
	sudo apt-get install curl > /dev/null 2>&1
fi
which /usr/bin/php > /dev/null 2>&1
echo $? > /dev/null 2>&1
if [[ $? == "0" ]]; then
	sleep 0.5
	echo -e "$green [php]....................FOUND! $farblos"
else
	sleep 0.5
	echo -e "$red [php]...................FAIL! $farblos"
	sleep 0.5
	echo -e "$yellow [php]....................INSTALLING... $farblos"
	sudo apt-get install php > /dev/null 2>&1
fi
which /usr/bin/tor > /dev/null 2>&1
echo $? > /dev/null 2>&1
if [[ $? == "0" ]]; then
	sleep 0.5
	echo -e "$green [tor]....................FOUND! $farblos"
else
	sleep 0.5
	echo -e "$red [tor]...................FAIL! $farblos"
	sleep 0.5
	echo -e "$yellow [tor]....................INSTALLING... $farblos"
	sudo apt-get install tor > /dev/null 2>&1
fi
which /usr/bin/aircrack-ng > /dev/null 2>&1
echo $? > /dev/null 2>&1
if [[ $? == "0" ]]; then
	sleep 0.5
	echo -e "$green [aircrack-ng]............FOUND! $farblos"
else
	sleep 0.5
	echo -e "$red [aircrack-ng]............FAIL! $farblos"
	sleep 0.5
	echo -e "$yellow [aircrack-ng]...........INSTALLING... $farblos"
	sudo apt-get install aircrack-ng > /dev/null 2>&1
fi
which /usr/bin/ssh > /dev/null 2>&1
echo $? > /dev/null 2>&1
if [[ $? == "0" ]]; then
	sleep 0.5
	echo -e "$green [ssh]....................FOUND! $farblos"
else
	sleep 0.5
	echo -e "$red [ssh]...................FAIL! $farblos"
	sleep 0.5
	echo -e "$yellow [ssh]....................INSTALLING... $farblos"
	sudo apt-get install ssh > /dev/null 2>&1
fi
sleep 0.5
echo -e "$green All requirements are installed! $farblos"