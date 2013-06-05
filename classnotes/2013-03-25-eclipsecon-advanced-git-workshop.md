---
layout: bare
title: EclipseCon Advanced Git Workshop
description: EclipseCon Advanced Git Workshop Class Notes
tags: [notes,workshop,conference]
path: classnotes/2013-03-25-eclipsecon-advanced-git-workshop.md
eventdate: 2013-03-25
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Kevin Sawicki ([Twitter](http://twitter.com/kevinsawicki), [GitHub](https://github.com/kevinsawicki))

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

* Commit internals
* Rebase
* Reflog and reset
* Porcelain, plumbing, and how to extend Git
* Fast-forward merges
* Branches internals
* Tracking branches, remotes
* Revert
* Tags
* Submodules
  * _Maybe_
* Release process


## Command History

    mkdir hipster
    cd hipster
    git status
    mkdir .git
    ls -l
    ls -a
    ls -la
    git status
    mkdir .git/objects
    while :\ndo\nclear 1\ntree hipster/.git
    while :\ndo\nclear\ntree hipster/.git\nsleep 1\ndone
    pwd
    cd sc
    cd scratch/hipster
    while :\ndo \nclear\ntree .git\nsleep 1\ndone
    mkdir .git/refs
    mkdir .git/refs/heads
    git status
    echo "ref: refs/heads/master" > .git/HEAD
    git status
    echo "And the silky sad uncertain rustling of each purple curtain"
    git help hash-object
    echo "And the silky sad uncertain rustling of each purple curtain" | git hash-object --stdin -w
    git cat-file -p 75965
    git cat-file -s 75965
    git status
    git update-index --add --cacheinfo 100644 75965bc63dc69510137cda43a9c1a733786d9d88 raven.txt
    git status
    ls
    git diff
    git diff --staged
    git status
    git write-tree
    git cat-file -t 4bf1
    git cat-file -s 4bf1
    git cat-file -p 4bf1
    ls
    git commit-tree 4bf1a28fe8d41591cf0b6e7169024abc01bce7f7 -m "Hipster commit"
    git cat-file -p 0ace31
    git status
    cat .git/HEAD
    echo 0ace31cc5cd3addd5b1989db951687520e31fd95 > .git/refs/heads/master
    git status
    ls
    git checkout HEAD -- raven.txt
    ls
    git status
    cat raven.txt
    git ls-tree HEAD
    cat .git/objects/75/965bc63dc69510137cda43a9c1a733786d9d88
    git status
    mkdir monkey
    git status
    touch monkey/angry
    tree
    cat monkey/angry
    git status
    git status -u
    cat ~/scripts
    ls ~/scripts
    ls
    rm -rf monkey
    git lol
    git config alias.lol
    git log --graph --oneline --decorate --all
    git loglive
    ls
    cat raven.txt
    vi raven.txt
    git add .
    git commit -m "Fantastic"
    tree .git/objects
    tree .git/objects | less
    tree .git/refs
    git log --format=oneline
    echo 0ace31cc5cd3addd5b1989db951687520e31fd95 > .git/refs/heads/feature
    git branch
    cat .git/HEAD
    vi .git/HEAD
    git status
    git reset --hard HEAD
    git status
    ls
    cat raven.txt
    vi raven.txt
    git add .
    git commit -m "December"
    git lol
    vi raven.txt
    git add .
    git commit -m "Embers"
    git checkout master
    git merge feature -m "Yay, merge"
    cat raven.txt
    git lol
    git reset --hard 2253
    git checkout feature
    cat raven.txt
    git log --format=raw feature -2
    git log --format=raw feature -1
    git --no-pager lol
    git rebase master
    git branch
    cat raven.txt
    git branch recover 620e03f
    tree .git/refs
    rm .git/refs/heads/recover
    git branch recover 620e03f
    rm .git/refs/heads/recover
    git checkout master
    git branch
    cat raven.txt
    git merge feature
    git reflog
    git reset --hard HEAD@{1}
    cat raven.txt
    git merge feature --no-ff
    git reflog
    git reset --hard HEAD@{2}
    git rev-parse HEAD
    git remote add origin https://github.com/githubteacher/poetry.git
    cat .git/config
    git push -u origin master
    git config credential.helper
    git config --unset --global credential.helper
    git config credential.helper
    git push -u origin master
    git config remote.origin
    git config remote.origin.url
    git config --local --list
    vi .git/config
    git push -u origin master
    git lol
    git branch
    git branch -a
    tree .git/refs
    git fetch
    git branch -a
    git fetch
    git lol
    git status
    cat .git/config
    git remote show origin
    git config --unset --global branch.autosetuprebase
    git config --unset --local branch.master.rebase
    git remote show origin
    git status
    git pull
    git status
    git help branch
    cat .git/config
    git rev-parse origin/feature2
    git rev-parse remotes/origin/feature2
    git rev-parse refs/remotes/origin/feature2
    git checkout refs/remotes/origin/feature2
    cat .git/HEAD
    ls
    cat mariner.txt
    git checkout master
    cat .git/HEAD
    git checkout feature2
    git checkout master
    git merge feature2
    git push
    git fetch
    git lol
    git pull
    git loglive -10
    git loglive -8
    git commit --amend
    git push
    git branch -d feature2
    git branch -d feature
    git push --delete origin feature2
    vi mariner.txt
    git add .
    git commit -m "Graybeard"
    git fetch
    git lol
    git pull --rebase
    git push
    git config --global branch.autosetuprebase always
    cat .git/config
    git config branch.master.rebase true
    cat .git/config
    vi mariner.txt
    git commit -m "Next of kin"
    git add .
    git commit -m "Next of kin"
    git fetch
    git pull
    cd ..
    ll
    git init mariner
    cd mariner
    ll
    vi mariner.txt
    git add .
    git commit -m "Initial Commit"
    git remote add origin https://github.com/githubteacher/mariner.git
    git push -u origin master
    cd ../hipster
    ll
    git rm mariner.txt
    git commit -m "Removed RotAM\n"
    git help submodule
    git submodule add mariner https://github.com/githubteacher/mariner.git
    ls -la
    ls -s
    ls -a
    git help submodule
    rm -rf https:
    git submodule add https://github.com/githubteacher/mariner.git mariner
    ls
    ls mariner
    ls
    cd mariner
    ls
    git lol
    cd ..
    git add .
    git status
    cat .gitmodules
    git add -u .
    git commit -m "Added submodule"
    ls
    git lol
    cd mariner
    git lol
    cd ../mariner
    vi mariner.txt
    git add .
    git commit -m "capital B"
    git push


