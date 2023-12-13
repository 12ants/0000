#!/bin/bash

# tput_menu: a menu driven system information program

BG_BLUE="$(tput setab 4)"
BG_BLACK="$(tput setab 0)"
FG_GREEN="$(tput setaf 2)"
FG_WHITE="$(tput setaf 7)"

# Save screen
tput smcup

# Display menu until selection == 0
while [[ $REPLY != 0 ]]; do
echo -n ${BG_BLUE}${FG_WHITE}
clear
cat << _EOF_
Please Select:

1. Display Hostname and Uptime
2. Display Disk Space
3. Display Home Space Utilization
0. Quit

_EOF_

read -p "Enter selection [0-3] > " selection
