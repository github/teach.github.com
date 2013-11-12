---
layout: bare
title: DDD Denver Meetup
description: DDD Denver Meetup Class Notes
tags: [notes]
path: classnotes/2013-11-11-ddd-denver-meetup.md
eventdate: 2013-11-11
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
* Rebasing
* Interactive rebase

## Command History

    mkdir ddd
    cd ddd
    mkdir .git
    tr.git
    cd scratch/ddd
    ls -a
    while :\ndo\nclear\ntree .git\nsleep 1\ndone
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    git help hash-object
    echo "So. The Spear-Danes in days gone by had courage and greatness." | git hash-object --stdin -w
    git cat-file -p c023
    cat .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    zinflate .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    git update-index --add --cacheinfo 100644 c023c23a67e64dc4af96c2932a3292e42039321b beowulf.txt
    git write-tree
    git cat-file -p f419
    git cat-file -t f419
    git cat-file -t c023
    git commit-tree f419e48cc86ee4d9c14295b58d74a6ec945a5b45 -m "Hipster commit"
    cat .git/HEAD
    echo
    echo f7b637d6932f526ead7e295fac827235355991f4 > .git/refs/heads/master
    git log
    git log --patch
    git checkout f7b637 -- beowulf.txt
    cat beowulf.txt
    git status
    git cat-file -p f7b6
    git loglive
    tree .git/refs
    cat .git/refs/heads/master
    echo f7b637d6932f526ead7e295fac827235355991f4 > .git/refs/heads/feature
    vi .git/HEAD
    git branch
    git add raven.txt
    git commit -m "Bleak"
    vi raven.txt
    git add .
    git commit -m "Silky sad"
    vi beowulf.txt
    git add beowulf.txt
    git commit -m "Noble"
    git reset --hard fe7b
    git checkout feature
    git rebase master
    ls
    git log -p
    git rebase -i fe7b
    git checkout
    git checkout master
    git merge feature
    git lol
    tree .git/objects
    git reflog
