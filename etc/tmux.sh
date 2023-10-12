#!/bin/bash
##
sudo apt install -y perl sed tmux;
##
cp .tmux.conf /home/$SUDO_USER/
cp .tmux.conf.local /home/$SUDO_USER/
## link in root
ln /home/$SUDO_USER/.conf/.tmux.conf /root/
ln /home/$SUDO_USER/.conf/.tmux.conf.local /root/
##
