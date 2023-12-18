#!/bin/bash
#####
# micro installer 
####
tput cuu 8; tput ed; 
echo -e "\n\n$c2 Installing micro . . . \n\n"; apt install -y micro 2>/dev/null 
micro -plugin install filemanager fish manipulator jump lsp wc editorconfig ;
cp ..conf/micro_bindings.json "/home/$SUDO_USER/.config/micro/bindings.json" -b;
cp ..conf/micro_bindings.json "/root/.config/micro/bindings.json" -b ;
tput cuu 8; tput ed; ee -e "\n\n$c2 Micro installed . . .  \n\n";
##