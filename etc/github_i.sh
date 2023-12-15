#!/bin/bash
##################################
## GITHUB CREDENTIALS INSTALLER ##
##################################
if [ $UID == 0 ]; then echo -e "\n$c2 INSTALLING GITHUB CREDENTIALS...\n"; 
tput setaf dim; cd /home/$SUDO_USER/; read -t 4 -ep "$c2 Github... " "GH";
apt install -y gh 2>/dev/null && ee $re; gh auth logout; 
wget -O gh.txt "https://gist.github.com/12ants/77f17ed35f1e38fb9a98393508adc030/raw/309e1d1d7c73a0e29882581dc94fe499766de3ff/gistfile1.txt" ; 
gh auth login --with-token < gh.txt; gh auth status; sleep 1;
##
echo -e "\n$c2 Github-credentials updated$green OK \n"; else echo "not root"; fi 
## GITHUB CREDENTIALS INSTALLER ##
################################## 
## by 12ants.com