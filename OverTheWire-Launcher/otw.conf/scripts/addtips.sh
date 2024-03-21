#!/bin/bash
"""
This Project was made by Edgar Quinones, I hope you enjoy it!
Github: https://github.com/EdgarQuinones

This script gives the user the ability to store tips come up with while 
doing OverTheWire Levels. It stores all the tips in the howtosolve.txt file.
I added a couple of mine, and may keep updating as I do the levels myself.
"""
path=otw.conf/files/howtosolve.txt

print_tips_list(){
  echo "Tips List:"
  cat $path
  echo " "
}

remove_last_tip() {
  sed -i '' '$ d' $path || echo "Tips list is empty"
  echo ""
  print_tips_list
}

add_tip(){
  read -p "What level are you adding a tip for? " level

  read -p "Tip (Must be 1 line only): " tip

  echo "Level $level: $tip" >> $path
  print_tips_list
}

while true; do

print_tips_list

echo -e "Add Tip: 0\nRemove Tip: 1\nBack: q/Q"

read -p "Input: " input


case $input in
        0)
            add_tip
            break
            ;;
        1)
             remove_last_tip
	     break
            ;;
        *)
	     break
            ;;
    esac
done


