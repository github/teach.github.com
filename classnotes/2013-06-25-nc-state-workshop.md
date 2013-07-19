---
layout: bare
title: NC State Workshop
description: NC State Workshop Class Notes
tags: [notes, public, workshop]
path: classnotes/2013-06-25-nc-state-workshop.md
eventdate: 2013-06-25
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Jason Rudolph ([Twitter](http://twitter.com/jasonrudolph), [GitHub](https://github.com/jasonrudolph))

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

* Structure of a Git repo
* Adding/commiting
* Staging area
* Structre of history
* Branching/merging
* Pushing/pulling/feching
* Pull Requests

## Command History

    git init nc-state
    ls
    cd nc-state
    ls
    ls -la
    tree .git
    git config user.name
    git config --global user.name "Tim Berglund"
    git config user.email
    git config --global user.email "tlberglund@github.com"
    vi ~/.gitconfig
    git config --global color.ui auto
    ls
    vi caesar.txt
    git status
    git add caesar.txt
    git stauts
    git status
    git commit -m "Initial commit"
    git loglive
    cd nc-state
    git loglive
    ls
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Noblest man"
    vi caesar.txt
    cat caesar.txt
    git diff
    git add caesar.txt
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff
    git diff --staged
    git diff --color-words
    git status
    git commit -m "Costly blood"
    git status
    git add .
    git status
    git commit -m "Iambic"
    git help add
    git log
    git config core.pager
    git help log
    git config --global core.pager "less -F -X"
    git log --format=raw
    git log --format=raw  --graph
    git log --format=oneline --graph
    git log --format=oneline --graph --abbrev-commit
    git log --format=oneline --graph --abbrev-commit --decorate
    git log --format=oneline --graph --abbrev-commit --decorate --all
    git lol
    git config --global alias.lol "log --oneline --graph --decorate --all"
    git lol
    git log -1
    git lol -1
    git config alias.lol
    echo "Tomorrow @ Hunt Library at the Fishbowl: 10am - noon"
    ls
    git status
    git branch
    git lol
    ls .git
    cat .git/HEAD
    cat .git/refs/heads/master
    tree .git/refs
    git branch feature
    git lol
    tree .git/refs
    git branch
    vi caesar.txt
    git status
    cat caesar.txt
    git add .
    git commit -m "Ruby lips"
    git lol
    git checkout feature
    ls
    cat caesar.txt
    ll
    git checkout master
    ll
    git checkout feature
    vi caesar.txt
    git add .
    git commit -m "Title"
    git lol
    cat caesar.txt
    git checkout master
    cat caesar.txt
    git diff feature
    git diff feature -- caesar.txt
    git diff feature
    git diff master..feature
    git diff master feature
    git diff feature master
    git diff feature --name-only
    git diff feature --stat
    git merge feature -m "Merged branch"
    git lol
    cat caesar.txt
    dir.gradle2
    git lol
    git help config
    git lol
    git branch -d feature
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Cursed limbs"
    git checkout feature2
    vi caesar.txt
    git add .
    git commit -m "Cumbered Italy"
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Merged branch"
    git reset --hard 49a8
    git merge feature2
    git status
    git merge --abort
    git status
    git merge feature2
    vi caesar.txt
    git add .
    git commit
    ls
    git branch -d feature2
    git branch
    git branch feature3
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git checkout feature3
    vi README.md
    vi raven.txt
    git status
    cat raven.txt
    cat README.md
    git add .
    git commit -m "Added the Raven"
    git lol
    git rebase master
    git checkout master
    git merge feature3
    git checkout feature3
    ll
    ls
    mkdir files
    cd files
    generaterandomchanges 10 random txt
    git lol
    git rebase -i 42f7c97
    ls
    git checkout master
    cd ..
    ls
    git reset --hard 1d72
    git reset --hard HEAD@{1}
    git branch monkey 1d72
    git merge feature3
    git branch -d feature3
    git reflog
    git remote add origin https://github.com/githubteacher/nc-state.git
    git push -u origin master
    git help push
    git lol
    git fetch
    git lol
    git diff origin/master
    cat raven.txt
    git pull
    git fetch
    git loglive -15
    git diff origin/master
    git diff origin/master -- picard.txt
    git pull






