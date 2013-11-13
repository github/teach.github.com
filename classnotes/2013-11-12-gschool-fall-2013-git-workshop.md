---
layout: bare
title: gSchool Fall 2013 Git Workshop
description: gSchool Fall 2013 Git Workshop Class Notes
tags: [notes]
path: classnotes/2013-11-12-gschool-fall-2013-git-workshop.md
eventdate: 2013-11-12
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
* [Quick Look at Issues](https://www.youtube.com/watch?v=TJlYiMp8FuY)

## Outline

* Push and Pull For Reals
* Merge conflicts
* Advanced PR Tricks
* Issues and project management
  * Katrina gets a Christmas fruit basket
  * Issues
  * Notifications
  * etc.
* Workflows
  * What even is a branch?
  * What even is a fork?
  * What is a release? <-- this is the real question
* Internals (commit without `commit`)


## Command History

    git init gschool
    cd gschool
    git commit -m "December"
    git config alias.lol
    git config --global alias.lol "log --oneline --graph --decorate --all"
    pwd
    cd ../gschool
    git loglive
    git remote add origin https://github.com/githubteacher/gschool.git
    git config credential.helper
    git config --global credential.helper cache
    git help push
    git push --set-upstream origin master
    git push -u origin master
    git branch -r
    git branch -a
    cat .git/config
    git diff origin/master
    git checkout origin/master
    cat raven.txt
    git checkout origin/master
    git branch oops e53ce1a
    git merge origin
    git bracnh
    git branch
    git commit -m "Sad"
    git branch -D oops
    git lol
    git log --decorate
    git log --decorate --graph
    git log --decorate --graph --format=raw
    cat ~/scripts/git-loglive
    git fetch
    git pull
    git log --format=raw -1
    git push
    git branch feature
    git commit -m "Quaint"
    git checkout feature
    git commit -m "Napping"
    git checkout master
    git merge feature
    git statsu
    git commit
    git reset --hard e756c94
    git reset --hard HEAD@{1}
    git reset --hard
    git merge feature
    git difftool
    rm raven.txt.B*
    rm raven.txt.L*
    rm raven.txt.R*
    ll
    git config --global merge.tool p4merge
    p4merge
    which p4merge
    cat `which p4merge`
    git config --global mergetool.keepBackup false
    git config --global mergetool.keepTemporaries false
    git config --global mergetool.prompt false
    git mergetool
    kdiff3
    git branch -d feature
    git reflog
    git reset --hard origin/master
    git pull
    git merge --abort
    git pull https://github.com/githubstudent/gschool.git more-features
    git ls-remote origin
    git pull origin refs/pull/1/head
    git add raven.txt
    git commit
    vi raven.txt
    git add .
    git commit -m "Lenore"
    git commit --amend
    git push
    git help add
    cd ..
    mkdir repo
    cd repo
    while :\ndo \nclear\ntree .git\nsleep 1\ndone
    mkdir .git
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    echo "I met a traveler from an antique land" | git hash-object --stdin -w
    cat .git/objects/54/1ffbe0feb4effa31849017c9a31924266ec3eb
    zinflate .git/objects/54/1ffbe0feb4effa31849017c9a31924266ec3eb
    git update-index --add --cacheinfo 100644 541ffbe0feb4effa31849017c9a31924266ec3eb ozymandias.txt
    git write-tree
    git commit-tree 97e7b254f1e6eec41fbd99528e5dccbaf3975ed2 -m "Initial commit"
    git show 27f21382d9455cc2bae37b810a8aa5d78bc67cb8
    cat .git/HEAD
    echo 27f21382d9455cc2bae37b810a8aa5d78bc67cb8 > .git/refs/heads/master
    git log
    git checkout HEAD -- ozymandias.txt
    ls
    git status
