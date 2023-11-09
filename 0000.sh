#!/bin/bash
## BASH-IMPORVEMENTS                                ##  --  by 12ants.github.io  --  ##
## Install-script for Ubuntu/Debian systems
## visit https://12ants.github.io for credits
## auto-install-cmd  >>  >>  wget -Oants.sh 12ants.gihub.io; bash ants.sh;
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi
##
##
## - Autrestart as needed
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf; 
apt update; apt -y upgrade; clear;
##
## ADDING COLOR-CODES -- (Need to run inside other command.)
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) c75="  ----------------"; clear; echo ; c2="$cyan --$re";
alias pspace='echo -e "\n\n\n\n\t\n\n\n\n\n\n\n"; tput sgr0; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1;'
##
##
##
## Add backup folders etc
mkdir /home/$SUDO_USER/.config/ -p; mkdir /home/$SUDO_USER/tmp12/ -p; mkdir /root/.config/ -p; cd /home/$SUDO_USER/tmp12/;
sudo chown $SUDO_USER: /home/$SUDO_USER/* -R; 
echo -e "\n\n\n\n\t -- 0000_bash_improvements... \n\n\n\n\n\n\n"; tput sgr0;
tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1;
read -ep "         -- Make bash a little better? $(tput setaf 2)" -i "y" "b00a"; #AAAA
#b00a
if [ $b00a == y ]; then echo "Making bash better...";

mkdir -p /home/$SUDO_USER/tmp12; cd /home/$SUDO_USER/tmp12/ ;
apt -y install git; git clone https://github.com/12ants/0000; cd 0000;
sudo chown $SUDO_USER: /home/$SUDO_USER/* -Rc;
##
## Create Backup and Install folder
mkdir -p /home/$SUDO_USER/tmp12/0000/backups/ -m 775; bufolder="/home/$SUDO_USER/tmp12/0000/backups/"; inst="/home/$SUDO_USER/tmp12/"; chown $SUDO_USER: /home/$SUDO_USER/* -R; 
##
##
##
##
cp etc/bash.bashrc /etc/; rm /root/.bashrc;
rm /home/$SUDO_USER/.bashrc; ##replace regular bash-promptfile
cp etc/balias /etc/;
##
##



## - Auto root login for admins
echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer;
echo -e "$SUDO_USER ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/ants;
##
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
apt -y install w3m btop mc neofetch googler lolcat pv gh git fortune tmux nnn;
ln /usr/games/fortune /bin/;


## Charm apps
infile=charm; pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " -i $yn yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else 
##
sudo mkdir -p /etc/apt/keyrings;
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
apt update && apt -y install gum melt;
fi

## FM - filemanager
curl -sfL https://raw.githubusercontent.com/mistakenelf/fm/main/install.sh | sh;
##


## Duf & Broot - Apps install
infile=duf_broot; pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else 
##
echo "deb [signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian/ stable main" | sudo tee /etc/apt/sources.list.d/azlux.list;
sudo wget -O /usr/share/keyrings/azlux-archive-keyring.gpg  https://azlux.fr/repo.gpg;
apt update; apt -y install sss duf broot;
fi
##
else echo "OK"; fi; cd $inst;

# micro
infile=micro; pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else 
## 
sudo apt -y install micro;
micro -plugin install filemanager fish manipulator jump lsp wc editorconfig ;
# echo 'alias mm=micro' >> /etc/bash.bashrc
cp etc/micro_bindings.json "/home/$SUDO_USER/.config/micro/bindings.json" -b 
cp etc/micro_bindings.json "/root/.config/micro/bindings.json" -b
##
echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi # -- INSTALLER COMPLETED -- #
##
##
##
infile=copyq
pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else 
sudo add-apt-repository ppa:hluk/copyq; sudo apt update; sudo apt install copyq;
echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi
##
##
##
##
infile=walk
pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else 
snap install walk
echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi
##
##
infile=cloudflare-ddns
pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else 
git clone https://github.com/timothymiller/cloudflare-ddns.git; cd cloudflare-ddns;
wget -O config.json https://gist.githubusercontent.com/12ants/f6482661b0256e395f8c690c35e85467/raw/2eabc94e0d5335db147ac858f0f05aedcae46db8/gistfile1.txt; cd ..;
echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi
##
##
##
## Get github gpg -- TODO ------
wget -O /home/$SUDO_USER/.ssh/hosts.yml https://gist.githubusercontent.com/12ants/d1a876de077be143770966eb7dc83666/raw/812d50f20d28ade7b9f8721e60d9c2bb9ee60734/hosts.yml;
sudo chown $SUDO_USER: /home/$SUDO_USER/* -Rc; cd $inst;
##
##
## b00b - Done //
gum file ./



