
---
layout: bare
title: Private Git Class
description: Private Git Class Class Notes
tags: [notes,notes,class,workshop]
path: classnotes/2014-04-01-private-git-class.md
eventdate: 2014-04-01
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix))
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

## Command History

    2013-04-01 09:35:13 git --version
    2013-04-01 09:39:39 git config --global user.name
    2013-04-01 09:39:58 git config --global user.name "Brent Beer"
    2013-04-01 09:40:04 git config --global user.name
    2013-04-01 09:40:10 git config --global user.name "Brent Beer2"
    2013-04-01 09:40:11 git config --global user.name
    2013-04-01 09:40:19 git config --global user.name "Brent Beer"
    2013-04-01 09:40:40 git config --global user.email
    2013-04-01 09:41:01 git config --global user.email "brentbeer@github.com"
    2013-04-01 09:44:51 git config --global color.ui auto
    2013-04-01 09:45:24 git config --global core.autocrlf input
    2013-04-01 09:45:33 git config --global --list
    2013-04-01 09:49:00 git init newproject
    2013-04-01 09:49:28 cd newproject/
    2013-04-01 09:49:42 ls 
    2013-04-01 09:49:44 ls -a
    2013-04-01 09:50:32 ls .git/
    2013-04-01 09:51:11 git config --local --list
    2013-04-01 09:51:28 cat .git/config 
    2013-04-01 09:52:06 git config --list
    2013-04-01 09:52:33 git config --system user.name "GitHub Teacher"
    2013-04-01 09:52:34 git config --list
    2013-04-01 09:53:06 git config --local
    2013-04-01 09:53:09 git config --local --list
    2013-04-01 09:54:32 git config --system --unset user.name "GitHub Teacher"
    2013-04-01 09:54:37 git config --list
    2013-04-01 09:56:22 git status
    2013-04-01 09:57:20 touch first.txt
    2013-04-01 09:57:28 git status
    2013-04-01 09:58:13 vim first.txt 
    2013-04-01 09:59:03 git status
    2013-04-01 09:59:32 git add first.txt
    2013-04-01 09:59:39 git status
    2013-04-01 09:59:42 git status
    2013-04-01 10:02:00 git commit -m"first commit"
    2013-04-01 10:06:15 git status
    2013-04-01 10:09:38 vim first.txt 
    2013-04-01 10:10:03 git status
    2013-04-01 10:11:00 git add first.txt
    2013-04-01 10:11:03 git status
    2013-04-01 10:11:10 git status
    2013-04-01 10:12:00 git commit -m"changed the last line, to be like previous"
    2013-04-01 10:13:03 vim first.txt 
    2013-04-01 10:13:26 git status
    2013-04-01 10:13:48 git diff
    2013-04-01 10:15:36 git help diff
    2013-04-01 10:15:50 git diff -U5
    2013-04-01 10:17:44 git status
    2013-04-01 10:17:51 git add first.txt
    2013-04-01 10:17:52 git status
    2013-04-01 10:17:57 git diff
    2013-04-01 10:18:20 git diff --staged
    2013-04-01 10:19:51 git status
    2013-04-01 10:20:04 vim first.txt 
    2013-04-01 10:20:39 git status
    2013-04-01 10:21:17 git diff
    2013-04-01 10:22:35 git diff --cached
    2013-04-01 10:24:20 git diff --staged
    2013-04-01 10:25:18 git diff HEAD
    2013-04-01 10:25:54 git status
    2013-04-01 10:25:58 vim first
    2013-04-01 10:26:01 vim first.txt 
    2013-04-01 10:26:12 git diff HEAD
    2013-04-01 10:27:40 git status
    2013-04-01 10:27:52 git diff --staged
    2013-04-01 10:28:05 git commit -m"specified it as last line"
    2013-04-01 10:28:13 git status
    2013-04-01 10:28:28 git diff
    2013-04-01 10:28:48 git diff HEAD
    2013-04-01 10:29:06 git add first.txt
    2013-04-01 10:29:08 git status
    2013-04-01 10:29:18 git commit -m "middle line for more diffing"
    2013-04-01 10:29:22 git status
    2013-04-01 10:31:49 git log
    2013-04-01 10:33:12 git log --format=full
    2013-04-01 10:34:09 git log --format=email
    2013-04-01 10:34:33 git log --format=email
    2013-04-01 10:34:45 git log --format=fuller
    2013-04-01 10:37:15 git log --format=fuller -4000
    2013-04-01 10:38:02 git log --format=fuller -1
    2013-04-01 10:38:07 git log  -1
    2013-04-01 10:38:19 git log  -1 --patch
    2013-04-01 10:38:52 git log  -2 --patch
    2013-04-01 10:41:05 git show d759abe
    2013-04-01 10:41:19 git log -3 -p
    2013-04-01 10:41:31 git log -3 --stat
    2013-04-01 10:41:56 git log --stat
    2013-04-01 10:43:19 git log -1 -p --color-words
    2013-04-01 10:43:55 git log -1 -p --word-diff
    2013-04-01 10:44:11 git log -2 -p --word-diff
    2013-04-01 10:46:06 git log -S=middle
    2013-04-01 10:46:10 git log -S="middle"
    2013-04-01 10:46:20 git log -1 -p
    2013-04-01 10:46:27 git log -S="third"
    2013-04-01 10:46:31 git log -G="third"
    2013-04-01 10:46:47 git log -S="third" -p
    2013-04-01 10:46:54 git log -S="This is the middle line."
    2013-04-01 10:46:57 git log -S="This is the middle line." -p
    2013-04-01 10:47:05 git help log
    2013-04-01 10:47:41 git log -G="This is the middle line." -p
    2013-04-01 10:48:09 git log -S "middle"
    2013-04-01 10:48:36 git log -S "first"
    2013-04-01 10:48:38 git log -S "first" -p
    2013-04-01 10:49:37 git log -G "middle" -p
    2013-04-01 10:49:43 git log -G "first" -p
    2013-04-01 10:49:48 git log
    2013-04-01 10:49:55 git log 509a5a
    2013-04-01 10:50:00 git show 509a5a
    2013-04-01 10:50:11 git log -G "3rd"
    2013-04-01 10:50:55 git help log
    2013-04-01 10:53:03 git log -p
    2013-04-01 10:53:08 git log -p -1
    2013-04-01 10:54:17 vim first.txt 
    2013-04-01 10:54:36 git help add
    2013-04-01 10:55:14 git status
    2013-04-01 10:55:16 git diff
    2013-04-01 10:55:36 git diff --color-words
    2013-04-01 10:56:04 git diff --word-diff
    2013-04-01 10:56:12 git diff
    2013-04-01 10:56:43 git checkout first.txt
    2013-04-01 10:56:44 git status
    2013-04-01 11:00:05 git help gitattributes
    2013-04-01 11:20:35 vim second.txt
    2013-04-01 11:21:02 git status
    2013-04-01 11:21:24 git add second.txt
    2013-04-01 11:21:27 git status
    2013-04-01 11:21:42 git commit -m "preparing for a deletion"
    2013-04-01 11:21:47 ls
    2013-04-01 11:21:48 ls
    2013-04-01 11:21:59 git status
    2013-04-01 11:22:21 git rm second.txt
    2013-04-01 11:22:58 git status
    2013-04-01 11:23:07 git diff --staged
    2013-04-01 11:23:36 git status
    2013-04-01 11:24:21 git reset HEAD second.txt
    2013-04-01 11:24:24 git status
    2013-04-01 11:24:42 git checkout -- second.txt
    2013-04-01 11:25:04 git status
    2013-04-01 11:25:06 ls
    2013-04-01 11:25:15 rm second.txt 
    2013-04-01 11:25:17 git status
    2013-04-01 11:27:40 git help add
    2013-04-01 11:28:01 git help add
    2013-04-01 11:28:31 git add -u 
    2013-04-01 11:28:34 git status
    2013-04-01 11:28:56 git commit -m "this file was worthless"
    2013-04-01 11:28:59 ls
    2013-04-01 11:31:05 chmod 755 first.txt 
    2013-04-01 11:31:07 git status
    2013-04-01 11:31:10 git diff
    2013-04-01 11:31:19 git checkout 
    2013-04-01 11:31:23 git checkout first.txt
    2013-04-01 11:31:25 ls
    2013-04-01 11:31:26 git status
    2013-04-01 11:33:31 ls
    2013-04-01 11:34:04 vim development.log
    2013-04-01 11:34:33 git status
    2013-04-01 11:34:39 git add development.log
    2013-04-01 11:34:54 git commit -m "setup for moving"
    2013-04-01 11:34:57 git status
    2013-04-01 11:34:59 ls
    2013-04-01 11:35:08 mkdir build
    2013-04-01 11:35:28 mv development.log build/
    2013-04-01 11:35:31 git status
    2013-04-01 11:35:33 git status -u
    2013-04-01 11:36:02 mkdir test1`
    2013-04-01 11:36:07 mkdir test1
    2013-04-01 11:36:08 mkdir test2
    2013-04-01 11:36:09 mkdir test3
    2013-04-01 11:36:10 git status
    2013-04-01 11:36:14 ls -p
    2013-04-01 11:36:45 git status
    2013-04-01 11:36:49 git status -u
    2013-04-01 11:38:06 git add -A .
    2013-04-01 11:38:08 git status
    2013-04-01 11:38:37 git commit -m"logs belong in the build directory"
    2013-04-01 11:39:54 ls -la /Users/brntbeer/
    2013-04-01 11:40:10 ls -la /Users/brntbeer/ > home_dir_listing.txt
    2013-04-01 11:40:30 git status
    2013-04-01 11:40:44 git add .
    2013-04-01 11:40:46 git status
    2013-04-01 11:40:59 git commit -m "home dir listing added for similarity example"
    2013-04-01 11:41:30 git status
    2013-04-01 11:44:20 git mv home_dir_listing.txt build/
    2013-04-01 11:44:22 git status
    2013-04-01 11:44:29 vim build/home_dir_listing.txt 
    2013-04-01 11:46:05 git status
    2013-04-01 11:46:29 git add build/
    2013-04-01 11:46:31 git status
    2013-04-01 11:46:54 git add -A --  build/ 
    2013-04-01 11:46:56 git status
    2013-04-01 11:47:13 git reset HEAD build/home_dir_listing.txt
    2013-04-01 11:47:23 git status
    2013-04-01 11:47:45 rm build/home_dir_listing.txt 
    2013-04-01 11:47:53 git reset HEAD home_dir_listing.txt
    2013-04-01 11:47:55 git status
    2013-04-01 11:48:01 git checkout -- home_dir_listing.txt
    2013-04-01 11:48:03 git status
    2013-04-01 11:48:14 git mv home_dir_listing.txt build/
    2013-04-01 11:48:20 vim build/
    2013-04-01 11:49:06 git status
    2013-04-01 11:49:14 git add -A build/home_dir_listing.txt
    2013-04-01 11:49:16 git status
    2013-04-01 11:49:37 git commit -m "moved home_dir to build, and made changes"
    2013-04-01 11:50:08 git log -M40 -1
    2013-04-01 11:50:11 git log -M40 -1 -p
    2013-04-01 11:50:15 git log -M40 -1 --stat
    2013-04-01 11:50:54 mv build/home_dir_listing.txt .
    2013-04-01 11:50:56 ls
    2013-04-01 11:50:58 git status
    2013-04-01 11:51:08 vim home
    2013-04-01 11:51:41 git status
    2013-04-01 11:51:49 git add -A .
    2013-04-01 11:51:51 git status
    2013-04-01 11:51:55 git diff --staged
    2013-04-01 11:52:10 git diff --staged -M60
    2013-04-01 11:54:52 git status
    2013-04-01 11:54:58 git commit -m "moved back to higher level"
    2013-04-01 11:55:19 git log -1 -M98
    2013-04-01 11:55:22 git log -1 -M98 --stat
    2013-04-01 11:55:47 git log -1 -M60 --stat
    2013-04-01 11:59:32 git help diff
    2013-04-01 12:00:40 git log -1 -M60
    2013-04-01 12:00:42 git log -1 -M60 -p
    2013-04-01 12:02:04 git help diff
    2013-04-01 12:03:52 git log -C -C
    2013-04-01 12:03:56 git log -C -C --stat
    2013-04-01 12:11:54 git branch
    2013-04-01 12:18:59 git branch feature1
    2013-04-01 12:19:02 git status
    2013-04-01 12:19:09 git branch
    2013-04-01 12:20:05 git checkout feature1
    2013-04-01 12:20:12 git branch
    2013-04-01 12:20:18 ls
    2013-04-01 12:20:23 git log -1
    2013-04-01 12:20:26 git log
    2013-04-01 12:20:37 git show HEAD
    2013-04-01 12:20:58 git branch
    2013-04-01 12:21:09 ls
    2013-04-01 12:21:20 vim test-feature1.cpp
    2013-04-01 12:21:52 git status
    2013-04-01 12:22:07 git add test-feature1.cpp
    2013-04-01 12:22:09 git status
    2013-04-01 12:22:18 git commit -m 'begin test file for branching purposes'
    2013-04-01 12:22:21 git status
    2013-04-01 12:22:39 git checkout master
    2013-04-01 12:22:44 git checkout -
    2013-04-01 12:22:45 git checkout -
    2013-04-01 12:22:46 git checkout -
    2013-04-01 12:23:10 git checkout -
    2013-04-01 12:23:15 ls
    2013-04-01 12:23:45 git diff master..feature1
    2013-04-01 12:23:59 git diff master...feature1
    2013-04-01 12:24:02 git log master..feature1
    2013-04-01 12:24:05 git log master..feature1
    2013-04-01 12:24:17 git log master..feature1 -p
    2013-04-01 12:24:23 git log master..feature1 --stat
    2013-04-01 12:24:39 git branch
    2013-04-01 12:24:44 git branch feature3
    2013-04-01 12:24:46 git branch feature1000
    2013-04-01 12:24:49 git branch feature14
    2013-04-01 12:24:53 git branch testbranch
    2013-04-01 12:24:55 git branch brentbeer
    2013-04-01 12:24:58 git branch deleteme
    2013-04-01 12:24:59 git branch
    2013-04-01 12:25:26 cat .git/refs/heads/brentbeer 
    2013-04-01 12:25:34 cat .git/refs/heads/feature1
    2013-04-01 12:25:50 cat .git/refs/heads/master
    2013-04-01 12:26:08 git log -2 --format=raw
    2013-04-01 12:26:59 git branch
    2013-04-01 12:27:09 ls .git/refs/
    2013-04-01 12:27:12 ls .git
    2013-04-01 12:27:31 cat .git/HEAD
    2013-04-01 12:27:44 git checkout feature1
    2013-04-01 12:27:45 cat .git/HEAD
    2013-04-01 12:28:00 cat .git/refs/heads/feature1
    2013-04-01 12:28:04 git log -1 --oneline
    2013-04-01 12:28:23 git branch -f testbranch
    2013-04-01 12:28:27 git branch -d testbranch
    2013-04-01 12:28:36 git branch -d deleteme
    2013-04-01 12:28:40 git branch
    2013-04-01 12:29:47 git checkout feature3 
    2013-04-01 12:30:18 generaterandomchanges 5 test txt
    2013-04-01 12:30:26 git checkout master
    2013-04-01 12:30:32 git branch -d feature3 
    2013-04-01 12:31:44 git log master...feature3 --stat
    2013-04-01 12:31:51 git branch -d feature3 
    2013-04-01 12:32:07 git branch -D feature3
    2013-04-01 12:32:32 git checkout feature1
    2013-04-01 12:32:42 git branch testbranching
    2013-04-01 12:32:48 git checkout testbranching
    2013-04-01 12:32:59 git log -1 --oneline
    2013-04-01 12:33:17 generaterandomchanges 1 readme md
    2013-04-01 12:33:22 git log --oneline
    2013-04-01 12:33:27 git log --oneline --decorate
    2013-04-01 12:34:11 git branch -d feature1
    2013-04-01 12:34:13 git log --oneline --decorate
    2013-04-01 12:37:18 git log --oneline --decorate --graph --all
    2013-04-01 12:37:24 git checkout master
    2013-04-01 12:37:37 generaterandomchanges 1 master txt
    2013-04-01 12:37:40 git log --oneline --decorate --graph --all
    2013-04-01 12:39:48 git checkout testbranching
    2013-04-01 12:40:01 git branch keep-branch
    2013-04-01 12:40:04 git checkout master
    2013-04-01 12:40:06 git log --oneline --decorate --graph --all
    2013-04-01 12:40:23 git branch -d testbranching 
    2013-04-01 12:40:28 git branch -D testbranching 
    2013-04-01 12:40:29 git log --oneline --decorate --graph --all
    2013-04-01 12:40:42 git branch longago 6d555b8
    2013-04-01 12:40:44 git log --oneline --decorate --graph --all
    2013-04-01 12:44:05 git checkout aa92177
    2013-04-01 12:44:31 git log --oneline --decorate --graph --all
    2013-04-01 12:45:30 generaterandomchanges 1 nobranch txt
    2013-04-01 12:45:49 git log --oneline --decorate --graph --all
    2013-04-01 12:47:06 git checkout 8d54ea4
    2013-04-01 12:47:22 git log --oneline --decorate --graph --all
    2013-04-01 12:47:36 git branch 
    2013-04-01 12:48:00 generaterandomchanges 5 test txt
    2013-04-01 12:48:02 git log --oneline --decorate --graph --all

