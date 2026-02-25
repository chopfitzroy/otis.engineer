#!/bin/sh
set -eu

PANDOC_FLAGS="--standalone --from=asciidoc --template=templates/page.html --css=style.css"

pandoc $PANDOC_FLAGS --variable nav-overview=true --output=index.html content/index.adoc
pandoc $PANDOC_FLAGS --variable nav-tabletop=true --output=tabletop.html content/tabletop.adoc
pandoc $PANDOC_FLAGS --variable nav-software=true --output=software.html content/software.adoc
pandoc $PANDOC_FLAGS --variable nav-recipes=true --output=recipes.html content/recipes.adoc
