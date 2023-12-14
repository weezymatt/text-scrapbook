#!/bin/zsh

name=$1
compliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good afternoon $name!"
sleep 1
echo "You're looking good today, $name."
sleep 1
echo "Feeling happy $name?"
sleep 1
echo "You have nice $compliment!"
sleep 2
echo "You are currently logged in as $user in the directory $whereami."
sleep 1
echo "The date is $date."
