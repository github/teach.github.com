---
layout: bare
title: Women Who Code Advanced Git
description: Women Who Code Advanced Git Class Notes
tags: [notes]
path: classnotes/2013-08-14-women-who-code-advanced-git.md
eventdate: 2013-08-14
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
* [The Maven](https://www.youtube.com/watch?v=mBmExt184vc)

## Outline

* Rebase and merge
* Reflog
  * Also reset
  * Revert
* How to fix mistakes
  * Things we push
  * Things we don't push
* push/pull
* Cherry picking
* Branch strategeries

## Command History

    git init wwc-boulder
    cd wwc-boulder
    export PS1="$ "
    git commit -m  "Initial commit"
    git loglive
    git commit -m "Dying ember"
    git commit -m "Eagerly wished"
    git log
    git log --graph
    git tag EMBERS 528f
    git branch title
    tree .git
    cat .git/refs/heads/title
    git commit -m "Added a title"
    vi raven.txt
    git add .
    git commit -m "Lost Lenore"
    git log --format=raw
    git log --format=raw --decorate
    gitk --all
    git config alias.lol
    git config --global alias.lol "log --graph --oneline --all --decorate"
    git reset --hard 87e9a
    git reset --hard HEAD@{1}
    git branch -D title
    git branch title da7641f
    git rebase master
    ll
    git merge title
    git branch old_title da7641f
    git branch -D old_title
    git branch
    git reset --hard 93b3ddd
    git checkout title
    git reset --hard da7641f
    generaterandomchanges 5 random txt
    git rebase -i da7641f
    ls
    git reflog
    git reset --hard 8882ec4
    git reset --soft da764
    git status
    git commit -m "Random files 1-5"
    git checkout master
    git cherry-pick da76
    cat raven.txt
    git lol

