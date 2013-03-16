---
layout: bare
title: Git and GitHub Foundations Online
description: Git and GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-03-14-online-git-foundations.md
eventdate: 2013-03-14
---

Teachers:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brentbeer))

## Outline
* History and Intro
* Installing and configuring
* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Understanding Git's Content Tracking
* Moving and copying files
* Branching and Merging in Git
* Establishing upstream repositories
* Push, pull, and fetch
* RefLog as a safety net
* Stash for work-in-progress
* Reset
* Collaboration through Pull Requests
* Graphical merge/diff tools

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

# Command Line History, Day 1

    git config --list
    echo Matthew has no idea how to be minimal
    echo Brent is a 5 minimalist
    git config user.name
    git config user.email
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    cat ~/.gitconfig
    cat ~/.gitconfig | more 
    git config --local
    git config --local --list
    echo YOU ARE NOT IN A GIT REPO YET
    git config --list
    echo looking local (nothing), then look global, then system
    echo "looking local (nothing), then look global, then system"
    git init newproject
    open .
    cd newproject
    git config --local --list
    cd ..
    mkdir oldproject
    cd oldproject
    touch main.java
    touch build.xml
    git init 
    to.scratch
    cd oldproject
    tree .git
    git add .
    git status
    git commit -m "Our first commit"
    cd ..
    cd newproject
    vim first.txt
    git status
    git add first.txt
    git commit -m "My first commit in the new repo"
    echo We just committed only to our LOCAL machine
    echo My team members will never push their changes
    git add .
    echo "That just added everything modified"
    echo "That just added everything modified or new"
    git status
    touch abrandnewfile.txt
    git status
    git add .
    git status
    git commit -m "One more file"
    vim first.txt
    git status
    git diff
    git diff --color-words
    github
    git sttaus
    git status
    git diff --color-words
    git diff
    git add --patch
    git gui
    git status
    git log -1
    vim first.txt
    git status
    git diff
    git add -p 
    git status
    git diff 
    git diff --staged
    git gui
    git status
    git commit -m "Only the staged changes"
    git status
    git add first.txt
    git commit -m "The rest of the changes"
    git status
    vim first.txt
    git status
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git add -p first.txt
    git status
    git diff --stat
    git diff --stat --staged
    git log
    git log --format=full
    git log --format=fuller
    git log --format=raw
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --oneline
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline
    git log -1
    git log -2
    git log -2 HEAD
    git log -2 HEAD~3
    git log -2 HEAD~90
    cp first.txt second.txt
    git add .
    git commit -m "Copied the first file"
    git status
    git rm second.txt
    git status
    git add -u .
    git status
    git commit -m"Deleting a bunch of files"
    git rm --cached -- first.txt
    git status
    git reset --hard
    git status
    git status
    git add -A .
    git status
    git commit -m "Renamed ALL OF THE THINGS"
    git log --stat
    git log --stat --no-find-renames
    git status
    git add .
    git status
    git commit -m "Copied the file"
    git log -1 --stat
    git log -1 --stat -C
    git log -1 --stat --find-copies-harder
    git log -- src/abrandnewfile-copy.txt
    git log --follow -- src/abrandnewfile-copy.txt
    git log --stat --follow -- src/abrandnewfile-copy.txt
    git status
    cd src
    echo STUFF >> stuff.txt
    git status
    git add stuff.txt
    echo "It walks upwards until it finds a .git folder. That's the top"
    cd .
    cd ..
    touch outout.log
    git status
    rm src/stuff.txt
    git status
    git reset --hard
    git status
    vim .gitignore
    git status
    git add .gitignore
    git commit -m "Ignoring all log files"
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git hwgstudent
    cd hwgstudent
    git log -2
    vim matthewm.txt
    git add matthewm.txt
    git commit -m "Matthew added himself to the repo"
    git status
    git push
    git gui

## Command Line History, Day 2

    TBD

## Day One Chat

    TBD

## Day Two Chat

    TBD
