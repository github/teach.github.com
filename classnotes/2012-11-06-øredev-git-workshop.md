---
layout: bare
title: Øredev Git/GitHub Workshop
description: A three-hour Git workshop at Øredev 2012
tags: [notes, conference, workshop]
path: classnotes/2012-11-06-øredev-git-workshop.md
eventdate: 2012-11-06
---

on 2012-11-06

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

# Øredev Git Workshop

* Configuration
  * `git config --global user.name "Name"`
  * `git config --global user.email "email@address.com"`
  * `git config --global color.ui auto`
* Creating a Repo
  * `git init newproject`
* Add files
  * `git add caesar.txt`
  * `git commit -m "Message"`
* Commit files
  * `git commit -m "Message"`
* Look at diffs
  * `git diff`
  * `git diff --staged`
  * `git diff HEAD`
  * `git diff --color-words`
  * `git diff --word-diff`
* Look at history
  * `git log`
  * `git log --stat`
  * `git log --patch`
  * `git log --pretty=full`
  * `git log --pretty=raw`
  * `git log --pretty=raw -1`
  * git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
  * git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"
* Deleting files
  * `git rm <filename>`
  * `git add -u .`
* Move files
  * `git mv <oldfile> <newfile>`
  * `git add -A .`
* Branching and merging
  * `git branch <branchname>`
  * `git checkout <branchname>`
  * `git merge <branchname>`
* Network operations
  * Remotes
    * `git remote add origin https:/...`
  * Fetch/pull/push
    * `git push -u origin master`
    * `git pull`
    * `git pull --rebase`
    * `git config --global branch.autosetuprebase always`
    * `git config branch.<branchname>.rebase true`
  * Clone
    * `git clone <repourl> <dirname>`

