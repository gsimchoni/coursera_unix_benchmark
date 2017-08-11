all: README.md

README.md: guessinggame.sh
        touch README.md
        echo "# Project Title: The Guessing Game" > README.md
        echo "Date and time makefile was created:" >> README.md
        date >> README.md
		echo "" >> README.md
        echo "No. of lines in guessinggame.sh:" >> README.md
        wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
        rm README.md