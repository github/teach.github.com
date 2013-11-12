---
layout: bare
title: Motorola AppForum 2013 GitHub
description: Motorola AppForum 2013 GitHub Class Notes
tags: [notes]
path: classnotes/2013-11-06-motorola-appforum-2013-github.md
eventdate: 2013-11-06
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

* Why is Git so cool?
* Make a local Git repository
* Create and commit content
* Compare differences
* Look at history <-- SOOPER IMPORTANT
* Branch and merge
* GitHub <-- COLLABORATION


## Command History

    git init appforum
    cd appforum
    ls -la
    git commit -m "Initial commit"
    git commit -m "Eagerly wished"
    git diff
    git diff --staged
    git commit -m "Rare and radiant"
    git log
    git help log
    git log --graph
    git log --graph --format=raw
    git log --graph --decorate
    git log --graph --decorate --oneline
    git log --graph --decorate --oneline --all
    git lol
    git config --global alias.lol "log --oneline --graph --decorate --all"
    git loglive
    pwd
    tr.git
    cd scratch/appforum
    git loglive
    git branch feature
    git branch
    git commit -m "Nameless"
    git commit -m "Title"
    git merge feature -m "Merg'd"
    git stash
    git stash pop
    git status
    git commit -m "Silky"
    ls -l
    git remote add origin https://github.com/githubteacher/appforum.git
    ls -a
    git push --set-upstream origin master
    git config --global --unset branch.autosetuprebase
    git config --unset branch.master.rebase
    git branch feature
    git checkout feature
    ls
    git add raven.txt
    git commit -m "Fantastic terrors"
    git push --set-upstream origin feature
    vi raven.txt
    git add .
    git commit -m "Beating"
    git push
    git checkout master
    git fetch
    git pull
    cat raven.txt
    git lol
    git branch -d feature
    git fetch --purge
    git fetch --prune





