---
layout: bare
title: Private Foundations Class
description: Private Foundations Class Notes
tags: [notes,private,online]
path: classnotes/2013-06-07-private-foundations-class.md
eventdate: 2013-06-07
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Jake Douglas

## Resources
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
* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false


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

# Supplemental Topics based on Student Questions
* Show the process of using Git
* When I get stuck in a funny state, how do I avoid recloning?
* Show off GUIs: SourceTree, GitHUb for Mac, SmartGit
* Git ignores
* Git line endings
* Network concepts

## Continuous Integration
* [Jenkins Book](http://www.wakaleo.com/books/jenkins-the-definitive-guide)
* [Jenkins Promoted Builds Video](http://www.youtube.com/watch?v=Gd8OfAmKkMQ)
* [Janky - Code](https://github.com/github/janky)
* [Janky - Blog Post](https://github.com/blog/1013-janky)
* [GitHub Commit Status API](https://github.com/blog/1227-commit-status-api)
* [Jenkins Commit Status Plugin](https://github.com/controlgroup/jenkins-github-commit-status)
* [Jenking Commit Status on GitHub - Shortcut](http://bruno.im/2012/oct/24/github-pull-requests-status-jenkins/)
* [Git Notes Jenkins Plugin](https://wiki.jenkins-ci.org/display/JENKINS/git-notes+Plugin)
* Consultant for workflow, process, troubleshooting: [Peter Bell](http://training.github.com/trainers) via email at training@github.com.

## Command Line History, Day 1

    git --version
    mkdir disneyday1
    git init project1
    cd project1
    vim first.txt
    git add first.txt
    git commit -m "My first commit"
    git clone https://github.com/githubstudent/newproject.git
    git show 5e9
    git show 5e98
    cat first.txt
    git branch -r
    git branch feature1
    git checkout feature1 
    cd newproject
    pwd | pbcopy
    cd /Users/mccm06/Documents/Scratch/disneyday1/newproject
    /Users/mccm06/Documents/Scratch/disneyday1/newproject
    echo PS1="$ "
    export PS1="$ "\
    export PS1="$ "
    git clone https://github.com/githubstudent/hellogitworld hgwstudentjake
    cd hgwstudentjake
    git remote add official https://github.com/githubteacher/hellogitworld
    git fetch official 
    git merge official/master
    cat .git/config
    git flow 
    git cat-file -t master
    git cat-file -p master
    git cat-file -t 18d82f0ddb8bc16d123c04a30c6d25a360656586
    git cat-file -p 18d82f0ddb8bc16d123c04a30c6d25a360656586
    git cat-file -t ee791befa844ff420940305ca6435b5a27a44ece
    git cat-file -p ee791befa844ff420940305ca6435b5a27a44ece
    git cat-file -p ee791befa844ff420940305ca6435b5a27a44ece | subl
    git show master~5:pom.xml
    git diff master~5...master
    git diff origin/master...master
    git diff origin/master...master | subl
    git clone https://github.com/githubteacher/hellogitworld hgwteacher
    git branch matthewmccfeature
    git checkout matthewmccfeature 
    vim matthewmccullough.txt
    git add matthewmccullough.txt
    git commit -m "My First Matthew commit"
    git push -u origin matthewmccfeature 
    historytailzsh 5 10
    git merge origin/jimfeature 
    git branch develop
    git flow hotfix
    cd disneyday1
    cd hgwteacher
    git flow hotfix start 5.1 6f4b134057937e2128c6851856f826472f7ae7bb
    echo FIXEDIT >> README.txt
    git commit -a -m "Fixed it good"
    git flow hotfix finish '5.1'
    git config --list | grep alias
    git config --global alias.s status
    git config --global alias.p push
    git config --global alias.s status -sb
    subl ~/.gitconfig
    git wtf
    git checkout mergeconflict1
    git checkout mergeconflict2
    zsh
    cat README.txt
    git merge mergeconflict1
    git commit -m "I made it purple"
    git log -1
    git log --oneline
    git reset --hard origin/mergeconflict2
    git reset --hard b3e2acf
    git l2
    git reset --hard ecfb9f2
    git branch feature3 b3e2acf
    generaterandomfiles 10 sample txt
    git add sample*.txt
    git reset HEAD sample10.txt
    git commit -m"Ten files"
    git commit -C 05b93db
    echo ELEVEN >> sample11.txt
    git add sample11.txt
    git stash # WHAT IS THIS?
    echo CHANGES >> README.txt
    git stash --list
    git stash list
    git stash pop
    git branch --all
    gitk --all &
    git stash apply
    git stash save "This was Jake interrupting me"
    git stash branch shouldhavebeenabranch
    git show stash@{0}:README.txt 
    git checkout stash@{0} -- README.txt 
    git stash
    git branch feature9
    git add 
    git commit -"Hotfix"
    git commit -m"Hotfix"
    git checkout feature9
    git commit -m "Feature 9 work"
    git push origin feature9:feature9-readytogo
    git tag -a FEATURE9_RELEASED d2a6f9a
    git tag
    git push origin FEATURE9_RELEASED 
    
## Command Line History, Day 2

    mkdir disneyday2
    pwd
    cd disneyday2
    cd hellogitworld
    vim .git/config
    git flow init
    git flow
    gt flow feature
    git flow feature
    git log 
    git flow feature start big-feature c59479302142d79e46f84d11438a41b39ba51a1f
    git push -u origin develop 
    echo CHANGE >> README.txt
    git commit -m"Change on master locally"
    git checkout develop 
    git diff README.txt
    git clean -fd
    mkdir buildoutput
    cd buildoutput
    generaterandomfiles 100 build log
    cd ..
    git status -u
    mv buildoutput junk
    ll
    vim .gitignore
    git add .
    git commit -m "Not ignoring special.log"
    git reflog
    git merge 16fe81d
    git show 16fe81d
    git branch
    git branch cherrypick1
    echo TEST1 >> test.txt ; git add . ; git commit -m "Test `"
    echo TEST1 >> test.txt ; git add . ; git commit -m "Test 1"
    echo TEST1 >> test.txt ; git add . ; git commit -m "Test 2"
    echo TEST1 >> test.txt ; git add . ; git commit -m "Test 3"
    git cherry-pick a1a6a61
    vi test.txt
    git add test.txt
    git commit
    echo TESTAGAIN >> testagain1.txt ; git add . ; git commit -m "Test again 1"
    echo TESTAGAIN >> testagain2.txt ; git add . ; git commit -m "Test again 2"
    echo TESTAGAIN >> testagain3.txt ; git add . ; git commit -m "Test again 3"
    git checkout master 
    git cherry-pick c0dc89f
    git checkout c0dc89f
    git checkout c0dc89f -- testagain2.txt
    git checkout master~20 -- README.txt
    git checkout cherrypick1 
    git commit -m "my commit"
    git branch bugfix
    git branch -vv
    git commit -m "bad commit"
    git reset --hard
    git commit -m "jakes bad commit"
    git reset --soft HEAD~1
    git diff --staged
    git reset --soft HEAD~5
    git branch jakes_feature
    git revert
    git revert 07df23c253aecf2a73fc21bf8304412718082056
    git checkout -b hotfix
    git commit -m "first part of a sentence"
    vi README.txt
    git commit -m "end of the sentence"
    git merge --squash hotfix
    git show
    git show 7b1327a
    git log
    git difftool --toolhelp
    git difftool --tool-help
    git difftool -t p4merge master origin/master
    git difftool -t p4merge master..origin/master
    git difftool -t opendiff master..origin/master
    git branch --no-merge
    git mergetool -t opendiff bugfix
    git mergetool -t opendiff cherrypick1
    git mergetool -t opendiff hotfix
    git merge hotfix
    git merge cherrypick1 
    git commit -m "Merged"
    git branch rebasedemo
    generaterandomchanges 2 hotfix txt
    git checkout rebasedemo 
    generaterandomchanges 3 feature txt
    git rebase master
    gitx
    git checkout master
    git merge rebasedemo 
    z git_git
    git remote -v
    git fetch gitster origin
    git fetch gitster
    cd -
    git rm kylealfke.txt
    git commit -m"Deleted kyle"
    git checkout master~3 -- kylealfke.txt
    git commit -m"Restored kyle"
    clear
    git reset --hard origin/master
    git fetch
    git commit -a -m "Blue"
    git push
    git merge --abort
    git status
    vim README.txt
    git add README.txt
    git rebase --continue


## Chat History, Day 1

    jakedouglas To use Notepad as your default editor with git: https://github.com/github/GitPad
    matthewmccullough   git config --global core.editor "mate -w"
    https://github.com/githubstudent/newproject
    git clone https://github.com/githubstudent/newproject.git
    git clone https://github.com/githubstudent/newproject.git
    matthewmccullough   http://teach.github.com/presentations
    matthewmccullough   https://github.com/signup/free
    https://github.com/signup/free
    https://github.com/githubstudent/newproject
    matthewmccullough   https://github.com/githubteacher/hellogitworld/
    matthewmccullough   git show master~5:pom.xml
    matthewmccullough   git cat-file -p ee791befa844ff420940305ca6435b5a27a44ece | subl
    https://github.com/githubteacher/hellogitworld
    matthewmccullough   git clone https://github.com/githubteacher/hellogitworld hgwteacher
    Eric H. Please paste the last series of commands into this room, thanks.
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
    Eric H. ...starting with the git branch...
    Andrew K.   View paste 
    git branch akolvefeature
    git checkout akolvefeature
    git add 'akolve textdoc.txt'
    git commit -m "akolve commit"
    git push -u origin akolvefeature
    Andrew K.   http://nvie.com/posts/a-successful-git-branching-model/
    Andrew K.   thank you!

## Chat History, Day 2

    Russ M. What was the name of that library?
    jakedouglas libgit2. You can find the project here: https://github.com/libgit2/libgit2
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
    Ron G.  pure junk
    jakedouglas These resources are also available: http://mac.github.com/help.html http://windows.github.com/help.html
    Mike R. Later today will there be time to cover use of git ssh keys and use of those keys to access other secure assets e.g. use my git hub ssh key to connect to a mysqladmin console
    matthewmccullough   fetch = +refs/pull/*:refs/remotes/origin/pr/*
    View paste 
    fetch = +refs/pull/*:refs/remotes/origin/pr/*
    Peter B.    not working for me - this is what I have
    View paste (1 more line) 
    [core]
        repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true
        ignorecase = true
        precomposeunicode = false
    [remote "origin"]
        url = https://github.com/githubteacher/hellogitworld.git
        fetch = +refs/pull/*:refs/remotes/origin/pr/*
    [branch "master"]
        remote = origin
        merge = refs/heads/master
    [branch "pBranch"]
        remote = origin
    ...
    jakedouglas Peter B.: looks like you replaced the original line. it should have been added after the original once. so there should be two lines with "fetch = something"
    Peter B.    working now - I needed fetch first
    seems to work with just the one line
    jakedouglas it'll stop fetching regular branches - i think you'll need to add it back
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    matthewmccullough   http://nvie.com/posts/a-successful-git-branching-model/
    matthewmccullough   https://github.com/nvie/gitflow
