#!/bin/bash

red="\e[31m"
none="\e[0m"

bold=$(tput bold)
normal=$(tput sgr0)

function checking() {
    if [ "$(cat /sys/firmware/efi/fw_platform_size)" -eq 64 ]; then
        echo -e "${bold}You are using 64-bit platform!${normal}"
        echo "Continue..."
    else
        echo "You are not using 64-bit platform!"
        exit
    fi

    echo "The default locale is English..."

    for i in {1..5}; do
        echo -n "$i.."
        sleep 1
    done
}


checking

sleep 2

# function internet(){
# 	
#
# }
#
# internet

function pacman(){
	pacman-key --init
}
