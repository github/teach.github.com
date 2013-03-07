---
layout: bare
title: Øredev Introduction to Git
description: 
tags: [notes, conference, class]
path: classnotes/2012-11-08-øredev-git-introduction.md
eventdate: 2012-11-08
---

on 2012-11-08

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
* [hubgem ](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)


## Outline

* Create a new repo
* Add files
* Diffing and Logging
* Internals
* Branching
* Merging
* The Profound Mystery of Rebasing
* GitHub
  * Creating a repo
  * Remotes
  * Pushing
  * Cloning
  * Fetching
  * Pulling

* git log-live
  * https://gist.github.com/3714970

## Command History

    git init øredev
    cd øredev
    ls
    ls -l
    ls -la
    tree .git
    ls
    vi caesar.txt
    git status
    ls
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt 
    git status
    git commit -m "Noblest man"
    git log
    git log --patch
    tree .git
    git log --pretty=raw
    git ls-tree 59b3531c80e9d3ca2524e76211f158e490c08958
    git cat-file -p 7b4bb63dfc314b1de8fd0b7a714d54732b7bd0c7
    git status
    git branch
    tree .git/refs
    cat .git/HEAD
    cat .git/refs/heads/master
    git log -1
    git branch feature
    git branch
    git branch -d feature
    git branch feature
    git branch
    vi caesar.txt
    git commit -m "Costly blood"
    git add caesar.txt
    git commit -m "Costly blood"
    ls
    cat caesar.txt
    git checkout feature 
    cat .git/HEAD
    cat caesar.txt
    vi caesar.txt
    vi beowulf.txt
    git status
    git add .
    git status
    git commit
    git branch
    git checkout master
    cat caesar.txt
    ls
    git merge feature -m "Incorporated more poetry"
    git log --pretty=raw
    git log --pretty=raw -1
    ls
    cat caesar.txt
    git branch -d feature
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Beg my utterance"
    git checkout feature
    git checkout feature2
    vi beowulf.txt
    git add .
    git commit -m "MOAR Beowulf FTW"
    git status
    generaterandomchanges 3 monkey txt
    git rebase master 
    git checkout master 
    git merge feature2
    git lg
    tree .git
    git remote add origin https://github.com/githubstudent/poetry.git
    git remote
    git remote -v
    git branch
    git push -u origin master 
    git branch
    git branch -a
    git fetch
    git lg
    vi caesar.txt
    git commit -am "Smiley mothers"
    git lg
    git pull 
    vi caesar.txt
    git add caesar.txt
    git commit
    git lg
    git push



