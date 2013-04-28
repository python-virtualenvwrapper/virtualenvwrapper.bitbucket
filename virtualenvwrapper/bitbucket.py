#!/usr/bin/env python
# encoding: utf-8
#
# Copyright (c) 2010 Doug Hellmann.  All rights reserved.
#
"""virtualenvwrapper.project plugin for bitbucket repositories
"""

import logging
import os
import subprocess

log = logging.getLogger(__name__)


def get_url(project):
    """Return the URL for the given project.
    """
    user = os.environ.get('VIRTUALENVWRAPPER_BITBUCKET_USER',
                          os.environ.get('USER'))
    if not user:
        log.error('Set USER or VIRTUALENVWRAPPER_BITBUCKET_USER')
        return None
    url = 'ssh://hg@bitbucket.org/{user}/{project}'.format(
        user=user,
        project=project,
    )
    return url


def template(args):
    """Clones a BitBucket.org repository into the project directory.
    """
    project, project_dir = args
    url = get_url(project)
    outdir = os.path.join(project_dir, project)
    if url:
        log.info('Cloning %s', url)
        subprocess.call(['hg', 'clone', url, outdir], shell=False)
    return
