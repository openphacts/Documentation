
BASEFILES=(chembl-rdf-void chemspider-void chemspider2chemblrdf-linkset chemspider2drugbank-linkset)

for file in ${BASEFILES[@]}; do
	rapper -i turtle -o dot $file.ttl > $file.dot
	dot -Tpng $file.dot > $file.png
done