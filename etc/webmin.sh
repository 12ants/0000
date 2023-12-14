#!/bin/bash
#######################
## WEBMIN        ######
#######################
##
webmin="y"
read -t 2 -ep "         -- Install WEBMIN? $(tput setaf 2)" -i "y" "webmin"; 
if [ $webmin != n ]; then echo "installing webmin";
apt install openssl;
cd /tmp; wget https://download.webmin.com/devel/tarballs/webmin-current.tar.gz; 
tar -xf webmin-current.tar.gz --strip-components=1; ./setup.sh /usr/local/webmin;
else echo "OK"; fi; cd $inst;
##
#######################
## WEBMIN - DONE ######
#######################
##
