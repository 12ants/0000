#!/bin/bash
install="XFCE4 Desktop enviroment";
#
echo -e "\n\n\n\n\n\n\v\v\v\v $up1$up1$up1$up1$up1$up1$up1$up1";
read -ep "    $c2 Install $install? $(tput setaf 2)" -i "Y" "ask";
if [ $ask == "Y" ]; then echo "    $c2 "$dim"["$green" OK "$re$dim"]"; cd $inst;
#
apt update; apt install -y -qq xfce4-session xfce4-goodies xfce4-panel synaptic xinit luakit #  minimal desktop env
#
else echo "    $c2 No, "$dim"["$green" OK "$re$dim"]"; cd $inst; fi;
#
# Cred: 12ants.com
