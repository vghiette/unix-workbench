readme:
	echo "#Gessing Game" >> README.md
	echo "**Make was run on** " $(shell date) >> README.md
	echo "**Number of lines in guessinggame.sh is ** " $(shell wc -l guessinggame.sh) >> README.md

all: readme


clean:
	rm README.md
