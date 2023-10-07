#!/bin/bash
echo hello
read -ep "hello? " -i "-hello?" "hello"
echo "$hello"


## make admin be root easier
#
echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer;
echo -e "$SUDO_USER ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/ants;
## basic apps
apt update; apt upgrade -y;
apt -y install ssh openssh-server openssl curl wget dnsutils nano micro googler;
apt -y install w3m btop mc neofetch googler lolcat pv gh git fortune;
ln /usr/games/fortune /bin/;
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
apt update && apt install gum -y;
curl -sfL https://raw.githubusercontent.com/mistakenelf/fm/main/install.sh | sh;

echo hello 
exit 1 
