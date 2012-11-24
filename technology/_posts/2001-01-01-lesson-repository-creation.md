---
layout: bare
title: Building a New Local Repository
description: Creating a new local repository.
path: technology/_posts/2001-01-01-lesson-repository-creation.md
---

## Creating a regular repository
    mkdir anewproject
    cd anewproject
    git init

## Creating a bare repository for hosting (not interacting with locally)
or Naked, no local files, and with group UNIX permissions for headless use

    git --bare init --shared
    
And once pushed to another location, you'll want it *tracked*, which can be done manually via editing the `.git/config file` or by issuing these commands:

    git config branch.master.remote origin
    git config branch.master.merge refs/heads/master

## Creating a free hosted repo
Hosting for Git repositories can be found at a number of sites on the web. A canonical list is maintained at [the official Git site](http://git.wiki.kernel.org/index.php/GitHosting).

The one we'll use today is [GitHub](https://github.com/githubtraining/hellogitworld).

I've already set up a repository for us to try:

    git clone https://github.com/githubtraining/hellogitworld.git
