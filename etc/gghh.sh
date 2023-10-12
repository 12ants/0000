#!/bin/bash
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi; ## ROOT-CHECK
apt install -y git gh;
mkdir /home/$SUDO_USER/.config/ -p; mkdir /root/.config/ -p; 
echo 'github.com:
    user: 12ants
    oauth_token: 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
    git_protocol: ssh
' > /home/$SUDO_USER/.config/gh/hosts.yml
chown $SUDO_USER: /home/$SUDO_USER/* -R
cp /home/$SUDO_USER/.config/gh/hosts.yml /root/.config/gh/
echo -e "\n\n github creds updated $green OK \n\n"
