---
layout: bare
title: Women Who Code Git Workshop
description: Women Who Code Git Workshop
tags: [notes, class, meetup]
path: classnotes/2012-12-11-women-who-code.md
eventdate: 2012-12-03
---

on 2012-12-07

Taught by:

* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.10, but can have issues with HTTPS credential prompting.
* Best is 1.8.X or higher

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

## Tools, Tips, Shortcuts

* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)
* [Log Live](https://gist.github.com/3714970)
* [git lg alias](https://gist.github.com/1131406)

## Resources

* SSL Certificates
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

## H

## Class Outline

* Introduction
* Creating repos 
* Adding and committing files
* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Branching and Merging in Git
* Establishing upstream repositories 
* Push and pull


## Command Line History
                        
    git --version
    pwd
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    vi ~/.gitconfig 
    git config color.ui
    git config --global color.ui auto 
    git init newproject 
    ls
    cd newproject
    ls
    ls -al
    ls -la .git
    ls
    vi caesar.txt 
    ls
    cat caesar.txt
    git status 
    git add caesar.txt
    ls
    git add . 
    git status
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    pwd
    git status
    git commit -m "The noblest man"
    git commit --amend
    git status
    git log
    git lg
    git config alias.lg
    cd newproject
    git loglive
    git status
    ls
    vi caesar.txt
    git add .
    git status
    git commit -m "Fixed fourth line to be iambic pentameter"
    git branch feature 
    git branch
    vi caesar.txt
    git add .
    git commit -m "Costly blood"
    git checkout feature 
    vi caesar.txt
    git add .
    git commit -m "Added a title"
    git checkout master
    cat caesar.txt
    git merge feature -m "Merged up muh branch"
    git lg
    git status
    git log
    ls -la
    git remote add origin https://github.com/githubtrainer/poetry.git
    git remote -v
    git push -u origin master 
    cat caesar.txt
    git pull 
    cat caesar.txt
    vi caesar.txt 
    git add .
    git commit -m "Domestic fury"
    git push
    git remote -v

