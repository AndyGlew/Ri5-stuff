# Makefile for Ri5-CMOs-proposal

# As of Wednesday, May 6, 2020-05-06
# The main purpose is to run  a command to expand the AsciiDoc include  directives
# so that you can get a better idea what will actually look like

HTML_VIEWER=/cygdrive/c/Windows/explorer.exe
PDF_VIEWER=/cygdrive/c/Windows/explorer.exe

W=Ri5-stuff.wiki

default: open-docs-in-browser

# run `make post-clone' right after git clone of Ri5-stuff
# to update submodules (currently only Ri5-stuff.wiki)
post-clone:
	git submodule init
	git submodule update

# Make and display proposal draft

open-docs-in-browser: open-html-in-browser open-pdf-in-browser

open-html-in-browser: ./Ri5-CMOs-proposal.html
	# KLUGE: Windows HTML viewer does not understand / paths
	# either need to convert / --> /, cd, or cygpath
	-$(HTML_VIEWER) Ri5-CMOs-proposal.html
open-pdf-in-browser: ./Ri5-CMOs-proposal.pdf
	# KLUGE: Windows PDF viewer does not understand / paths
	# either need to convert / --> /, cd, or cygpath
	-$(PDF_VIEWER) Ri5-CMOs-proposal.pdf

ASCIIDOCTOR=/home/glew/bin/asciidoctor
ASCIIDOCTOR_PDF=/home/glew/bin/asciidoctor-pdf
#TBD: Move asciidoctor to standard location

generated-docs: ./Ri5-CMOs-proposal.html ./Ri5-CMOs-proposal.pdf

./Ri5-CMOs-proposal.html $W/Ri5-CMOs-proposal.html: always #$W/Ri5-CMOs-proposal.asciidoc $W/*.asciidoc
	$(ASCIIDOCTOR) -b html $W/Ri5-CMOs-proposal.asciidoc -o $W/Ri5-CMOs-proposal.html
	cp $W/Ri5-CMOs-proposal.html .
./Ri5-CMOs-proposal.pdf $W/Ri5-CMOs-proposal.pdf: always #$W/Ri5-CMOs-proposal.asciidoc $W/*.asciidoc
	$(ASCIIDOCTOR_PDF) -b pdf $W/Ri5-CMOs-proposal.asciidoc -o $W/Ri5-CMOs-proposal.pdf
	cp $W/Ri5-CMOs-proposal.pdf .

# TBD: should I eliminate one of the generated .html files - likely will cause problems since redundant
# But... I really want to have the generated HTML in the wiki, not the parent.

always:
