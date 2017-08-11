#!/usr/bin/env bash
# File: guessinggame.sh
function outputAnswer {
	if [[ $1 -lt $2 ]]
	then
		echo "You guessed too low."
		echo "Guess again:"
	else
		echo "You guessed too high. Guess again:"
		echo "Guess again:"
	fi
}

noOfFiles=$(ls | wc -l)
echo "Please try to guess the number of files in this directory:"
read answer
while [[ $answer -ne $noOfFiles ]]
do
	outputAnswer $answer $noOfFiles
	read answer
done
echo "Well Done!"