---
layout: bare
title: UberConf 4 Git Workshop
description: UberConf 4 Git Workshop Class Notes
tags: [notes]
path: classnotes/2013-07-16-uberconf-4-git-workshop.md
eventdate: 2013-07-16
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
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)


## Course Outline

* Git Config Basics
* Git Repo Basics
* Adding and committing
* Staging area
* Comparing changes
* Examine history
* Moving and deleting
* Branch and merge
* Merge conflicts
* Rolling back mistakes
  * Reset
  * Reflog
  * Revert
* Rebasing
* Remotes
  * Pushing
  * Pulling
  * Fetching
* Online collaboration
  * Pull Requests
  * Web flow


## Command History

    git --version
    git init uber
    ls
    cd uber
    ls
    ls -la
    tree .git
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config color.ui
    git config --global color.ui auto
    vi ~/.gitconfig
    ll
    pwd
    vi caesar.txt
    cat caesar.txt
    ls
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Noblest man"
    vi caesar.txt
    git status
    git diff
    git add caesar.txt
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff
    git diff --staged
    git diff HEAD
    git diff HEAD --color-words
    git diff HEAD --word-diff
    git status
    git commit -m "Costly blood"
    git status
    git diff --color-words
    git status
    git add caesar.txt
    git commit -m "Iambic"
    git status
    git log
    git log --format=raw
    git log --stat
    git log --patch
    git log -S "blood"
    git log -S "Woe"
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --format=oneline
    git log --graph --decorate --format=oneline --abbrev-commit
    git log --graph --decorate --format=oneline --all
    git log --graph --decorate --format=oneline --abbrev-commit -all
    git log --graph --decorate --format=oneline --abbrev-commit --all
    git lol
    git config --global alias.lol "log --graph --decorate --format=oneline --abbrev-commit --all"
    git lol
    git lol -2
    git log -1
    export PS1="$"
    export PS1="$ "
    tr.g
    tr.git
    cd scratch/uber
    git loglive
    generaterandomfiles 6 junk txt
    ls
    git status
    git add .
    git status
    git commit -m "Added cruft"
    ll
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
    git rm --cached junk6.txt
    ls
    git status
    git commit -m "Anticruft"
    ls
    git status
    vi .gitignore
    git status
    vi .git
    vi .gitignore
    mkdir -p src/main/resources
    cd src/main/resources
    echo "angry monkey" > resource.log
    cd ../../..
    tree
    echo "monkey=angry" > src/main/resources/monkey.properties
    tree
    git status -u
    vi src/main/resources/.gitignore
    git status -u
    git status
    git status -u
    git add .
    git commit -m "Ignore"
    tree
    git config core.excludesfile
    cat `git config core.excludesfile`
    tree
    rm -rf src
    rm junk6.txt
    git status
    git add -u .
    git commit -m "Anticruft2"
    git status
    ll
    ls
    l
    ls
    generaterandomfiles 5 file.txt
    generaterandomfiles 5 file txt
    ls
    ls -l ~ > listing.txt
    cat listing.txt
    git status
    git add .
    git commit -m "Stuff to move"
    ls
    git status
    tree
    mkdir files
    tree
    git status
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add files/
    git status
    open .
    git status
    git add -A .
    git status
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Moves"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M77
    git log --stat -1 -M75
    git log --stat -1 -M76
    vi files/listing.txt
    git add .
    git commit -m "New listing"
    git log --stat -1
    git log --stat -- files/listing.txt
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M --follow -- listing.txt
    git status
    git branch
    ll .git
    ls .git
    tree .git/refs
    cat .git/refs/heads/master
    git lol
    git branch feature
    git add file.txt
    git branch
    vi caesar.txt
    git add .
    git commit -m "Dumb mouths"
    git lol
    git checkout feature
    cat caesar.txt
    vi caesar.txt
    git add .
    git commit -m "Title"
    git lol
    git checkout master
    git merge feature -m "Merged feature"
    git lol
    cat caesar.txt
    git status
    git reset --hard be160
    cat caesar.txt
    git reflog
    git reset --hard dbc406d
    git reset --hard HEAD@{1}
    git branch -d feature
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Maybe buggy"
    git checkout feature2
    vi caesar.txt
    vi raven.txt
    git status
    git add .
    git commit -m "Raven, Caesar"
    git branch
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit
    git reset --hard c00d
    git merge feature2
    p4merge
    kdiff3
    opendiff
    git config --global merge.tool p4merge
    git config --global mergetool.prompt false
    git config --global mergetool.keepTemporaries false
    git config --global mergetool.keepBackup false
    git merge feature2
    git status
    ls .git
    git mergetool
    git status
    history
    git commit
    git loglive -15
    git branch -d feature2
    git branch feature3
    history
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git checkout feature3
    vi raven.txt
    git add .
    git commit -m "Quaint"
    vi raven.txt
    git add .
    git commit -m "Napping"
    git lol
    git lol -7
    git rebase master
    git show 1a45483
    git show 4971
    git checkout dbc40
    git checkout master
    git lol -7
    cat raven.txt
    git merge feature3
    git lol -10
    export PS1="$ "
    tr.g
    tr.git
    cd scratch
    cat .git/config
    git remote add origin https://github.com/githubteacher/uberconf.git
    cat .git/config
    git push -u origin master
    cat .git/config
    git lol -10
    git fetch
    git lol -10
    git branch -d feature3
    git diff
    git diff --staged
    git diff origin/master
    git diff HEAD origin/master
    git merge origin/master
    vi caesar.txt
    git add .
    git commit -m "Fell deeds"
    git status
    git push
    git fetch
    git lol -5
    git pull
    git lol -5
    git push
    pwd
    ls
    git clone https://github.com/githubstudent/uberconf.git
    cd uberconf
    ls
    git config --local user.email "training+githubstudent@github.com"
    git config --local user.name "GitHub Student"
    vi caesar.txt
    git add .
    git commit -m "Ceasar Rage"
    git push
    ll
    vi raven.txt
    git add .
    git commit -m "Muttered"
    git push
    vi caesar.txt
    cat caesar.txt
    git add .
    git commit -m "Havoc"
    git push
    git fetch
    git lol
    git pull
    git loglive -12
    git pull https://github.com/githubstudent/uberconf.git master
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git commit -m "Merged student PR"
    git push
    git pull
    git pull https://github.com/sisselw/uberconf.git master
    git fetch https://github.com/sisselw/uberconf.git master
    git fetch https://github.com/jksolbakken/uberconf.git master
    git diff master FETCH_HEAD
    git branch johnny FETCH_HEAD
    git lol
    git merge johnny
    git branch -d johnny
    git push
    git lol
    git remote add teacher https://github.com/githubteacher/uberconf.git
    git pull teacher master
    git push
    history
    cd ..
    git help config
    git config --global credential.helper cache
    git remote -v
    vi raven.txt
    git add raven.txt
    git commit -m "Dying ember"
    git push
    git pull
    git push
    git pull
    git loglive -10
    git loglive -8
    git pull
    git lol
    git pull
    git loglive -5
    git pull
    git loglive -7
    git pull
    git lol
    git pull
    git lol
    git config --global merge.autosetuprebase always
    git config branch.master.rebase true
    git config --global branch.autosetuprebase always
    vi raven.txt
    git add .
    git commit -m "Lost Lenore"
    git push
    git pull
    git push
    git pull
    git push
    git loglive -12
    git pull
    git lol
    git pull
    git lol
    git show 63c4b8e
    history
    git lol
    git show b744875
    git loglive -10
    git revert b744875
    cat empty
    git show HEAD
    cat empty.file
    git push
    git pull
    git push
