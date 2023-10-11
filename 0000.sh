#!/bin/bash
##BASH-IMPORVEMENTS____12ants.github.io
echo -e "\n\n\n\n\t -- 0000_bash_improvements... \n\n\n\n\n\n\n"; tput sgr0;
tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1;
read -ep "         -- Make bash a little better? $(tput setaf 2)" -i "y" "b00a"; #AAAA
#b00a
if [ $b00a == y ]; then echo "Making bash better...";
apt -y install git;
git clone https://github.com/12ants/0000; cd 0000; pwd;
cp etc/bash.bashrc /etc/; rm /root/.bashrc; rm /home/$SUDO_USER/.bashrc; ##replace regular bash-promptfile
cp etc/balias /etc/
echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer; echo -e "$SUDO_USER ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/ants; ##relax admin pass
else echo "OK"; fi; cd $inst;
## b00a - Done //
##
##
#b00b
echo -e "\n\n\n\n\t -- 0000_bash_improvements... \n\n\n\n\n\n\n"; tput sgr0;
tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1;
read -ep "         -- Install essential apps? $(tput setaf 2)" -i "y" "b00b"; #BBBB
#BBBB
if [ $b00b == y ]; then echo "Make it so...";
apt update; apt upgrade -y;
apt -y install ssh openssh-server openssl curl wget dnsutils htop nano micro googler;
apt -y install w3m btop mc neofetch googler lolcat pv gh git fortune tmux;
ln /usr/games/fortune /bin/;
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
apt update && apt install gum -y;
curl -sfL https://raw.githubusercontent.com/mistakenelf/fm/main/install.sh | sh;
else echo "OK"; fi; cd $inst;
## b00b - Done //




