#!/bin/bash
#######################
## WEBMIN        ######
#######################
##
webmin="y"; read -t 4 -ep "$c2 Install WEBMIN? $(tput setaf 2)" -i "y" "webmin"; 
echo "$c2 Installing Webmin . . ."; tput dim;
apt install -y perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl;
mkdir wm -m 775; cd wm; wget -OO.tar.gz https://download.webmin.com/devel/tarballs/webmin-current.tar.gz; 
tar -xf O.tar.gz --strip-components=1; ./setup.sh /usr/local/webmin;
cd $inst; echo "$re$c2 Webmin installed !  . . ."; tput sgr0;
##
#######################
## WEBMIN - DONE ######
#######################
##
