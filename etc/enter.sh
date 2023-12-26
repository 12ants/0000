#!/bin/bash
## /gh/0000/etc/enter.sh
#
#  

printf "Login name (default aaaa): "
	if [ "$login" = "" ]; then
		read -t 2 login
		if [ "$login" = "" ]; then
			login="aaaa"
		fi
	fi
	echo "$login" | grep : >/dev/null
	if [ "$?" = "0" ]; then
		echo "ERROR: Username contains a : character"
		echo ""
		exit 14
	fi
	echo $login | grep " " >/dev/null
	if [ "$?" = "0" ]; then
		echo "ERROR: Username contains a space"
		echo ""
		exit 14
	fi
	if [ "$login" = "webmin" ]; then
		echo "ERROR: Username 'webmin' is reserved for internal use"
		echo ""
		exit 14
	fi
		printf "Login password: "
	if [ "$password" = "" -a "$crypt" = "" ]; then
		stty -echo
		read -t 12 password
		stty echo
		printf "\n"
		printf "Password again: "
		stty -echo
		read -t 12 password2
		stty echo
		printf "\n"
		if [ "$password" != "$password2" ]; then
			echo "ERROR: Passwords don't match"
			echo ""
			exit 14
		fi