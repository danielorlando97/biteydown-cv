

html: 
	bin/biteydown --html --css style/new-html.css example/curriculum.md	

pdf:
	bin/biteydown --pdf --css style/new.css example/curriculum.md

build: pdf html
	mv example/curriculum.html ./

update: build
	git add curriculum.html && git add example/curriculum.md && git commit -m "update cv" && git push origin master