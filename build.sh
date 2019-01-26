#!/usr/bin/env bash
FOLDER=main
FILE=main

# change into the desired folder
cd $FOLDER

# remove pdf if present
[ -f $FILE.pdf ] && rm $FILE.pdf || echo "continue without remove"

# test if pdf is removed, fail if still present
[ -f $FILE.pdf ] && exit 1 || echo "continue building pdf output"


# build pdf from source
xelatex $FILE.tex
bibtex $FILE.aux
xelatex $FILE.tex
xelatex $FILE.tex

# exit successfully if pdf is present or with error if not present
[ -f $FILE.pdf ] && exit 0 || exit 1
