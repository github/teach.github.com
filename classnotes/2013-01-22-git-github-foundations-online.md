---
layout: bare
title: Git and GitHub Foundations Online
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-01-22-git-github-foundations-online.md
eventdate: 2013-01-22
---

on 2013-01-22 through 2013-01-23

Teachers:

* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))


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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix)
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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

# Outline

* Intro
* Creating Repo
* Repo Structure
* Edit/add/commit (three stages)
* Diff
* Log
* gitignore
* Delete
* Repo structure
* Move
* Branch
* Merge
* Rebase
* Network (push/pull/fetch)
* Pull Request

## Day 1 Q&A Transcript

## Day 1 Command History

    git --version
    git init newproject
    ls
    ls -l
    cd newproject 
    ls
    ls -la
    tree .git
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config user.name
    git config user.email
    git config --list
    tree .git
    cat .git/config
    git config --local --list
    git config --global --list
    vi ~/.gitconfig
    git config --global color.ui auto
    vi caesar.txt 
    ls
    cat caesar.txt
    git status 
    git add caesar.txt
    git status 
    git commit -m "Initial commit" 
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "The noblest man"
    tree .git
    tree .git -L 2
    tree .git -L 1
    git status
    vi caesar.txt
    git status
    git diff
    git add caesar.txt
    git status
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff
    git diff --staged
    git diff HEAD
    git diff
    git diff --color-words
    git diff --word-diff
    git status
    git diff HEAD --color-words
    git diff  --color-words --staged
    git status
    git commit -m "Costly blood"
    git status
    git add caesar.txt
    git status
    git commit -m "Refactored to make iambic pentameter more obvious"
    git status
    git log
    git config user.name
    git config user.email
    tree .git
    git log
    git commit --amend -m "Refactored to make iambic pentameter more obvious."
    git log
    git log --stat
    git log --patch 
    git log --patch --word-diff
    git log --patch --word-diff --stat -1 
    git log --patch --word-diff --stat -2
    git log --format=full
    git log --format=fuller
    git log --format=email
    git log --format=email --patch
    git log --format=raw
    git log --format=oneline
    git log --format=oneline --abbrev-commit 
    git diff f406
    git log --format=oneline --abbrev-commit 
    git log --format=oneline --abbrev-commit --graph
    git lg 
    git config alias.lg
    git help log 
    ls
    generaterandomfiles 5 junk txt
    ls
    cat junk1.txt
    git status
    git add . 
    git status
    git commit -m "Add files prepared for destrction"
    git status
    ls
    git log --stat -2
    ls -l
    git rm junk1.txt 
    ls -l
    git status
    rm junk2.txt
    ls -la
    ls -l
    git status
    git rm junk2.txt 
    git status
    open .
    git status
    git add .
    git status
    git add -u .
    git status
    git commit -m "Cleaned up the cruft"
    git log --stat -2
    ls
    git status
    git log --stat -1
    generaterandomfiles 1 monkey txt
    git status
    git add monkey1.txt
    git status
    run-help git
    git reset HEAD monkey1.txt
    ls
    git status
    git add
    git add .
    git status
    git reset HEAD monkey1.
    git reset HEAD monkey1.txt
    git status
    git add .
    git commit -m "Added a monkey"
    git status
    ls
    git status
    git rm --cached monkey1.txt
    ls
    git status
    git commit -m "Deleted the monkey"
    git log --stat -2
    git status
    ls
    rm monkey1.txt
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    ls -l
    vi listing.txt
    git add .
    git commit -m "Prepared the battlespace for moving demos"
    git commit -m "Prepared the battlespace for demos of moving" --amend
    git status
    ls -l
    mkdir file
    rmdir file
    mkdir files
    ls -l
    git status
    ls -l
    git mv file1.txt files/
    tree 
    git status
    tree
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Moved those files"
    git log --stat -1
    git log --stat -1 -M 
    tree
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Moved AND CHANGED a file (oh no)"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M80
    git log --stat -1 -M76
    git log --stat -1 -M74
    vi files/listing.txt
    git status
    git add .
    git commit -m "changed the listing"
    git log --stat -3
    git log --stat -- files/listing.txt 
    git log --follow --stat -- files/listing.txt 
    git log -M80 --follow --stat -- files/listing.txt 
    git log --follow --stat -- files/listing.txt 
    ll ~ > console.log
    git status
    pwd
    l
    vi caesar.txt
    git status
    git add .
    git status
    git commit -m "Ruby lips"
    git rm --cached console.log
    ls
    git status
    git commit -m "Untracked console.log"
    git status
    vi .gitignore 
    git status
    git add .
    git status
    ls
    git commit -m "Added a .gitignore file"
    mkdir build/
    touch build/monkey.class
    touch build/angry.class
    touch build/whatever.resource
    tree
    git status
    vi .gitignore
    git status
    git add .
    git commit -m "Expanded on my .gitignore"
    git config core.excludesfile
    git config --global core.excludesfile "~/.gitignore"
    vi ~/.gitignore
    tr.git
    cd scratch
    export PS1="$ "
    pwd
    git loglive
    cd newproject
    git loglive
    git status
    git branch
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/HEAD 
    vi caesar.txt
    git add .
    git commit -m "Cursed limbs"
    git branch feature 
    git branch
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    cat caesar.txt
    git checkout feature 
    cat caesar.txt
    vi caesar.txt
    git status
    git add .
    git commit -m "Added a title to Caesar"
    git lg
    cat caesar.txt
    git diff master
    git checkout master
    cat caesar.txt
    git merge feature -m "Merged in the feature branch" 
    git log --format=raw -1
    vi caesar.txt
    git lg
    git branch -d feature
    git lg
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git checkout feature2
    vi caesar.txt
    vi raven.txt
    git status
    git add .
    git status
    git commit -m "Added Raven, plus smiley mothers"
    git lg
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Merged in feature2 with resolved conflicts"
    git branch -d feature2
    git branch
    git branch feature3
    git branch feature2 87291 
    ls
    cat caesar.txt
    git checkout feature2
    cat caesar.txt
    git branch
    git checkout feature3
    git branch
    cat caesar.txt
    git checkout mater
    git checkout master
    ls
    git branch
    git checkout feature3
    git branch


## Day 2 Q&A Transcript


## Day 2 Command History

