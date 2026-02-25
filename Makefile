PANDOC = pandoc
PANDOC_FLAGS = --standalone --from=asciidoc --template=templates/page.html --css=style.css

PAGES = index.html tabletop.html software.html recipes.html

all: $(PAGES)

index.html: content/index.adoc templates/page.html
	$(PANDOC) $(PANDOC_FLAGS) --variable nav-overview=true --output=$@ $<

tabletop.html: content/tabletop.adoc templates/page.html
	$(PANDOC) $(PANDOC_FLAGS) --variable nav-tabletop=true --output=$@ $<

software.html: content/software.adoc templates/page.html
	$(PANDOC) $(PANDOC_FLAGS) --variable nav-software=true --output=$@ $<

recipes.html: content/recipes.adoc templates/page.html
	$(PANDOC) $(PANDOC_FLAGS) --variable nav-recipes=true --output=$@ $<

clean:
	rm -f $(PAGES)

.PHONY: all clean
