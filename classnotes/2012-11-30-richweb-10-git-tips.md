---
layout: bare
title: Rich Web Experience 10 Git Tips Presentation
description: 10 Git Tips Presentation at the Rich Web Experience 2012
tags: [notes, conference, workshop]
path: classnotes/2012-11-30-richweb-10-git-tips.md
eventdate: 2012-11-30
---

Held on November 30, 2012 and presented by Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Command Line History

    git init rebasedemo
    generaterandomchanges 3 master txt
    generaterandomchanges 2 masterfixes  txt
    generaterandomchanges 3 feature txt
    cd rebasedemo
    git graphlive 
    git graphlive 5
    git rebase master
    git init rereredemo
    generaterandomchanges 3 mainline txt
    git branch feature1
    git branch feature2
    git commit -a -m"Mainline change"
    git checkout feature1
    vim mainline1.txt
    git commit -a -m"Feature change"
    git diff
    git mergetool
    git staus
    git reset --hard bc26a
    git treelive 10
    git graphlive 10
    generaterandomchanges 2 morefixes txt
    cat mainline1.txt
    git commit -a
    z github
    git fetch
    git branch --no-merge
    git branch -a
    git branch -a --merged
    git branch -a --no-merged
    git branch --merged
    git merge feature1
    git checkout feature2
    generaterandomchanges 2 feature2 txt
    git merge feature2
    git show-branch
    z github.co
    cd github.com_git
    git remote prune
    git remote prune origin
    git fetch --prune
    
    z /Users/mccm06/Documents/Scratch
    git branch feature3
    git checkout feature3
    generaterandomchanges 1 test txt
    git merge feature3
    git checkout --theirs test1.txt
    cat test1.txt
    git checkout --ours test1.txt
    git commit
    git commit 
    
    git clone https://github.com/githubtraining/hellogitworld
    echo CRAZY >> fix.txt
    git commit -a -m"Fixing it"
    cat .git/config
    git pull origin +master:master
    git reflog
    git reset --hard 331912
    
    cd git_git
    git log -p
    git grep -p 'v1.8.0-rc2'
    git grep -C -p 'v1.8.0-rc2'
    git grep -A -p 'v1.8.0-rc2'
    git grep -A 5 -p 'v1.8.0-rc2'
    git log -S "debug" --oneline -p
    git log -S "debug" --oneline -p --author=Junio
    git log -S "debug" --oneline -p --author=Junio --since=2.years.ago --before=1.month.ago
    git log -S "debug" --oneline -p --author=Junio --since=2.years.ago --before=1.month.ago -- Documentation/RelNotes/ --    r=Matthew
    git log -S "debug" --oneline -p --author=Junio --since=2.years.ago --before=1.month.ago -- Documentation/RelNotes/
    git log -S "debug" --summary --author=Junio --since=2.years.ago --before=1.month.ago -- Documentation/RelNotes/
    git show-ref 9376c8603fc1f9b5bf663b76705dfee77f71ef82
    
    cd rereredemo
    git tag GOODPOINT1 HEAD~1
    git tag
    git log --decorate
    git log --decorate --graph
    git log --decorate --graph --oneline
    git show GOODPOINT1
    git gc
    git tag -a GOODPOINT2
    git show GOODPOINT2
    git tag -s GOODPOINT3 HEAD~2
    git show GOODPOINT3
    git tag -v GOODPOINT3
    git notes add 
    cd hellogitworld
    vim .git/config
    git wtf
    
    cd rereredemo
    git remote -v
    hub create
    hub browse
    git push -u origin master
    git branch --no-merged
    git branch feature4
    git checkout feature4
    git push -u origin feature4
    git pull-request
    hub pull-request
    
    cd ..
    mv hellogitworld hgw1
    ls
    rm my.bundle
    
    git init newproject1
    cd newproject1
    generaterandom 1 sample txt
    generaterandomchanges 1 sample txt
    open .
    git show aa49
    git show 2205
    git show 0d6b
    
## Git Internals (Guts of Git)

    echo "Hello World" > hello.txt
    printf "blob 12\000Hello World\n" | shasum
    git log 
    git hash-object hello.txt
    cat .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238
    alias deflate="perl -MCompress::Zlib -e 'undef $/; print uncompress(<>)'"
    deflate .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238
    git show 557d
    git show 557
    git rev-parse 557d
    git rev-parse master
    generaterandomchanges 10 sample txt
    git log HEAD~2
    git show HEAD~2
    git rev-parse HEAD~2
    git tag GOODPOINT1 HEAD~7
    git tag -a GOODPOINT2 HEAD~7
    git describe HEAD~2
    git rev-parse GOODPOINT2-5-g8f46a39
    cat .git/HEAD
    cat .git/refs/heads/master
    git log --oneline
    git rev-parse 71f20ac
    vim .git/refs/heads/myhandcraftedbranch
    git branch
    git checkout myhandcraftedbranch
    generaterandomchanges 2 sample txt
    git checkout master
    git merge --no-ff -m"Test merge"  myhandcraftedbranch
    git log --format=raw
    git show 'master~5^{tree}'
    git show 'master~8^{tree}'
    git log
    echo stuff >> log.txt ; git add log.txt; git commit -m"one"
    echo stuff >> log.txt ; git add log.txt; git commit -m"two"
    echo stuff >> log.txt ; git add log.txt; git commit -m"three"
    git show ':/two'
    git show master~5:hello.txt
    git show master~5:hello.txt | mate
    git log -1
    git show 0a8d^{tree}
    git cat-file -t HEAD
    git cat-file -t f15b5f9b188dd218917086c8cc676ec38d07be70
    git cat-file -p f15b5f9b188dd218917086c8cc676ec38d07be70
    git cat-file -p f15b5f9b188dd218917086c8cc676ec38d07be70 | shasum
    mkdir test1folder
    echo HELLO > test1folder/test.txt
    git add .
    git commit -m"Folder"
    git cat-file -p HEAD
    git status --debug
    git status -debug
    git status
    git cat-file -p 85f91e047f01270b4b3aadd1bdd2d28612081a0c
    git gc --aggressive
    open .git
    generaterandomchanges 10000 sample txt
