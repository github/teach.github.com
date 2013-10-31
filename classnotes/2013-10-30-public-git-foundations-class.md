---
layout: bare
title: Public Git Foundations Training
description: Public Git Foundations Training Class Notes
tags: [notes]
path: classnotes/2013-10-30-public-git-foundations-class.md
eventdate: 2013-10-30
---

## Teacher
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Course Materials, Links
* [Course Slides](http://teach.github.com/presentations/)
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

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
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)


## Command Line History

## Console History

    git --version
    git init project1
    cd project1
    mate first.txt
    git status
    git add first.txt
    git status
    git commit -m "My first commit"
    git status
    cd ..
    cd projectfromgui
    git status
    vim first.txt
    git status
    cd ..
    git clone https://github.com/githubstudent/introcpp.git
    cd introcpp
    git fetch
    cd introcpp
    cat introcpp.cpp
    git branch -a
    git show remotes/origin/master
    git diff master remotes/origin/master
    git pull
    cat introcpp.cpp
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    ls
    mate matthewmcconhisfork.txt
    git status
    git add matthewmcconhisfork.txt
    git commit -m "Matthews file change"
    z teach.github.com
    ack proxy
    cd classnotes
    ack proxy
    git push
    pwd
    clear
    pwd
    cd ..
    cd hellogitworld
    git graphlive 25
    ungit
    git graphlive 25
    git branch feature1matthew
    git checkout feature1matthew 
    treelive 10
    touch FEATURECODEDONTHEBRANCH.txt
    git add .
    git commit -m "Feature file"
    git checkout master
    git checkout feature1matthew 
    mkdir dozen
    cd dozen
    generaterandomfiles 12 sample txt
    git add .
    git commit -m "One non-bakers dozen"
    git checkout master
    cd ..
    pwd
    clear
    git checkout feature1matthew 
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git add .
    git commit -m "Over nine thousand"
    git checkout master
    cd ..
    git checkout feature1matthew 
    clear
    git status
    git branch
    github
    git checkout master
    git diff master feature1matthew 
    git show feature1matthew:thousands/sample999.txt | mate
    cd ..
    ls
    git clone https://github.com/githubstudent/myfirstwebproject.git
    cd myfirstwebproject
    git branch -a
    git checkout acrazyidea
    cd ..
    cd hellogitworld
    ls
    mvn test
    git pull
    git status
    git merge --no-ff --no-commit breakthetest
    git merge --no-ff --no-commit origin/breakthetest
    mvn test
    git merge --abort
    git status
    clear
    ls
    vim fix.txt
    git status
    git stash
    git status
    git checkout master
    git stash pop
    git status
    git stash 
    git stash list
    vim pom.xml
    git stash 
    git stash list
    git stash pop
    git reset --hard
    git status
    git stash pop
    git commit -a -m "Changes"
    ls
    vim src/Division.groovy
    git stash
    vim src/Division.groovy
    git commit -a -m"Explicit return"
    git stash pop
    git status
    git diff
    git reset --hard
    git status
    git s
    git diff
    # day two
    cd hellogitworld
    git status
    git checkout master
    clear
    cd hellogitworld
    git graphlive 25
    touch file1.txt
    git add .
    touch file2.txt
    git add .
    historytailzsh 5 10
    touch file3.txt
    git status
    git commit -m "All three of the files that belong to this feature"
    git add file3.txt
    git commit --amend 
    git reflog
    git reset --soft f29c6be
    git status
    git reflog
    git reset --hard 81d2569
    git status
    git branch featuremergerecursive
    mate masterfile.txt
    git status
    git add .
    git commit -m "Master branch changes"
    git checkout featuremergerecursive 
    mate featurefile.txt
    git add .
    git commit -m"Feature work"
    git checkout master
    git merge featuremergerecursive 
    git log --format=raw -1
    git reflog
    git reset --hard 920e632
    git checkout featuremergerecursive 
    git rebase master
    git checkout master
    git merge featuremergerecursive 
    clear
    git status
    git branch rebasewithconflict
    ls
    vim build.gradle
    git commit -a -m"Hotfix junit to 4.8.3"
    git checkout rebasewithconflict 
    vim build.gradle
    git commit -a -m"Upgrade JUnit to 5"
    ls
    vim src/Square.groovy
    git commit -a -m"Tune up the return"
    git rebase master
    vim build.gradle
    git rebase --continue
    git add build.gradle
    git rebase --continue
    git checkout master
    git merge rebasewithconflict 
    clear
    git log 
    git log --all
    git log --all --graph
    git log --all --graph --oneline
    z git_git
    git log --author=Kyle
    git log --author=Kyle --committer=Junio
    git log --author=Kyle --committer=Junio -S fix
    git log --diff-filter=M --stat
    git log --diff-filter=D --stat
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    cd -
    git fetch
    git remote -v
    git reset --hard origin/master
    vim build.gradle
    git commit -a -m "Fixes #2 by bumping up the Gradle version to .333"
    git push
    git revert fdc333c
    git push
    git log --oneline -6
    git tag -a RELEASE_5.0 78f4771
    git push origin RELEASE_5.0 
    git tag -S RELEASE_SIGNED HEAD
    git tag -s RELEASE_SIGNED HEAD
    tig 
    github
    git difftool -t p4merge HEAD..HEAD~3
    git difftool -t opendiff HEAD..HEAD~3
    git difftool -t kdiff HEAD..HEAD~3
    git difftool -t myaraxis HEAD..HEAD~3
    git difftool -t myaraxis HEAD~3 HEAD~5
    clear
    git branch mergeconflict
    vim pom.xml
    git commit -a -m "Four eight one on master"
    git checkout mergeconflict 
    vim pom.xml
    git commit -a -m "Three nine one on feature"
    git checkout master
    git merge mergeconflict 
    git mergetool
    git status
    git merge --abort
    git rev-parse HEAD
    git rev-parse master
    git rev-parse 4873
    git show master^
    git show master^^
    git show master^^^^^
    git show master^^^^^^^^
    git show master~5
    git log -1 --pretty=raw
    git tag REMEMBERTHISPOINTBEFORELUNCHHUNGERSETIN master~3
    git reset --hard origin/master
    open .
    git branch mergeme
    vim build.gradle
    git commit -a -m"Gradle version bump"
    mate src/Division.groovy
    git commit -a -m "Explicit return"
    git checkout mergeme
    git status
    git add -A .
    git status
    git commit -m "Moved all the files"
    git checkout master
    git merge mergeme -m"It just works"
    cat src/groovy/Div.groovy
    which -a svn
    cd ..
    git svn clone https://github.com/matthewmccullough/dotfiles/trunk dotfilestr
    svn co  https://github.com/matthewmccullough/dotfiles/trunk


## Chat History

