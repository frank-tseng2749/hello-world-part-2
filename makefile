readme.md: guessinggame.sh
	echo "Project Title: Guessing Game" > readme.md
	date >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
  
clean:
	rm readme.md
