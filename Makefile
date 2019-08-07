TEMPLATE = template.html
TEXTEMPLATE = template.tex
MDFILES := $(shell find . -name \*.md)
HTMLFILES := $(MDFILES:./%.md=docs/%.html)
# ASSIGNMENTS := $(filter ./assignments/%.md,$(MDFILES))
PDFS := $(MDFILES:./%.md=docs/%.pdf)
# TEXS := $(ASSIGNMENTS:./%.md=docs/%.tex)
IMGFILES := $(shell find images -name \*.png)
IMGFILES := $(IMGFILES:%=docs/%)
DATASETS := $(shell ls datasets)
DATASETS := $(DATASETS:%=docs/datasets/%)

$(HTMLFILES): docs/%.html: %.md $(TEMPLATE) makeHTML.hs
	mkdir -p $(@D)
	pandoc -o $@ --template=$(TEMPLATE) --mathjax --section-divs -t html5+smart --filter ./makeHtml.hs $<

$(PDFS): docs/%.pdf: %.md $(TEXTEMPLATE)  makeTex.hs
	mkdir -p $(@D)
	pandoc -o $@ --template=$(TEXTEMPLATE) --pdf-engine=xelatex --listings --filter ./makeTex.hs $<


$(IMGFILES): docs/images/%.png: images/%.png
	mkdir -p $(@D)
	cp $< $@

$(DATASETS): docs/datasets/%: datasets/%
	mkdir -p $(@D)
	cp $< $@

site: $(HTMLFILES) $(PDFS) $(IMGFILES) $(DATASETS)

all: site
