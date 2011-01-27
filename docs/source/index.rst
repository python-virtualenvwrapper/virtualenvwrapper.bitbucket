.. virtualenvwrapper.bitbucket documentation master file, created by
   sphinx-quickstart on Sat Apr 17 19:57:43 2010.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

#####################################
virtualenvwrapper.bitbucket |release|
#####################################

``virtualenvwrapper.bitbucket`` is a template for
virtualenvwrapper.project_ to extend its project-management features.
It automatically clones a BitBucket_ repository when creating a new
project directory.

=========
 Example
=========

::

  $ mkproject -t bitbucket virtualenvwrapper.bitbucket
  New python executable in virtualenvwrapper.bitbucket/bin/python
  Installing distribute.............................................
  ..................................................................
  ..................................................................
  virtualenvwrapper.user_scripts Creating /Users/dhellmann/.virtualenvs/virtualenvwrapper.bitbucket/bin/predeactivate
  virtualenvwrapper.user_scripts Creating /Users/dhellmann/.virtualenvs/virtualenvwrapper.bitbucket/bin/postdeactivate
  virtualenvwrapper.user_scripts Creating /Users/dhellmann/.virtualenvs/virtualenvwrapper.bitbucket/bin/preactivate
  virtualenvwrapper.user_scripts Creating /Users/dhellmann/.virtualenvs/virtualenvwrapper.bitbucket/bin/postactivate

  Creating /Users/dhellmann/Devel/virtualenvwrapper.bitbucket
  Applying template bitbucket
  virtualenvwrapper.bitbucket Cloning ssh://hg@bitbucket.org/dhellmann/virtualenvwrapper.bitbucket
  requesting all changes
  adding changesets
  adding manifests                                                                
  adding file changes
  added 3 changesets with 10 changes to 8 files
  updating to branch default
  8 files updated, 0 files merged, 0 files removed, 0 files unresolved
  (virtualenvwrapper.bitbucket) $ ls
  virtualenvwrapper.bitbucket
  (virtualenvwrapper.bitbucket) $ cat virtualenvwrapper.bitbucket/.hg/hgrc
  [paths]
  default = ssh://hg@bitbucket.org/dhellmann/virtualenvwrapper.bitbucket
  
  
=========
 Details
=========

.. toctree::
   :maxdepth: 2

   install
   developers
   history

=======
License
=======

Copyright Doug Hellmann, All Rights Reserved

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose and without fee is hereby granted,
provided that the above copyright notice appear in all copies and that
both that copyright notice and this permission notice appear in
supporting documentation, and that the name of Doug Hellmann not be
used in advertising or publicity pertaining to distribution of the
software without specific, written prior permission.

DOUG HELLMANN DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
EVENT SHALL DOUG HELLMANN BE LIABLE FOR ANY SPECIAL, INDIRECT OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.

.. _virtualenvwrapper.project: http://www.doughellmann.com/projects/virtualenvwrapper.project/

.. _BitBucket: http://www.bitbucket.org/
