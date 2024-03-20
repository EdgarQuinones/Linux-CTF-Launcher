#!/bin/bash

echo -e "WARNING: Script will not work if password is not stored in 'answers.txt' file!\nTo add passwords, call the 'addanswers.sh' script.\n"

echo "Current Passwords on file:"
cat otw.conf/files/answers.txt | grep "Level $level" | awk -F': ' '{print $1}'
echo ""

read -p "Bandit Level: " level

password=$(cat otw.conf/files/answers.txt | grep "Level $level" | awk -F': ' '{print $2}')

sshpass -p $password ssh -o StrictHostKeyChecking=no bandit$level@bandit.labs.overthewire.org -p 2220 




