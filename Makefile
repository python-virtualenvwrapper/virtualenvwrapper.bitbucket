PROJECT=virtualenvwrapper.bitbucket

# Default target is to show help
help:
	@echo "sdist          - Source distribution"
	@echo "html           - HTML documentation"
	@echo "upload         - upload a new release to PyPI"
	@echo "website        - build web version of docs"
	@echo "installwebsite - deploy web version of docs"
	@echo "develop        - install development version"


.PHONY: sdist
sdist: html
	python setup.py sdist

# Documentation
.PHONY: html
html:
	(cd docs && $(MAKE) html)

.PHONY: installwebsite
installwebsite: html
	(cd docs/build/html && rsync --rsh=ssh --archive --delete --verbose . www.doughellmann.com:/var/www/doughellmann/DocumentRoot/docs/$(PROJECT)/)

.PHONY: upload
upload:
	python setup.py sdist upload