# LaTeX Makefile
FILE=main
PDFLATEX=pdflatex
BIBTEX=bibtex

TEX_SRC=main.tex
BIB_SRC=main
all:
	${PDFLATEX} ${TEX_SRC}
	${PDFLATEX} ${TEX_SRC}
	${BIBTEX} ${BIB_SRC}
	${PDFLATEX} ${TEX_SRC}
	${PDFLATEX} ${TEX_SRC}

refresh:
	${PDFLATEX} ${TEX_SRC}

clean:
	@rm -f *.log *.aux *.pdf *.bbl *.blg
