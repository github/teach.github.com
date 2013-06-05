---
layout: bare
title: Seagate Longmont Class
description: Seagate Longmont Class
tags: [notes, class]
path: classnotes/2012-12-07-seagate-class.md
eventdate: 2012-12-03
---

Held on December 3, 2012

Taught by:

* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.10, but can have issues with HTTPS credential prompting.
* Best is 1.8.X or higher

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

## Tools, Tips, Shortcuts

* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem ](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

## Resources

* SSL Certificates
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

https://github.com/githubtraining/feedback/issues

## Class Outline

* Introduction and history
* Creating repos 
* Adding and committing files
* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Understanding Git's Content Tracking 
* Moving and copying files
* Branching and Merging in Git
* Rebase and interactive rebase
* Establishing upstream repositories 
* Push, pull, and fetch
* RefLog as a safety net
* Stash for work-in-progress
* Reset modalities
* Collaboration through Pull Requests 
* Code review features of GitHub

* http://mrkn.co/survey


## Command Line History
                                  
    git --version
    pwd
    git init newproject
    cd newproject
    ls
    ls -la
    tree .git
    ls -la .git
    git config user.name
    git config user.email
    git help config
    vi ~/.gitconfig
    git config user.name
    git config user.email
    vi ~/.gitconfig
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    vi ~/.gitconfig
    git config user.name
    git config user.email
    git config --local user.name
    git config --global user.name
    git config --list 
    git config --list --local 
    git config --list --global
    git config --list --system
    touch /opt/github/homebrew/Cellar/git/1.8.0/etc/gitconfig
    git config --list --system
    ll .git
    cat .git/config
    cat ~/.gitconfig
    git config --global color.ui auto 
    pwd
    ls -a
    vi caesar.txt 
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit" 
    git status
    ls -la .git
    tree .git/objects
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "The noblest man"
    vi caesar.txt
    git diff
    git difftool
    git status
    git add caesar.txt
    git diff 
    git diff --staged
    vi caesar.txt
    git status
    git diff
    git diff --staged
    vi caesar.txt
    git diff
    git diff --color-words
    git diff --word-diff 
    git diff HEAD
    git diff HEAD --word-diff
    git status
    git add caesar.txt
    git status
    git commit -m "Costly blood"
    git stauts
    git status
    git log
    git log --stat 
    git log --patch
    git log --patch --word-diff 
    git log --pretty=raw 
    git log --pretty=oneline | wc -l
    git log --pretty=raw 
    git log --pretty=email --patch -1
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    tree .git/objects
    tree .git/objects | less
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline --abbrev-commit --graph
    git lg
    git status
    ls
    mkdir obj
    touch obj/InterruptController.o
    touch obj/DMA.o
    ll ~ > build.log
    git status
    git status -u 
    vi .gitignore 
    mkdir otherdir
    cd otherdir
    mkdir obj
    touch obj/monkey.o
    cd ../..
    tree
    git status
    pwd
    cd newproject
    git status
    vi .gitignore
    ll
    cd otherdir
    ll
    tree
    vi .gitignore
    cd ..
    git status
    git status -u
    vi .git
    vi .gitignore
    git status
    rm otherdir/.gitignore
    git staus
    git status
    git add .gitignore
    git status
    git commit -m "Added a .gitignore file"
    ll
    tree
    git config core.excludesfile
    vi ~/.gitignore
    git status
    vi ~/.gitignore
    cat .gitignore
    vi monkey.txt
    git add .
    git commit -m "Angry monkey"
    vi .gitignore
    git status
    git add .gitignore
    git commit -m "All of the ignores"
    vi monkey.txt
    git status
    cat .gitignore
    git add .
    git status
    git commit -m "Changed the emotion of the monkey"
    git log --stat
    ll
    git rm monkey.txt
    git status
    ls
    git reset HEAD monkey.txt
    ll
    git checkout -- monkey.txt
    git status
    ls
    ll
    git rm --cached monkey.txt
    git status
    ll
    cat .git
    cat .gitignore
    git status
    git commit -m "Made monkey.txt an untracked file"
    vi monkey.txt
    git status
    history
    generaterandomfiles 5 junk txt
    ls
    ll
    cat junk1.txt
    git status
    git add .
    git status
    git commit -m "Commited some files prepared for destruction"
    git status
    ll
    git rm junk1.txt
    ll
    git status
    rm junk2.txt
    git status
    git rm junk2.txt 
    git statsu
    git status
    open .
    git status
    git add -u .
    git status
    git commit -m "Cleaned up all of the cruft"
    tmux
    tr.git
    tmux attach
    cd scratch/newproject
    export PS1="$ "
    ll
    rm -rf obj
    rm -rf otherdir
    rm monkey.txt
    rm build.log
    ll
    generaterandomfiles 5 file txt
    ll
    git status
    git add .
    git status
    ll ~ > listing.txt
    git status
    git add .
    git status
    git commit -m "Added some files to move around"
    git status
    mkdir files
    tree
    git status
    cd files
    mkdir monkey
    cd ..
    git status
    cd files
    touch .gitignore
    cd ..
    git status
    cd files
    rm .gitignore
    rmdir monkey
    cd ..
    tree
    git status
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    open .
    cd files
    ll
    cp file2.txt monkey-2.txt
    git status
    git add monkey-2.txt
    git status
    rm monkey-2.txt
    git reset HEAD monkey-2.txt
    git status
    git add -A . 
    git status
    cd ..
    git add -A .
    git status
    tree
    open .
    git status
    git commit -m "Refactored by trivial moving"
    git log --stat -1
    git log --stat -1 -M
    vi listing.txt
    mv listing.txt files/
    tree
    git status
    git add -A .
    git status
    git commit -m "Renamed with changes"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M80 
    git log --stat -1 -M70 
    ll
    ll ~ > test.txt
    git add .
    git commit -m"FIle to move"
    mv test.txt files/oops.txt
    vi files/oops.txt
    git add -A .
    git status
    git commit -m "Moved, changed, AND RENAMED--stop me before I kill again"
    git log --stat -M -1
    vi files/listing.txt
    git add .
    git commit -m "9001 listings"
    ll
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M99 --follow -- files/listing.txt
    git status
    git branch
    tree .git/refs
    cat .git/refs/heads/master
    git lg
    tmux
    tmux attach
    export PS1="$ "
    tr.git
    cd scratch/newproject
    ll
    git lg
    tr.git
    cd scratch/newproject
    git loglive
    git branch feature 
    tree .git/refs
    git branch
    git lg
    git branch
    git branch 
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git checkout feature
    cat caesar.txt
    vi caesar.txt
    git status
    git add .
    git commit -m "Added a title to Caesar"
    git branch
    git status
    git checkout master
    cat caesar.txt
    git branch
    git merge feature
    git lg
    ll
    tree .git/refs
    git branch -d feature
    git branch wat 7cf5
    git branch feature 3598dad 
    git branch -d feature
    git branch -d wat
    ll
    vi caesar.txt
    git status
    git add .
    git commit -m "Blood and destruction"
    git branch feature2
    git checkout feature2
    git branch
    vi caesar.txt
    git checkout master
    git branch -d feature2
    git branch feature2 f780044
    git checkout feature2
    vi caesar.txt
    vi jabberwocky.txt
    git statu
    git status
    git add .
    git status
    git commit -m "Defective Shakespeare, effect Carrol"
    git commit --amend 
    git status
    git branch
    git checkout master
    git merge master 
    git merge feature2
    git status
    vi caesar.txt
    cat jabberwocky.txt
    git branch
    cat caesar.txt
    git merge --abort
    ll
    cat caesar.txt
    git merge feature2
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git mergetool
    git log --graph --oneline --all
    git status
    git commit 
    git loglive -15
    vi caesar.txt
    git add .
    git commit -m "More defective Shakespeare"
    git reset 
    vi jabberwocky.txt
    git reset --hard 47c9 
    vi caesar.txt
    git branch foo 44a5
    git branch -d foo
    git branch -D foo
    git reflog
    git reset --hard HEAD@{1}
    vi jabberwocky.txt
    git add .
    git commit -m "MOAR jabberwocky"
    vi caesar.txt
    git checkout 47c9 -- caesar.txt 
    git status
    vi caesar.txt
    git add .
    git commit -m "Choked pity"
    git checkout 47c9 
    git branch feature3
    git checkout master
    git branch -d feature3
    git branch -d feature2
    git reflog
    ll
    git remote add origin https://github.com/githubtrainer/poetry.git 
    git remote
    cat .git/config
    git help push
    ll .git/refs/heads
    ls .git/refs/heads
    git push -u origin master 
    cat .git/co
    cat .git/config
    tr.git
    cd scratch
    export PS1="$ "
    tr.git
    cd scratch
    ll
    git clone https://github.com/githubtrainer/poetry.git
    cd poetry
    ll
    git checkout -b tlberglund
    vi caesar.txt
    git add .
    git commit -m "Caesar rage"
    git push -u origin tlberglund
    git checkout master
    git branch -a
    git fetch 
    git branch
    ls
    git branch -a
    tree .git/refs
    git lg
    git rev-parse HEAD
    git lg
    git fetch
    git lg
    git branch -a
    git checkout timandjordanROCK 
    git branch -a
    ll
    cat caesar.txt
    cat jabberwocky.txt
    ll
    ll files
    ll
    git branch
    git diff master
    git checkout master
    git merge timandjordanROCK
    git branch -d timandjordanROCK
    git push
    git lg
    vi caesar.txt
    git merge tlberglund
    vi caesar.txt
    git add .
    git commit -m "Cry HAVOC"
    git lg
    git diff origin/after5cst
    git merge origin/after5cst
    git lg
    git merge origin/jacooper
    git lg
    git branch
    git push
    git config --global push.default simple 
    git push
    ls
    cat caesar.txt
    ll files
    ls files
    git branch -a
    git pull 
    git loglive -10
    git branch -a
    ll
    vi caesar.txt
    git status
    git add .
    git commit -m "Carrion men"
    git status
    git push
    git fetch
    ll
    ls
    vi jabberwocky.txt
    git add .
    git commit -m "Uffish thought"
    git push
    git fetch
    git pull 
    git reflog
    git reset --hard HEAD@{1}
    git status
    git pull 
    git push
    git tag CLASS_DONE
    tree .git/refs
    git show CLASS_DONE
    git tag -a UFFISH_THOUGHT 612ef31 
    git show UFFISH_THOUGHT
    tree .git/refs
