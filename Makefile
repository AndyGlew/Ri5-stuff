# Makefile for Ri5-CMOs-proposal

# As of Wednesday, May 6, 2020-05-06
# The main purpose is to run  a command to expand the AsciiDoc include  directives
#  so that you can get a better idea what will actually look like

HTML_VIEWER=/cygdrive/c/Windows/explorer.exe

W=Ri5-stuff.wiki


open-html-in-browser: $W/Ri5-CMOs-proposal.html
	# KLUGE: Windows HTML viewer does not understand / paths
	# either need to convert / --> /, cd, or cygpath
	(cd $W; $(HTML_VIEWER) Ri5-CMOs-proposal.html)

$W/Ri5-CMOs-proposal.html: $W/Ri5-CMOs-proposal.adoc
	asciidoctor -b html $W/Ri5-CMOs-proposal.adoc -o $W/Ri5-CMOs-proposal.html
