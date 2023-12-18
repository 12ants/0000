#!/bin/bash
##################################
## GITHUB CREDENTIALS INSTALLER ##
##################################
if [ $UID == 0 ]; then 
echo -e "\n$c2 INSTALLING GITHUB CREDENTIALS...\n"; 
##
tput setaf dim; cd /home/$SUDO_USER/; 
wget -O gh.txt "https://gist.github.com/12ants/8ce2c5f5fbb31250e634c17d024ae616/raw/8e683297beacbd5c796260976f6ba413f711b3e2/gghh.txt" ; 
apt install -y gh >/dev/null
echo "$re gg"; gh auth logout; gh auth login --with-token < gh.txt; sleep 1; gh auth status;
git config --global user.email leonljunghorn@gmail.com
git config --global user.name 12ants
##
echo -e "\n$c2 Github-credentials updated$green OK \n"; else echo "not root"; fi 
## GITHUB CREDENTIALS INSTALLER ##
################################## 
## by 12ants.com
