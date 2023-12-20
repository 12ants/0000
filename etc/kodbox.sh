#!/bin/bash
echo;echo;echo;echo;echo;echo; tput cuu 4;
read -ep "$ll$c2 kodbox folder:  " -i "$PWD" "kbkb";
cd $kbkb
git clone https://github.com/kalcaddle/kodbox.git
echo gg
##
##
