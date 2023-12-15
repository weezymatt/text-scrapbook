#!/bin/zsh

echo "Name?"
read name 
echo "Age?"
read age
echo "Hello, $name, you are $age years old."
sleep 2

echo "Calculating"
echo "......."
sleep 1
echo "**....."
sleep 1
echo "***...."
sleep 1
echo "****..."
sleep 1
echo "*****.."
sleep 1
echo "******."
sleep 1
echo "*******"
sleep 1
getrich=$(( ($RANDOM%15)+ $age ))
echo "You are going to get wealthly by $getrich years old" 
