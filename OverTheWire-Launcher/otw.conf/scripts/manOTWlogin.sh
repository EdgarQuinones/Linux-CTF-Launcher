#!/bin/bash

read -p "What otw level are you on? " level
echo ""

cat answers.txt
echo ""

read -p "Password: " password

sshpass -p $password ssh -o StrictHostKeyChecking=no bandit$level@bandit.labs.overthewire.org -p 2220
