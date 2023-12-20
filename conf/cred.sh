#!/bin/bash 
########## Cloudflare ########
tput cuu 8; tput ed; cd $ghh/0000; echo -e "\n\n"; 
read -t 22 -s -ep "$ll$c2 Password to Cloudflare: " "cfpw"; 
cat ./cfauto256.txt|openssl enc -aes-256-cbc -md sha512 -a -d -pbkdf2  -pass pass:$cfpw>./cpfw.txt||read -n1 -ep "$ll$c2 Try again? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn"; 
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope"; else echo "$c2 OK";source creds.sh; 
fi ;
##############################
tput cuu 8; tput ed; cd $ghh/0000; echo -e "\n\n"; 
read -t 22 -s -ep "$ll$c2 Password to Github: " "ghpw"; 
cat ./ghcred256.txt|openssl enc -aes-256-cbc -md sha512 -a -d -pbkdf2  -pass pass:$cfpw>./cpfw.txt||read -n1 -ep "$ll$c2 Try again? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn"; 
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope"; else echo "$c2 OK";source creds.sh; 
fi ;
##############################
echo gg



#read -t 22 -s -ep "$c2 Password to Github: " "ghpw"; 
#cat ./conf/ghcred256.txt|openssl enc -aes-256-cbc -md sha512 -a -pbkdf2  -pass #pass:$ghpw>./conf/ghcd.txt
####
