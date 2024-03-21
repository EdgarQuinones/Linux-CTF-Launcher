#!/bin/bash

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


