.PHONY: all
all: brain-meme/genderbrain.png cplug-pizza/cplug-pizza.png

brain-meme/brain.pdf:
	cd brain-meme/ && pdflatex brain.tex

brain-meme/genderbrain.png: brain-meme/brain.pdf
	cd brain-meme/ && ../pdf-to-png.sh brain.pdf genderbrain.png

cplug-pizza/cplug-pizza.pdf:
	cd cplug-pizza/ && pdflatex cplug-pizza.tex

cplug-pizza/cplug-pizza.png: cplug-pizza/cplug-pizza.pdf
	cd cplug-pizza/ && ../pdf-to-png.sh cplug-pizza.pdf cplug-pizza.png

