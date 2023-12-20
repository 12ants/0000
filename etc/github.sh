#!/bin/bash
echo "##################################"
echo "## GITHUB CREDENTIALS INSTALLER ##"
echo "##################################"
if [ $UID == 0 ]; then 
echo -e "\n$c2 INSTALLING GITHUB CREDENTIALS...\n"; 
tput setaf dim; cd $ghh/0000; 
apt install -y gh > /dev/null
echo "$re gg"; gh auth logout; gh auth login --with-token < ../conf/ghcred256.txt;
rm ../conf/ghcred256.txt; sleep 1; gh auth status;
echo;echo;
git config --global user.email leonljunghorn@gmail.com
git config --global user.name 12ants
echo;echo;
echo -e "\n$c2 Github-credentials updated$green OK \n"; else echo "not root"; fi 
## GITHUB CREDENTIALS INSTALLER ##
################################## 
## by 12ants.com
