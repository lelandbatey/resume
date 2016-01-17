
SRC=resume.md
BUILD_DIR=build/

all: pdf html

latex:
	pandoc --template templates/resume_template.latex --variable geometry="margin=0.5in" -o $(BUILD_DIR)resume.latex $(SRC)

pdf: latex
	pdflatex -jobname=$(BUILD_DIR)resume $(BUILD_DIR)resume.latex

html:
	pandoc -o $(BUILD_DIR)resume.html $(SRC)
