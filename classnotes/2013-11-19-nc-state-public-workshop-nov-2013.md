---
layout: bare
title: NC State Public Workshop Nov 2013
description: NC State Public Workshop Nov 2013 Class Notes
tags: [notes]
path: classnotes/2013-11-19-nc-state-public-workshop-nov-2013.md
eventdate: 2013-11-19
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

* Convert an existing project to a Git Repository
* Track changes to your project
* Protect your work from experimental changes through branching
* Push code to repositories on GitHub
* Collaborate with colleagues through Pull Requests
* Best practices for teams
* Reset and reflog


## Command History

    git --version
    mkdir project
    vi raven.txt
    git init .
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    git commit -m "Initial commit"
    git commit -m "Borrowed books"
    git help log
    git log --format=raw
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --oneline
    git log --graph --decorate --oneline --all
    pwd
    git loglive
    git branch feature
    git commit -m "Rare and radiant"
    git checkout feature
    git commit -m "Title"
    git commit -m "Forgotten lore"
    git checkout master
    git merge feature -m "Merged"
    git branch -d feature
    history
    git config --global alias.lol "log --graph --decorate --oneline --all"
    git config --local --list
    git config --global --list
    vi ~/.gitconfig
    git commit -m "Taping"
    git commit --amend
    ls -la
    git remote add origin https://github.com/githubteacher/nc-state.git
    git remote
    git remote -v
    git push --set-upstream origin master
    git log
    git branch
    git branch -r
    git branch -a
    git commit -m "Gentle rapping"
    git config --global push.default simple
    git commit -m "Purple curtains"
    git fetch
    git config --global credential.helper cache
    git config --global --unset credential.helper
    tr.git
    export PS1="$ "
    cd scratch
    ll
    cd project
    cd ..
    git clone https://github.com/githubstudent/nc-state.git
    cd nc-state
    ls
    git commit -m "Terrors"
    git commit -m "Trying to chill"
    git loglive -15
    git loglive -13
    gcc gowolfpack.c
    sudo gcc gowolfpack.c
    git pull https://github.com/githubstudent/nc-state.git master
    git status
    git add raven.txt
    git commit -m "Merged PR"
    git loglive -12
    git pull
    git lol
    git remote add teacher https://github.com/githubteacher/nc-state.git
    git pull teacher master
    git push
    git commit -m "Late visitor"
    git reset --hard 5c82
    cat raven.txt
    git reflog
    git reset --hard ad69f6f
    vi raven.txt
    git add .
    git commit -m "Fixed late visitor"

