---
layout: exampleswithrelated
title: Git SVN Conversion for the Groovy Project
description: An example of converting a Subversion repo to Git.
path: examples/git-svn-convert-groovy/
examples: Groovy-SVN-To-Git-Conversion.bsh
tags: [example, code]
---

________
Alternatively, assuming people aren't doing bad things in your repository (like committing against a tag) you can use svn info, it returns information in the format

    Path: [path]
    URL: [url]
    Revision: [current repository revision]
    Node Kind: directory
    Schedule: normal
    Last Changed Author: [author]
    Last Changed Rev: [last revision this particular path was changed]
    Last Changed Date: YYYY-MM-DD hh:mm:ss TZ
    You might call something like svn info http://www.example.com/svn/path/to/tag

_________


In short, if you could do a simple conversion of trunk, the tags could easily be re-created on the Git repo if we trust that the tags were actually never modified once established on the SVN side (since SVN has this idea that they are branches you beg all your developers not to change).

Likewise for the branches.

# Find the SVN revision number for a given SVN tag
    $ svn info http://PATHTOYOURTAG

## Find the SVN revision number's Git hash in the Git converted history
    $ git svn find-rev <SVNREVNUMBER>

## Rebuild the tag from the git hash
    $ git tag <TAGNAME> <rev>

## Rebuild the tag from the git hash
    $ git tag <TAGNAME> <rev>

* Remaining files here: <https://github.com/github/teach.github.com/tree/gh-pages/examples/git-svn-convert-groovy>
