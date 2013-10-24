CWD!=pwd
PUBS_XMLS=	/home/edd/research/softdev/web/htdocs/pubs/soft_dev_pubs.xml \
		${CWD}/pubs/pubs.xml

all: pubs out

.PHONY: pubs
pubs:  ${PUBS_XMLS}
	# uses pubs_to_html from soft-dev repo for now.
	cd pubs && \
		/home/edd/research/softdev/bin/pubs_to_html -p edd -t md -l \
		http://theunixzoo.co.uk/vwww/res/papers ${PUBS_XMLS}
out: clean
	vwww src out

.PHONY: clean
clean:
	rm -f out/*.html
	rm -Rf out/res
	-rmdir out

