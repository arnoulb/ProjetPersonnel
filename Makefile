SRC	:= rendu

RM	:= rm -f

all: pdf

pdf:
	pdflatex $(SRC).tex
	bibtex $(SRC)  || true	
	pdflatex $(SRC).tex
	pdflatex $(SRC).tex

clean: 
	$(RM) $(SRC).aux
	$(RM) $(SRC).out
	$(RM) $(SRC).dvi
	$(RM) $(SRC).bbl	
	$(RM) $(SRC).blg
	$(RM) $(SRC).log
	$(RM) $(SRC).toc
	$(RM) *~ *\#
fclean: clean
	$(RM) $(SRC).pdf

re: fclean all
