---
layout: bare
title: NFJS Minneapolis Fall 2013 Advanced Git
description: NFJS Minneapolis Fall 2013 Advanced Git Class Notes
tags: [notes]
path: classnotes/2013-10-04-nfjs-minneapolis-fall-2013-advanced-git.md
eventdate: 2013-10-04
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

## Outline
* Commit without `commit`
* Rebase
* Interactive rebase
* Fixing the mistakes we make with the above
* Branching strategy
* Why Git?


## Command History
    git init nfjs
    cd nj
    cd nfjs
    cd ..
    mkdir repo
    git statu
    mkdir .git
    ls -a
    while :\ndo\nclear
    cd repo
    while :\ndo \nclear\ntree .git\nsleep 1\ndone
    mkdir .git/objects
    git tatus
    mkdir -p .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    echo "In Xanadu did Kublai Kahn a stately pleasure dome decree"
    git help log
    git help hash-object
    echo "In Xanadu did Kublai Kahn a stately pleasure dome decree" | git hash-object -w --stdin
    tree .git
    git cat-file -p 51e80
    git update-index --add --cacheinfo 100644 51e8079c8ce4d2df2ff75767fe5c0c365a278e1f xanadu.txt
    git write-tree
    git cat-file -p c9a2d722d06180eaaa01ec3bf8e5297112b89ffe
    git commit-tree c9a2d722d06180eaaa01ec3bf8e5297112b89ffe -m "Initial commit"
    git show e054b6e475520f3dc2af120a520e2669cf5f03f1
    cat .git/HEAD
    echo e054b6e475520f3dc2af120a520e2669cf5f03f1 > .git/refs/heads/master
    git checkout HEAD -- xanadu.txt
    git log
    git add xanadu.txt
    git cat-file -p 944b
    git status
    cat .git/index
    zinflate .git/objects/51/e8079c8ce4d2df2ff75767fe5c0c365a278e1f
    zinflate .git/objects/94/4be47c43bfe8215e8065d95cd60ade9a38a4ed
    zinflate .git/index
    cat ~/scripts/git-loglive
    git --no-pager log --graph --pretty=oneline --abbrev-commit --decorate --all $*
    git loglive
    git branch feature
    tree .git/refs
    vi xanadu.txt
    git commit -m "Sunless sea"
    git checkout feature
    git commit -m "Bleak December"
    vi raven.txt
    git add .
    git commit -m "Silky sad"
    git rebase master
    git checkout master
    git merge feature
    git branch -d feature
    generaterandomchanges 10 random txt
    git rebase -i 8c006bd
    git reflog\\n
    git reset --hard D@{21}: checkout: moving from feature to master
    8c006bd HEAD@{22}: rebase finished: returning to refs/heads/feature
    8c006bd HEAD@{23}: rebase: Silky sad
    c73ce1d HEAD@{24}: rebase: Bleak December
    ace8565 HEAD@{25}: checkout: moving from feature to ace85656bde1e24e133196c4$ git reset --hard
    git reset --hard 701d8cf
    git lol
    ls
    git loglive -10
    git loglive -8
    git reflog
    git reset --hard HEAD@{1}


