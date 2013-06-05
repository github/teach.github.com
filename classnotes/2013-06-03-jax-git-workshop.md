---
layout: bare
title: JAX Git Workshop
description: JAX Git Workshop Class Notes
tags: [notes, conference, workshop]
path: classnotes/2013-06-03-jax-git-workshop.md
eventdate: 2013-06-03
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

* Create a repository
* How Git is different
* Config
  * name, colors, line endings
* Adding/committing code
* Staging area 
* Cool logging tricks
* Branching/merging
* Collaborate on GitHub
  * Remotes
  * Push/Pull/Fetch
  * Forking
  * Pull Requests
* Reset/reflog
* Cherry Pick
* Selectively grabbing things from commits
* Repo Hooks


## Command History

    git --version
    git init newproject
    ll
    cd newproject
    ls
    ls -la
    tree .git
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config color.ui
    git config --global color.ui auto
    ls
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "The noblest man"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    vi caesar.txt
    git status
    git diff --staged
    git diff
    git diff --color-words
    git cat-file -t 570a6a6
    git cat-file -t 64de
    git cat-file -t 6fde168
    git cat-file -t 6fde
    git cat-file -t 6fde186
    git cat-file -p 570a6a6
    git status
    git add .
    git status
    git diff --staged
    git commit -m "Costly blood"
    git log --format=raw
    git log --stat
    git log --patch
    git log --graph
    git log --graph --format=oneline
    git log --graph --format=oneline --abbrev-commit
    git log --graph --format=oneline --abbrev-commit --decorate
    git log --graph --format=oneline --abbrev-commit --decorate --all
    git config --global alias.lol "log --graph --format=oneline --abbrev-commit --decorate --all"
    git lol
    vi ~/.gitconfig
    git config --global core.editor "mate -w"
    vi ~/.gitconfig
    which hub
    tr.git
    export PS1="$ "
    cd scratch
    cd newproject
    git loglive
    git help log
    git branch
    git status
    tree .git/refs
    cat .git/refs/heads/master
    git branch feature
    tree .git/refs
    vi caesar.txt
    git add caesar.txt
    git commit
    git branch
    git checkout feature
    mate caesar.txt
    git status
    git add .
    git commit -m "Title"
    git lol
    git lol --stat
    git lol
    git checkout master
    git lol
    git merge feature
    git lol
    git branch -d feature
    ls
    cat caesar.txt
    git checkout b7c9e2a
    cat caesar.txt
    git checkout master
    git branch feature 105c
    git reset --hard b7c9e2a
    git lol
    git reflog
    git reset --hard 8543d
    git remote add origin https://github.com/githubteacher/jax.git
    cat .git/config
    git push -u origin master
    cat .git/config
    git lol
    git branch
    ls
    git fetch
    git lol --stat
    git status
    ls
    git pull
    git lol
    ls
    vi caesar.txt
    git add .
    git commit -m "Cursed limbs"
    git push
    git fetch
    git lol
    git pull
    git lol
    git push
    git config --unset --global core.editor
    git remote show
    git remote show origin
    pwd
    tr.git
    cd scratch
    ll
    pwd
    ls
    git clone https://github.com/githubstudent/jax.git
    ls
    cd jax
    ls
    git branch
    git remite show origin
    git remote show origin
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git push
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git push
    git fetch
    git loglive -12
    git loglive -10
    git pull
    ls
    cat ox
    cat octocat.txt
    git pull https://github.com/githubstudent/jax.git master
    git status
    vi caesar.txt
    git mergetool
    git status
    vi caesar.txt
    git commit
    git push
    cd ~/Documents/Presentations/discrete-math/code/src/discrete
    cat core.clj|pbcopy
    cd ..
    git clone https://github.com/githubteacher/jax.git teacher-jax
    cd teacher-jax
    git branch
    git checkout -b tlberglund
    vi caesar.txt
    git add .
    git commit -m "Caesar rage"
    git fetch
    git loglive -8
    git merge origin/master
    git push -u origin tlberglund
    git fetch
    git status
    ls
    git lol
    git merge origin/eevardone
    git loglive -6
    git loglive -8
    git merge origin/anthony
    git loglive -6
    git checkout origin/Vincent
    git checkout master
    git checkout Vincent
    ls
    git diff Vincent^
    git diff Vincent^^^^
    git help gitrevisions
    git diff Vincent^
    vi TeenageMutantNinjaTurtles.txt
    git add .
    git commit -m "The turtles"
    git push
    git checkout master
    git merge Vincent
    git push
    git lol
    git push
    git pull
    git push
    git loglive -8
    git lol
    git cherry-pick b369f55
    git show b369f55
    git show 0923
    git log --pretty=raw -1


