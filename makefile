# The Unix Workbench - Bash, Make, Git, and Github assignment
# Ian Mancini <ianmethyst@gmail.com>

export lines := $(shell wc -l ./guessinggame.sh | egrep -o "[0-9]+")

all: README.md

README.md: 
	printf "# Bash guessing game\n\n" > README.md
	printf "This program is made of $(lines) lines, and it was built on " >> README.md
	date >> README.md

.PHONY: README.md
