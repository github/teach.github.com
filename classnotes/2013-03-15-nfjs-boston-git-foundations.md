
---
layout: bare
title: NFJS Boston Git Foundations
description: NFJS Boston Git Foundations Class Notes
tags: [notes]
path: classnotes/2013-03-15-nfjs-boston-git-foundations.md
eventdate: 2013-03-15
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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline

* Installing
* Configuring
* Creating a repo
* Adding and committing
* History
* Diffs
* Branching/merging
* GitHub
* Pitfalls to avoid


## Command History

  git init boston
  ls
  cd bos
  cd boston
  ls
  ls -al
  open .git
  git config --global user.name "Tim Berglund"
  git config --global user.email "tlberglund@github.com"
  git config --global color.ui auto
  git config --list
  git config --list | less
  ls
  vi raven.txt
  ls
  git status
  git add raven.txt
  git status
  pwd
  git commit -m "Initial commit"
  vi raven.txt
  git status
  git add raven.txt
  git status
  git commit -m "Dying embers"
  ls .git
  cat .git/index|zdeflate
  git log
  git log --format=raw
  git log --oneline
  git log --oneline --graph
  git log --oneline --graph --decorate
  git log --oneline --graph --decorate --all
  git config --global alias.lol "log --oneline --graph --decorate --all"
  git lol
  vi raven.txt
  git diff
  git add .
  git diff
  git diff --staged
  vi raven.txt
  git diff
  git diff --staged
  git status
  git diff HEAD
  git add .
  git commit -m "Surcease of sorrow"
  git lol
  git diff 272755f
  git lol
  git branch
  git branch feature
  git lol
  git branch monkey ed54
  git lol
  git branch -d monkey
  git lol
  git branch
  git status
  vi raven.txt
  git add .
  git commit -m "Rare and raidient"
  git lol
  git loglive
  tr.git
  cd scratch/boston
  git loglive -4
  git loglive -5
  git commit --amend
  git checkout feature
  git branch
  vi raven.txt
  git add .
  git commit -m "The line everybody knows"
  git loglive -3
  git loglive -4
  git checkout master
  git merge feature -m "Merged feature branch"
  gitk --all
  git remote add origin https://github.com/githubteacher/boston-nfjs.git
  git remote -v
  git push -u origin master
  git config --unset --global credential.helper
  git push -u origin master
  tr.git
  cd scratch
  ll
  ls
  git clone https://github.com/githubstudent/boston-nfjs.git
  cd boston-nfjs
  ls
  vi raven.txt
  git add .
  git commit -m "Sudden tapping"
  git push
  history
  git fetch
  git lol
  git pull
  git lol

