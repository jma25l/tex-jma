.PHONY: demo

font: 
	ffpython ./svgs2ttf.py ./font.json

demo: 
	cd demo & xelatex demo.tex & xelatex beamer.tex