#!/bin/bash
# BASIC APPS
tput cuu 8; tput ed; ee -e "\n\n$c2 Installing basic apps . . . \n\n";
apt update; apt upgrade -y; apt install -y gpm links2 ranger mc curl lolcat googler 2>/dev/null ; tput cuu 8; tput ed; ee -e "\n\n$c2 Basic apps installed . . . \n\n";
#
