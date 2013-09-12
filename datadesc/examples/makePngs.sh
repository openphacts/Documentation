
for file in *.ttl; do
	rapper -i turtle -o dot $file > $file.dot
	dot -Tpng $file.dot > $file.png
done
