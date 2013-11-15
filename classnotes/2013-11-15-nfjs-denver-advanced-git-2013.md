---
layout: bare
title: NFJS Denver Advanced Git 2013
description: NFJS Denver Advanced Git 2013 Class Notes
tags: [notes]
path: classnotes/2013-11-15-nfjs-denver-advanced-git-2013.md
eventdate: 2013-11-15
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
* Rebase
* Interactive rebase
* Fun with logging
* Stash
* Merging without conflict
* Branching strategies


## Command History

    mkdir repo
    mkdir .git
    ls -la
    while :\ndo\nclear\ntree repo/.git\nsleep 1\ndone
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    echo "So. The Spear-Danes in days gone by had courage and greatness."
    echo "So. The Spear-Danes in days gone by had courage and greatness." | git hash-object --stdin -w
    git cat-file -p c023c23a67e64dc4af96c2932a3292e42039321b
    cat .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    git update-index --add --cacheinfo 100644 c023c23a67e64dc4af96c2932a3292e42039321b beowulf.txt
    git write-tree
    git cat-file -t f419e48cc86ee4d9c14295b58d74a6ec945a5b45
    git cat-file -p f419e48cc86ee4d9c14295b58d74a6ec945a5b45
    git commit-tree f419e48cc86ee4d9c14295b58d74a6ec945a5b45 -m "Initial commit"
    git cat-file -p 4cabb5e545f874ca1e961b100ade6cc3847d0872
    cat .git/HEAD
    echo 4cabb5e545f874ca1e961b100ade6cc3847d0872 > .git/refs/heads/master
    git checkout HEAD -- beowulf.txt
    cat beowulf.txt
    vi beowulf.txt
    git add beowulf.txt
    git commit -m "Noble campaign"
    git cat-file -p 8503013
    git log
    git loglive
    cat `which git-loglive`
    git branch feature
    git branch
    git commit -m "Added README"
    git log --graph --oneline --decorate --all
    git config --global alias.lol "log --oneline --graph --decorate --all"
    git commit -m "Bleak"
    git commit -m "Silky"
    git show 6fb2c70
    git show 89a3
    git log -p
    git rebase -i a30e9cf
    git lol
    git checkout -b complex
    generaterandomchanges 10 random txt
    git rebase -i HEAD~10
    git reset --hard 8505e74
    ls random6.txt
    git reflog
    git reset --hard HEAD@{1}
    git merge complex
    rm .git/refs/heads/complex
    mkdir files
    ls
    git mv random*.txt files/
    git commit -m "Moved the things"
    git branch feature 184b9
    cd ..
    vi repo
    cd repo
    git status
    git stash
    tree .git/refs
    vi .git/refs/stash
    vi
    ll
    vi README.md
    git commit -m "Production fix"
    git checkout feature
    git stash list
    git stash pop
    vi ra
    vi raven.txt
    git add .
    git commit -m "Dying ember"
    git rebase master
    git checkout master
    git merge feature
    git branch -d feature




