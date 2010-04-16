#!/usr/bin/env python
# encoding: utf-8
#
# Copyright (c) 2010 Doug Hellmann.  All rights reserved.
#
"""virtualenvwrapper.project plugin for bitbucket repositories
"""

import logging

import pkg_resources

log = logging.getLogger(__name__)

def template(args):
    project=args[0]
    log.info('Looking for %s on BitBucket', project)
    return
