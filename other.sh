#!/bin/bash

termux-setup-storage
clear;echo "          Script 0.1 | Make By ./HWK "
echo && echo "> Updating APT.."
apt update -y > /dev/null 2>&1;sleep 3 && echo 
echo "> Upgrading Apt.." && apt upgrade -y > /dev/null 2>&1;sleep 2 && echo ;echo "> Updating PKG.."
pkg update -y > /dev/null 2>&1;sleep 3
echo ;echo "> Upgrading PKG..";sleep 3 && pkg upgrade -y > /dev/null 2>&1 | echo 
echo "Clear the screen?. (Y/n)"
read -p "> " clearchoice

if [[ "$clearchoice" = "Y" || "$clearchoice" = "y"]]; then
       echo ;echo "Ok, cleaning..";sleep 3
       clear
   elif [[ "$clearchoice" = "N" || "$clearchoice" = "n"]]; then
       echo ;echo "Ok i got it.." | echo
   else 
       echo ;echo "Incorrect, cleaning.." | sleep 3;clear
fi

echo ;echo "Install x11-repo? (Y/n) (recommended). "
read -p "> " x11choiceinst

if [[ "$x11choiceinst" = "Y" || "$x11choiceinst" = "y"]]; then
       echo ;echo "Ok installing.." | echo ;echo "> Downloading x11-repo.."
       pkg install x11-repo -y > /dev/null 2>&1 | sleep 3 && echo ;echo "Done!."
  elif [[ "$x11choiceinst" = "N" || "$x11choiceinst" = "n"]]; then
     echo | echo "Ok, not installing.."
   else 
   echo ;echo "Incorrect!. Installing..";echo 
fi


echo ;echo "Installing Ruby | Python (python2) | vim editor | perl | TSU (root) | WGET.."

sleep 3;echo | echo "> Downloading Ruby.."
pkg install ruby -y > /dev/null 2>&1 
sleep 3;echo && echo "> Downloading Py and Py2.."
pkg install python -y > /dev/null 2>&1 | pkg install python2 -y > /dev/null 2>&1
sleep 3 | echo | echo "> Downloading vim.." && pkg install vim -y > /dev/null 2>&1 
sleep 3 | echo && echo "> Downloading perl.."
pkg install perl -y > /dev/null 2>&1 | sleep 3;echo 
echo ;echo "> Downloading TSU (root).." | pkg install tsu -y > /dev/null 2>&1

echo ;echo "Cleaning..";sleep 5 | clear;echo "          Script 0.1 | Make By ./HWK ";echo 
echo "> Installing WGET.."

pkg install wget -y > /dev/null 2>&1 | echo 
sleep 3;echo "> Downloading kali.."

wget -O install-nethunter-termux https://offs.ec/2MceZWr
sleep 5 | clear;echo "          Script 0.1 | Make By ./HWK ";echo 
echo "Installing Kali.. and Extract ROOTFS.."

chmod +x install-nethunter-termux
echo ;echo "Select a full to get a Graphical version or minimal to get a console.."
./install-nethunter-termux
clear;echo ;echo "Type nh or nh kex to set passwd, nh to start Kali."

echo ;echo "How to get a graphical service > https://youtu.be/WplZaSQYukw?si=Z0XtXzUiiNUfAw9X ."
echo | echo "Made by ./HWK-G ;).."  
