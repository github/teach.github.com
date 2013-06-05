---
layout: bare
title: EJUG Linz Git Presentation
description: EJUG Linz Git Presentation Class Notes
tags: [notes]
path: classnotes/2013-05-23-ejug-linz-git-presentation.md
eventdate: 2013-05-23
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

* Schedule
  * Break at 19:30 for 10 minutes
  * Finish at 20:30
* Distributed Version Control Concepts
* Creating a repository
* Cloning from GitHub
* Adding and committing code
* Branching/merging
* Git internals
* The structure of Git history
* Network operations
  * push
  * pull
  * fetch
* GitHub Pull Requests

## Command History

    git clone https://github.com/githubteacher/poetry.git
    ls
    cd poetry
    ls
    git log
    git config user.name
    git config user.email
    ll
    ll -a
    tree .git | less
    vi ascetic.txt
    git stuats
    git status
    vi README.md
    git status
    git add ascetic.txt
    git status
    git add README.md
    git status
    ls
    ll -a
    git status
    git diff --staged
    git status
    git commit -m "Purple vine"
    git log
    tr.git
    export PS1="$ "
    cd scratch/poetry
    git loglive
    git branch
    git status
    vi ascetic.txt
    git status
    git add .
    git status
    git commit -m "Tepid milk"
    git branch feature
    git branch
    vi ascetic.txt
    git add .
    git commit -m "Neara"
    git checkout feature
    cat ascetic.txt
    vi ascetic.txt
    git add .
    git commit -m "Title"
    git lol
    git checkout master
    git merge feature
    git lol
    cat ascetic.txt
    vi .zshrc
    git branch -d feature
    git branch feature f2ee017
    git branch -d feature
    git push
    git config credential.helper
    git push
    git branch
    git branch -a
    git remote -v
    git status
    git fetch
    ls
    vi ascetic.txt
    git add .
    git commit -m "Lecture rooms"
    git lol
    git pull
    git config --unset --global branch.autosetuprebase
    git config --unset branch.master.rebase
    cat .git/config
    git reflog
    git reset --hard 966cd5a
    git pull
    git push
    vi ascetic.txt
    git add .
    git commit -m "Aunts"
    git push
    git pull
    git push
    git log --format=raw -1
    git fetch
    git loglive -12



