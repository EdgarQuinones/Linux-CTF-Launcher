#!/bin/bash
"""
This Project was made by Edgar Quinones, I hope you enjoy it!
Github: https://github.com/EdgarQuinones
"""
while true; do
echo "---------------------------------------------------------------------------------------------"
echo -e "Welcome to OverTheWire Launcher! Version 0.1.0 (Not Owner or Part of OTW, for fun project!)"
echo "---------------------------------------------------------------------------------------------"
echo -e "\nNew Game: 0\nSpecific Level: 1\nAdd/Remove Password: 2\nHelp: 3\nTips: 4\nQuit: 5\n"
read -p "Input: " input
echo ""
case $input in
        0)
            sshpass -p bandit0 ssh -o StrictHostKeyChecking=no bandit0@bandit.labs.overthewire.org -p 2220
            ;;
        1)
            otw.conf/scripts/autoOTWlogin.sh
            ;;
        2)
            otw.conf/scripts/addanswers.sh
            ;;
        3)
	    less otw.conf/files/howtoplay.txt
            ;;
	4)
	    otw.conf/scripts/addtips.sh
            ;;
        5)
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice, please enter a number between 0 and 5."
            ;;
    esac
done






