README.md: guessinggame.sh
	touch README.md
	echo "#This is **DR Guessing Game**" > README.md
	echo "It contains lines of code:" >> README.md
	grep -c "." guessinggame.sh >> README.md
	echo "Created on:" >> README.md
	date >> README.md
	echo "Author: Dmitrii Riabchikov" >> README.md