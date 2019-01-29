#!/usr/bin/env bash
# File: guessinggame.sh

guess=-1

numfiles=$(ls -l | grep -v -e "^d"| wc -l)-1

function check {
if [[ $1 -lt $2 ]]
   then 
     echo "Guess is too low.  Guess again:"
elif [[ $1 -gt $2 ]]
   then
     echo "Guess is too high.  Guess again:"
else 
   echo "Congratulations!  You guessed right."
fi
}

echo "This is a guessing game."
echo "How many files are in this directory?  Guess:"

while [[ guess -ne numfiles ]]
do
  read guess
  check guess numfiles
done

echo "Exiting guessing game."
