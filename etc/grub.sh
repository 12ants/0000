#!/bin/bash
## -- [grub.sh] -- [12ants.github.io]
## -- Script to auto create a nice grub config.
##
echo "--  Installing Tard-Grub 2.0..."
mkdir -p -m 775 /etc/default/grub_old/; cd /etc/default/grub_old/; pwd; ls; 
mv /etc/default/grub.d/* /etc/default/grub_old/; 
##
mkdir -p -m 775 /boot/grub/; cd /boot/grub/;
wget $blue -O /boot/grub/tard.jpg https://github.com/12ants/0000/raw/main/img/tard.jpg $yellow;
##
echo 'GRUB_BACKGROUND="/boot/grub/tard.jpg"
GRUB_DEFAULT=saved
GRUB_SAVEDEFAULT=true
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=4
GRUB_DISTRIBUTOR=`lsb_release -as 2> /dev/null || echo Debian`
GRUB_DISABLE_OS_PROBER=false
GRUB_HIDDEN_TIMEOUT=0
GRUB_CMDLINE_LINUX="console" 
GRUB_CMDLINE_LINUX_DEFAULT="console" 
'>etc/default/grub; 
update-grub; 
echo -e "$re  \n\n\n\n --$pink GRUB INSTALLED SUCCESSFULLY \n" $re; sleep 2;
echo -e " $cyan ####################################\n  ####$re -All done! $cyan ###################\n  ####################################\n\n"; sleep 2;
