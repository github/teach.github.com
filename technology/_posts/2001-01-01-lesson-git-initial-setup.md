---
layout: bare
title: Setting up Git
description: Git binaries and basic configuration.
path: technology/_posts/2001-01-01-lesson-git-initial-setup.md
---

## Get binaries

### On UNIX

* Compiling from Source
    * [Web UI to browse source](http://git.kernel.org/?p=git/git.git;a=summary)
    * Git repo for source: `git://git.kernel.org/pub/scm/git/git.git`
    * Zipped source packages: `http://kernel.org/pub/software/scm/git/`
    * Run `make`
    * Then run `make install`
 * Binaries from a Package manager
    * `apt-get git-core`
    * `apt-get git-gui`
    * `apt-get git-doc`
    * `apt-get git-svn`

### On Mac

  * [git-osx-installer](http://code.google.com/p/git-osx-installer/) (precompiled)
  * [MacPorts](http://www.macports.org/) (user-compiled)
  * [HomeBrew](http://github.com/mxcl/homebrew) (user-compiled)

### On Windows

  * Two [msysGit](http://msysgit.github.com) choices: a full toolkit, or just a precompiled distribution.
  * [Precompiled](http://code.google.com/p/msysgit/downloads/list?q=full+installer+official+git) is named "Git-XXXexe"
  
If you get stuck, the [help pages at GitHub](http://help.github.com/) can assist.


## Configuring your Git username and email address
Establish the one-time parameters stored in your home directory:

    git config --global user.name "Your Name"
    git config --global user.email "you@example.com"
    git config --global color.ui "auto"

View our handiwork

    echo ~/.gitconfig
