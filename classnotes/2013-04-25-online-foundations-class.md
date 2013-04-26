---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-25-online-foundations-class.md
eventdate: 2013-04-25
---

## Teachers
* Matthew McCullough
* Jason Salaz

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

## Command Line History - Day One

    git --version
    git config user.name
    git config user.email
    git config --global user.name "Matthew J. McCullough"
    git config user.name
    pwd
    git init project1
    open .
    cd project1
    git status
    cd ..
    git status
    cd project1
    clear
    vim first.txt
    git status
    git add .
    git status
    git commit -m "My first commit"
    git status
    ls
    clear
    vim first.txt
    git status
    git add first.txt
    git status
    git reset HEAD first.txt
    cat first.txt
    git add -p
    git status
    git commit -m "Fix part one"
    git add .
    git commit -m "Fix part two"
    git status
    clear
    git log
    git show 32f3ca
    git status
    vim first.txt
    git diff
    git add .
    git diff
    git status
    git reset HEAD first.txt
    git diff
    git diff --color-words
    git add -p 
    git status
    git diff 
    git diff --staged
    git diff HEAD
    git diff --staged
    git diff 
    git diff HEAD
    git commit -m "Part of the changes"
    git commit -a -m "The rest of the changes"
    git status
    clear
    git log
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --format=raw
    clear
    git log -1
    git log -3
    git log -3 --oneline
    clear
    git graphlive 20
    cd project1
    git graphlive 20
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    clear
    ls
    git status
    git add -A .
    git status
    git commit -m "Renamed it"
    git status
    git add -A .
    git status
    git commit -m "Changes with rename"
    clear
    git reset --hard
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git hgwstudentfromcli
    ls
    cd hgwstudentfromcli
    git log
    pwd
    git log -1
    clear
    ls
    vim matthewfirstcontrib.txt
    git add .
    git commit -m"Change from CLI"
    git push 
    gitk
    git gui
    clear
    git branch
    git branch -r
    git pull
    cat matthewfirstcontrib.txt
    head matthewfirstcontrib.txt

## Chat History - Day One
    TBD

## Command Line History - Day Two

    git branch
    git branch matthewfeature1
    git checkout matthewfeature1 
    git branch
    vim firstreduxredux.txt
    git commit -a -m "A small change on the feature branch"
    git checkout master
    git checkout matthewfeature1 
    cp firstreduxredux.txt second.txt
    git status
    git add .
    git commit -m "A copy of a file"
    git checkout master
    git checkout matthewfeature1 
    git checkout -
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git add .
    git commit -m"Nine thousand and one"
    cd ..
    git checkout -
    cd ..
    ls
    cd hgwstudentfromcli
    clear
    git log -1
    pwd
    git remote -v
    git pull
    git branch
    git log -1
    git branch matthewfeature1
    git checkout matthewfeature1
    vim matthewfeature1.txt
    git add matthewfeature1.txt
    git commit -m "Feature file"
    git branch
    pwd
    clear
    cd ..
    cd hgwstudentfromcli
    git graphlive 25
    git graphlive 20
    git branch -vvv
    git push -u origin matthewfeature1 
    cat .git/config
    git pull
    git branch -a
    git branch
    git remote add official https://github.com/githubteacher/hellogitworld.git
    git fetch official
    ls
    git checkout master
    git branch -vv
    git merge official/master
    git push 
    git fetch official 
    git merge official/master
    git push
    git branch -a
    git checkout origin/feature_image
    git checkout master
    git diff origin/master official/master
    git diff origin/master master
    git diff offical/master master
    git diff official/master master
    git log official/master...master
    git log official/master...master --oneline
    gitk --all&
    clear
    git status
    git remote -v
    echo STUFF >> thegithubstudent.txt
    git commit -a -m"Stuff"
    git reset --hard origin/master
    git reflog
    git reset --hard e57cead
    git reflog
    git reset --hard bb35234
    git log -1
    git reset --hard e57cead
    git log -1
    git branch -r
    git branch -r --no-merged
    git branch -r --merged
    git branch -r --no-merged
    git merge origin/fbaddfiles -m "Merging in thing 1"
    git branch -r --no-merged
    git merge official/bisect
    git status
    cat pom.xml| more
    vim pom.xml
    git add pom.xml
    git status
    cat .gitignore
    git mergetool -t opendiff
    git status
    git commit 
    git status
    echo ran my tests
    git reflog
    git reset --hard e57cead
    git log -2
    git merge --abort
    git reflog
    git reset --hard 5af1e7a
    clear
    echo CHANGE >> conflict.txt
    git status
    git clean -fd
    echo CHANGE >> conflict2.txt
    git status
    git commit -a -m "Changes"
    git commit --amend -m"Changes that make it all better"
    echo CHANGES2 >> other.txt
    git add .
    git commit --amend -m"Changes that make it all better"
    git rm other.txt
    git commit --amend -m"Changes that make it all better"
    git checkout HEAD~1 -- other.txt
    git add other.txt
    git commit --amend -m"Changes that make it all better"
    git tag
    git tag JASON_GOOD_POINT
    git tag JASON_GOOD_POINT2 5af1e7a
    git rev-parse JASON_GOOD_POINT2
    git rev-parse origin/master
    git tag
    git tag -a JASON_WITH_COMMENT
    git tag
    git show JASON_GOOD_POINT
    git show JASON_WITH_COMMENT 
    git tag -s JASON_WITH_SIGN
    git config user.name
    git config --global user.name "Matthew McCullough"
    git tag -s JASON_WITH_SIGN
    git config user.email
    git checkout master
    git reset --hard origin/master
    gitk --all &
    git show e59e39b655de
    git cherry-pick e59e39b655de
    git log --format=raw -1
    git reset --hard HEAD~1
    git cherry-pick -x e59e39b655de
    git log --format=raw -1
    git help revert
    git help reset
    git status
    git reset --hard origin/master
    vim other.txt
    vim other2.txt
    git add .
    git stash
    git status
    git stash --list
    git stash list
    git stash pop
    git add other
    git add other.txt
    git stash
    git stash pop
    git stash
    vim other.txt
    git commit -a -m"End"
    git stash pop
    cat other.txt
    git help stash
    git stash clear
    git status
    git stash -- other.txt
    git stash -p
    git stash list
    git stash apply stash@{1}
    git graphlive 4
    git reset --hard origin/master
    git branch featurerebase
    git stash clear
    git tag -d JASON_*
    git tag -d JASON_GOOD_POINT 
    git tag -d JASON_GOOD_POINT2 
    git tag -d JASON_WITH_COMMENT 
    clear
    generaterandomchanges 3 bugfixonmaster txt
    git graphlive 10
    git checkout featurerebase 
    generaterandomchanges 3 featurework txt
    gitk --all
    git rebase master
    git checkout master
    git merge featurerebase 
    cd ..
    ls
    clear
    svn co https://github.com/githubstudent/hellogitworld.git/trunk
    clear
    git svn clone https://github.com/githubstudent/hellogitworld.git/trunk trunk2


## Chat History - Day Two
    TBD
