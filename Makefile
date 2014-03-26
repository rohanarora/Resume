UNAME := $(shell uname -s)

all:
ifeq ($(UNAME), Linux)
  	# Linux
		pdflatex resume.tex
		evince resume.pdf&
endif

ifeq ($(UNAME), Darwin)
  	# Mac
		pdflatex resume.tex
		open resume.pdf
endif

clean:
	#rm -rfv sop.pdf sop.aux
