---
layout: bare
title: NFJS GitHub Workshop
description: NFJS GitHub Workshop class notes
tags: [notes, event]
---

# NFJS GitHub Workshop
_Held on 2012-11-02 and taught by Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

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
* Best is 1.7.10 or higher

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


## Git Half-Day Command Line History

    git init project1
    cd project1
    git config -e --global
    git commit -m "My first commit"
    touch first.txt
    vim first.txt
    git diff --word-diff
    git diff --color-words
    git add -p first.txt
    git commit -m "My second commit"
    git commit -am "My third commit"
    git clone https://github.com/githubstudent/hellogitworld.git
    git branch matthewfeature
    touch matthewfeature.txt
    git commit -m"Matthew feature file"
    subl matthewfeature.txt
    git add matthewfeature.txt
    git commit -m"Feature work
    git commit -m"Feature work"
    git remote -v
    git push -u origin matthewfeature
    git remote add official https://github.com/githubtrainer/hellogitworld
    git merge remotes/official/master
    git checkout matthewfeature
    git checkout origin/bisect
    gitk &
    git bisect good 56cb3
    
    git clone https://github.com/jquery/jquery-mobile.git
    cd jquery-mobile
    git log 
    git log --author="Matthew"
    git log --author="Matthew" --since=2.months.ago
    git log --author="Matthew" --since=9.months.ago
    git log --author="Matthew" --since=19.months.ago
    git log --author="Matthew" --since=19.months.ago --patch
    git log --author="Matthew" --since=19.months.ago --patch -S corners
    
    git clone https://github.com/githubtrainer/hellogitworld hgwt
    cd hgwt
    generaterandomchanges 3 nfjs txt

# Git 90 Minute Class Command Line History

    git --version
    git config user.name
    git config user.email
    git config --global user.email "matthew@github.com"
    git config --global user.name "Matthew McCullough"
    
    git init project2
    open .
    mate first.txt
    git add first.*
    git add *.txt
    git commit -m"My first commit"
    git log
    git add first.txt
    git diff
    git diff --staged
    git config alias.servehere
    git servehere
    
    
    cd ..;git servehere
    git clone git://10.0.1.16/project2 matthewp2
    cd project2
    
    git remote add origin https://github.com/matthewmccullough/project2.git
    git push -u origin master
    git clone https://github.com/githubstudent/poetry.git
    cd poetry
    git branch matthewmfeature
    git status
    git add matthewmfeaturefile.txt
    git commit -m"Branch file"
    git checkout master
    git checkout matthewmfeature
    git push -u origin matthewmfeature
    git branch -a
    vim matthewmfeaturefile.txt
    git add .
    git commit -m"Fixed it"
    git push
    clear
    git remote add official https://github.com/matthewmccullough/poetry.git
    git fetch official
    git merge official/master
    git ls-remote official
    generaterandomchanges 5 change txt
    git revert 97e4873
    cd ..
    ls
    git clone git@github.com:githubtrainer/hellogitworld
    cd hellogitworld
    git checkout bisect
    git log --oneline
    mvn test
    git bisect start
    git bisect bad
    git bisect good HEAD~13
    git bisect run mvn test
