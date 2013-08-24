---
layout: bare
title: OSCON Git Workshop
description: OSCON Git Workshop Class Notes
tags: [notes]
path: classnotes/2013-07-22-oscon-git-workshop.md
eventdate: 2013-07-22
---

## Teachers
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

* Creating a Git repo
* Add and commit content
* Staging area
* Comparing differences
* Examine Git history
* Ignore
* Branching/merging
* GitHub
  * Remote repositories
  * Forking
  * Cloning
  * Pushing/pulling/fetching
  * Pull Requests


## Command History

    git --version
    pwd
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    git init oscon
    ls
    cd oscon
    ls
    ls -la
    tree .git
    ll
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
    git commit -m "Noblest man"
    vi caesar.txt
    git status
    git diff
    git add caesar.txt
    git diff
    git diff --staged
    vi caesar.txt
    git status
    vi caesar.txt
    git status
    git diff HEAD
    git diff --staged
    git diff
    git status
    git diff --staged
    git commit -m "Costly blood"
    git status
    git diff
    git add caesar.txt
    git commit -m "Iambic pentameter"
    git log
    git log --format=raw
    git log --graph
    git log --graph --format=oneline
    git log --graph --format=oneline --abbrev-commit
    git log --graph --oneline
    git log --graph --format=oneline --abbrev-commit --decorate
    git log --graph --format=oneline --abbrev-commit --decorate --all
    git config --global alias.lol "log --graph --oneline --decorate --all"
    git lol
    tr.git
    export PS1="$"
    export PS1="$ "
    tr.git
    cd scratch/oscon
    git loglive
    ll ~ > junk.txt
    git status
    vi caesar.txt
    git status
    git add .
    git status
    git reset HEAD junk.txt
    git status
    ls
    vi .gitignore
    git status
    ls
    git diff --staged
    git commit -m "Ruby lips"
    git add .
    git commit -m "Ignore"
    ls
    cat `git config core.excludesfile`
    git branch
    git status
    ll .git/refs
    tree .git/refs
    cat .git/refs/heads/master
    git branch feature
    git branch
    vi caesar.txt
    git add .
    git commit -m "Beg voice"
    git lol
    git checkout feature
    vi caesar.txt
    git add
    git add .
    git commit -m "Marc Antony"
    git lol
    git checkout master
    git merge feature -m "Good merge"
    git lol
    git log --format=raw -1
    vi caesar.txt
    git add .
    git commit -m "Cursed limbs"
    git branch -d feature
    git branch feature2 9592cbe
    git checkout feature2
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git checkout master
    git lol
    git merge feature2
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "No conflict"
    git lol\t
    ls
    rm junk.txt
    ls
    git remote add origin https://github.com/githubteacher/oscon-workshop.git
    cat .git/config
    git push -u origin master
    vi ~/.gitconfig
    git push -u origin master
    git lol
    git branch -a
    git lol
    git fetch
    git lol -7
    ls
    git status
    git pull
    git lol -7
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git push
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git push
    git fetch
    git lol -8
    git pull
    git lol -8
    git push
    export PS1="$ "
    tr.git
    cd scratch
    ls
    pwd
    git clone https://github.com/githubstudent/oscon-workshop.git
    ls
    cd oscon-workshop
    git remote show origin
    vi caesar.txt
    git add .
    git commit -m "Caesar rage"
    git push
    git config user.email "training+githubteachergithub.com"
    git config user.name "GitHub Student"
    vi caesar.txt
    git add .
    git commit -m "Cry Havoc"
    git push
    git pull
    git loglive -12
    git pull https://github.com/githubstudent/oscon-workshop.git master
    vi caesar.txt
    git add caesar.txt
    git commit -m "Merge"
    git push
    git lol
    git remote add teacher https://github.com/githubteacher/oscon-workshop.git
    git remote -v
    git branch
    git pull teacher master
    git lol
    git push






