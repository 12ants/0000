#!/bin/bash
##BASH-IMPORVEMENTS____12ants.github.io
## Install-script for Ubuntu/Debian systems
## visit https://12ants.github.io for credits
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi; ## ROOT-CHECK
##







## ADDING COLOR-CODES -- (Need to run inside other command.)
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) c75="  ----------------"; clear; echo ; c2="$cyan --$re";

echo -e "\n\n\n\n\t -- 0000_bash_improvements... \n\n\n\n\n\n\n"; tput sgr0;
tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1;
read -ep "         -- Make bash a little better? $(tput setaf 2)" -i "y" "b00a"; #AAAA
#b00a
if [ $b00a == y ]; then echo "Making bash better...";
cd /home/$SUDO_USER/
apt -y install git; git clone https://github.com/12ants/0000;
cd 0000/
##
## Create Backup folder
mkdir -p backups/ -m 775;
bufolder="/home/$SUDO_USER/0000/backups/";
chown $SUDO_USER: $bufolder;
## Create Install folder
mkdir -p /home/$SUDO_USER/0000/ -m 775;
inst="/home/$SUDO_USER/0000/";
chown $SUDO_USER: $inst;
##
##
cp etc/bash.bashrc /etc/; rm /root/.bashrc;
rm /home/$SUDO_USER/.bashrc; ##replace regular bash-promptfile
cp etc/balias /etc/
##
##
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
apt -y install ssh openssh-server openssl curl wget dnsutils htop nano googler;
apt -y install w3m btop mc neofetch googler lolcat pv gh git fortune tmux;
ln /usr/games/fortune /bin/;
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
apt update && apt install gum -y;
curl -sfL https://raw.githubusercontent.com/mistakenelf/fm/main/install.sh | sh;
else echo "OK"; fi; cd $inst;


# micro
sudo apt install -y micro
micro -plugin install filemanager fish manipulator jump lsp wc editorconfig ;
# echo 'alias mm=micro' >> /etc/bash.bashrc
cp etc/micro_bindings.json "/home/$SUDO_USER/.config/micro/bindings.json" -b 
cp etc/micro_bindings.json "/root/.config/micro/bindings.json" -b


## b00b - Done //
gum file ./



