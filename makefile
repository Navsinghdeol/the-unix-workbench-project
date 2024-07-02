README.md:
	touch README.md
	echo "# README.md Generated using makefile" >> README.md
	echo "## Peer-graded assignment" >> README.md
	echo "**Day & time of creation of README.md:**" >> README.md
	date  >> README.md
	echo " " >> README.md
	echo "The guessinggame.sh file contains the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
