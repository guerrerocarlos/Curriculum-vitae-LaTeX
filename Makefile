# Makefile 
# Creado para ahorrar un poco el trabajo. 
# Walter Vargas <walter@covetel.com.ve>

SRC=./gnuwarriorcv

all: $(SRC).tex
	pdflatex $(SRC).tex
	pdflatex $(SRC)es.tex
	rm -f -R pdf
	mkdir pdf
	mv $(SRC).pdf pdf/
	mv $(SRC)es.pdf pdf/

clean: 
	rm -f *.aux *.log *.out *.ps *.toc *.nav *.snm *.dvi

view:
	evince pdf/$(SRC).pdf
