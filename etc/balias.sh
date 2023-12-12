#!/bin/bash
## . /etc/balias.sh
alias loginscreen='read -n1 -ep "  --  "$gray$dim"Choose default login screen, "$re"["$green"G"$re"]"$gray$dim"raphical or  "$re"["$blue"t"$re"]"$gray$dim"erminal?: " "lscreen";
echo -e "  --  $lscreen"
if [ "$lscreen" == "g" ]; then echo Graphical; systemctl set-default graphical.target;
else echo Terminal; systemctl set-default multi-user.target;
fi'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias "mmbinds"='micro /home/$USER/.config/micro/bindings.json'
alias "files"='cd /home/files/htdocs/files.12ants.com/files/ -b; chown files: "/home/afiles/htdocs/files.12ants.com/files/* -R; "'
alias "psp"='echo -e "\n\n\n\n\n\n\n"; tput cuu 4'
alias "portsopen"='echo -e " $(tput smso) " ; ss -rnpf inet'
alias "ports"='echo -e "\n\n   $cyan-$re Open ports on local network"$cyan" -"$re" \n"; echo -e " -- -- -- -- -- -- -- $(portsopen;  echo " -- -- -- -- -- -- --")"|column -tLo "$(tput sgr0)|  " -tLo "  $(tput sgr0)||   " -H 1,2,3,4,8; echo -e "\n\n" '
alias "greet"='echo -n -e "  $(tput setaf 6)--$re Welcome back $darkblue $USER, $re today is:$blue "; date; echo;'

export ipn="$(hostname -I|tail -c3)"

alias "ipnet"="tput setab $ipn; hostname -I|head -c 13; tput sgr0;";
alias "ippub"="wget -qO- ifconfig.me";
alias "ipports"="sudo lsof -i -P -n";
alias "ii"='psp; read -ep "$c2 Install-name? $blueb$bold" -i "$ii" "ii"; echo -e "$re$c2 End -pp- with $cyanb" """ ;fi ""$re \n "; '
alias "pp"='psp; read -n1 -ep "$c2 Install $cyanb$bold$ii$re? ["$green"Y"$re"/"$red"n"$re"] " yn;if [ "$yn" != "${yn#[Nn]}" ];then echo "$c2 nope";else ' 
alias "b1"="tput cub1; "
alias "b2"="tput cub1; tput cub1; "
alias "u1"="tput cuu1; "
alias "u2"="tput cuu1; tput cuu1; "
alias "u3"="tput cuu1; tput cuu1; tput cuu1; "
alias "u4"="tput cuu1; tput cuu1; tput cuu1; tput cuu1; "
export u4="$(u4) "
##
alias "qw"="fortune|lolcat -a& disown; sleep 1; "
##
##
alias "gg"='if [ $USER == "root" ]; then echo exit; exit; else psp; read -ep "$c2 google: $cyan" -i "$gggg" "gggg"; 
falkon "google.com/search?q=$gggg">/dev/null& disown; tput cuu1; echo "$c2 $rev$gggg"; echo -e "$re \n\n";fi; '
##
## alias "own"="read -ep '  u $USER to $pink$SUDO_USER$re ' -i "[OK]" ro; chown $SUDO_USER: /home/$SUDO_USER/ -R; echo GG;"
##
alias "ww"='if [ $USER == "root" ]; then echo exit; exit; else psp; read -ep "$c2 google: $cyan" -i "$gggg" "gggg"; 
www-browser "google.com/search?q=$gggg">/dev/null& disown; tput cuu1; echo "$c2 $rev$gggg"; echo -e "$re \n\n";fi; '
##
##
alias "ff"='psp; read -ep "$c2 "$rev"new folder?$re " -i "$PWD/" "folder"; mkdir -p $folder -m 775; chown "$SUDO_USER":"$USER" "$folder"; 
cd $folder; echo -e "\n\t $cyan$bold> $pink$PWD/$cyan <$re\n\t * * * *\n"; ll -caklup;'
alias "oooo"="rrf; fortune; tput sgr0;"
alias "rr"="sudo -s"
alias "besh"="micro /etc/bash.bashrc"
alias "mm"="micro"
alias "ee"="echo"
alias "qq"="cd .."
alias "bb"="btop --utf-force"
alias "kk"='read -ep ">_ " 'kl'; printf "$kl"|gh gist create -f $(date +%A_%y_%m_%d_%__0k_%M.sh)'
alias "kf"='guf=$(gum file);echo -e "\n\n\n\n\n"; tput cuu 2; read -ep "$c2 title: $cyan" -i "$(date +%A%y%m%d%0k%M.sh)" "ttll";cat $guf|gh gist create -f $ttll - '
## ssh
alias "sl"='read -ep "$c2 ssh: 192.168.0." -i "$sl" sl; read -ep "$c2 user: " -i "$slu" slu;  ssh 192.168.0.$sl -l $slu'
#alias ali="read -ep ":" alis; echo "alias $alis" >> /etc/balias" 
alias "bbbb"="micro /etc/balias.sh && read -n1 && . /etc/balias.sh"
alias "balias"="echo try bbbb"
alias "uu"='read -ep "update?" upda && sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo snap refresh && jp2a /boot/grub/tard.jpg|pv --rate-limit=2222 --quiet; sleep 2 && reboot'
alias "www"="chromium"
alias "aa"='apropos'
the_weather="$(curl -sm2 'http://wttr.in/Stockholm?format=%l:+%c+%f')"
alias "vv"='printf "${the_weather:-I hope the weather is nice}\n"'
alias "ants"="bash <(wget -O- 12ants.github.io) ; exit 1; " 
############################################
## RANDOM_STUFF ############################
alias "rr1"='(echo $SRANDOM|tail -c2)'
alias "rr2"='(echo $RANDOM|tail -c2)'
alias "rrf"='tput setaf $(rr1)'
alias "rrb"='tput setab $(rr2)'
##########################################
alias "ipa"='echo; 
echo " $(rrf)  ------$(tput setaf 2) Public IP: $(tput sgr0)$(ippub)$(tput setaf 6)";
echo " $(tput setaf $(rr2))  ---------------------------------- " ;
echo " $(rrf)  ------$(tput setaf 4) Network IP: $(tput sgr0)$(ipnet)$(tput setaf 6)"; echo; '
#####
##########################################
## pspace && read -ep "$c2 hello: $rev" -i "$var1" "var1"; pspace ##
####################################################################
alias "ali"='psp; read -ep "" -i "alias " "ali"; echo "$ali" >> /etc/balias.sh; echo -e "\n $ali \n " '
####################################################################
alias "fakta"='neofetch'
alias zzzz='ee ee 2>/dev/null'
alias oi='echo z; sleep 1; !!'
alias own='read -ep "		$c2 OWN$cyan /home/$SUDO_USER$re for $blue$SUDO_USER$re? " yno; chown $SUDO_USER: /home/$SUDO_USER -Rc' 