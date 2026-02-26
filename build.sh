#!/bin/sh
set -eu

PANDOC_FLAGS="--standalone --from=asciidoc --template=templates/page.html --css=style.css"

pandoc $PANDOC_FLAGS --variable nav-overview=true --output=public/index.html content/index.adoc
pandoc $PANDOC_FLAGS --variable nav-tabletop=true --output=public/tabletop.html content/tabletop.adoc
pandoc $PANDOC_FLAGS --variable nav-software=true --output=public/software.html content/software.adoc
pandoc $PANDOC_FLAGS --variable nav-recipes=true --output=public/recipes.html content/recipes.adoc
pandoc $PANDOC_FLAGS --variable nav-links=true --output=public/links.html content/links.adoc
pandoc $PANDOC_FLAGS --variable nav-books=true --output=public/books.html content/books.adoc
