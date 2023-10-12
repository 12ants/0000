#!/bin/bash
## TMUX and CONFIG
##
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi; ## ROOT-CHECK
sudo apt install -y perl sed tmux;
wget https://github.com/12ants/0000/raw/main/etc/.tmux.conf
wget https://github.com/12ants/0000/raw/main/etc/.tmux.conf.local
cp .tmux.conf /home/$SUDO_USER/; cp .tmux.conf.local /home/$SUDO_USER/; cp .tmux.conf ~/; cp .tmux.conf.local ~/;
chown $SUDO_USER: /home/$SUDO_USER/* -R; chmod 775 /home/$SUDO_USER/*; 
ln /home/$SUDO_USER/.conf/.tmux.conf /root/; ln /home/$SUDO_USER/.conf/.tmux.conf.local /root/
##
