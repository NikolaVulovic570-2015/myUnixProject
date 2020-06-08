#!/bin/bash
################################################################################
#Script name	:GUESSING GAME
#Description	:User try to match number of files.
#Args		:
#Author		:Nikola Vulović
#Email		:nkl.vulovic96@gmail.com
################################################################################

numberOfFiles=$(ls -l | wc -l)


Welcome()
{
	echo "Welcome to the GuessingGame";
	echo "How many files are in current directory?";
}

Match()
{
	echo "Great! You are lucky guy!";
	echo "That's correct!";
}

Welcome

until [[ $input == $numberOfFiles ]]; 
do
read input	

	if [[ $input -lt $numberOfFiles ]]; then
		echo "The guess is too low"
		echo "Enter the new guess:"
		
	elif [[ $input -gt $numberOfFiles ]]; then
		echo "The guess is too high"
		echo "Enter the new guess:"
		
	fi

done
Match




	


