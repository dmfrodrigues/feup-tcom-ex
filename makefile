LATEX=latexmk -synctex=1 -interaction=nonstopmode -pdf #-quiet -silent

OUTFILES=./CA/TCOM_resol_CA.pdf \
		 ./exam/TCOM_resol_exam.pdf \
		 ./PA/TCOM_resol_PA.pdf \
		 ./tests/1/TCOM_resol_test1.pdf \
		 ./TP/TCOM_resol_TP.pdf

all: $(OUTFILES)

OUTFILES_EXTRA = $(shell find . -name "TCOM_*.tex" | sed 's/.tex/.pdf/g')

extra: $(OUTFILES_EXTRA)

%.pdf: %.tex tcomstyle.sty
	cd $(<D) && $(LATEX) $(<F)

clean:
	git clean -dfX
