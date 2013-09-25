---
layout: bare
title: Rocky Mountain Ruby 2013
description: Rocky Mountain Ruby 2013 Class Notes
tags: [notes]
path: classnotes/2013-09-25-rocky-mountain-ruby-2013.md
eventdate: 2013-09-25
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

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

## Command History
    git init rmr
    cd rmr
    vi README.md
    git add README.md
    git commit -m "Initial commit"
    git log
    ls
    vi CONTRIBUTING.md
    git add CONTRIBUTING.md
    git commit -m "Added contribution guidelines"
    git log --oneline --graph --all --decorate
    git config --global alias.lol "log --oneline --graph --all --decorate"
    cd github/teach.github.com
    classnotes --title "Rocky Mountain Ruby 2013" --teachers tlberglund,jordanmccullough -w
    subl classnotes/2013-09-25-rocky-mountain-ruby-2013.md
    git branch feature
    ls -la
    tree .git
    cat .git/refs/heads/feature
    git commit -m "Legs of stone"
    cat .git/refs/heads/master
    history
    git commit -m "Bleak December"
    git commit -m "Weak and weary"
    git commit -m "Silky sad"
    git merge feature -m "Merge the dang branch"
    git reset --hard 7dd9
    git log --format=raw
    git show 84bbcce
    git reflog
    git merge --squash feature
    git diff --staged
    git commit -m "The Raven"
    git branch -d feature
    git branch -D feature
    git reset --hard HEAD^
    git branch feature HEAD@{5}
    mv .git/refs/heads/feature .git/refs/heads/monkey
    mv .git/refs/heads/monkey .git/refs/heads/feature
    git stash
    git stash -u
    git checkout slide-notes-migration-fix
    git checkout -f slide-notes-migration-fix
    jekyll server
    ll
    git checkout gh-pages
    git checkout diagram-update-theme-fix
    git submodule update
    git pull --recurse-submodules
    script/server
    git checkout fe
    git rebase master
    git reflog
    git reset --hard 7dd9313
    git merge --no-ff feature
    git reset --hard HEAD@{1}
    git checkout feature
    git rebase -i 7dd9313
    git lol --patch
    git merge feature
    git branch -d feature
    git remote add origin https://github.com/githubteacher/RMR.git
    git --version
    git config --global credential.helper cache
    git config --list
    git config --unset --global branch.autosetuprebase
    git config --unset branch.master.rebase
    git push -u origin master
    cat raven.txt
    git diff origin/master
    git help fetch
    git checkout origin/jordan
    git checkout 91b8
    git checkout jordan
    git commit -m "Frumious"
    git push
    vi raven.txt
    git add raven.txt
    git commit -m "Quaint and curious"
    git reset --hard HEAD^
    git pull --rebase
    git log --decorate --graph --oneline
    git checkout jordan
    git branch -vv
    vi jabberwocky.md
    git commit -m "Title for Jabberwocky"
    git lo
    git config branch.jordan.rebase true
    git config branch.master.rebase true
    git config --global branch.autosetuprebase always
    git fetch --prune
    git push --mirror
    git tag JABBERWOCKY
    git tag RAVEN 5b67fcf
    tree .git/refs
    git tag -a STARTING_POINT 5ad6
    git show STARTING_POINT
    git push origin STARTING_POINT
    git push --delete origin STARTING_POINT
    git checkout master
    git commit -m "lifeless"
    git fetch
    git branch
    git fetch origin refs/pull/11/head
    git diff master FETCH_HEAD
    git merge FETCH_HEAD
    git commit
    git rebase --continue
    git pull
    git config branch.master.rebase false
    vi ozymandias.txt
    git add .
    git status
    git commit -m'This fixes #11. Call this done!'
    clear
    git ls-remote origin
    git config --add  remote.origin.fetch +refs/pull/*/head:refs/remotes/origin/pull/*
    git config --add  remote.origin.fetch "+refs/pull/*/head:refs/remotes/origin/pull/*"
    git config remote.origin.fetch
    git fetch
    git lol
    git branch -a
    git merge origin/pull/9
    git push RAVEN
    git push origin RAVEN
    git ls-remote
    git config --add remote.origin.push "refs/tags/*:refs/tags/*"
    git tag
    git push
    cat .git/config


