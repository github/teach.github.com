---
layout: bare
title: Zero2Hero Vienna Foundations Workshop
description: Zero2Hero Vienna Foundations Workshop Class Notes
tags: [notes, workshop, public]
path: classnotes/2013-05-21-zero2hero-vienna-foundations-workshop.md
eventdate: 2013-05-21
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline

* Installing and Configuring Git
* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Understanding Git's Content Tracking
* Moving and copying files
* Branching and Merging in Git
* RefLog as a safety net
* Reset and revert
* Establishing upstream repositories
* Push, pull, and fetch
* Collaboration through Pull Requests
 

## Command History

    git --version
    git config --list
    vi ~/.gitconfig
    pwd
    git config user.name
    git config --global user.name "Tim Berglund"
    git config user.email
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    git config --list
    git config --list --global
    git config --list --local
    pwd
    git init newproject
    ls
    cd newproject
    ls
    ls -la
    tree .git
    tree .git
    vi raven.txt
    ls
    cat raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "Inital commit"
    tree .git
    git status
    vi raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "Eagerly wished"
    git status
    vi raven.txt
    git status
    git diff
    git add raven.txt
    git diff
    git status
    git diff --staged
    vi raven.txt
    git status
    git diff --staged
    git diff
    git diff HEAD
    git status
    vi raven.txt
    git diff
    git diff --color-words
    git diff --word-diff
    git help config
    git diff --color-words HEAD
    git status
    git diff --staged
    git status
    git add raven.txt
    git status
    git diff --staged
    git commit -m "Rare and radiant"
    git status
    git log
    git log --format=raw
    tree .git
    tree .git/objects | less
    git log --format=raw -1
    git log --stat
    git log --patch
    git log --stat -- raven.txt
    git log --stat -- *.txt
    git log --stat -- raven.*
    git help log
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --oneline
    git log --graph --decorate --oneline --all
    git lol
    git config --global alias.lol "log --graph --decorate --oneline --all"
    git lol
    git lol -2
    git lol --stat
    ls
    generaterandomfiles 6 junk txt
    git status
    cat junk1.txt
    cat junk2.txt
    git add .
    git status
    git commit -m "Commiting junk"
    git log --stat -2
    ls
    git rm junk1.txt
    ls
    git status
    rm junk2.txt
    ls
    git status
    git rm junk2.txt
    git status
    open .
    git status
    git add .
    git status
    git add -u .
    git status
    ls
    git rm --cached junk6.txt
    ls
    git status
    git reset HEAD junk5.txt
    git status
    git checkout -- junk5.txt
    git status
    ls
    git rm junk5.txt
    git status
    git commit -m "Cleaned up cruft"
    l
    ls
    git log --stat -2
    ls
    git status
    vi .gitignore
    git status
    git add .
    git status
    git commit -m "Added .gitignore"
    vi .git
    vi .gitignore
    mkdir -p src/main/resources
    echo ~ > src/main/resources/stupid.log
    git status
    vi src/main/resources/.gitignore
    git status -u
    git add .
    git status
    git commit -m 'More ignore"
    git commit -m 'More ignore\n'
    git log --stat -1
    cat `git config core.excludesfile`
    git status
    generaterandomfiles 5 file txt
    ls
    rm junk6.txt
    rm -rf src
    ll ~ > listing.txt
    ll
    git add .
    git commit -m "Files to move"
    git status
    git add -u .
    git status
    git log --stat -2
    git status
    git lol
    git commit --ammend
    git lol
    git commit --amend
    git lol
    git log --stat -1
    mkdir files
    tree
    git status
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    git add -A .
    git status
    git commit -m "Moved files"
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Moved and changed"
    git log --stat -3
    git log --stat -3 -M
    vi files/listing.txt
    git add .
    git commit -m "Change after move"
    git log --stat -4
    git log --stat -4 -M
    git log --stat -4 -M80
    git log --stat -M -- files/listing.txt
    git log --stat -M
    git log --stat -- files/listing.txt
    git log --stat -M50 -- files/listing.txt
    git log --stat -M50 --follow -- files/listing.txt
    git log --stat -M76 --follow -- files/listing.txt
    ll
    cd newproject
    export PS1="$ "
    tr.git
    cd scratch/newproject
    export PS1="$ "
    git loglive
    git branch
    git status
    git lol
    git branch feature
    git lol
    git branch
    vi raven.txt
    git add raven.txt
    git commit -m "Nameless"
    git lol
    git checkout feature
    cat raven.txt
    vi raven.txt
    git add .
    git commit -m "Title"
    cat raven.txt
    git checkout master
    cat raven.txt
    git merge feature
    git lol
    git log --format=raw =1
    git log --format=raw -1
    git branch -d feature
    git branch feature 7680d
    git branch -d feature
    vi raven.txt
    git add .
    git commit -m "Purple curtain"
    git branch feature2 a0589cf
    cat raven.txt
    git checkout feature2
    vi raven.txt
    git add .
    git commit -m "Fantastic"
    git checkout master
    git merge feature2
    git status
    vi raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "No conflict here"
    git reset --hard a0b1341
    git lol -5
    git reflog
    git branch adopted 5da06c1
    git checkout adopted
    git checkout master
    git reflog
    git branch -d adopted
    git branch -D adopted
    git reset --hard HEAD@{3}
    git reflog
    git status
    git remote add origin https://github.com/githubteacher/poetry.git
    git config --list --local
    git remote
    git remote -v
    git push -u origin master
    git lol -10
    tree .git/refs
    git branch -d feature2
    git fetch
    git lol -8
    git diff origin/master
    git diff HEAD..origin/master
    git checkout origin/master
    git checkout 7cbe550
    git checkout master
    git status
    vi ozymandias.txt
    git add .
    git commit -m "Ozymandias FTW"
    git lol
    git push
    git pull
    git lol -10
    git push
    vi ozymandias.txt
    git add .
    git commit -m "Shattered visage"
    git loglive -12
    git push
    git fetch
    git pull
    tr.git
    export PS1="$ "
    cd scratch
    ls
    git clone https://github.com/githubstudent/poetry.git
    git branch -a
    cd poetry
    ls
    git branch -a
    vi raven.txt
    git add .
    git commit -m "Some visitor"
    vi raven.txt
    git add .
    git commit -m "This it is"
    git push
    git fetch
    git loglive -10
    git merge origin/master
    git pull https://github.com/githubstudent/poetry.git master
    git status
    vi raven.txt
    git add raven.txt
    git commit -m "Resolved merge"
    git push
    git pull
    vi raven.txt
    git add raven.txt
    git commit -m "Oops, another conflict"
    git push
    cd ../newproject
    git remote -v
    git pull
    git branch tlberglund
    git checkout tlberglund
    ll
    vi ozymandias.txt
    git add .
    git commit -m "Yet survive"
    git lol
    git push -u origin tlberglund
    git fetch
    git branch -a
    git checkout rafacm
    git branch -a
    git log
    git log --stat
    vi moby-dick.txt
    git add .
    git commit -m "Complaints about Melville"
    git push
    git fetch
    git checkout master
    git diff origin/r8r
    git merge --no-commit origin/r8r
    vi testfile.txt
    git add .
    git commit
    git push
    cd ../poetry
    git remote
    git remote add teacher https://github.com/githubteacher/poetry.git
    git remote -v
    git pull teacher master
    git lol
    git push
    git log --format=email --patch
    git tag MERGE_COMMIT 9b914f
    git tag MARIO
    git tag -a ANNOTATED f9ff6cc
    git push
    git pull
    git push
    git push --tags
    git tag MARIO 9b535
    git tag -f MARIO 9b535
    git push --tags
    git ls-remote --tags
    git lol
    git ls-remote --tags
    git cat-file -p 66ac0e5642dfc851d8a57f2855e3753d493725c9


