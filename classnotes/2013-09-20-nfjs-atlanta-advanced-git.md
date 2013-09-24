---
layout: bare
title: NFJS Atlanta Advanced Git
description: NFJS Atlanta Advanced Git Class Notes
tags: [notes]
path: classnotes/2013-09-20-nfjs-atlanta-advanced-git.md
eventdate: 2013-09-20
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
* What even is .git?
* What even is a commit?
* Rebasing
* Interactive rebasing
* Hooks (the good, the bad, the less-than-attractive)
* What happens when I push/pull/fetch?
* What does fast-forward mean?


## Command History

    git init nfjs
    git clone https://github.com/tlberglund/anxious-cows
    cd anxious-cows
    ll
    ls -la
    cd .git
    cd nfjs
    ls -a
    mkdir repo
    mkdir .git
    ll -a
    mkdir .git/objects
    mkdir -p .git/refs/heads
    echo  "ref: refs/heads/master" > .git/HEAD
    git help log
    git help hash-object
    rm -rf .git/objects/*
    tree .git
    while:
    while :\ndo\nclear
    cd repo
    while :\ndo \nclear\ntree .git\nsleep 1\ndone
    echo "So. The Spear-Danes in days gone by had courage and greatness.     hash-object -w --stdin
    git cat-file -p c023c23
    git cat-file -t c023c23
    cat .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    ~/scripts/zinflate .    ects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    git update-index --add --cacheinfo 100644     a67e64dc4af96c2932a3292e42039321b poems/beowulf.txt
    git write-tree
    git cat-file -p b4fa0b55d9112a4289a6245b5ead68b63272048d
    git cat-file -p f419e48cc86ee4d9c14295b58d74a6ec945a5b45
    git commit-tree b4fa0b55d9112a4289a6245b5ead68b63272048d -m     r commit"
    git show 1b770f96ed81c0c583e6364c753639d1cbe3a2c9
    cat .git/HEAD
    echo 1b770f96ed81c0c583e6364c753639d1cbe3a2c9 > .   s/heads/master
    cat .git/refs/heads/master
    git branch
    git log
    git checkout HEAD -- poems/beowulf.txt
    git help checkout
    ls
    cat poems/beowulf.txt
    vi poems/beowulf.txt
    git add poems/beowulf.txt
    git cat-file -p f419e
    git cat-file -p 0465
    git log --format=raw
    git loglive
    cat ~/scripts/git-loglive
    git branch feature
    tree .git/refs
    vi README.md
    git commit -m "Added a README"
    vi poems/raven.txt
    git add .
    git commit -m "Raven"
    git cat-file -p 8c4480b
    git cat-file -p HEAD
    git reset --hard 4133
    tree
    git checkout feature
    git rebase master
    git checkout master
    git merge feature
    mkdir files
    cd files
    generaterandomchanges 10 random txt
    git branch -d feature
    git rebase -i 81c0ef
    vi random9.txt
    git status
    git add random9.txt
    git rebase --continue
    git rebase -i HEAD~2
    git lol
    cd ..
    pwd
    cd ../nfjs
    ll .git/hooks
    ls .git/hooks
    subl .git/hooks/pre-commit.sample
