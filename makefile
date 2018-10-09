output.pdf : template.tex details.yml
	pandoc $(filter-out $<,$^ ) -o $@ --pdf-engine=xelatex --template=$<

clean :
	rm output.pdf
