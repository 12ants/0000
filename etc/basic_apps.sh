#!/bin/bash
# BASIC APPS #
##############

tput cuu 8; tput ed; ee -e "\n\n$ll$c2 Installing basic apps . . . \n\n";
apt update; apt upgrade -y;
apt install -y \
gpm \
links2 \
ranger \
mc \
curl \
lolcat \
googler \

2>/dev/null ; tput cuu 8; tput ed; ee -e "\n\n$ll$c2 Basic apps installed . . . \n\n";
#### nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
echo "$ll$c2 OK"

##
##
##
##
