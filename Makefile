.PHONY: all
all: brain-meme/genderbrain.png

brain-meme/brain.pdf:
	cd brain-meme/ && pdflatex brain.tex

brain-meme/genderbrain.png: brain-meme/brain.pdf
	cd brain-meme/ && (gs -dSAFER -r600 -sDEVICE=png256 -o genderbrain.png brain.pdf && convert genderbrain.png -background white -alpha remove -alpha off genderbrain.png)

