# makefile on top of Makefile


all: build_short
	$(MAKE) -f Makefile html

build_short:
	sh build_short_resume.sh
