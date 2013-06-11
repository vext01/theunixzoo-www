all: out

out: clean
	vwww src out

.PHONY: clean
clean:
	rm -f out/*.html
	rm -Rf out/res
	-rmdir out

