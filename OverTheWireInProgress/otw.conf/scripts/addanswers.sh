#!/bin/bash

path=otw.conf/files/answers.txt

print_password_list(){
  echo "Passwords List:"
  cat $path
  echo " "
}

remove_last_password() {
  sed -i '' '$ d' otw.conf/files/answers.txt
  echo ""
  print_password_list
}

add_password(){
  read -p "What level are you adding a password for? " level

  read -p "Password: " password

  echo "Level $level: $password" >> $path
  print_password_list
}

while true; do

print_password_list

echo -e "Add Password: 0\nRemove Last Password: 1\n"

read -p "Input: " input


case $input in
        0)
            add_password
            break
            ;;
        1)
             remove_last_password
	     break
            ;;
        *)
	     break
            ;;
    esac
done


