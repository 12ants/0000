
#!/bin/bash
## written by 12ants.github.io
#########################
## -- CUSTOM LINUX --  ##
#########################
##
case $- in
*i*) ;;
*) return;;
esac
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
debian_chroot=$(cat /etc/debian_chroot)
fi
case "$TERM" in
xterm-color|*-256color) color_prompt=yes;;
esac
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
color_prompt=yes
else
color_prompt=
fi
fi
unset color_prompt force_color_prompt
case "$TERM" in
xterm*|rxvt*)
PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
;;
*)
;;
esac
export EDITOR='micro'; export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'; 
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0);
export redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
export grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
export cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink);
export left=$(tput cub 2) up1=$(tput cuu1) c28=$(echo " ============================");
export u8=$(tput cuu 8) c2="$cyan --$re";
# nvm support
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
## enable color support of ls and also add handy aliases
#########################################
## BALIAS ###############################
. ~/.bash_aliases 2>/dev/null
if ! shopt -oq posix; then
if [ -f /usr/share/bash-completion/bash_completion ]; then
. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi
fi
## BALIAS/BBBB
if [ -f /etc/balias.sh ]; then . /etc/balias.sh 2>/dev/null; fi 
# port from transfer.sh
transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;} 
up(){ echo " $(tput setaf 2;) "; if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n\n transfer <file|directory>\n\ ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1"  ;file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1  ;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name  "|tee /dev/null;fi; echo -e "\n $(tput sgr0;)\n OK\n\n";} 
####
#### Welcome screen
####
echo;
greet
fakta
ipa
tput sgr0;
## bash prompt
PS1='\$[\[\e[9$(rr2);$(rr1)m\]\t\[\e[0m\]][\[\e[9$(rr1)$(rr2)m\]$(ipnet)\[\e[0m\]][\[\e[$(rr2)$(rr1)m\]\u\[\e[0m\]][\[\e[9$(rr1)m\]$(pwd)\[\e[0m\]] \[\e[97;1m\]>\[\e[37;4m\]_\n\[\e[0m\]'
