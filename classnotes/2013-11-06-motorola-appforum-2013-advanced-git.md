---
layout: bare
title: Motorola AppForum 2013 Advanced Git
description: Motorola AppForum 2013 Advanced Git Class Notes
tags: [notes]
path: classnotes/2013-11-06-motorola-appforum-2013-advanced-git.md
eventdate: 2013-11-06
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

* Commit without commit
  * Internals
  * Plumbing/porcelain
* `rebase`
* `reflog`/`reset`


## Command History

    mkdir repo
    cd ../repo
    while :\ndo\nclear\ntree .git\ndone
    mkdir .git
    while :\ndo\nclear\ntree .git\nsleep 1done
    while :\ndo \nclear\ntree .git\nsleep 1\ndone
    mkdir .git/objects
    mkdir .git/refs
    mkdir .git/refs/heads
    echo "ref: refs/heads/master" > .git/HEAD
    echo "So. The Spear-Danes in days gone by had courage and greatness." | git hash-object --stdin -w
    git cat-file -t c023
    git cat-file -s c023
    git cat-file -p c023
    cat .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    zinflate .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    git update-index --add --cacheinfo 100644 c023c23a67e64dc4af96c2932a3292e42039321b beowulf.txt
    git write-tree
    git cat-file -p f419
    git commit-tree f419e48cc86ee4d9c14295b58d74a6ec945a5b45 -m "Initial commit"
    cat .git/HEAD
    echo 7cc5d23b76758717a465462e712cf4d3cbe95b50 > .git/refs/heads/master
    cat .git/refs/heads/master
    git cat-file -t 7cc5
    git checkout HEAD -- beowulf.txt
    git log --format=raw
    cp -r repo PERFECT_BACKUP_I_HAPPENED_TO_HAVE
    ll
    cd repo
    git log
    cp ../PERFECT_BACKUP_I_HAPPENED_TO_HAVE/.git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b .git/objects/c0
    vi .git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b
    git show HEAD
    sudo cp ../PERFECT_BACKUP_I_HAPPENED_TO_HAVE/.git/objects/c0/23c23a67e64dc4af96c2932a3292e42039321b .git/objects/c0
    git fsck
    git help hash-object
    git loglive
    git config alias.lol
    which git-loglive
    cat /Users/tlberglund/scripts/git-loglive
    git branch feature
    vi beowulf.txt
    git commit -m "Noble"
    git checkout feature
    git commit -m "Silky"
    vi raven.txt
    git add .
    git commit -m "Fantastic"
    git rebase master
    git checkout
    git merge feature
    git branch -d feature
    git checkout -b feature2
    mkdir files
    cd files
    generaterandomchanges 10 file
    generaterandomchanges 10 file txt
    git rebase -i 66cf263
    git status
    git reset --hard 326bf47
    git lol
    ls
    git reset --hard HEAD@{1}
    git reflog
    git checkout master
    pwd
    cd ..
    git merge feature2
    tree .git/refs
    rm .git/refs/heads/feature2
    git branch
    git remote add origin https://github.com/githubteacher/temp.git
    git push -u origin master


