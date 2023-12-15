#!/bin/zsh

echo "Welcome Debra. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in 

	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "You have chosen the $type class. Your hp is $hp and your attack is $attack."

echo "You Died"

#First beast battle

beast=$(( $RANDOM % 2))

echo "Your first beast approaches. Prepare to battle."

sleep 2 

echo "Pick a number between 0-1. (0/1)"

read number

if [[ $beast == $number && 47 > 23 ]]; then
	echo "Beast conquered! Congrats fellow traveler"
else
	echo "You Died"
	exit 1
fi

#Boss battle

beast=$(( $RANDOM % 10))

echo "The next beast is approaching..."

sleep 2

echo "Margit arrives...Pick a number 0-9 (0..9)"

read number

if [[ $beast == $number || $number == "coffee" ]]; then
	if [[ $USER == "weezygeezer" ]]; then
		echo "Beast conquered..."
	fi
else
	echo "You Died"
	exit 2
fi
