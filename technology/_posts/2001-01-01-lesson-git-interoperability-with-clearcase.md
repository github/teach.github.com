---
layout: bare
title: Interoperability with ClearCase
description: Git's interoperability with ClearCase.
path: technology/_posts/2001-01-01-lesson-git-interoperability-with-clearcase.md
---

* Conversion Tools
  * [CMBridge](http://www.clearvision-cm.com/clearcase-subversion-git-mercurial-integration.html)
    * Commercial tool
    * Round-trip conversion
    * SVN and Git support
  * A workflow that uses [ClearCase for checkouts and Git for desktop version control](http://genaud.net/2008/08/clearcase-globally-git-locally/)
    * Merely a manual way of working with the two systems
    * Puts strain on the developer to maintain state in Git and push back to CC as needed
    * Can require locking
  * [Another workflow](http://www.turbodad.com/articles/24/12-revision) that slightly improves on the previous one
    * Still no real automation
    * Burdens the developer
    * But doesn't require the approval, purchase or download of any bridging tools
  * [git-cc scripts](http://github.com/charleso/git-cc)
    * Provides `gitcc` script.
    * Offers convenience "bridge" functions to put changes back into CC, treating it as the source-of-record.
    * Similar to the git-svn bridge that is part of the official Git distribution
  * [git-clearcase bridge](http://gitorious.org/git-clearcase)
    * [Readme](http://gitorious.org/git-clearcase/git-clearcase/blobs/master/README)
    * Perl based
    * Only works with one view
    * No history import
    * `gitclearcase initcc` to start
    * `gitclearcase pullcc` to push changes back in (checkout, merge, checkin to CC)
    * If conflicts, resolve, then `gitclearcase commitcc`    
  * Native Git conversion
    * Write your own scripts
    * git fast-import
  
  * [A ClearCase for Git blog post](http://blog.charleso.org/2008/10/clearcase-for-git.html/) and associated [code](https://github.com/charleso/git-cc/tree/master)
  * 
