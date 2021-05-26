#!/bin/bash
cd bibs
echo "Bib 2 json"
Rscript bib2json.r lab.bib temp1.json
echo "json 2 yml"
python json2yaml.py temp1.json temp2.yml
echo "Fixing yml formatting"
python fix.py temp2.yml temp3.yml
echo "Adding bib back into yml"
python fold.py lab.bib temp3.yml pubs.yml
echo "Copy into _data directory."
mv pubs.yml ../_data