TEX_FILES = $(wildcard *.tex)

MAIN = main
TARGET = $(MAIN).pdf

.PHONY:	all	tidy	clean

all: $(TARGET)

$(TARGET): 	$(TEX_FILES)
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

tidy:
	rm -f *.aux */*.aux
	rm -f *.bbl */*.bbl
	rm -f *.log */*.log
	rm -f *.blg */*.blg
	rm -f *.out */*.out

clean:	tidy
	rm -f  $(MAIN).pdf
