---
layout: bare
title: Cloning Basics
description: Copying a repository from an upstream location to your local disk.
path: technology/_posts/2001-01-01-lesson-git-clone.md
---

## Cloning someone else's Git protocol-hosted repo
List of Git-hosted projects

    http://git.apache.org
    
Get a full copy of a Git project

    git clone git://git.apache.org/commons-logging.git
    
or the [Grails project](http://github.com/grails/grails-core), which has several branches:

    git clone http://github.com/grails/grails-core.git
    git clone git://github.com/grails/grails-core.git

## Cloning an HTTP repo
Apache also is pushing nightly syncs to GitHub

    http://github.com/apache/commons-logging
    
Clone from GitHub (can be forked)

    git clone http://github.com/apache/commons-logging.git

## Remotes
Show all remotes' simple names

    git remote

Show remotes with URLs

    git remote -v

Add a new remote

    git remote add NAME URL

