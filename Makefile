# Get the version of the app.  This is used in the doc build.
export VERSION=$(shell python setup.py --version)

PROJECT=virtualenvwrapper.bitbucket

# Default target is to show help
help:
	@echo "sdist          - Source distribution"
	@echo "html           - HTML documentation"
	@echo "register       - register a new release on PyPI"
	@echo "website        - build web version of docs"
	@echo "installwebsite - deploy web version of docs"
	@echo "develop        - install development version"


.PHONY: sdist
sdist: html
	rm -f dist/*.gz
	rm -rf docs/website
	python setup.py sdist
	cp -v dist/*.gz ~/Desktop

# Documentation
.PHONY: html
html:
	rm -rf virtualenvwrapper/docs
	(cd docs && $(MAKE) html SPHINXOPTS="-c sphinx/pkg")
	cp -r docs/build/html virtualenvwrapper/docs

# Website copy of documentation
.PHONY: website
website: docs/sphinx/web/templates/base.html
	rm -rf docs/website
	(cd docs && $(MAKE) html SPHINXOPTS="-c sphinx/web" BUILDDIR="website")

installwebsite: website
	(cd docs/website/html && rsync --rsh=ssh --archive --delete --verbose . www.doughellmann.com:/var/www/doughellmann/DocumentRoot/docs/$(PROJECT)/)

# Copy the base template from my website build directory
docs/sphinx/web/templates/base.html: ~/Devel/doughellmann/doughellmann/templates/base.html
	cp $< $@
