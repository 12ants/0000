#!/bin/bash
##
sudo apt install -y awk perl sed tmux;
##
cp .tmux.conf /home/$SUDO_USER/.conf/
cp .tmux.conf.local /home/$SUDO_USER/.conf/
## link in root
ln /home/$SUDO_USER/.conf/.tmux.conf /root/
ln /home/$SUDO_USER/.conf/.tmux.conf.local /root/
##
