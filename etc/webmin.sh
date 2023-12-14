#!/bin/bash
#######################
## WEBMIN        ######
#######################
##
webmin="y"
read -t 8 -ep "         -- Install WEBMIN? $(tput setaf 2)" -i "y" "webmin"; 
if [ -z $webmin ]; 
elif [ $webmin != n ]; then echo "installing webmin";
apt install openssl -y; mkdir wm -m 775; cd wm;
wget -OO https://download.webmin.com/devel/tarballs/webmin-current.tar.gz; 
tar -xf O.tar.gz --strip-components=1; ./setup.sh /usr/local/webmin;
else echo "OK"; fi; cd $inst; 
##
#######################
## WEBMIN - DONE ######
#######################
##
