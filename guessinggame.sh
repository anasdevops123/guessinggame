#!/bin/bash

echo
echo

echo -e "***This is the program to guess the number of files in the current directory****"

PWD=$(pwd)

echo
echo

echo -e "***You are in $PWD***"

echo
echo

COUNT=$(ls -l | wc -l)

read -p "Guess the number of files in $PWD: " GUESS

guessing_game ()

{

echo
echo

while : $GUESS ;

do 

if [[ $COUNT -eq $GUESS ]]

then

echo -e "***CONGRATULATIONS.You guessed it right***"
break

elif [ $COUNT -gt $GUESS ]

then
read -p "***SORRY. Your guess is too low. Please guess it again***: " GUESS

elif [ $COUNT -lt $GUESS ]
then

read -p "***SORRY. Your guess is too high. Please guess it again: " GUESS
fi

done

}

guessing_game

