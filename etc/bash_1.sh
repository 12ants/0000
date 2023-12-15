#!/bin/bash
##
## . /etc/balias.sh
##
##
if [ $UID != 0 ] ; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi; ## ROOT-CHECK
cp ../bash.bashrc /etc/ -b; own;
