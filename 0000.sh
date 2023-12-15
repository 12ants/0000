#!/bin/bash ############################
echo '   =================================
##      wget -OOK 12ants.github.io; bash OK
##       =================================
##      BASH-IMPORVEMENTS Install-script for
##      Ubuntu/Debian systems by -- 12ants.github.io
## ' #################################################
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi
## Autorestart as needed
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf; clear;
snap install lolcat 2>/dev/null
apt update|lolcat -F .01 -s 111 -p 11 -d 22; apt upgrade -y --install-recommends|lolcat -F .001 -s 111 -p 11 -d 22;
##
## ADDING COLOR-CODES -- (Need to run inside other command.)
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) c75="  ----------------"; clear; echo ; c2="$cyan --$re";
export own="chown "$SUDO_USER": /home/"$SUDO_USER" -R";
##
##
##
####
echo -e "\n\n\n\n\t
 -- 0000_bash_improvements... \n\n\n\n\n\n\n"; tput sgr0;
tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1; tput cuu1;






read -ep "-- Make bash a little better? $(tput setaf 2)" -i "Y" "yno";
if [ $yno == Y ]; then echo "Making$yellow bash$re better . . . . . . . . . . . ."|lolcat -a -F .001 -s 111 -p 11 -d 22 &2>/dev/null
## Add backup folders etc
## Create Backup and Install folder

read 
inst="/home/$SUDO_USER/";
mkdir /home/$SUDO_USER/.config/ -p;
mkdir /root/.config/ -p;
mkdir -p -m 775 /etc/ants;
$own ; cd $inst; rm 0000 -R 2>/dev/null 
git clone https://github.com/12ants/0000; cd 0000; tput setaf 6; pwd; sleep 1; $own
##
##





infile="git and gh creds"; $pspace; read -n1 -ep "$c2 Install $(tput setaf )$infile? "$dim"["$re$bold" Y "$dim"/"$re$bold" n "$re$dim"] $re" "yn";if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else
##
apt -y install git gh;
$own ; cd $inst ; rm 0000 -R ;
git clone https://github.com/12ants/0000 ;
cp ./0000/config/* -r /home/$SUDO_USER/.config/ -r ;
chown $SUDO_USER: /home/$SUDO_USER/* -R;
##
wget -O /tmp/gh_auth.txt "https://gist.github.com/12ants/77f17ed35f1e38fb9a98393508adc030/raw/309e1d1d7c73a0e29882581dc94fe499766de3ff/gistfile1.txt";
gh auth login --with-token < /tmp/gh_auth.txt; gh auth status;
##
fi
##
##

##
##
##
##
##
## Replace regular bash-promptfile

mv /home/$SUDO_USER/.bashrc /home/$SUDO_USER/.bashrc_old
mv /root/.bashrc /root/.bashrc_old
touch /root/.bashrc 


cp "$inst"0000/etc/balias.sh /etc/ ;
cp "$inst"0000/etc/bash.bashrc /etc/ ;
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


tput cuu 8; tput ed;

ee -e "\n\n$c2 hello oioi \n\n";



apt -y install ssh openssh-server openssl curl wget dnsutils htop nano googler|lolcat -a -F .001 -s 111 -p 11 -d 22;
tput cup 0; apt -y install w3m btop mc neofetch googler lolcat pv gh git fortune tmux nnn|lolcat -a -F .01 -s 2111 -p 111 -d 122;
ln /usr/games/fortune /bin/; seq -s '@' 2222|lolcat -a -F .01 -s 11 -p 11; tput cup 1;
## Charm apps
infile=charm; $pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " -i $yn yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else
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

infile=sss; $pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else
##
echo "deb [signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian/ stable main" | sudo tee /etc/apt/sources.list.d/azlux.list;
sudo wget -O /usr/share/keyrings/azlux-archive-keyring.gpg  https://azlux.fr/repo.gpg;
apt update; apt -y install sss;
fi
##
else echo "OK"; fi; cd $inst;





# micro
infile=micro; $pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else

echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi # -- INSTALLER COMPLETED -- #
##
##
##
infile=copyq
$pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else
sudo add-apt-repository ppa:hluk/copyq; sudo apt update; sudo apt install copyq;
echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi
##
##
##
##
infile=walk
$pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else
snap install walk
echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi
##
##
infile=cloudflare-ddns
$pspace; read -ep "$c2 Install $infile? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else
git clone https://github.com/timothymiller/cloudflare-ddns.git; cd cloudflare-ddns;
wget -O config.json https://gist.githubusercontent.com/12ants/f6482661b0256e395f8c690c35e85467/raw/2eabc94e0d5335db147ac858f0f05aedcae46db8/gistfile1.txt; cd ..;
echo -e "\n\n$c2$green $infile$re INSTALLED \n\n"; fi
##
##
##
## Get github gpg -- TODO ------
wget -O /home/$SUDO_USER/.ssh/hosts.yml https://gist.githubusercontent.com/12ants/d1a876de077be143770966eb7dc83666/raw/812d50f20d28ade7b9f8721e60d9c2bb9ee60734/hosts.yml;
sudo chown $SUDO_USER: /home/$SUDO_USER/* -Rc; cd $inst; seq -s '@' 2222|lolcat -a -F .01 -s 11 -p 1; clear;
##
##
## b00b - Done //
gum file ./

seq -s '@' 2222|lolcat -a -F .01 -s 11 -p 11


