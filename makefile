README.md:
	touch README.md
	echo "Project Title: " >> README.md
	echo "Guessing Game" >> README.md
	echo "" >> README.md

	echo "Date created: " >> README.md
	date >> README.md
	echo "" >> README.md

	echo "Lines of code in guessinggame.sh" >> README.md
	cat guessinggame.sh | wc -l >> README.md

.PHONY: clean
clean:
	rm README.md
