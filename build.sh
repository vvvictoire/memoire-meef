#!/bin/bash
FOLDER=main
FILE=henriette_jidouard_milis_2018_19_MEMOIRE\ MEEF

# change into the desired folder
cd $FOLDER

# build pdf from source
latexmk -gg -xelatex "$FILE.tex"

cd ../beamer
latexmk -gg -xelatex slides.tex

cd ..
cd $FOLDER

# exit successfully if pdf is present or with error if not present
[ -f "$FILE.pdf" ] && exit 0 || exit 1
