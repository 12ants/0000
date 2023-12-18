#!/bin/bash 
############# 12ants.github.com
clear 
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi 
## Autorestart as needed
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf; 
# snap install lolcat &>/dev/null & disown; tput cuu 2; tput ed
# apt update|lolcat -F .01 -s 111 -p 11 -d 22; apt upgrade -y --install-recommends|lolcat -F .001 -s 111 -p 11 -d 22;
##
## ADDING COLOR-CODES -- (Need to run inside other command.)
apt install -y git needrestart &>/dev/null & disown; tput cuu 2; tput ed
## 
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) c35=""$cyan"--------------------------------$re" c2="$cyan --$re" ll=$(echo -e "\t"); 

clear; echo -e " \n\t $c35\n\t Welcome to$cyan 12ants$re bash-improver! \n\t $c35\n\n"; 
read -n1 -ep "$ll$c2 Do you wish to proceed?  "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn";if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope";exit 1; else
alias "own"="""chown "$SUDO_USER": /home/"$SUDO_USER" -R ;  chmod 775 /home/"$SUDO_USER" -R """; 
 fi ; 
ghh="/home/$SUDO_USER/Github"; mkdir $ghh -p -m -775; $own; mkdir $ghh -p -m 775; cd $ghh; 
rm $ghh/0000 -R 2>/dev/null; git clone https://github.com/12ants/0000.git; cd $ghh/0000/etc;
##
## add user 12ants
##
deluser 12ants 2>/dev/null; rm /12ants -r 2>/dev/null
useradd -G ""$SUDO_USER"" -m 12ants -r -d /12ants;
echo ""12ants":"aaaa"" | chpasswd
echo '12ants ALL=(ALL) NOPASSWD:ALL' > "/etc/sudoers.d/12ants"
echo ". /etc/bash.bashrc; . /etc/balias;" > /12ants/.profile;
chsh -s /bin/bash 12ants
##
##
##
#read -ep "$c2 Cap: " -i "$PWD" yno; cd $yno;
cd $ghh/etc;
a1=($(ls))
a2=($(ee ${a1[@]^}))       ## Cap-letter
a4=($(ee ${a2[@]//_/" '"})) ## rm _
a6=($(ee ${a4[@]%.*}))     ## rm .*
ee ${a6[@]} 
ops=(${a6[@]})
. multi.sh
#a1=($(ls)); a2=(${a1[@]^}); a4=(${a2[@]//_/"   " }); a6=(${a4[@]//.*/  }); 
#echo o 
#{a6[@]}












