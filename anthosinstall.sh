#!/bin/bash

red="\e[31m"
none="\e[0m"

bold=$(tput bold)
normal=$(tput sgr0)

function checking() {
    # Flatform size 
	if [ "$(cat /sys/firmware/efi/fw_platform_size)" -eq 64 ]; then
        echo -e "${bold}You are using 64-bit platform!${normal}"
    else
        echo "You are not using 64-bit platform!"
        exit
    fi
	
	# Locale
    echo "The default locale is English."

	# Check internet connection
	wget -q --spider https://duckduckgo.com/

	if [ $? -eq 0 ]; then
		echo "You are connected to the internet!"
	else
		echo -e "${bold}${red}You are not connected to the internet!${red}${normal}"
		exit
	fi

    for i in {1..5}; do
        echo -n "$i.."
        sleep 1
    done
}


checking

sleep 1

function pacman(){
	pacman-key --init
}


