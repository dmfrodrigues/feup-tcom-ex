LATEXMK=latexmk -synctex=1 -interaction=nonstopmode --shell-escape -pdf #-quiet -silent

OUTFILES=./CA/TCOM_resol_CA.pdf \
		 ./exam/TCOM_resol_exam.pdf \
		 ./PA/TCOM_resol_PA.pdf \
		 ./tests/1/TCOM_resol_test1.pdf \
		 ./TP/TCOM_resol_TP.pdf

all: $(OUTFILES)

OUTFILES_EXTRA = $(shell find . -name "TCOM_*.tex" | sed 's/.tex/.pdf/g')

extra: $(OUTFILES_EXTRA)

%.pdf: %.tex
ifeq ($(VERSION),)
	cd $(<D) && $(LATEXMK) $(<F)
else
	cd $(<D) && (echo "$(VERSION)" > VERSION) && $(LATEXMK) $(<F) && $(RM) VERSION
endif

clean:
	git clean -dfX
