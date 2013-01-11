---
layout: bare
title: Online Git Free Class
description: A one-hour free class
tags: [notes, class, free]
path: classnotes/2013-01-12-free-class.md
eventdate: 2013-01-11
---

# Instructors
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Jordan McCullough ([Twitter](https://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))



## Outline
* Commit amend
  * Misspelled messages
  * One-level redo
* Reset
  * --soft to move the HEAD
  * --mixed to change the staging area
  * --hard for a big hammer
* Revert
  * The polite Undo
  * Resolving conflicts
  * --no-commit
* Reflog
  * git log -g
  * git reflog


# Command Line History

    vi raven.txt
    git add .
    git commit -m "Initial commit"
    vi raven.txt
    git commit -a -m "surcease of sorrow"
    vi raven.txt
    git commit -a -m "Nameless here"
    tmux attach
    ls
    cat raven.txt
    git log
    vi raven.txt
    git add raven.txt
    git status
    git commit -m "Bleak January"
    git lgo
    git log
    cat raven.txt
    git lgo
    git log
    git commit --amend
    git log
    vi raven.txt
    git add 
    git add .
    git commit -m "Dying embers"
    vi xanadu.txt
    git status
    git add xanadu.txt
    git status
    git commit --amend
    git log
    git log --stat -1
    vi xanadu.txt
    git status
    git add .
    git status
    git reset HEAD xanadu.txt
    git status
    cat xanadu.txt
    git add .
    git status
    git reset --mixed HEAD -- xanadu.txt
    git status
    git add .
    git commit -m "Measureless caverns"
    git log 
    git rev-parse HEAD 
    git rev-parse HEAD^ 
    git log --oneline
    git reset --soft HEAD^ 
    git rev-parse HEAD 
    git log --oneline
    git status
    cat xanadu.txt
    git diff --staged 
    vi xanadu.txt
    git add .
    git status
    git diff --staged
    git commit -m "Sunless sea"
    git log --oneline
    git lg
    cat "We need a readme" > README.md
    echo "We need a readme" > README.md
    ls
    git status
    git add README.md
    git lg
    git reset --hard 68e0 
    git status
    ls
    git lg
    ls
    cat raven.txt
    git reset --hard 8b2d96a
    git lg
    vi raven.txt
    git add .
    git commit -m "Buggy raven"
    git g
    git lg
    vi raven.txt
    git add .
    git commit -m "Surcease of bugs"
    git lg
    vi raven.txt
    git revert a5e4d0b 
    git lg
    vi raven.txt
    git reset --hard a5e4
    git reset --hard 7a129
    git lg
    vi raven.txt
    git lg
    git add .
    git commit -m "MOAR poe"
    git lg
    git revert a5e4d0b 
    git status
    vi raven.txt
    git add raven.txt
    git commit
    git lg
    git log -g --online
    git log -g --prett
    git log -g --oneline
    git branch 
    git reflog
    git lg
    git reset --hard 6f42
    git lg
    ls
    cat raven.txt
    git reflog
    git reset --hard HEAD@{1}
    git lg
    ls
    cat raven.txt
    cat xanadu.txt
    git reflog
    git lg
    git tag RELEASE_0.1
    git lg
    vi raven.txt
    git add .
    git commit -m "Sad curtains"
    git lg
    git tag COLERIDGE_COMPLETE 8b2d96a
    git lg
    git tag -a DYING_EMBER eefa
    git lg
    git show DYING_EMBER
    git status
    git lg
    ls
    cat raven.txt
    cat xanadu.txt
    git checkout DYING_EMBER
    ls
    cat xanadu.txt
    cat raven.txt
    git lg
    git branch feature
    git lg
    git checkout feature
    git lg
    vi README.md
    git add .
    git commit -m "Added a README"
    git lg
    git checkout master
    git lg
    git help rerere
    git log
    git log --pretty=fuller
    cd ~/code/groovy-liquibase
    git log
    git log --pretty=fuller
    git help config
    git help merge
