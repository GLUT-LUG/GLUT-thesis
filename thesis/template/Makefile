thesis:
	# 自动编译
	# 需要使用 tlmgr install latexmk 安装 latexmk
	latexmk -pdf -xelatex .\GLUTthesis.tex
	
xelatex:
	xelatex GLUTthesis
	biber GLUTthesis
	xelatex GLUTthesis

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.nav *.xml *.snm *.bcf *.fls *.fdb_latexmk *.xdv
