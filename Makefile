# Makefile 
# Creado para ahorrar un poco el trabajo. 
# Walter Vargas <walter@covetel.com.ve>

SRC=./gnuwarriorcv

all: $(SRC).tex
	pdflatex $(SRC).tex
	rm -f -R pdf
	mkdir pdf
	mv $(SRC).pdf pdf/

clean: 
	rm -f *.aux *.log *.out *.ps *.toc *.nav *.snm *.dvi

view:
	evince pdf/$(SRC).pdf
