echo "In volgende theorie hoofdstukken staan nog TODO's."
echo "---------------------------------------------------------"
grep -n "TODO" ./hoofdstuk_*_theorie.tex
echo "---------------------------------------------------------"

echo ""

echo "In volgende oefeningen staan nog TODO's."
echo "---------------------------------------------------------"
grep -n "TODO" ./hoofdstuk_*_oefeningen.tex
echo "---------------------------------------------------------"

echo ""

echo "Er zijn nog extra TODO's in de volgende bestanden."
echo "---------------------------------------------------------"
grep -n "TODO" ./zelfreflectie_*.tex
grep -n "TODO" ./tipsntricks.tex
grep -n "TODO" ./voorwoord.tex
grep -n "TODO" ./inleiding.tex
grep -n "TODO" ./huistaak_*.tex
echo "---------------------------------------------------------"
