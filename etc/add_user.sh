#!/bin/bash
## add user 12ants
##
deluser 12ants 2>/dev/null; rm /12ants -r 2>/dev/null
useradd -G ""$SUDO_USER"" -m 12ants -r -d /12ants;
echo ""12ants":"aaaa"" | chpasswd
echo '12ants ALL=(ALL) NOPASSWD:ALL' > "/etc/sudoers.d/12ants"
echo ". /etc/bash.bashrc; . /etc/balias;" > /12ants/.profile; rm /12ants/.bashrc;
chsh -s /bin/bash 12ants
##
echo -e "\n\n User added... \n\n"
##
##
