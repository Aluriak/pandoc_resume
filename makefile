# makefile on top of Makefile


all: build_short compile copy

build_short:
	- sh build_short_resume.sh

compile:
	- $(MAKE) -f Makefile html
	- $(MAKE) -f Makefile pdf

copy:
	cp ./output/*.{html,pdf} ~/www/home/
