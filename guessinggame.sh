#!/usr/bin/env bash
#!File Name: guessinggame.sh

#Created a function for asking a number to be entered
function guess {
echo "Guess how many files are in this directory?"
echo "Please enter a number:"
read number
guessednumber=$number
}

guess

echo "Let's find out if $guessednumber is the correct answer"

nof=0
for i in $(ls)
do
	let nof=$nof+1
done

while [[ $guessednumber -ne $nof ]]
do
	if [[ $guessednumber -gt $nof ]]
	then
		echo "$guessednumber is greater than the number of files in this repository. Try again"
		guess
	else
		echo "$guessednumber is lesser than the number of files in this repository. Try again"
		guess
	fi
done
echo "Congratulations!! You have guessed the number of files correctly."
echo "Number of files in this directory = $guessednumber"	
