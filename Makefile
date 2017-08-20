TEMPLATE = template.html
TEXTEMPLATE = template.tex
MDFILES := $(shell find . -name \*.md)
HTMLFILES := $(MDFILES:./%.md=docs/%.html)
# ASSIGNMENTS := $(filter ./assignments/%.md,$(MDFILES))
PDFS := $(MDFILES:./%.md=docs/%.pdf)
# TEXS := $(ASSIGNMENTS:./%.md=docs/%.tex)
IMGFILES := $(shell find images -name \*.png)
IMGFILES := $(IMGFILES:%=docs/notes/%)
DATASETS := $(shell ls datasets)
DATASETS := $(DATASETS:%=docs/datasets/%)

$(HTMLFILES): docs/%.html: %.md $(TEMPLATE) makeHTML.hs
	mkdir -p $(@D)
	pandoc -o $@ --template=$(TEMPLATE) --mathjax --smart --filter ./makeHtml.hs $<

$(PDFS): docs/%.pdf: %.md $(TEXTEMPLATE)  makeTex.hs
	mkdir -p $(@D)
	pandoc -o $@ --template=$(TEXTEMPLATE) -t latex --listings --filter ./makeTex.hs $<


$(IMGFILES): docs/notes/images/%.png: images/%.png
	cp $< $@

$(DATASETS): docs/datasets/%: datasets/%
	mkdir -p $(@D)
	cp $< $@

email:
	open "mailto:`cat students.txt`"

site: $(HTMLFILES) $(PDFS) $(IMGFILES) $(DATASETS)

all: site
