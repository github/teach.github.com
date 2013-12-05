---
layout: bare
title: CDX Git from the Bits Up
description: CDX Git from the Bits Up Class Notes
tags: [notes]
path: classnotes/2013-12-04-cdx-git-from-the-bits-up.md
eventdate: 2013-12-04
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

## Resources

* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [Using Git with Media Temple](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Jenkins Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.8.0 or higher

## Suggested Books, Articles
* [Free ProGit Book](http://git-scm.com/book)
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline

* Commit without `commit`
* One cool `log` command
* `reset` and `reflog`
* `rebase`
* Hooks



## Command History

    mkdir repo
    mkdir .git
    ls -la
    cd repo
    while :\ndo\nclear\ntree .git\nsleep 1\ndone
    tree .git
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    git help hash-object
    echo "So. The Spear-Danes in days gone by had courage and greatness."
    echo "So. The Spear-Danes in days gone by had courage and greatness." | git hash-object --stdin -w
    git cat-file -p c023
    git cat-file -s c023
    git cat-file -t c023
    git update-index --add --cacheinfo 100644 c023c23a67e64dc4af96c2932a3292e42039321b beowulf.txt
    git write-tree
    git cat-file -p f419
    git commit-tree f419e48cc86ee4d9c14295b58d74a6ec945a5b45 -m "Initial commit"
    git cat-file c5e3
    git cat-file -p c5e3
    cat .git/HEAD
    echo c5e3e15c5dacf05ab171cafde078588761cf6f11 > .git/refs/heads/master
    git checkout HEAD -- beowulf.txt
    cat beowulf.txt
    cat `which git-loglive`
    git loglive
    git config alias.lol
    git config --global alias.lol "log --graph --oneline --decorate --all"
    vi beowulf.txt
    git commit -m "Noble campaigns"
    gitlog
    git log
    echo e27121ce7992f94b54f125ef4964aeeb6fbc8b6f > .git/refs/heads/feature
    git commit -m "Added README"
    git commit -m "Bleak"
    git rebase master
    generaterandomchanges 10 junk txt
    git rebase -i f71a
    git branch
    vi .git/refs/heads/master
    git reset --hard HEAD^
    git checkout feature
    git reset --hard 0a7d908
    ld
    git reset --hard HEAD@{1}
    git reflog
    tree .git/HEAD
    git init monkey
    cp -r monkey/.git/hooks repo/.git
    cd repo/.git/hooks
    mv commit-msg.sample commit-msg
    ls
    vi commit-msg
    git commit -m "Morrow"
    git commit -m "Morrow monkey"
    vi .git/hooks/commit-msg
    .git/hooks/commit-msg "Morrow "
    .git/hooks/commit-msg "Morrow monkey"
    vi .git/hooks/pre-commit.sample
    cd .git/hooks
    mv commit-msg commit-msg.sample
    tree .git/re
    pwd
    cd ../..
    tree .git/refs
    gitk
    gitk --all
    git log -- raven.txt

