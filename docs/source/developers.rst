================
 For Developers
================

If you would like to contribute to virtualenvwrapper.bitbucket directly,
these instructions should help you get started.  Patches, bug reports,
and feature requests are all welcome through the `BitBucket project site
<http://bitbucket.org/dhellmann/virtualenvwrapper.bitbucket/>`__.
Contributions in the form of patches or pull requests are easier to
integrate and will receive priority attention.

Building Documentation
======================

The documentation for virtualenvwrapper.bitbucket is written in
reStructuredText and converted to HTML using Sphinx. The build itself
is driven by make.  You will need the following packages in order to
build the docs:

- Sphinx
- docutils

Once all of the tools are installed into a virtualenv using
pip, run ``make html`` to generate the HTML version of the
documentation.

Running Tests
=============

The test suite for virtualenvwrapper.bitbucket uses shunit2_ and tox_.
To run the tests under bash, sh, and zsh, run ``tox`` from the top of
the source tree.  To add new tests, modify or create an appropriate
script in the ``tests`` directory.

.. _shunit2: http://shunit2.googlecode.com/

.. _tox: http://codespeak.net/tox/

