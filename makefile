all: doc test

doc: doc/manual.six

doc/manual.six: makedoc.g \
		PackageInfo.g \
		doc/Intros.autodoc \
		doc/CoCoAForHomalg.bib \
		gap/*.gd gap/*.gi examples/*.g
	        gap makedoc.g

clean:
	(cd doc ; ./clean)

test:	doc
	gap maketest.g

archive: test
	(mkdir -p ../tar; cd ..; tar czvf tar/CoCoAForHomalg.tar.gz --exclude ".DS_Store" --exclude "*~" CoCoAForHomalg/doc/*.* CoCoAForHomalg/doc/clean CoCoAForHomalg/gap/*.{gi,gd} CoCoAForHomalg/{PackageInfo.g,README,COPYING,VERSION,init.g,read.g,makedoc.g,makefile,maketest.g} CoCoAForHomalg/examples/*.g CoCoAForHomalg/examples/doc/*.g)

WEBPOS=public_html
WEBPOS_FINAL=~/Sites/homalg-project/CoCoAForHomalg

towww: archive
	echo '<?xml version="1.0" encoding="UTF-8"?>' >${WEBPOS}.version
	echo '<mixer>' >>${WEBPOS}.version
	cat VERSION >>${WEBPOS}.version
	echo '</mixer>' >>${WEBPOS}.version
	cp PackageInfo.g ${WEBPOS}
	cp README ${WEBPOS}/README.CoCoAForHomalg
	cp doc/manual.pdf ${WEBPOS}/CoCoAForHomalg.pdf
	cp doc/*.{css,html} ${WEBPOS}
	rm -f ${WEBPOS}/*.tar.gz
	mv ../tar/CoCoAForHomalg.tar.gz ${WEBPOS}/CoCoAForHomalg-`cat VERSION`.tar.gz
	rm -f ${WEBPOS_FINAL}/*.tar.gz
	cp ${WEBPOS}/* ${WEBPOS_FINAL}
	ln -s CoCoAForHomalg-`cat VERSION`.tar.gz ${WEBPOS_FINAL}/CoCoAForHomalg.tar.gz

