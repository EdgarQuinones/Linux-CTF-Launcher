#!/bin/bash
"""
This script is what ssh's the user into the OverTheWire machine. The reason is workds without entering your 
password is it uses a service called 'sshpass'. If you don't download it, this will not work.
"""


echo -e "WARNING: Script will not work if password is not stored in 'answers.txt' file!\nTo add passwords, call the 'addanswers.sh' script.\n"

echo "Current Passwords on file:"
cat otw.conf/files/answers.txt | grep "Level $level" | awk -F': ' '{print $1}'
echo ""

read -p "Bandit Level: " level

password=$(cat otw.conf/files/answers.txt | grep "Level $level" | awk -F': ' '{print $2}')

sshpass -p $password ssh -o StrictHostKeyChecking=no bandit$level@bandit.labs.overthewire.org -p 2220 




