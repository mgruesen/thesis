# LaTeX Makefile
FILE=main

all: $(FILE).pdf

.PHONY: clean
clean:
	\rm *.aux *.bbl *.log *.pdf *.blg

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	bibtex $(FILE)||true
	pdflatex $(FILE)
	pdflatex $(FILE)
