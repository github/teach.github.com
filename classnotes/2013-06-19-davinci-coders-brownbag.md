---
layout: bare
title: DaVinci Coders Brownbag
description: DaVinci Coders Brownbag Class Notes
tags: [notes, brownbag]
path: classnotes/2013-06-19-davinci-coders-brownbag.md
eventdate: 2013-06-19
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


## Command History

    git init davinci
    cd davinci
    tree .git
    pwd
    cd ..
    rm -rf davinci
    ls
    pwd
    mkdir davinci
    cd davinci
    git status
    mkdir .git
    git status
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    git status
    tree .git
    echo "ref: refs/heads/master" > HEAD
    git status
    tree .git
    echo "ref: refs/heads/master" > .git/HEAD
    rm HEAD
    git status
    tree .git
    cat .git/HEAD
    ls
    echo "And the silky sad uncertain rustling of each purple curtain"
    git help hash-object
    while :
    ls
    cd davinci
    while :\ndo \nclear\ntree .git\nsleep 1\ndone
    echo "And the silky sad uncertain rustling of each purple curtain" | git hash-object --stdin -w
    git cat-file -t 75965bc63dc69510137cda43a9c1a733786d9d88
    git cat-file -s 75965bc63dc69510137cda43a9c1a733786d9d88
    git cat-file -p 75965bc63dc69510137cda43a9c1a733786d9d88
    git status
    git update-index --add --cacheinfo 100644 75965bc63dc69510137cda43a9c1a733786d9d88 raven.txt
    git status
    ls
    git write-tree
    git cat-file -t 4bf1a28fe8d41591cf0b6e7169024abc01bce7f7
    git cat-file -s 4bf1a28fe8d41591cf0b6e7169024abc01bce7f7
    git cat-file -p 4bf1a28fe8d41591cf0b6e7169024abc01bce7f7
    git commit-tree 4bf1a28fe8d41591cf0b6e7169024abc01bce7f7 -m "Initial commit"
    git status
    git log
    cat .git/HEAD
    echo a98b912b6e0ee6a4f6fc1ca3f0283832f7179615 > .git/refs/heads/master
    git log
    git status
    ls
    git checkout HEAD -- raven.txt
    git status
    git ls-tree HEAD
    vi raven.txt
    git status
    git add raven.txt
    git cat-file -p 7896
    git log
    cat cat-file -t a98b
    git cat-file -t a98b
    git cat-file -p a98b
    git status
    git commit -m "Fantastic terrors"
    git cat-file -p 4144e
    git log --graph --decorate --oneline --all
    git loglive
    git branch feature
    tree .git/refs
    git rev-parse HEAD
    git rev-parse HEAD > .git/refs/heads/davinci
    rm .git/refs/heads/feature



