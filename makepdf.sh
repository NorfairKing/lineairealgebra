filename=$(basename $2)
filename="${filename%.*}"
pdflatex $2 
makeglossaries "$filename"
makeindex "$filename"
pdflatex $2
bibtex "$filename"
makeglossaries "$filename"
makeindex "$filename"
pdflatex -interaction=$1 $2 
bibtex "$filename"
pdflatex -interaction=$1 $2 
pdflatex -interaction=$1 $2
