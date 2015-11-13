tex : jp-Paper.tex Makefile
	platex jp-Paper.tex

dvi : jp-Paper.dvi
	make -r tex
	dvipdfmx jp-Paper.dvi

pdf : jp-Paper.pdf
	make -r dvi
	evince jp-Paper.pdf &
