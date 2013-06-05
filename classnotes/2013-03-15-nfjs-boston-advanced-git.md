---
layout: bare
title: NFJS Boston Advanced Git
description: NFJS Boston Advanced Git Class Notes
tags: [notes]
path: classnotes/2013-03-15-nfjs-boston-advanced-git.md
eventdate: 2013-03-15
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

* Commiting without commit
  * Internal Commit structure
  * Plumbing/Porcelain Lesson
    * No, seriously: do this
* Merge conflicts
  * External tools to resolve
* Reset
* Reflog
* Rebase
* Revert


## Command History

    mkdir hipster
    cd hipster
    git status
    mkdir .git
    ls -la
    git status
    mkdir -p .git/refs/heads
    tree .git
    git status
    mkdir .git/objects
    git status
    cd hipster
    git loglive -5
    git loglive -7
    echo "ref: refs/heads/master" > .git/HEAD
    git status
    echo "So. The Spear-Danes in days gone by had courage and greatness. We have heard of these princes' noble campaigns."
    git help hash-object
    while : do clear; tree .git/objects; sleep 1; done
    while : do clear; tree .git/objects; sleep 1; done;
    while : do; clear; tree .git/objects; sleep 1; done
    while :\ndo\nclear\ntree .git/objects\nsleep 1\ndone
    echo "So. The Spear-Danes in days gone by had courage and greatness. We have heard of these princes' noble campaigns." | git hash-object --stdin -w
    ls
    git cat-file -p b0d9c44a31291d9875556994da7bebed2e181cf4
    git cat-file -s b0d9c44a31291d9875556994da7bebed2e181cf4
    git cat-file -t b0d9c44a31291d9875556994da7bebed2e181cf4
    cat .git/objects/b0/d9c44a31291d9875556994da7bebed2e181cf4
    zdeflate < .git/objects/b0/d9c44a31291d9875556994da7bebed2e181cf4
    zinflate < .git/objects/b0/d9c44a31291d9875556994da7bebed2e181cf4
    git status
    git update-index --add --cacheinfo 100644 b0d9c44a31291d9875556994da7bebed2e181cf4 beowulf.txt
    git status
    ls
    git diff
    git diff --staged
    git write-tree
    git cat-file -t 5d83dd
    git cat-file -s 5d83dd
    git cat-file -p 5d83dd
    zinflate < .git/objects/5d/83dd4dfd8dc1fc6c0428c2abb5c61d42eecd57
    git status
    git commit-tree 5d83dd4dfd8dc1fc6c0428c2abb5c61d42eecd57 -m "Initial commit"
    git log
    tree .git
    echo "da095f60675d37f433b7e3a5f3d125fbf6b6f524" > .git/refs/heads/master
    tree .git
    git status
    git log
    tree .git
    cat .git/HEAD
    git status
    ls
    git checkout HEAD -- beowulf.txt
    git status
    ls
    cat beowulf.txt
    vi beowulf.txt
    git add .
    git commit -m "My boy shield"
    git loglive
    git loglive -8
    tree .git/objects
    git log --format=raw -1
    git ls-tree c16332
    git cat-file -p 7eecb0
    cd ~/github/teach.github.com
    ll classnotes
    classnotes
    classnotes --title "Boston NFJS Advanced Git" --teachers tlberglund -w
    git status
    rm classnotes/2013-03-15-boston-nfjs-advanced-git.md
    classnotes --title "NFJS Boston Advanced Git" --teachers tlberglund -w
    git status
    subl classnotes/2013-03-15-nfjs-boston-advanced-git.md
    vi raven.txt
    vi tolkien.txt
    git add .
    git commit -m "Cool Tolkien poem"
    git log --format=oneline
    echo "9c9fe61b2715838b7d011f54acd18ee7d5feb607" > .git/refs/heads/conflict
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/refs/heads/conflict
    git checkout conflict
    ls
    git checkout master
    ls
    cat .git/HEAD
    vi .git/HEAD
    git status
    ls
    git status
    git reset --hard HEAD
    git status
    vi tolkien.txt
    git status
    git add .
    git commit -m "I sure hope this is a merge conflict because I'll be really super duper embarrassed if it's not"
    git commit --amend
    vi beowulf.txt
    git add .
    git status
    git commit --amend
    git log --stat -1
    git checkout master
    git merge feature
    git merge conflict
    git status
    vi tolkien.txt
    git status
    cat tolkien.txt
    git status
    git add tolkien.txt
    git status
    git commit -m "Merge conflictorama"
    vi tolkien.txt
    git help checkout
    git show 9c9fe
    git diff 61c2..da09
    git help config
    git status
    mkdir lotr
    git mv tolkien.txt lotr
    tree
    git status
    git reset HEAD tolkien.txt
    git status
    mv lotr/tolkien.txt
    mv lotr/tolkien.txt .
    git status
    tree
    git reset
    git status
    tree
    open .
    git status
    git status -u
    git add -A .
    git status
    git commit -m "Moved file"
    git log --stat -1
    git log --stat -1 -M
    git reflog
    git status
    git reset --hard HEAD@{2}
    git reflog
    git reset --hard HEAD@{1}
    git merge
    git merge conflict
    git mergetool
    git status
    git commit
