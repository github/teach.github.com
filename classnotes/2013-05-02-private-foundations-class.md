---
layout: bare
title: Private Foundations Class
description: Private Foundations Class Notes
tags: [notes,private,online]
path: classnotes/2013-05-02-private-foundations-class.md
eventdate: 2013-05-02
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brian Doll ([Twitter](http://twitter.com/briandoll), [GitHub](https://github.com/briandoll))

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
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
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

# Supplemental Topics based on Student Questions
* Show the process of using Git
* When I get stuck in a funny state, how do I avoid recloning?
* Show off GUIs: SourceTree, GitHUb for Mac, SmartGit
* Git ignores
* Git line endings
* Network concepts

## Continuous Integration
* [Jenkins Book](http://www.wakaleo.com/books/jenkins-the-definitive-guide)
* [Jenkins Promoted Builds Video](http://www.youtube.com/watch?v=Gd8OfAmKkMQ)
* [Janky - Code](https://github.com/github/janky)
* [Janky - Blog Post](https://github.com/blog/1013-janky)
* [GitHub Commit Status API](https://github.com/blog/1227-commit-status-api)
* [Jenkins Commit Status Plugin](https://github.com/controlgroup/jenkins-github-commit-status)
* [Jenking Commit Status on GitHub - Shortcut](http://bruno.im/2012/oct/24/github-pull-requests-status-jenkins/)
* [Git Notes Jenkins Plugin](https://wiki.jenkins-ci.org/display/JENKINS/git-notes+Plugin)
* Consultant for workflow, process, troubleshooting: [Peter Bell](http://training.github.com/trainers) via email at training@github.com.

## Command Line History

    git init project1
    open project1
    git commit -m "My first commit"
    git rev-parse 79f6
    git config alias.addandcommit "git add . && git commit"
    giecho DIRT >> first.txt
    echo DIRT >> first.txt
    git config alias.addandcommit '!git add . && git commit'
    git addandcommit -m "Test"
    git diff --color-words
    git add -p 
    git diff --staged
    github
    git commit -m "Part of the changes"
    git graphlive 10
    git log --graph --all --pretty=oneline --abbrev-commit --relative
    git branch feature-one-perf-enhance
    git branch wip-thing
    git branch -d wip-thing 
    git l2
    echo makeoutput1 > mo1.log
    echo makeoutput1 > mo2.log
    git clean 
    git clean -n
    git checkout -b featurethatididnthaveyet
    echo CHEATING >> first.txt
    git commit -a -m"Small change"
    echo NEWSTUFF >> second.txt
    git commit -m"Second file"
    git checkout feature-one-perf-enhance 
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git ad .
    git commit -m "Thousands"
    git checkout -
    echo HELLO >> first.txt
    git help stash
    echo MoAR > first.txt
    echo "I think of stash as a forklift to move changes"
    echo STUFF >> first.txt
    git diff
    git stash
    git stash pop
    git stash list
    git branch
    git merge feature-one-perf-enhance 
    git reflog 
    git reset --hard c44feb6
    git merge --no-ff feature-one-perf-enhance 
    git branch --no-merge
    git branch --merge
    git branch -d featurethatididnthaveyet 
    git branch -d feature-one-perf-enhance 
    git reset --hard abbfebd
    git reset --hard 939fb67
    git branch featureconflict
    git commit -a -m"Red color"
    git checkout featureconflict 
    git commit -a -m"Blue color feature"
    vim first.txt
    git add first.txt
    git commit 
    git reflog
    git reset --hard 3b10d53
    it status
    cat first.txt
    git mergetool --toolhelp
    git difftool --toolhelp
    git difftool --tool-help
    git merge featureconflict 
    git mergetool -t p4merge
    subl ~/.gitconfig
    which -a 
    which -a  git
    git checkout HEAD~3 -- first.txt
    git commit -m "Undoing Matthews bad changes"
    git log 
    git revert 8e3facac120186e1633c715300d3da4f524f5028
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    git merge origin/feature_image
    git reset --hard origin/master
    git rev-parse HEAD
    vim matthewmmccullough.txt
    git commit -m"My named file"
    open .git
    git remote add teacher https://github.com/githubteacher/hellogitworld.git
    git fetch teacher
    git branch -a
    git merge teacher/master
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    git branch fix-for-color
    git branch -m fix-for-color fix-for-temperature
    git branch 
    git branch newbranch fix-for-temperature 
    git checkout fix-for-temperature 
    git commit -m"Feature work"
    git commit -am"Feature work"
    git push -u origin fix-for-temperature 
    git checkout eddiesbranch
    git log -2
    git log -3
    git log -5
    git show 70dffa01f1afc03a3ee309a310c634cd52b06134
    git add .
    git commit -m "Tabs"
    git branch -r
    git log master..origin/fix-the-whole-world
    git log master..origin/fix-the-whole-world --oneline
    git diff master origin/fix-the-whole-world 
    git remote rename origin central
    git branch -vv
    git branch testci
    git checkout testci
    generaterandomchanges 2 sample txt
    git push -u origin testci 
    git push -u central  testci 
    git config alias.ignorechange
    git config alias.ignorechanges
    git submodule add https://github.com/githubtraining/submodule
    git commit -m"Submodule"
    cd submodule
    git fetch
    git checkout origin/master
    git rev-parse master
    git checkout ab0c1
    git add submodule
    git cat-file -p HEAD
    git cat-file =p 60c3352b385cee47061706c57bd35c08d6b5ebdf
    git cat-file -p 60c3352b385cee47061706c57bd35c08d6b5ebdf
    git status
    git commit -m"Submodule updated"
    git clone https://github.com/githubtraining/mastermodule
    cd mastermodule
    cd hgw2
    git submodule init
    git submodule update
    rm -rf mastermodule
    git clone https://github.com/githubtraining/mastermodule --recurse-submodule
    cd project1
    cd hgwteacher
    git commit -a -m"This"
    hub browse
    echo CHANGE >> README.txt
    git commit -a -m
    git commit -a -m "Local"
    git push
    git pull
    git merge --abort
    git branch master-with-my-work
    git reset --hard central/master
    git checkout master-with-my-work 
    git merge master
    cat README.txt
    vim README.txt
    git commit -a 
    git merge master-with-my-work 
    git branch mm/feature1
    git tag
    git rev-parse RELEASE_1.0
    git show RELEASE_1.0
    git tag RELEASE_2.0 
    git tag RELEASE_2.0 master~2
    git tag RELEASE_3.0 master~2
    git log --graph --pretty=oneline
    git log --graph --pretty=oneline --decorate
    git tag -a RELEASE_4.0 HEAD~1
    git show RELEASE_4.0
    git rev-parse RELEASE_4.0
    git cat-file -t RELEASE_4.0
    git cat-file -t RELEASE_2.0
    git tag -s 
    git config user.name
    git config user.email
    git tag -s RELEASE_5.0
    git push 
    cat .git/config
    git push --tags
    git remote -v
    git help tag
    git log
    git checkout 31fc029e05744278af55087faabcc0f3d9c13e86
    git checkout master
    git checkout bisect 
    git reset --hard
    git s
    git clean -fd
    mvn test
    git log --oneline
    git bisect start
    git bisect good 56cb315
    git bisect bad
    git bisect run mvn test
    git bisect reset


## Chat History

    https://github.com/githubteacher/hellogitworld
    Hash: 8d80474ffc3747e3375651cc2a0032c8599befd3
    https://github.com/githubteacher/hellogitworld/...
    https://github.com/githubteacher/hellogitworld/...
    git remote add teacher https://github.com/githubteacher/hellogitworld.git
    https://github.com/githubteacher/hellogitworld.git
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    https://github.com/githubteacher/hellogitworld/...
    git submodule add https://github.com/githubtraining/submodule
