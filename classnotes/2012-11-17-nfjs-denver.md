---
layout: bare
title: NFJS Denver GitHub Workshop
description: NFJS GitHub Workshop class notes
tags: [notes, event]
path: classnotes/2012-11-17-nfjs-denver.md
eventdate: 2012-11-17
---

Held on November 17, 2012

## CLI History

    git --version
    git init projectone
    open projectone
    cd project
    cd projectone
    git config --global user.name "Matthew McCullough"
    cat ~/.gitconfig| more
    history
    git config --global user.email "matthew@github.com"
    git config user.email
    git config user.name
    git add first.txt
    git commit -m "My first commit"
    git add -p first.txt
    git diff --staged
    git commit -m"Part of the changes"
    git commit -a -m"One more Part of the changes"
    git log 
    gitk &
    git log --stat
    vim .gitignore
    git add .gitignore
    git commit -m"Ignoring all log files"
    touch junk.log
    touch other.log
    git showignored
    git rm other.log
    git remote add origin git@github.com:matthewmccullough/projectone.git
    git push -u origin master
    vim first.txt
    git commit -a -m"One more change"
    git log
    git branch feature1
    vim feature1.txt
    git add feature1.txt
    git commit -m"Feature work"
    mkdir thousands
    cd thousands
    generaterandomfiles 5000 sample txt
    git commit -m"Five thousand"
    git checkout feature1
    git clone https://github.com/githubtrainer/hellogitworld.git
    git branch amazingfeature
    git push -u origin amazingfeature
    git checkout amazingfeature
    vim gerald.txt
    git commit -a -m"Gerald changes from matthew"
    git diff
    git mergetool
    git commit -m"Merged gerald and matthew changes"
    git branch demomerge
    vim src/main/java/com/ambientideas/App.java
    git commit -a -m"Bug fix on master"
    git checkout demomerge
    cat src/main/java/com/ambientideas/App.java
    cd src/main/java/com
    mv ambientideas nfjs
    vim nfjs/App.java
    git add -A .
    git commit -m"Package change and feature"
    git merge demomerge -m"Automatic"
    cat src/main/java/com/nfjs/App.java

    echo welcome to git advanced
    open .
    git remote rm origin
    git push --mirror https://github.com/matthewmccullough/newplace.git
    git add remote origin https://github.com/matthewmccullough/newplace.git
    git remote add origin https://github.com/matthewmccullough/newplace.git
    git remote add origin2 https://github.com/matthewmccullough/newplace.git
    subl .git/config
    git clone ghsm://hellogitworld hgw1
    git clone ghsm://hellogitworld hgw2
    rm -rf hellogitworld
    git clone ghsm://hellogitworld 
    git clone ghsm://projectone p1
    cd p1
    git config --global url."https://nfjsgithub.com".insteadOf "gh://"
    vim .git/config
    git push origin
    git clone https://github.com/githubtrainer/hellogitworld
    cd hellogitworld
    git commit -m"Matthew was here"
    git cc-cache
    git config --global credential.helper "cache --timeout=300"
    git commit -a -m"Matthew rebase demo"
    git diff master..origin/master
    git pull --rebase
    git log master..origin/master
    git config branch.autosetuprebase always
    git checkout origin/feature_image
    git checkout feature_image
    git config branch."master".rebase true
    git commit -a -m"Matthew was here first'
    git commit -a -m"Matthew was here first"
    git log -2
    git commit -a -m"Matthew was first"
    git checkout --orphan docs
    git rm *.*
    git rm -f *.*
    git rm **/*
    git rm '**/*'
    git rm -f '**/*'
    git rm -f .gitattributes
    git rm -f .gitignore
    git rm -f .travis.yml
    git status
    touch docs.txt
    git add .
    git commit -m"Matthew docs"
    generaterandomchanges 10 docs txt
    git checkout -b blue-cust
    git commit -a -m"Blue 1"
    vim matthewmccu.txt
    git commit -a -m"Blue alg fix"
    vim fix.txt
    git commit -a -m"Blue 2"
    git config user.name "Merger Guy"
    git cherry-pick dfa9511
    git reset --hard fb60cf7
    git reflog
    git cherry-pick -x dfa9511
    git bundle create ../matthew.bundle master
    git ls-remote origin | more
    git ls-remote ../matthew.bundle
    git fetch ../matthew.bundle
    git fetch ../matthew.bundle refs/heads/master
    git branch -D geraldchanges
    git branch geraldchanges FETCH_HEAD
    git reset --hard HEAD~1
    git log geraldchanges..master
    git log master..geraldchanges
    git diff geraldchanges..master
    git remote add bundlefromcontractor ../matthew.bundle
    git remote add tim https://github.com/tlberglund/hellogitworld
    git branch 
    git merge blue-cust
    git branch --merged
    git branch --no-merged
    git show-branch
    git show-branch | more
    git checkout HEAD~10
    git log -p
    git grep mom 
    git grep mom HEAD~10
    git grep mom HEAD~25
    git grep mom HEAD~15
    git rev-parse HEAD~10
    git cherry a512
    git help cherry
    gitk 
    gitx
    clear
    git branch -a
    git checkout bisect
    ls
    tree
    mvn install
    git bisect start
    gitk
    git bisect bad HEAD
    git bisect good 56cb
    mvn test
    git bisect bad
    git bisect run mvn test
    git bisect visualize
    git bisect log
    gitk --all
    git bisect reset
    git checkout HEAD~5
    vim .git/refs/heads/master
    cat .git/refs/heads/bisect
    git log --format=raw -1
    cat .git/refs/heads/master
    git gc
    git gc --expire=now
    git show 3a41
    git cherry-pick 3a41
    git notes add -m "Note one"
    git pull
    git log -4
    git log -6
    git note add -m"Matthew"
    git notes add -m"Matthew"
    git log -1
    cat .git/config
    git push origin 'refs/notes/*'
    git push -f origin 'refs/notes/*'
    echo HELLO >> fix.txt; git commit -a -m"Fix"
    git fetch
    git rebase -i origin/master
    git log origin/master..master --oneline
    git origin/master --oneline
    git log origin/master --oneline
    git log master --oneline
    git config --global alias.nfjsunpushed "log origin/master..master --oneline"
    git nfjsunpushed
    git l2
    subl ~/.gitconfig
    mate ~/.gitconfig
    hub browse
    cd ..
    gitnr test2
    git.nr test2
    hub create
    git remote -v
    git push
    git push origin master
    git checkout -b feature1
    generaterandomchanges 10 test txt
    git push -u origin feature1
    hub pull-request
    git ls-remote origin
    git fetch origin refs/pull/1/head
    git checkout master
    git merge FETCH_HEAD
    git push 

