---
layout: bare
title: Free Class
description: Free Class Class Notes
tags: [notes]
path: classnotes/2013-03-18-free-class.md
eventdate: 2013-03-18
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
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

* Local and upstream repos
* Clone
* Pull
* Push
* Fetch
* Tracking Branches
   * Create a branch
   * Push and establish upstream (`-u`)

## Command History

  git clone https://github.com/githubteacher/class-repo.git
  ls
  cd class-repo
  ls
  cat README.md
  cat raven.txt
  git log
  vi raven.txt
  git status
  git add raven.txt
  git commit -m "Silky sad uncertain"
  git status
  tr.
  tr.g
  tr.git
  cd scratch/class-repo
  git loglive
  git lol
  git branch
  git status
  git branch feature
  git branch
  git branch -a
  git checkout feature
  git checkout master
  git checkout origin/master
  git checkout master
  git lol
  git push
  git lol
  git config --global alias.lol "log --graph --all --decorate --ine"
  git lol
  git pull
  git lol
  cat raven.txt
  git lol
  git fetch
  git lol
  cat raven.txt
  ls
  git diff origin/master
  git diff origin/master..HEAD
  git diff HEAD..origin/master
  git diff origin/master
  git merge origin/master
  git lol
  cat raven.txt
  git branch
  git checkout feature
  cat raven.txt
  vi raven.txt
  git add .
  git commit -m "Weak and weary"
  git lol
  vi raven.txt
  git add .
  git commit -m "Quaint and curious"
  git lol
  git branch -a
  git remote
  git remote -v
  git remote show origin
  git branch
  git lol
  git push -u origin feature
  git lol
  git branch -a
  git remote show origin
  git status
  cat raven.txt
  git fetch
  git lok
  git lol
  git diff origin/feature
  git pull
  git remote show origin
  git log
  vi raven.txt
  git add .
  git commit -m "Gentle rapping"
  git push
  git pull
  git push
  git checkout master
  git merge feature
  vi raven.txt
  git add raven.txt
  git commit
  git push
 
