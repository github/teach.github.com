---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-03-18-online-foundations-class.md
eventdate: 2013-03-18
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Ben Straub ([Twitter](http://twitter.com/benstraub), [GitHub](https://github.com/ben))

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

    git init newproject
    ls
    cd newproject
    ls
    ls -la
    tree .git
    open .
    open .git
    git config --list
    git config --global --list
    git config --local --list
    cat .git/config
    vi .git/config
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config user.name
    git config user.email
    git config --global color.ui auto
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Noblest man"
    git status
    ls
    ls -la
    ll
    vi caesar.txt
    git status
    git diff
    git add caesar.txt
    git diff
    git status
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff --staged
    git diff
    git diff --word-diff
    git diff HEAD
    git diff HEAD --word-diff
    git diff --stat
    git diff --stat HEAD
    git status
    cat caesar.txt
    git commit -m "Costly blood"
    git status
    git diff git add caesar.txt
    git status
    git commit -m "Added an accent to maintain iabic pentameter ng"
    git log
    git log --format=full
    git log --format=fuller
    git log --format=raw
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --patch --word-diff
    git log --patch --word-diff -1
    git log format=raw -2
    git log --format=raw -2
    git log --graph
    git log --graph --pretty=oneline git log --graph --pretty=oneline --abbrev-commit
    git log --graph --pretty=oneline --abbrev-commit --decorate  git log --graph --pretty=oneline --abbrev-commit --decorate --
    git lol
    it config --global alias.lol "log --graph --pretty=oneline --vcommit --decorate --all"
    git lol
    history
    git lol
    ls
    generaterandomfiles 6 random txt
    ls
    cat random1.txt
    cat random2.txt
    git status git add .
    git status
    git commit -m "Added six files I'm just going to delete anyway
    git lol
    git log --stat
    git rm file1.txt
    git rm random1.txt
    ls
    git status
    rm random2.txt
    git status
    git rm random2.txt
    git status
    open .
    git status
    git add -u .
    git status
    l
    git rm --cached random6.txt
    l
    git status
    git commit -m "Removed all dat cruft"
    git log --stat-2
    git log --stat -2
    history
    git lol
    ll
    rm random6.txt
    ll
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    vi listing.txt
    git status
    git add .
    git commit -m "Added files for moving"
    git log --stat -1
    mkdir files
    git status
    ll
    ll files
    git status
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Moved most of our files"
    git log --stat -1
    git log --stat -1 -M
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Move and change a file"
    git log --stat -M -3
    git log --stat -M80 -2
    git log --stat -M50 -2
    tree
    vi files/listing.txt
    git add .
    git commit -m "Changed listing"
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M80 --follow -- files/listing.txt
    git log --stat -M78 --follow -- files/listing.txt
    history
    mkdir build
    ll ~ > build/output.jar
    ll /Users > build/Demo.class
    ll ~ > console.log
    git status
    git status -u
    ls
    vi .gitignore
    git status
    git add .gitignore
    git commit -m "Added a .gitignore"
    git lol
    tr.git
    cd scratch/newproject
    git loglive
    git loglive
    cat `which git-loglive`
    git branch
    git status
    ll .git
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/HEAD
    git branch feature
    git lol
    tree .git/refs
    ll .git/refs/heads
    git branch
    vi caesar.txt
    git add .
    git commit -m "Voice and utterance"
    cat caesar.txt
    git checkout feature
    cat caesar.txt
    vi caesar.txt
    git status
    git add .
    git status
    git commit -m "Added a title"
    git lol
    git branch
    git checkout master
    cat caesar.txt
    git merge feature -m "Merged the feature branch"
    cat caesar.txt
    git branch
    git checkout feature
    cat caesar.txt
    git checkout 33a0bec
    git lol
    ls
    cat caesar.txt
    git checkout master
    tre .git/refs
    tree .git/refs
    git branch -d feature
    git lol
    tree .git/refs
    git branch feature2
    git branch
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git checkout feature2
    vi caesar.txt
    git status
    vi tolkien.txt
    git status
    git add .
    git status
    git commit -m "Buggy Shakespeare, incomplete Tolkien"
    git lol
    git checkout master
    cat caesar.txt
    git merge feature2
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit
    git branch -d feature2
    history
    git lol
    git log --format=raw 6609
    git log --format=raw 6609 -1
    git lol
    git branch feature3
    git checkout feature3
    vi tolkien.txt
    git add .
    git commit -m "Deep roots"
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git lol
    git checkout master
    git merge feature3
    git branch -d feature3
    vi tolkien.txt
    git add .
    git commit -m "Ashes waking up"
    git branch 96f3e40
    git branch -d 96f3e40
    git branch feature4 96f3e40
    vi caesar.txt
    git status
    git checkout feature4
    cat caesar.txt
    git status
    git checkout master
    git checkout feature4
    git status
    vi caesar.txt
    git diff
    git diff master
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git lol
    git checkout master
    git merge feature4
    ls
    cat tolkien.txt
    cat caesar.txt
    git reset --hard 70f2e36
    cat caesar.txt
    git status
    git checkout feature4
    vi tolkien.txt
    git add .
    git commit -m "This will cause a conflict"
    cat tolkien.txt
    git checkout master
    git merge feature4
    git status
    git merge --abort
    git status
    git merge feature4
    git status
    vi tolkien.txt
    git status
    git add tolkien.txt
    git status
    git commit
    git lol
    git branch -d feature4
    git branch feature5
    vi tolkien.txt
    git add .
    git commit -m "Crownless king"
    git checkout feature5
    ll
    vi caesar.txt
    git add .
    git commit -m "Choked pity"
    git lol -10
    git rebase master
    cat caesar.txt
    git checkout master
    cat caesar.txt
    git merge feature5
    git branch -d feature5
    git checkout -b feature6
    git branch
    git loglive -15
    git loglive -20
    tree
    cd files
    generaterandomchanges 10 random txt
    ls
    git rebase -i HEAD~10
    vi random7.txt
    vi random5.txt
    vi random4.txt
    vi random3.txt
    git status
    git add .
    git rebase --continue
    git show feature6
    git log feature6 --stat -1
    git log feature6^ --stat -1
    git rebase -i HEAD^^
    git checkout master
    git lol -10 git merge feature6
    git branch -d feature6
    git remote add origin https://github.com/githubteacher/poetry.
    git remote
    git remote -v
    git remote show origin
    git push -u origin master
    git config --unset --global branch.autosetuprebase
    git config --unset --local branch.master.rebase
    cd ..
    cat .git/config
    git lol -10
    git branch -a
    git fetch
    ls
    ls -;
    ls -l
    git remote show origin
    cat /etc/ssh_config
    ll ~/.ssh
    cat /etc/ssh_config
    pwd
    ssh-keygen -f ../github
    ls -l ..
    ssh-keygen -f ~/github
    ssh-keygen -f ~/github-yahoo
    vi ~/.ssh/config cat ~/github-yahoo.pub
    ssh -T git@github.com
    git remote set-url origin git@github.com:githubteacher/poetry.
    git remote -v
    git pull
    git fetch
    vi caesar.txt
    git add .
    git commit -m "Caesar Rage"
    git status
    git push
    git pull
    git push
    git branch -a
    export PS1="$ "
    tr.git
    cd scratch
    ll
    ls
    rm github
    rm github.pub
    ls
    pwd
    git clone git@github.com:githubstudent/poetry.git
    cd poetry
    ls
    git lol
    git remote
    git remote -v
    git remote show
    git remote show origin
    git branch -a
    ls
    git config user.email "training+githubstudent@github.com"
    git config user.name "GitHub Student"
    vi raven.txt
    git add .
    git commit -m "Dying embers"
    git push
    vi raven.txt
    git add . git commit -m "Eagerly wished"
    git push
    git remote set-url origin https://github.githubstudent/poetry.git
    git push
    git pull
    git loglive -18
    ls
    cat untitledc.txt
    cat jetang.txt
    cat raven.txt
    git pull https://github.com/githubstudent/poetry.git master
    git status
    vi raven.txt
    git add raven.txt
    git commit
    git push
    git pull
    git loglive -15
    git pull
    git lol git remote
    git remote -v
    git remote add upstream git@github.com:githubteacher/poetry.
    git remote -v
    git fetch upstream
    git lol
    git branch -a
    git pull upstream master
    ls
    cat raven.txt
    git lol
    git push
    git lol
    git loglive -12
    git remote -v pwd
    cd ..
    git clone git@github.com:githubteacher/poetry.git teacher-ry
    cd teacher-poetry
    pwd
    ll
    git remote -v
    vi caesar.txt
    git add .
    git commit -m "Cry Havoc\!"
    git push
    git pull
    git push
    git pull && git push
    git pull
    git loglive -8
    git loglive -9
    git pull
    gitk --all
    git lol
    git pull
    git lol
    git config --global branch.autosetuprebase always
    git config branch.master.rebase true
    git config --local --list
    git pull
    vi caesar.txt
    git add .
    git commit -m "Keep calm and carrion."
    git push
    git pull
    vi caesar.txt
    git add caesar.txt
    git rebase --continue
    git pull
    git status
    git pull
    git push
    git pull
    git push
    git pull
    git loglive -15
    git pull
    ls
    git log --stat -1
    cat untitledc.txt
    git pull
    cat raven.txt
    git pull
    git checkout -b tlberglund
    ll
    vi raven.txt
    git add .
    git commit -m "Complete second stanza"
    git push -u origin tlberglund
    git branch -a
    vi raven.txt
    git add .
    git commit -m "Rustling"
    git push
    git fetch
    git branch -a
    git checkout jeffhuang
    git remote show origin
    git branch
    ls
    git diff master
    git log --stat -1
    vi raven.txt
    git add .
    git commit -m "Midnight dreary"
    git push
    git branch -a
    git checkout master
    git merge jeffhuang
    vi raven.txt
    git add .
    git commit
    git push
    git pull
    vi raven.txt
    git add .
    git rebase --continue
    git push
    git branch
    git branch -r

## Chat History

