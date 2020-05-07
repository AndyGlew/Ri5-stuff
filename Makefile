# Makefile for Ri5-CMOs-proposal

# As of Wednesday, May 6, 2020-05-06
# The main purpose is to run  a command to expand the AsciiDoc include  directives
# so that you can get a better idea what will actually look like

HTML_VIEWER=/cygdrive/c/Windows/explorer.exe

W=Ri5-stuff.wiki



open-html-in-browser: ./Ri5-CMOs-proposal.html
	# KLUGE: Windows HTML viewer does not understand / paths
	# either need to convert / --> /, cd, or cygpath
	$(HTML_VIEWER) Ri5-CMOs-proposal.html

ASCIIDOCTOR=/home/glew/bin/asciidoctor
#TBD: Move asciidoctor to standard location

./Ri5-CMOs-proposal.html $W/Ri5-CMOs-proposal.html: always #$W/Ri5-CMOs-proposal.asciidoc $W/*.asciidoc
	$(ASCIIDOCTOR) -b html $W/Ri5-CMOs-proposal.asciidoc -o $W/Ri5-CMOs-proposal.html
	cp $W/Ri5-CMOs-proposal.html .

# TBD: should I eliminate one of the generated .html files - likely will cause problems since redundant
# But... I really want to have the generated HTML in the wiki, not the parent.

always:
