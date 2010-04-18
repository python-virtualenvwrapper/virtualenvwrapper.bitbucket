==============
 Installation
==============

Basic Installation
==================

virtualenvwrapper.bitbucket should be installed using pip_::

  $ pip install virtualenvwrapper.bitbucket

You will want to install it into the same Python site-packages area
where virtualenv, virtualenvwrapper, and virtualenvwrapper.project are
located.  You may need administrative privileges to do that.  Refer to
the `virtualenvwrapper documentation
<http://www.doughellmann.com/docs/virtualenvwrapper/install.html>`__
for configuration instructions for virtualenvwrapper.

VIRTUALENVWRAPPER_BITBUCKET_USER
================================

The variable ``VIRTUALENVWRAPPER_BITBUCKET_USER`` tells
virtualenvwrapper.bitbucket what username to use when connecting to
BitBucket.  The default is to use the name of the current system user
(``$USER``).

If your local system user and BitBucket account name are not the same,
you will want to add a line like::

    export VIRTUALENVWRAPPER_BITBUCKET_USER=username

to your shell startup file.

.. _pip: http://pypi.python.org/pypi/pip
