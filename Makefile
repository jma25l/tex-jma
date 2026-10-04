.PHONY: demo

font: 
	ffpython ./svgs2ttf.py ./font.json

demo: 
	cd demo & xelatex demo.tex & xelatex beamer.tex

postinstall: # Potser ho hauria d'adaptar per a linux
	copy jma.cwl %APPDATA%\texstudio\completion\user