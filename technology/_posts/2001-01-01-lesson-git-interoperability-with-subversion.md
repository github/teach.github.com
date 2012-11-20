---
layout: bare
title: Interoperability with Subversion (SVN)
description: Git's interoperability with Subversion.
path: technology/_posts/2001-01-01-lesson-git-interoperability-with-subversion.md
---

Clone one part (branch, folder, tree) of a Subversion repository

    git svn clone URL

Clone an entire SVN repo with tags, trunks, and branches

    git svn clone --stdlayout URL
    git svn clone --stdlayout http://svn.apache.org/repos/asf/commons/proper/logging/
    git svn clone --stdlayout http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm/

or just the trunk

    git svn clone http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm/trunk

Get new commits from Subversion

    git svn rebase

Push Git commits back to Subversion

    git svn dcommit
