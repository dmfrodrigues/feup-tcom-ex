LATEX=latexmk -quiet -synctex=1 -interaction=nonstopmode -pdf
# -outdir=%OUTDIR% %DOC%

OUTFILES=CA/TCOM_resol_CA.pdf \
		 exam/TCOM_resol_exam.pdf \
		 PA/TCOM_resol_PA.pdf \
		 tests/1/TCOM_resol_test1.pdf \
		 TP/TCOM_resol_TP.pdf

all: $(OUTFILES)

%.pdf: %.tex
	cd $(<D) && $(LATEX) $(<F)

clean:
	git clean -dfX
