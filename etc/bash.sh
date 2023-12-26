#!/bin/bash
##
## . /etc/balias.sh
##
##
if [ $UID == 0 ]; then 
mv /home/$SUDO_USER/.bashrc /tmp/
mv /home/$SUDO_USER/.profile /tmp/
mv /root/.bashrc /tmp/
mv /root/.profile /tmp/
else 
mv /home/$USER/.bashrc /tmp/
mv /home/$USER/.profile /tmp/
fi 
cd $ghh/0000/etc 2>/dev/null;
cp ../conf/bash.bashrc /etc/ -b; 
source /etc/bash.bashrc
own 

##
##

mv  /etc/skel/.bashrc $ghh/bups0
echo "source /etc/bash.bashrc " >> /etc/skel/.bashrc
##

echo -e "\n\t Copy new bash file\n\n"
##