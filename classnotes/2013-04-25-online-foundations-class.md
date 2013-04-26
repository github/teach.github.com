---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-25-online-foundations-class.md
eventdate: 2013-04-25
---

## Teachers
* Matthew McCullough
* Jason Salaz

## Resources
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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)
* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false


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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command Line History - Day One

    git --version
    git config user.name
    git config user.email
    git config --global user.name "Matthew J. McCullough"
    git config user.name
    pwd
    git init project1
    open .
    cd project1
    git status
    cd ..
    git status
    cd project1
    clear
    vim first.txt
    git status
    git add .
    git status
    git commit -m "My first commit"
    git status
    ls
    clear
    vim first.txt
    git status
    git add first.txt
    git status
    git reset HEAD first.txt
    cat first.txt
    git add -p
    git status
    git commit -m "Fix part one"
    git add .
    git commit -m "Fix part two"
    git status
    clear
    git log
    git show 32f3ca
    git status
    vim first.txt
    git diff
    git add .
    git diff
    git status
    git reset HEAD first.txt
    git diff
    git diff --color-words
    git add -p 
    git status
    git diff 
    git diff --staged
    git diff HEAD
    git diff --staged
    git diff 
    git diff HEAD
    git commit -m "Part of the changes"
    git commit -a -m "The rest of the changes"
    git status
    clear
    git log
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --format=raw
    clear
    git log -1
    git log -3
    git log -3 --oneline
    clear
    git graphlive 20
    cd project1
    git graphlive 20
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    clear
    ls
    git status
    git add -A .
    git status
    git commit -m "Renamed it"
    git status
    git add -A .
    git status
    git commit -m "Changes with rename"
    clear
    git reset --hard
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git hgwstudentfromcli
    ls
    cd hgwstudentfromcli
    git log
    pwd
    git log -1
    clear
    ls
    vim matthewfirstcontrib.txt
    git add .
    git commit -m"Change from CLI"
    git push 
    gitk
    git gui
    clear
    git branch
    git branch -r
    git pull
    cat matthewfirstcontrib.txt
    head matthewfirstcontrib.txt

## Chat History - Day One
    TBD

## Command Line History - Day Two
    TBD

## Chat History - Day Two
    TBD
