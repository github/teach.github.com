---
layout: bare
title: Private In Person Foundations and Advanced/Consulting
description: Private In Person Foundations and Advanced/Consulting Class Notes
tags: [notes,in-person,private]
path: classnotes/2013-06-25-private-foundations-and-advanced.md
eventdate: 2013-06-25
---

## Teachers

* Matthew McCullough
* Brent Beer

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Jenkins Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation

* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
    * [The GitHub for Mac Client and Command Line](http://mac.github.com)
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
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Online Students
* Gary Baker
* Mark Wilding
* Thomas Fanghaenel

# Course Plan

## Git Internals, Repository Creation

Give the students an understanding of how to use the most basic Git functions and pair that with a deeper comprehension of the data structure building blocks of Git. This removes most of the "just click this" or "just type this" type of on-the-job sentiment and helps users understand what Git is really doing behind the scenes.

* Git from the ground up. Internals. Fundamental computer science building blocks.
* Basic init, add, commit, branch, tag, clone, push, pull
* Every user-facing feature is just manipulating pointers.
* Build a repo/commit/branch without using Git.
* Differences from CVS, Subversion, centralized system.
* The buffer afforded by a DVCS distributed "remotes" layer.
* "Local actions, eventually synced"

## Undo

Since every action in Git is recorded in the reflog, we have unlimited ability to undo actions and move pointers around to more desirable states. But use of this power is predicated by a knowledge of Git's underlying directed acyclic graph model.

* Branches, tags, HEAD as pointers.
* Review the `reflog`
* Show when it is populated, when it is not (after clone)
* Why preserve a repository instead of throwing it away (reflog value)?
* `reset`
* `clean -fd`
* `checkout -- <filename>`

## The Graph

Knowing what Git command to run and knowing the result of that action is informed by having solid visualization tools. Git works well with a range of merge and diff tools, as well as many graph-rendering UIs.

* Visualizing the repository history before acting on it can make for more accurate actions.
* Before merging, look at and use `status -sb`, `branch -vv` and `show-branch`
* Why are lines straight forward for branches that are purely ahead?
* What do "behind" and "ahead" mean?
* Why do I get a conflict on merging? What would prevent it?


# Day Two, 3 hour session
9:00 AM to 12:00 PM

## Code Review

In most team development processes, code must be reviewed before it ships. In Git, there are both manual and collaboration-tool enhanced review approaches.

* Currently have a fairly strict code review process. Must write description of code first, before coding.
* Using code collaborator instead of Pull Requests for review.
* What is the Pull Request approach to review?
* How do I see the history of a single file?
* How do I re-write history on a Pull Request?
* Under what conditions is a force push acceptable?
* How can you make code reviews easier with rebased commit series?

## Branching Models

Branching is a fundamental Git concept. But the recipes of when to use branches and when to merge them is a pattern best derived from in-the-wild use of Git at teams both large and small.

* Centralized model (using Git like Subversion)
* Branch-per-feature model
* Experimental branch
* Production branch
* Golden branch
* Experimental branches

## Merging Strategies

The question of the types of merging are a skill 

* Compare rebase before merge versus just merging.
* Squashing down a series for downstream simplicity
* How are your changes going to be seen by others?
* What about reverse merges from master into features?
* Cherry pick with and without metadata.
* Author and committer field differences (when do they get set?)

## Access Control

Git doesn't directly implement access control, but layers above it provide a recognizable yet different ACL methodology.

* Direct commit (contributor) access to the repository
* Forks (arm's length access with an approval)

## Tips and Tricks

* Using autosquash and fixup
* Amending missing, mis-worded, and over-added commits
* Using git add, reset, and stash with patch and interactive modes

---------------------

## Class Notes Command Line History, Day One

    git init project1
    tree .git
    cat .git/HEAD
    cd project1
    cd .git
    git commit -m "My first commit"
    git config --local drink.color green
    git config --global --list
    git config --global --list | more
    mate ~/.gitconfig
    git branch feature1
    treelive 5
    git rev-parse master
    git rev-parse feature1
    vim .git/refs/heads/featurehandcrafted
    git branch
    vim first.txt
    git commit -a -m"Changesdsf"
    git commit --amend -m"This is better"
    git graphlive 3 10
    git commit --amend -m"This is better again"
    git cat-file -t HEAD
    git cat-file -p 8c5540702df40fc4912c42ecd2271b53eae02ae5
    git cat-file -t fb0d1a7721b8b214616f7f5cfc27f95cd0363dcc
    git cat-file -p fb0d1a7721b8b214616f7f5cfc27f95cd0363dcc
    git cat-file -t 8efbc2bad4ede3ebb37482c41819c7906a82008a
    git cat-file -p 8efbc2bad4ede3ebb37482c41819c7906a82008a
    cp first.txt second.txt
    git add .
    git commit -m"Two"
    git cat-file -p HEAD
    git cat-file -p 1cbefbe658e97c9dd3d23057bfa0dba7d5c57997
    git rev-parse HEAD
    vim .git/objects/da/c03d6e8a61f41974a19adf80044c64bbaa5717 
    git fsck
    git init project2
    generaterandomchanges 10 sample txt
    git reset --soft 7c827d810c8b797fe24eadfa128f20919ee2867e
    git commit -m "Better bundling of chANGES"
    git reset --hard f3193a8
    git log --oneline
    echo newthing >> newfile.txt
    git clean -nd
    git help clean
    touch .env
    echo SECRETSTUFF >> .env
    mkdir output
    cd output
    generaterandomfiles 10 build log
    tree
    ls -al
    git status -u
    vim .gitignore
    git add .gitignore
    git commit -m"Ignoring log and env vars"
    git clean -fdX
    git revert 300c09d9dd72685116e2b7958a3da10e9cbf5dbe
    cd project2
    git graphlive 5
    git show 
    git commit -a -m"Four changes"
    git commit -a -m"Regression"
    git commit -a -m"Brent smart change"
    git revert 00c1fa8
    cat sample1.txt
    vim sample1.txt
    git mergetool -t opendiff
    git commit 
    git clean -nfd
    git clean -fd
    cd ..
    pwd
    git clone https://github.com/githubteacher/hellogitworld
    cd hellogitworld
    git log
    vim pom.xml
    git commit -a -m"Making a bad change"
    git log --oneline --decorate
    git reset --hard origin/master
    git reflog
    git show 449c614
    git show 449c614:pom.xml
    git cat-file -p 449c614
    git cat-file -p 7c4d32d066cce196d3adff99d2a7434672bac5d2
    git show 449c614:pom.xml 
    git show 449c614:src/
    git log --stat -1 449c614
    git log --stat -1 HEAD~6
    git fetch
    head README.txt
    git remote -v
    clear
    git remote -v 
    git remote add other https://github.com/githubteacher/hellogitworld
    git fetch other
    git rev-parse origin/master
    git rev-parse other/master
    git branch 
    git remote rm other
    git checkout readme-fixup
    git branch -r
    git remote add myfork https://github.com/githubstudent/hellogitworld
    git branch matthewsgreatidea
    git checkout matthewsgreatidea 
    echo RADICALCHANGE >> pom.xml
    git commit -a -m"Radical change"
    git push -u myfork matthewsgreatidea 
    cat .git/config
    git status
    git branch -vv
    z /Users/mccm06/Documents/Code/GitHub/teach.github.com
    git
    cd script
    z /Users/mccm06/Documents/Code/GitHub/trainingteam_git

## Command Line Day Two

    cd hellogitworld
    git pull origin _master
    git pull origin +master
    git reset --hard FETCH_HEAD
    git rev-parse HEAD
    git branch idea1
    git branch -d idea1
    git branch idea1 a13dba1
    git tag RELEASE_1.0 a13d
    git tag RELEASE_1.0.1 a13d
    git checkout idea1
    to.scratch
    cd hellogitworld
    clear
    treelive 5
    ls
    touch NEWFILE.txt
    ls
    git checkout master
    rm NEWFILE.txt
    touch NEWOTHER.txt
    git checkout master
    ls
    git branch idea2
    git checkout idea2
    git status
    git add .
    git status
    git commit -m"Feature"
    git checkout master
    git pull origin +master:master
    git pull origin +master:foo
    git pull origin +foo:master
    git checkout -b ideamatthew
    git status
    vim matthewideas.txt
    git add matthewideas.txt
    git commit -m"Matthews feature"
    git push origin ideamatthew 
    git push -u origin ideamatthew 
    git help branch
    git fetch
    git status
    git fetch
    git status
    git merge origin/master
    git status
    git checkout master
    git pull
    git status
    git pull
    git checkout -
    git push 
    git branch -vv
    hub pull-request
    generaterandomchanges 2 sample txt
    hub pull-request
    git push 
    hub pull-request
    hub browse
    clear
    git checkout master
    git branch -a
    gitx
    git status
    git checkout master
    git pull 
    git rev-parse HEAD
    git checkout -b rebaseexample
    generaterandom 5 rebasebranch txt
    generaterandomchanges 5 rebasebranch txt
    git push -u origin rebaseexample 
    git checkout master
    generaterandomchanges 3 masterbranch txt
    git pull
    git checkout rebaseexample 
    cd hellogitworld
    git graphlive 5
    git graphlive 15
    git push origin master:master
    git pull
    git checkout master
    git pull
    git checkout rebaseexample 
    git rebase master
    git checkout master
    git merge rebaseexample 
    z git_git
    git l2
    cd -
    git log --pretty=raw
    git status
    git reset --hard origin/master
    git checkout rebaseexample 
    git reset --hard origin/rebaseexample 
    git rebase -i f95077
    git checkout master
    git merge --squash rebaseexample 
    git commit 
    git tag REBASEEXAMPLE rebaseexample 
    git branch -d rebaseexample
    git branch -D rebaseexample
    to.scratch
    ls
    hub clone hellogitworld
    ls
    cd hellogitworld
    git cat-file -p HEAD
    ls
    git log --oneline
    git cat-file -p 755fd57
    git cat-file -p HEAD
    git replace 783542 0f697ee1458025735cbe3ceb9d1a40ac2281fc0b
    git reset --hard HEAD
    ls
    git diff 4b825dc642cb6eb9a060e54bf8d69288fbee4904
    open .git
    cd ..
    git init project1
    cd project1
    git commit -f -m"Empty"
    git help commit
    git commit --allow-empty -m"Test"
    git commit --allow-empty -m"Test2"
    git cat-file -p HEAD
    git cat-file tree 4b82
    git cat-file -p 4b82
    git cat-file -t 4b82
    cd ..
    cd hellogitworld
    cat .git/config
