---
layout: bare
title: Git and GitHub Foundations Online
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-02-26-git-github-foundations-online.md
eventdate: 2013-02-26
---

on 2013-02-26 through 2013-02-27

Teachers:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Matt Yoho


## Resources

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
* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false


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

# Command Line History, Day 1

```shell
git --version
git init project1
cd project1
open .
pwd
vim first.txt
git add first.txt
git commit -m "My first commit"
git config --list
git config user.name
git config --global user.name "Matthew McCullough"
git config --global user.email "matthew@github.com"
git config user.email
git clone https://github.com/githubtraining/hellogitworld.git hgw1
tree 
cd hgw1
git log -2
historytailzsh
historytailzsh 3 10
git log --oneline
git log --oneline -4
git commit -m "Saving this locally"
git commit -m "My change" 
git clone https://github.com/githubteacher/hellogitworld.git hgwmine
vim matthewmccullough.txt
git add matthewmccullough.txt
git commit -m "Matthews new file"
git remote -v
cd ..
cd hgwmine
git push
subl ~/.gitconfig
vim fix.txt
git add fix.txt
git diff
git diff --staged
git commit -m "All of things"
github
git gui
echo CHANGE >> fix.txt
git gui &
git log -1
gitk 
clear
which -a git
touch .gitignore
ls
ls -al
echo JUNK >> newtmp
echo JUNK >> new.tmp
rm newtmp
git add .
git commit -m "Ignoring all tmp and subfolder"
cat .gitignore
mkdir stufffolder
echo JUNK >> stufffolder/thing.txt
git log master..origin/master
git log origin/master..master
git log origin/master master --oneline
git log origin/master..master --oneline
git fetch
echo STUFF >> keepme.tmp
vim .gitignore
git status
```
