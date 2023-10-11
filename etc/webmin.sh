#!/bin/bash
#######################
## WEBMIN        ######
#######################
##
if [ $webmin == y ]; then echo "installing webmin";
wget https://download.webmin.com/devel/tarballs/webmin-current.tar.gz;
tar -xf webmin-current.tar.gz --strip-components=1; 
./setup.sh /usr/local/webmin;
else echo "OK"; fi; cd $inst;
##
#######################
## WEBMIN - DONE ######
#######################
##