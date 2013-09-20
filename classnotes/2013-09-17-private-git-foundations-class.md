---
layout: bare
title: Private Git Foundations Training
description: Private Git Foundations Training Class Notes
tags: [notes]
path: classnotes/2013-09-17-private-git-foundations-class.md
eventdate: 2013-09-17
---

## Teacher
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Course Materials, Links
* [Course Slides](http://teach.github.com/presentations/)
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

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
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)



# Day One (Foundations)

## Day One Foundations Outline
* Building a Repository
* Cloning and Remotes
* Pushing and Pulling
* Git Push Contention
* Branch Creation
* Branch Display
* Git Aliases
* Internals of .git
* Viewing History
* Viewing File Contents
* Stash
* Tags
* GUIs
* gitk
* git log --graph
* Merging (recursive and fast-forward)
* Rerere (possibly, depending on time)
* Grep (possibly, depending on time)
* Bisect (possibly, depending on time)
* Submodules (possibly, depending on time)

## Timing

* Begin Training: 9:00am
* 10 minute Break: 10:30am
* Lunch Break: 12:00pm
* Resume Teaching: 12:45pm
* 10 minute Break: 2:15pm
* Conclude Training: 4:00pm
* Student Q&A: 4:05pm

## Day One Command Line History

    git --version
    git init project1
    vim first.txt
    git add first.txt
    git config --global user.name "Matthew McCullough"
    git config user.name
    git config --global user.email "matthew@github.com"
    git commit -m "My first commit"
    mate first.txt
    git reset --hard
    git log
    git show 968
    git show 968e
    git --no-pager show 968e
    cd project1
    treelive 10
    generaterandomchanges 10 sample txt
    git checkout hotfix
    git branch -D hotfix
    git branch hotfix
    git show HEAD
    git show hotfix
    git show master
    git branch --vv
    git branch -v
    git checkout hotfix
    git rev-parse master
    git rev-parse hotfix
    vim second.txt
    git add second.txt
    git commit -m "Second file on branch"
    git branch thousands
    git checkout thousands
    mkdir thousandsoffiles
    cd thousandsoffiles
    generaterandomfiles 9001 files txt
    git commit -m" Over nine thousand"
    git checkout -
    gitk --all&
    cd ..
    git clone https://github.com/githubteacher/hellogitworld.git
    cd hellogitworld
    git commit -a -m "Matthew made a fix"
    git fetch
    git rev-parse HEAD
    git log -2 --oneline
    git pull
    git diff origin/master...master
    git commit -a -m"MOre changes"
    git push
    git diff origin/master
    git diff master..origin/master
    git diff master...origin/master
    git merge origin/master
    git reset --hard fb08d1b
    history
    git remote add matthewlaptop git://192.1.115.188/hellogitworld
    historytailzsh 10
    historytailzsh 2 10
    git remote -v
    pwd
    git fetch matthewlaptop
    git branch feature-matthewmcc
    git checkout feature-matthewmcc
    vim feature-matthewmcc.txt
    git add feature-matthewmcc.txt
    git commit -m "Matthew on the branch"
    git push -u matthewlaptop feature-matthewmcc
    git push
    git servehere
    git servehere --verbose
    git help daemon
    git servehere --verbose --informative-errors
    git branch
    git merge feature-deggiman
    git merge feature-dwood
    git mergetool
    git merge --abort
    git add fix.txt
    git commit -m"Merged in edin 1 with conflict"
    git config rerere.enabled true
    git merge matthewlaptop/feature-edin
    git help rerere
    cat fix.txt
    git commit -m"Solved it"
    git branch -a
    git revert 8d80
    git tag BEFORELUNCH
    git tag BEFORELUNCH a4b0
    git tag BEFORELUNCH2 a4b0
    git show BEFORELUNCH
    git tag -a RELEASE_7.0
    git show RELEASE_7.0
    git tag
    git tag -s AASIGNEDTAG
    git show AASIGNEDTAG
    git push matthewlaptop AASIGNEDTAG
    vim fix.txt
    git commit -a -m"Mistake"
    git push matthewlaptop master
    git fetch matthewlaptop
    git merge matthewlaptop/master
    git log -2
    git reset --soft a4b0
    git commit -m"Restores to last monday"
    git checkout a4b0 -- fix.txt README.txt
    git commit -m "Reverted that file"
    generaterandomfiles 5 main txt
    git add main*.txt
    git reset HEAD main5.txt
    git reset main1.txt
    git reset main2.txt
    git add .
    git stash list
    git stash
    echo CHANGE >> fix.txt
    git stash clear
    git stash
    vim README.txt
    git commit -a -m"Hot fix"
    git stash pop
    head README.txt
    z git_git
    git grep
    git grep Fix
    git grep Overflow
    git grep overflow
    git blame rerere.c
    git blame -C rerere.c
    cd -
    git reset HEAD README.txt
    git checkout HEAD -- README.txt
    git reset --hard HEAD
    git add -A .
    git status
    git commit -m"Changes"
    git log --stat -1
    git log --stat -1 -M
    git checkout origin/bisect
    mvn test
    git bisect reset
    git bisect start
    git bisect good 56cb315
    git bisect bad
    git bisect run mvn test
    git log --graph --oneline --decorate
    git branch --contains 57d0bf6
    git show-branch
    git reset --hard HEAD~3
    git reset --hard ac599e9
    git gc
    git checkout master
    vim one.txt
    git add one.txt
    vim two.txt
    git commit -m "The two files"
    git add two.txt
    git commit --amend
    git reflog
    git reset --hard matthewlaptop/master
    gitk master &
    git rebase -i c594
    git log --oneline
    git config alias.servehere
    clear
    git config alias.orphank
    git config alias.orphanl
    git merge-base master origin/master
    gitk --all &


## Day One Chat

### Creating a Repo

#### Create the repo's structure

    git init project1

Initialized the repo in our Scratch folder.

    cd project1
    vim first.txt

This file was created in the project1 directory. We then put content into that file.

    git add first.txt

Adding a file puts that file into the staging area.

Configured the username and email

    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"

Make the changes permanent through a commit.

    git commit -m "My first commit"


#### Cloning a Repository

    git clone https://github.com/githubteacher/hellogitworld.git

#### Adding a second connection

    git remote add matthewlaptop git://192.1.115.188/hellogitworld

#### Serve a repository off your local machine

    git daemon --verbose --informative-errors --reuseaddr --export-all --base-path=. --enable=receive-pack

#### Push and set up tracking

    git push -u matthewlaptop feature-matthewmcc

#### Turn on ReuseRecordedResolution

    git config rerere.enabled true

#### Configure an alias for serving

    git config --global alias.servehere "daemon --verbose --informative-errors --reuseaddr --export-all --base-path=. --enable=receive-pack"
