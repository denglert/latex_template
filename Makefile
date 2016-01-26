INTER =
# -interaction batchmode


#pdf : 
#	latexmk -pdf thesis.tex

all : pdf

pdf : note.pdf

%.pdf : %.tex $(wildcard ../eps/*/*.pdf)
	pdflatex $(INTER) $<
	bibtex thesis
	mpost feyn
	pdflatex $(INTER) $<
	pdflatex $(INTER) $<

 
clean ::
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.toc *.pdf *_latexmk *.fls

