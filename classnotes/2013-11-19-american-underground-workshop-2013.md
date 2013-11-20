---
layout: bare
title: American Underground Workshop 2013
description: American Underground Workshop 2013 Class Notes
tags: [notes]
path: classnotes/2013-11-19-american-underground-workshop-2013.md
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
* How to clone repositories 
* How to perform basic Git operations from the command line.
* Branching strategeries
* How pull requests work
* What you can do with GitHub Issues
* Rebasing
* Social dimensions

## Command History

    git clone https://github.com/githubteacher/durham.git
    cd durham
    git commit -m "Eager"
    git log
    git log --format=raw
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --oneline
    git log --graph --decorate --oneline --all
    git config --global alias.lol "log --graph --decorate --oneline --all"
    ls
    git add raven.txt
    git commit -m "Surcease of sorrow"
    cat raven.txt
    git branch chesterton
    git branch
    git commit -n "Purple vine"
    git commit -m "Purple vine"
    vi raven.txt
    git commit -m "Nameless"
    git fetch
    git checkout chesterton
    git push --set-upstream origin chesterton
    ll
    git commit -m "Tepid Milk"
    git push
    git pull
    git branch -d chesterton
    git fetch --prune
    git checkout -b chesterton
    git commit -m "Whose curls?"
    git checkout master
    vi ch
    git add .
    git commit -m "Love"
    git merge chesterton
    vi ascetic.txt
    git add ascetic.txt
    git commit
    git lol

