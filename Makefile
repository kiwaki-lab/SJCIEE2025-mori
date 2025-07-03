TARGET = sample

$(TARGET): 
	latexmk $(TARGET)
	
v:
	vim $(TARGET).tex

clean:
	latexmk -C

prev:
	open -a preview $(HOME)/Desktop/$(TARGET).pdf 

t:
	touch $(TARGET).tex


# .latexmf example
# for platex:
# 
# $latex	     = 'platex --shell-escape -halt-on-error';
# $dvipdf        = 'dvipdfmx -V 1.6 %O -o %D %S && cp %D ~/Desktop';
# $pdf_mode      = 3; # dvi->pdf

# for lualatex:
#
# $pdflatex      = 'lualatex %O %S && cp %D ~/Desktop';
# $pdf_mode      = 1; 
