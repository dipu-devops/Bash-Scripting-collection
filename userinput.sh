#!/bin/bash
#
# Read varible from user
#
#read name
#fine="I am fine"
#echo "hello ${name} how are you ${fine} "

# User promont
#
read -p "Please enter your name: " name
read -p "Enter Your Age:" age
read -p "Please enter you password: " -s pass
echo -e "\n Hi ${name} "
echo -e "\n Your age is ${age}"
echo -e "\nYour password is ${pass}"


