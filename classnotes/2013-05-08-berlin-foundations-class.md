---
layout: bare
title: Berlin Foundations Class
description: Berlin Foundations Class Notes
tags: [notes,private,online]
path: classnotes/2013-05-08-berlin-foundations-class.md
eventdate: 2013-05-08
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* John Britton ([Twitter](http://twitter.com/johndbritton), [GitHub](https://github.com/johndbritton))

## Class-Specific Resources
* [Gnome Keyring and Git Credential Cache](http://stackoverflow.com/questions/13385690/how-to-use-git-with-gnome-keyring-integration)
* [Git Submodules - ProGit Book Chapter](http://git-scm.com/book/en/Git-Tools-Submodules)
* [Matthew's Dot Files](https://github.com/matthewmccullough/dotfiles)


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

    git --version
    ps -aef | grep git
    git init project1
    open project1
    vim first.txt
    git status
    mv first.txt project1
    cd project1
    git status
    git add first.txt
    git status
    git commit -m "My first commit"
    git config user.name
    git config user.email
    git status
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    echo $EDITOR
    git status
    vim first.txt
    git status
    git diff
    git config --global color.ui true
    git log 
    git rev-parse HEAD
    git rev-parse HEAD^^^^^
    git status
    git add -p first.txt
    git status
    git diff --staged
    git diff
    github
    git commit -m "Part of the changes"
    git commit -a -m "The rest of the changes"
    vim first.txt
    git commit -a -m "Stuff"
    git log 
    git stauts
    git status
    mkdir source
    mv first.txt source
    git status
    cd source
    vim first.txt
    mv first.txt second.txt
    git status
    cd ..
    git add -A .
    git status
    git commit -m "Refectored"
    git mv source/second.txt third.txt
    git log --stat
    git status
    git commit -m"Renamed again"
    git log --stat
    git mv third.txt fourth.txt
    git status
    git diff --staged
    git log --stat
    git log -p
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    git log
    vim matthewmccullough.txt
    git add matthewmccullough.txt
    git commit -m"Matthew was here"
    git push
    subl ~/.gitconfig
    git config --list | grep diff
    clear
    git remote -v
    cat .git/config
    git remote rename origin myfork
    cat .git/config
    git remote -v
    git remote add githubteacher https://github.com/githubteacher/hellogitworld.git
    git fetch githubteacher
    git branch -a
    git merge githubteacher/master
    git status
    git push
    git status
    git log --graph --abbrev-commit --all --pretty=oneline --decorate
    gitk --all&
    git branch mynewfeature
    echo "Dont do that last command. I was just showing you a flavor"
    open .
    git checkout mynewfeature 
    vim myfeaturefile.txt
    git status
    git add myfeaturefile.txt
    git commit -m"Feature work"
    git checkout master
    rm matthewmccullough.txt
    echo OH NO
    echo get it back
    git checkout -- matthewmccullough.txt
    git branch -vv
    git checkout bisect
    git checkout --track myfork/bisect
    git log --oneline
    git bisect start
    git bisect bad HEAD~5
    git bisect good HEAD~11
    git bisect run mvn test
    git bisect log
    git bisect reset
    git branch
    git checkout mynewfeature 
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git add .
    git commit -m"Thousands"
    git checkout master
    git checkout mynewfeature 
    cd ..
    git checkout mynewfeature 
    git checkout master
    git merge mynewfeature -m "Merged"
    git branch -d mynewfeature 
    gitk --all
    git branch mynewfeaturerestored 8aff66b
    gitk --all
    cd ..
    git clone https://github.com/githubteacher/hellogitworld.git hgwunified
    cd hgwunified
    git fetch
    git log a3f9e11..144b473
    git log -2 origin/feature-green
    git log -5 origin/feature-green
    git fetch
    git rev-parse HEAD
    git status
    git remote -v
    git fetch
    git pull
    git rev-parse HEAD
    git merge origin/feature-green
    git status
    cat gunnar.txt
    git checkout --theirs -- gunnar.txt
    git add gunnar.txt
    git commit
    git branch -vv
    git branch -vv -a
    git branch -vv
    vim README.txt
    git status
    git stash
    git status
    git stash list
    git help stash
    vim README.txt
    git add .
    git commit -m"John"
    git stash pop
    cat README.txt | more
    git stash
    git stash apply
    git commit -m"Something"
    git checkout fbmaster 
    git status
    git stash
    git checkout fbmaster 
    git commit -m"Something"
    git stash list
    cd ..
    svn co https://github.com/githubteacher/hellogitworld/truk
    svn co https://github.com/githubteacher/hellogitworld/trunk
    git svn clone https://github.com/githubteacher/hellogitworld/trunk covertedtogitfromsvnbygithub


## Chat History

    matthewmccullough   git config --global core.editor "THINGGOESHERE"
    matthewmccullough   http://teach.github.com/presentations/git-foundations.html
    johndbritton    git config --global color.ui true
    matthewmccullough   git rev-parse HEAD
    Jonas   I'm stuck in the log (Windows PowerShell) - is there a command to leave it?
    (sitting on wooden bench in the front)
    Gunnar B.   q, or :q
    (maybe)
    Jonas   ok, something solved it. Thanks
    Jonas   yes, "q" did the trick
    Gunnar B.   git diff --staged does not show up the fact that file has been renamed. Any suggestions out there what went wrong?
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    matthewmccullough   git remote add githubteacher https://github.com/githubteacher/hellogitworld.git
    matthewmccullough   git log --graph --abbrev-commit --all --pretty=oneline --decorate
    matthewmccullough   git clone https://github.com/githubteacher/hellogitworld.git hgwunified
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    matthewmccullough   git clone https://github.com/githubteacher/hellogitworld.git hgwunified
    Gunnar B.   Worth noting: Matthew's gitconfig file @ github:
    https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig
    Erika   Thank you Mathew and John, this was a great session!
