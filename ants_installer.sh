#!/bin/bash 
############# 12ants.github.com
echo -e "\n\n"; ll=$(echo -e " \t\t "); 
if [ $UID != 0 ]; then echo -e " \n\n $ll This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; read -ep "$ll k" "k7"; exit 1; fi 
## Autorestart as needed
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf; 
## - Auto root login for admins
echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer;
echo -e "$SUDO_USER ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/ants;
##
# snap install lolcat &>/dev/null & disown; tput cuu 2; tput ed
# apt update|lolcat -F .01 -s 111 -p 11 -d 22; apt upgrade -y --install-recommends|lolcat -F .001 -s 111 -p 11 -d 22;
##
## ADDING COLOR-CODES -- (Need to run inside other command.)

# apt install -y git needrestart &>/dev/null & disown; tput cuu 2; tput ed ###### pu back
## 
alias ee="echo "
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) dash="$blue ----------------------------------$re" c2="$cyan  ----$re" ll=$(echo -e " \t\t ") \ 
##
##
#clear; 
tput cup 0; tput ed; echo -e " \n\n\t$blink ¯\(ツ)/¯$re \n\n\n\n\n\n\t\t  $dash\n$ll  Welcome to $cyan 12ants $re bash-improver! \n$ll $dash"; 
#echo -en "\t"; 
##
##
read -n1 -ep "$ll$c2 Do you wish to proceed? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn"; 
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope";exit 1; else echo "$ll$c2 OK"; fi ;
##
##
own="chown "$SUDO_USER": /home/"$SUDO_USER" -R"; 
mod="chmod 775 /home/"$SUDO_USER" -R";
ghh="/home/$SUDO_USER/gh"; 
export ghh="/home/$SUDO_USER/gh"; 
mkdir $ghh -p -m -775;

#$own; $mod; #### put back!!!!!

#read -ep "$ll$c2 Github folder:  " -i "$ghh" "ghh";
##
#cd $ghh; rm $ghh/0000 2>/dev/null;
#git clone https://github.com/12ants/0000.git >/dev/null;
cd $ghh/0000;

# source 0000.sh;
# git stash >/dev/null
# git pull >/dev/null
##
## add user 12ants
##
source ./snips/coolors.sh;
read -n1 -ep "$ll$c2 Github & Cloudflare cred? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn"; 
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope"; else echo "$ll$c2 OK";
##
bash ./conf/cred.sh;
fi 
cd $ghh/0000
source ./snips/coolors.sh;
#echo -e "\n\n $PWD \n\n"
##
bash ./qq2.sh
#a1=($(ls)); a2=(${a1[@]^}); a4=(${a2[@]//_/"   " }); a6=(${a4[@]//.*/  }); 
#echo o 
#{a6[@]}
##

read -t 22 -ep "$ll$c2 Byeeeeee" -i "?" "kjjbhb";
##
####
echo "gg"; sleep 2;
echo -e "\n\n\n\n\t\t$c2 All done\n\n\n\n";
tput cuu 8; tput ed; 
source ./snips/timer.sh
echo -e "byeeeeeeeee"
reboot
##deluser 12ants 2>/dev/null; rm /12ants -r 2>/dev/null
#useradd -G ""$SUDO_USER"" -m 12ants -r -d /12ants;
#echo ""12ants":"aaaa"" | chpasswd
#echo '12ants ALL=(ALL) NOPASSWD:ALL' > "/etc/sudoers.d/12ants"
#echo ". /etc/bash.bashrc; . /etc/balias;" > /12ants/.profile;
#chsh -s /bin/bash 12ants
#
##
##

#read -ep "$c2 Cap: " -i "$PWD" yno; cd $yno;
# cd $ghh/0000cd $ghh/0000
# a1=($(ls ./etc))
# a2=($(echo ${a1[@]^}))           ## Cap-letter
# a4=($(echo ${a2[@]%.*}))         ## rm .*
# a6=($(echo ${a4[@]//_/" '"}))    ## rm _ 
# echo ${a6[@]} 
# ops=(${a6[@]})
# a1=($(ls ./etc))
# a2=($(echo ${a1[@]^}))           ## Cap-letter
# a4=($(echo ${a2[@]%.*}))         ## rm .*
# a6=($(echo ${a4[@]//_/" '"}))    ## rm _ 
# echo ${a6[@]} 
# ops=(${a6[@]})
##










