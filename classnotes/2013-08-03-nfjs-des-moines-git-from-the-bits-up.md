---
layout: bare
title: NFJS Des Moines Git from the Bits Up
description: NFJS Des Moines Git from the Bits Up Class Notes
tags: [notes, conference, nfjs]
path: classnotes/2013-08-03-nfjs-des-moines-git-from-the-bits-up.md
eventdate: 2013-08-03
---

## Teachers
* Tim Berglund ([Twitter](https://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

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
* [Git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
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

* Commit without `commit` (Git internals)
* `rebase`
* Various ways to squash
* Reflog and the universal undo (`reset`)
* `cherry-pick`
* `revert`
* `stash`
* Hooks

## Command History

    ls -la
    mkdir .git
    cd .git
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    echo "So. The Spear-Danes in days gone by had courage and greatness."
    git help hash-object
    echo "So. The Spear-Danes in days gone by had courage and greatness." | git hash-object --stdin -w
    git cat-file -p c023c23a67e64dc4af96c2932a3292e42039321b
    git update-index --add --cacheinfo 100644 c023c23a67e64dc4af96c2932a3292e42039321b beowulf.txt
    git write-tree
    git cat-file -t
    git cat-file -t f419e48cc86ee4d9c14295b58d74a6ec945a5b45
    git cat-file -p f419e48cc86ee4d9c14295b58d74a6ec945a5b45
    git commit-tree f419e48cc86ee4d9c14295b58d74a6ec945a5b45 -m "Hipster commit"
    git cat-file -p 365e9ce07a05cf91f113905bea527dda0fe46703
    cat .git/HEAD
    echo 365e9ce07a05cf91f113905bea527dda0fe46703 > .git/refs/heads/master
    git checkout HEAD -- beowulf.txt
    git log --format=raw
    git loglive
    cat `which git-loglive`
    tree .git/refs
    git log
    echo 365e9ce07a05cf91f113905bea527dda0fe46703 > .git/refs/heads/feature
    mkdir files
    cd files
    generaterandomchanges 8 random txt
    pwd
    cd ..
    git commit -m "Noble princes"
    git rebase master
    git branch adopted bf045bb
    rm .git/refs/heads/adopted
    git rebase -i c62d8
    git commit --amend
    git show c62d
    git show c62d --color-words
    git reset --hard bf045bb
    git merge feature --squash
    git reset HEAD files/random6.txt
    git clean -f
    git commit -m "Random files 1-5,7-8"
    git branch -D feature
    git reset --hard HEAD^
    git branch feature c62d866
    git branch -d feature
    git reflog
    git branch feature bf045bb
    git cherry-pick 1b927db
    git show HEAD
    git show 1b927db
    git merge feature
    git revert 9813e8c
    ls files
    git checkout
    vi README.md
    git stash -a
    git branch
    vi checkout master
    git checkout master
    vi beowulf.txt
    git add .
    git commit -m "Sheafson"
    git checkout feature
    git lol
    git stash pop
    ls
    git status



