FILE=proj3

$(FILE).pdf: $(FILE).ps
	ps2pdf -sPAPERSIZE=a4 $(FILE).ps

$(FILE).ps: $(FILE).dvi
	dvips $(FILE).dvi

$(FILE).dvi: $(FILE).tex
	latex $(FILE).tex
clean:
	rm $(FILE).dvi $(FILE).log $(FILE).pdf $(FILE).aux $(FILE).ps
zip:
	zip xburka00-fit.zip Makefile $(FILE).tex
