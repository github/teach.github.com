---
layout: bare
title: Dublin Public Workshop
description: Dublin Public Workshop Class Notes
tags: [notes]
path: classnotes/2013-10-14-dublin-public-workshop.md
eventdate: 2013-10-14
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Lorna Mitchell ([Twitter](http://twitter.com/lornajane), [GitHub](https://github.com/lornajane))

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
* [Git Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)


## Command History

    git --version
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    git init tcube
    ls -la
    tree .git
    git commit -m "added the first nursery rhyme"
    git diff --staged
    git diff HEAD
    git reset rhyme.txt
    git diff
    git add -p
    git commit -m "excellent literature"
    git help log
    got log --format=raw
    git log --oneline
    git log --graph
    git log --oneline --graph --decorate
    git config alias.lol
    git log --patch
    rm something.txt
    git loglive
    cd tcube
    git loglive
    generaterandomfiles 5 cruft txt
    cat cruft1.txt
    git commit -m "Yay, cruft"
    git log --stat
    cp cruft5.txt cruft5.txt
    cp cruft5.txt cruft6.txt
    vi cruft6.txt
    git commit --amend
    git rm cruft1.txt
    rm cruft2.txt
    git rm cruft2.txt
    open .
    git add -u .
    git rm --cached cruft6.txt
    ld
    git commit -m "Cleanup"
    echo "log stuff" > localhost.log
    vi .gitignore
    git add .gitignore
    git commit -m "Ignoring"
    git config core.excludesfile
    vi `git config core.excludesfile`
    git log --format=raw
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    git commit -m "Files to move"
    mkdir files
    git mv file1.txt files/
    tree
    mv file2.txt files/
    git rm file2.txt
    git add files/file2.txt
    git add -A .
    vi listing.txt
    git add -A .
    git commit -m "Moved things"
    git log --stat -M
    git log --stat -M80
    vi files/listing.txt
    git commit -m "Change after move"
    git log --stat -- files/listing.txt
    git log --follow --stat -- files/listing.txt
    git checkout -b feature
    git branch monkey
    git commit -m "create a readme file for the project"
    git log --oneline --graph
    git branch -d monkey
    vim rhyme.txt
    git add rhyme.txt
    git commit -m "more traditional rhyme"
    touch something.txt
    git checkout feature
    cat rhyme.txt
    git merge feature
    git log --stat
    git checkout -b better-feature
    git commit -m "a lovely file"
    vim something.txt
    git add something.txt
    git commit -m "more stuff"
    git commit -m "better instructions"
    git checkout -b better-feature2
    git touch um.txt
    touch um.txt
    git add um.txt
    git commit -m "just for fun"
    git checkout better-feature
    git merge master
    git log
    git commit -m "updated readme"
    git commit -m "updated docs"
    git merge better-feature
    vim README
    git add README
    git commit
    git loglive -10
    git branch feature3
    vi README
    git mv README README.md
    git commit -m "Renamed README"
    git checkout feature3
    vi xanadu.txt
    git commit -m "Stately dome"
    git lol -7
    git rebase master
    git checkout master
    git merge feature3
    git lol -3
    cd files
    generaterandomchanges 10 random txt
    git rebase -i a65a4de
    git reset --hard ae3b
    git reset --hard b294648
    git reflog
    cd ..
    rm cruft6.txt
    rm localhost.log
    git branch -d feature3
    git branch -d better-feature
    git branch -d better-feature2
    git branch -D better-feature2
    git remote add origin https://github.com/githubteacher/tcube-workshop.git
    git push -u origin master
    cat .git/config
    git branch -vv
    git branch
    git branch -a
    git fetch
    git diff origin/master
    git commit -m "Eagerly wished"
    git fetch
    git lol -8
    git lol -10
    export PS1="$ "
    tr.git
    cd scratch
    pwd
    git clone https://github.com/githubstudent/tcube-workshop.git
    cd tcube-workshop
    ls
    git lol
    ll
    git commit -m "Lost Lenore"
    git pugh
    cat raven.txt
    git reset --hard HEAD^
    git add .
    git commit -m "Radiant"
    git pull
    git pull https://github.com/githubstudent/tcube-workshop.git master
    git status
    vi raven.txt
    git add raven.txt
    git commit -m "Merge the things"
    git push


