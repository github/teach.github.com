---
layout: bare
title: Reston NFJS Fall 2013 Advanced Git
description: Reston NFJS Fall 2013 Advanced Git Class Notes
tags: [notes]
path: classnotes/2013-11-02-reston-nfjs-fall-2013-advanced-git.md
eventdate: 2013-11-02
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
* Fun `log` tricks
* Rebase
* `reflog`/`reset`
* Broken state recovery (`fsck`)
* `push` defaults
* Expunging large assets
  * Video on accident. Asking for a friend.
  * `filter-branch`
* Default `config` (aka bedtime reading FTW)

* Why would I even write my own merge command/merge strategeries
* How to merge/branch/love your neighbor

## Command History

    mkdir repo
    mkdir .git
    cd repo
    while :\ndo\nclear\ntree .git\nsleep 1\ndone
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    echo "So. The Spear-Danes in days gone by had courage and greatness."
    echo "So. The Spear-Danes in days gone by had courage and greatness." | git hash-object --stdin -w
    git cat-file -t c023c23a67e64dc4af96c2932a3292e42039321b
    git cat-file -p c023c23a67e64dc4af96c2932a3292e42039321b
    cat .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    zinflate .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    git update-index --add --cacheinfo 100644 c023c23a67e64dc4af96c2932a3292e42039321b beowulf.txt
    cat .git/index
    git cat-file -t f419
    git cat-file -p f419
    git commit-tree f419e48cc86ee4d9c14295b58d74a6ec945a5b45 -m "Initial commit"
    cat .git/HEAD
    echo f10bfb45ac5baebd0f67c252f7076d27a90b9d61 > .git/refs/heads/master
    git checkout HEAD -- beowulf.txt
    ls
    cat beowulf.txt
    git status
    cat beowulf.txt|git hash-object -w --stdin
    git update-index --add --cacheinfo 100644 0465a850cba420e3e2e569bcc4584816f333eff5 beowulf.txt
    git write-tree
    git commit-tree 4c096f83441cba88567fa2c534d1508d37e7bfe2 --parent f10bfb45ac5baebd0f67c252f7076d27a90b9d61 -m "Noble campaigns"
    git help commit-tree
    git commit-tree 4c096f83441cba88567fa2c534d1508d37e7bfe2 -p f10bfb45ac5baebd0f67c252f7076d27a90b9d61 -m "Noble campaigns"
    echo 2353adf054fc13ca92fafc9c9b5a30404be3d6c1 > .git/refs/heads/master
    git log --format=raw
    git log --format=raw -1
    git cat-file -p 2353adf054fc13ca92fafc9c9b5a30404be3d6c1
    git log
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --oneline
    git log --graph --pretty --oneline
    git log --pretty
    git log --pretty=oneline
    git log --format=oneline
    git log --format=oneline --abbrev-commit
    git log --format=oneline --abbrev-commit --decorate
    git log --format=oneline --abbrev-commit --decorate --graph
    git log --format=oneline --abbrev-commit --decorate --graph --all
    git config alias.lol
    vi ~/scripts/git-loglive
    git loglive
    git find-object
    git branch feature
    cat .git/refs
    ll .git/refs/heads
    ls .git/refs/heads
    tree .git/refs
    vi beowulf.txt
    git commit -m "Title"
    git checkout feature
    git commit -m 'Raven start'
    mkdir files
    cd files
    generaterandomchanges 4 random txt
    vi random
    cd ..
    vi raven.txt
    git add .
    git commit -m "Embers"
    git rebase master
    git rebase -i eebf
    git reset --hard b540dd8
    git reflog
    git reset --hard d4bc35c
    ls .git
    git fsck
    git config push.default
    git lol
    git help config
    git config --local branch.feature.rebase true
