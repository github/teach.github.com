---
layout: bare
title: The Reflog
description: Using the reflog local journal of changes to recover from mistakes.
path: technology/_posts/2001-01-01-lesson-git-reflog.md
---

## The Reflog
The `reflog` is the transactional journal of what's been performed on your repository, including all `reset`, `commit`, `merge`, and `rebase` commands. It can be used to identify a treeish to `reset` to (a known point specified by `HEAD@{X}`).

To show the current contents of the current branch's reflog:

    $ git reflog

    fe75fc7 HEAD@{0}: checkout: moving from testbranch1 to master
    72f010a HEAD@{1}: commit: A random change of 5699 to other2.txt
    cbb3399 HEAD@{2}: commit: A random change of 11315 to other1.txt
    fe75fc7 HEAD@{3}: checkout: moving from master to testbranch1
    fe75fc7 HEAD@{4}: reset: moving to fe75fc7
    9144f73 HEAD@{5}: rebase -i (finish): returning to refs/heads/master
    9144f73 HEAD@{6}: rebase -i (squash): A random change of 8931 to sample3.txt and more
    23633b4 HEAD@{7}: checkout: moving from master to 23633b4
    fe75fc7 HEAD@{8}: reset: moving to fe75fc7
    23633b4 HEAD@{9}: reset: moving to HEAD@{2}
    fe75fc7 HEAD@{10}: commit: A random change of 6471 to sample5.txt
    39612fa HEAD@{11}: commit: A random change of 31197 to sample4.txt
    23633b4 HEAD@{12}: commit: A random change of 8931 to sample3.txt
    a999751 HEAD@{13}: commit: A random change of 14259 to sample2.txt
    026e282 HEAD@{14}: commit (initial): A random change of 10009 to sample1.txt

To return to an earlier state of history for this branch:

    git reset --hard HEAD@{3}

or

    git reset --hard fe75fc7

This will forcefully update the working tree and branch pointer of the currently checked out branch.  Note that even `git reset --hard` will write a new top-of-the-list reflog entry, thus allowing for an easy toggling between "old" and "new" states of the repository. This is the ultimate in prevention of loss of history, even when making a mistake in attempting a recovery or restoration to an old state. Just `git reset --hard` yet again to the correct state and you are on your way.

### Not Network Enabled

Users are sometimes surprised that the reflog information is not transmitted on `push` or `pull` invocations to the upstream repository. However, each user's actions are a reflection of what she has done and are of little interest to the committers to the shared upstream repository. Other users are only concerned with the commits (not individual forward-and-back actions) that brought everyone to the current shared understanding of the repository.

### Expiration of Entries

Reflog entries are [kept for 90 days](https://www.kernel.org/pub/software/scm/git/docs/git-reflog.html), though it is uncommon for developers to use entries farther back than a few days.

### Reflog Screencast

<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/LIxxxMEoMMo?rel=0" frameborder="0" allowfullscreen></iframe>

### Resources and References
* [ProGit • Reflog Commit References](http://git-scm.com/book/en/Git-Tools-Revision-Selection#RefLog-Shortnames)
* [Jeff Kreeftmeijer • The Mighty Reflog](http://jeffkreeftmeijer.com/2010/the-mighty-reflog-and-the-amazing-bisect/)
* [GitFu • Git Reflog - No Commits Left Behind](http://gitfu.wordpress.com/2008/04/06/git-reflog-no-commits-left-behind/)
* [Fiji • Git Reflogs](http://fiji.sc/wiki/index.php/Git_reflogs)
* [Al's Git Tip of the Week](http://alblue.bandlem.com/2011/05/git-tip-of-week-reflogs.html)
* [Sitaram's Git Concepts](http://sitaramc.github.com/concepts/reflog.html)
* [Git Ready • Reflog](http://gitready.com/intermediate/2009/02/09/reflog-your-safety-net.html)
