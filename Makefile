version:=$(shell egrep version= setup.py | tr '"' ' ' | awk '{print $$2}')

mimic.6:
	help2man --no-info --version-string=$(version) mimic > $@

build:
	python setup.py build

install: build
	python setup.py install --prefix $(prefix)

.PHONY: build install
