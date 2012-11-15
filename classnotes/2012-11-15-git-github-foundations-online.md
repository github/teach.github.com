---
layout: bare
title: Git and GitHub Foundations
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
eventdate: 2012-11-15
---

# Git/GitHub Foundations Online
on 2012-11-15 through 2012-11-16

Taught by:

* Led by Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Supported by Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.7.10 or higher

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


## Day 1 Q&A Transcript

    STUB


## Day 1 Command History

    git --version
    ls
    pwd
    git init newproject
    ls
    cd newproject
    ls
    ls -la
    tree .git
    git config --list 
    git config user.name
    git config user.email
    git config user.emaill
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    cat .git/config
    vi ~/.gitconfig
    git log
    pwd
    ls
    vi caesar.txt
    ls
    git status
    git add caesar.txt
    git status 
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Tide of times"
    l
    git status
    vi caesar.txt
    git diff
    git add caesar.txt
    git diff 
    git status
    git diff --staged
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff
    git diff --staged
    git diff HEAD
    vi caesar.txt
    git diff HEAD
    git diff --staged
    git diff
    vi caesar.txt
    git diff
    git diff --color-words
    git diff --word-diff 
    clear
    git status
    git diff HEAD
    git diff HEAD --color-words
    git status
    git diff --staged --color-words
    git commit -m "Costly blood"
    git status
    git diff --color-words
    git add caesar.txt
    git commit -m "Dumb mouths"
    git status
    vi caesar.txt
    git diff
    vi caesar.txt
    git status
    git diff
    git diff -w
    vi caesar.txt
    git diff
    git status
    git log
    git lgo
    git log
    git log --stat 
    git log --patch
    git log --patch --color-words
    git log --patch --color-words -1
    git log --stat -2
    git log --stat -738
    git log --pretty=full
    git log --pretty=raw
    git log --pretty
    git log --pretty=raw
    git log --pretty=raw -1 
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline --abbrev-commit --graph
    git lg 
    git status
    ls
    mkdir target
    echo "CLASS FILE" > target/Java.class
    echo "angry monkey" > console.log
    git statu
    git status
    tree
    vi .gitignore 
    git status
    git add .gitignore
    git status
    git add *
    git commit -m "Added a .gitignore"
    git status
    ls
    rm -rf target
    rm console.log
    ls
    git config core.excludesfile
    vi `git config core.excludesfile`
    vi ~/.gitignore
    generaterandomfiles 5 junk txt
    ls
    git status
    git add .
    git status
    git commit -m "Added some files prepared for destruction"
    ls
    git rm junk1.txt
    ls
    git status
    rm junk2.txt
    git status
    git rm junk2.txt 
    git status
    open .
    git status
    git add . 
    git status
    git add -u . 
    git status
    git commit -m "Deleted all of the junk"
    ll
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    ls -l
    git status
    git add .
    git status
    git commit -m "Created some files to move around"
    git log --stat -1 
    git log --stat -3
    ls
    mkdir files
    tree
    git status
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
    git commit -m "Moved the five 'file' files"
    git log --stat
    git log --stat -1
    git log --stat -1 -M 
    git log --pretty=raw -1
    tree
    git status
    tree
    vi listing.txt
    git diff
    git diff --word-diff
    git mv listing.txt files/
    git status
    git add -A .
    git status
    git commit -m "Moved and changed content--tempting fate"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M85
    git log --stat -1 -M80
    git log --stat -1 -M60
    git log --stat -1 -M95
    git log --stat -1 -M
    git log --stat -- files/listing.txt
    git log --follow --stat -- files/listing.txt
    git log --follow --stat -M80 -- files/listing.txt
    git log --follow --stat -M85 -- files/listing.txt
    git help config
    git rev-parse HEAD
    git log -1
    git log --pretty=raw -
    git log --pretty=raw -1
    git ls-tree 05117ccdf05930f647814ed0b8d0f200fdc3de3d
    git ls-tree e1f4947e42728b1f08c99de41c578b79901fb2f9
    git cat-file -p 6db7dbc8436c140de5f90095525c49e097349b43
    git lol
    git log --graph --pretty=oneline --abbrev-commit
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    git lol
    git config alias.lg
    git lg
    git status -u -s
    git config --global alias.s "status -u -s"
    git s
    git log HEAD
    git rev-parse HEAD
    tr.git
    cd scratch/newproject
    git loglive -15
    git status
    git branc
    git branch
    git lg
    git branch feature 
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    cat .git/HEAD
    git branch
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    cat caesar.txt
    git checkout feature 
    git status
    git branch
    cat caesar.txt
    vi caesar.txt
    vi tolkien.txt
    git status
    git add .
    git status
    git commit -m "New Shakespeare plus some aweXome Tolkien"
    git lg
    ls
    cat caesar.txt
    git checkout master
    ls
    cat caesar.txt
    git branch
    git merge feature -m "Merged in the feature branch"
    git lg
    git log --pretty=raw -1
    git lg
    git branch -d feature
    cat caesar.txt
    cat tolkien.txt
    git config alias.lg


## Day 2 Q&A Transcript

    STUB

## Day 2 Command History

    STUB
