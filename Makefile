TEX_DIR = projects/afa4c166-e27b-4ae5-bc57-bd4a8e9e2cd8/files
TEX_FILE = usenix2019_v3.1
PDF = $(TEX_DIR)/$(TEX_FILE).pdf

.PHONY: all clean

all: $(PDF)

$(PDF): $(TEX_DIR)/$(TEX_FILE).tex $(TEX_DIR)/usenix-2020-09.sty
	cd $(TEX_DIR) && pdflatex -interaction=nonstopmode $(TEX_FILE).tex
	cd $(TEX_DIR) && pdflatex -interaction=nonstopmode $(TEX_FILE).tex

clean:
	cd $(TEX_DIR) && rm -f $(TEX_FILE).pdf $(TEX_FILE).aux $(TEX_FILE).log \
		$(TEX_FILE).out $(TEX_FILE).toc $(TEX_FILE).bbl $(TEX_FILE).blg \
		$(TEX_FILE).nav $(TEX_FILE).snm $(TEX_FILE).vrb
