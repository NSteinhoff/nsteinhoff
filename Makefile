all: build/cv_en.html build/cv_de.html build/cv_de.pdf build/cv_en.pdf

build/cv_en.html: src/cv_en.adoc
	asciidoctor -D build/ $<

build/cv_de.html: src/cv_de.adoc
	asciidoctor -D build/ $<

build/cv_en.pdf: src/cv_en.adoc
	asciidoctor -r asciidoctor-pdf -D build/ -b pdf $<

build/cv_de.pdf: src/cv_de.adoc
	asciidoctor -r asciidoctor-pdf -D build/ -b pdf $<

clean:
	rm -rf build/*
