---
layout: bare
title: Women Who Code Boulder
description: Women Who Code Boulder Class Notes
tags: [notes, meetup]
path: classnotes/2013-05-09-women-who-code-boulder.md
eventdate: 2013-05-09
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
* [NDP Software Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
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

* What on earth is this thing?
* Why is it better than other things?
* Create a repo
* Commit content
* Log
* Branch and merge
* Push to GitHub
* Collaborate
* What's rebasing?
* Interactive rebase
* Look into on your own for further study
  * git stash
  * credential.helper in the config help
  * branch.autosetuprebase
  

## Command History

    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    git status
    vi raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "Initial commit"
    vi raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "Eagerly wished"
    ls
    git log
    tr.git
    cd scratch
    git loglive
    cd wwc
    git loglive
    git log
    git log --oneline --decorate --graph --all
    git lol
    git config --global alias.lol "log --decorate --oneline --all --graph"
    git lol
    git log --pretty=oneline
    git branch feature
    git lol
    git branch
    git checkout feature
    git branch
    vi raven.txt
    git status
    git add raven.txt
    git commit -m "Title"
    git lol
    vi xanadu.txt
    git add .
    git commit -m "Sacred river"
    git checkout master
    ls
    cat raven.txt
    vi raven.txt
    git statu
    git status
    git add raven.txt
    git commit -m "Surcease of sorrow"
    git lol
    gitk --all
    git lol
    git merge feature -m "Merged the branch"
    git lol
    ls
    cat raven.txt
    git merge --abort
    git lol
    git remote add origin https://github.com/githubteacher/poetry.git
    git remote -v
    git push -u origin master
    git config --global --list
    git config --unset --global credential.helper
    git push -u origin master
    git config --unset branch.master.rebase
    git config --unset --global branch.autosetuprebase
    git lol
    git branch
    git branch -d feature
    git lol
    git fetch
    git lol
    cat xanadu.txt
    git pull
    git lol
    cat xanadu.txt
    vi raven.txt
    git fetch
    git lol
    git diff origin/feature2
    git diff HEAD..origin/feature2
    git diff origin/feature2..HEAD
    git diff HEAD..origin/feature2
    git checkout origin/feature2
    git branch -a
    git checkout master
    git checkout feature2
    git lol
    vi raven.txt
    git add .
    git commit -m 'Nameless'
    git push
    git fetch
    git lol
    git pull
    git lol
    git push
    git checkout master
    git merge feature2
    git push
    git branch -d feature2
    git push --delete origin feature2
    git loglive -15
    git commit --amend
    git reflog
    git reset --hard 0b11072
    git checkout -b feature3
    git branch
    generaterandomchanges 5 random txt
    git lol
    git rebase -i HEAD~5
    git checkout master
    vi raven.txt
    git commit -m "Nodded"
    git add .
    git commit -m "Nodded"
    git lol -10
    git checkout feature3
    git rebase master
    git lol -10
    git checkout master
    git merge feature3

