---
layout: bare
title: Texas Linux Conf Git Advanced Class Notes
description: Texas Linux Conf Git Advanced Workshop Class Notes
tags: [notes,private]
path: classnotes/2013-05-31-texas-linux-conf.md
eventdate: 2013-05-31
---

Welcome to the Advanced Git Workshop with  
Matthew McCullough and Mike Skalnik

* T: @matthewmccull
* T: @skalnik

The Plan:

* 8:00 AM to 12:00 PM with a 15 break in the middle
* Use the coffee stands by 101-102 at the end of the hallway

Topics:

* Log with follow
* Similarity index
* Blame
* Reflog
* Reset modes
* Cherry-pick
    * Without reference hash
    * With reference hash
* Log Searching
* Interactive rebase
    * Fixup
    * Autosquash
* External Merge Tools
* Rerere
* Refspecs
* Blobspec
* Notes
* Signed tags
* Bisect
* Bundle

## Command Line History

### Our First Project - Following Renaming

    git init project1
    cd project1
    vim first.txt
    git add .
    git commit -m"My first commit"
    git status
    open .
    git status
    git add -A .
    git status
    vim renamedfirst.txt
    git add -A .
    git status
    git commit -m"Renamed with changes"
    git log --stat 
    mate ~/.gitconfig
    subl ~/.gitconfig
    git log --stat 
    git --version
    git status
    git cat-file -t HEAD
    git cat-file -p HEAD
    git cat-file -p b89d8e3f8d385a88e043131202bfb773de92d418
    git cat-file -p HEAD~1
    git cat-file -p 337239f4c65afbf2bec1c2b38501cd35016a2546
    clear
    git log -- renamedfirst.txt
    git log --stat -- renamedfirst.txt
    git log --stat --follow -- renamedfirst.txt

### Using Blame

    z /Users/mccm06/Documents/Code/Git/git_git
    ls
    git blame rerere.c
    git blame -C rerere.c
    cd -

### Using the Reflog

    git reflog
    git log
    git commit --amend
    git log
    git reflog
    git reset --hard e6497d8
    git reflog
    open .git
    git reflog
    git tag KEEPTHIS a37de83
    git orphank
    git commit --amend
    git orphank
    git config alias.orphank
    clear
    git gc
    git orphank
    clear
    generaterandomchanges 10 sample txt
    git gc

### Using Reset

    git reset --hard 
    git reset --hard  HEAD
    git status
    touch junk.log
    git stauts
    git status
    git reset --hard
    git status
    git add junk.log
    git status
    git reset --hard
    git status
    git reflog
    echo THING >> junk.txt
    git add .
    git commit -m"The thing"
    echo THING2 >> junk2.txt
    git add .
    git commit -m "Yup, I need this one too"
    git reflog
    git reset --hard b458d07
    ls
    dc project1
    git reflog
    cd project1
    git reflog
    git checkout b2e3412 -- junk2.txt
    ls
    git status
    git checkout b2e3412 -- .
    git status
    git checkout b2e3412 -- . junk2.txt other.txt
    git git
    git status
    git reset --hard
    ls
    git checkout master
    git reset --soft b458d07
    git status
    git reset --soft c115b79
    git status
    git reset --soft b2e3412
    git status
    git reset --hard
    git status
    touch newfile.txt
    git add .
    git commit -m"New file"
    clear
    git status
    git reset --soft HEAD~1
    git status
    git commit -C HEAD~2
    git reflog
    git show 0363593
    git status
    echo thingthree.txt >> thingthree.txt
    git add .
    git commit -m"Thing three"
    git status
    git reset --mixed HEAD~1
    git status

### Cherry-Picking

    git status
    git clean -fd
    git branch feature1
    git checkout feature1
    echo test1 >> test1.txt ; git add .; git commit -m"Test 1"
    echo test2 >> test2.txt ; git add .; git commit -m"Test 2"
    echo test3 >> test3.txt ; git add .; git commit -m"Test 3"
    git checkout master
    echo hotfix >> hotfix.txt ; git add .; git commit -m"hotfix"
    git branch feature1redux master~1
    git cherry-pick 934ddef
    git log -1
    git reflog 
    git reset --hard 42bd7e2
    git checkout feature1redux 
    git cherry-pick 934ddef -m "Capturing just this small fix"
    git cherry-pick -m "Capturing just this small fix" 42bd7e2
    git cherry-pick  42bd7e2
    git log -1
    git cherry-pick 934ddef
    git log -1
    ls
    gitk --all&
    git reset --hard 3e78
    git cherry-pick 934ddef
    git cherry-pick -x 189a1a7
    git log -1
    git help cherry-pick
    git config --local user.name "Mike Skalnik"
    git cherry-pick -x 0ddf436
    git log --pretty=raw -1 
    clear
    git blame test1.txt
    git log --pretty=raw -1 

### Advanced Log Searching

    z git_git
    git log --author=Peff
    git log --committer=Peff
    git log --committer=Jeff
    git log --committer=Jeff  --since=1.month.ago
    git pull -r
    git log --committer=Jeff  --since=1.month.ago
    git log --committer=Jeff  --since=3.month.ago
    git log --committer=Jeff  --since=7.month.ago
    git log --committer=Jeff  --since=7.month.ago -p
    clear
    git log --committer=Jeff  --since=7.month.ago -p -S full_hex
    git help log
    git status
    git branch -a
    git checkout pu
    git checkout origin/pu
    git merge-base master
    git merge-base master pu
    git merge-base master origin/pu
    git log 727a46b2f9a1ce69eaf09bc46cb129f1c40833d8..origin/pu
    git log 727a46b2f9a1ce69eaf09bc46cb129f1c40833d8..origin/pu --oneline
    cut 1-7 `git log 727a46b2f9a1ce69eaf09bc46cb129f1c40833d8..origin/pu --oneline`
    cut -c 1-7 `git log 727a46b2f9a1ce69eaf09bc46cb129f1c40833d8..origin/pu --oneline`
    git log 727a46b2f9a1ce69eaf09bc46cb129f1c40833d8..origin/pu --oneline | cut -c 1-7
    gitk `git log 727a46b2f9a1ce69eaf09bc46cb129f1c40833d8..origin/pu --oneline | cut -c 1-7`
    git help log
    git log --committer=Jeff  --since=7.month.ago -p -S full_hex --diff=filter=A
    git log --committer=Jeff  --since=7.month.ago -p -S full_hex --diff-filter=A
    git log --committer=Jeff  --since=70.month.ago -p -S full_hex --diff-filter=A
    git checkout master
    git log --committer=Jeff  --since=70.month.ago -p -S full_hex --diff-filter=A
    git log --committer=Jeff  --since=70.month.ago -p -S full_hex --diff-filter=D
    git log --committer=Jeff  --since=70.month.ago -p -S full_hex --diff-filter=M
    cd -
    clear
    git checkout master
    echo test1 >> test1.txt ; git add . ; git commit -"Test 1"
    echo test1 >> test1.txt ; git add . ; git commit -m"Test 1"
    echo test1 >> test1.txt ; git add . ; git commit -m"Test 2"
    echo test1 >> test1.txt ; git add . ; git commit -m"Test 3"
    echo test1 >> test1.txt ; git add . ; git commit -m"Test 4"
    echo test1 >> test1.txt ; git add . ; git commit -m"Test 5"
    git log --oneline

### Using Rebase

    git rebase -i 42bd
    git log --oneline
    git orphank
    clear
    git log --pretty=raw
    git rebase -i 42bd
    git orphank
    git reflog
    git rebase -i 42bd
    git rebase --abort
    git status
    git rebase -i 42bd
    git log --oneline
    echo morefixes >> morefixes.txt
    git add .
    git commit -m"fixup! Test 4"
    git log --oneline
    git rebase -i 42bd
    git rebase -i --autosquash 42bd
    git log --oneline
    git show d4795eb
    cd ..

### Showing what is merged

    z git_git
    git branch --merged
    git branch --no-merged
    clear
    pwd
    to.scratch
    pwd
    cd project1
    clear
    ls
    vim junk.txt
    git add -i
    vim junk.txt
    git add -p
    git diff
    git diff --staged
    git status
    git reset -p
    git status

### Using Stash

    git stash -p
    git status
    git diff
    git add -p
    git ci
    git commit -m"A bit of changes"
    git stash pop
    git diff
    git add .
    git commit -m"123"
    cd ..

### ls-remote and Refspecs

    git clone https://github.com/githubteacher/hellogitworld
    cd hellogitworld
    cat .git/config
    git ls-remote origin
    generaterandomchanges 2 sample txt
    git status
    git pull origin +master:master
    git status
    git branch feature1
    git checkout feature1
    generaterandomchanges 2 sample txt
    git push -u origin feature1 
    clear
    git ls-remote origin
    vim .git/config
    git fetch origin
    vim .git/config
    git fetch origin
    git checkout origin-pulls/1/merge
    git checkout master
    git merge origin-pulls/1/head 
    git reflog
    git reset --hard 8d80474
    git merge --no-ff origin-pulls/1/head 
    git push
    
### Git Notes

    git notes add "This is a note"
    git notes add -m "This is a note"
    git log 
    git push
    git config alias.pushnotes
    git pushnotes origin
    clear
    git config alias.fetchnotes
    
### Tags

    git log
    git checkout 8d80474ffc3747e3375651cc2a0032c8599befd3
    git checkout master
    git tag BEFORELUNCH
    git rev-parse BEFORELUNCH
    git rev-parse master
    cat .git/refs/tags/BEFORELUNCH
    git log -2 
    vim .git/refs/tags/ANOTHER
    git tag
    git tag -a BEFORELUNCH2
    git show BEFORELUNCH
    git show BEFORELUNCH2
    git config user.name
    git tag -s BEFORELUNCHSIGNED
    git show BEFORELUNCHSIGNED
    git tag -v BEFORELUNCHSIGNED

### Bisect

    git checkout bisect
    git log --oneline
    git bisect start
    git bisect good 56cb
    git bisect bad e308b84
    git bisect visualize 
    git bisect run mvn test
    git bisect log
    git bisect visualize 
