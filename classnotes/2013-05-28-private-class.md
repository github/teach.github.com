---
layout: bare
title: Git Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private]
path: classnotes/2013-05-28-private-custom-class.md
eventdate: 2013-05-28
---

## Teacher
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

## Resources

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
    * [The GitHub for Mac Client](http://mac.github.com)
    
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
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Useful Advanced Git Commands

* Visual Diff Tool
    * Many tools supported including:
        * Araxis DiffTool
        * Perforce P4Merge
    * Config Steps:
        * `git config diff.tool "myaraxis"`
        * `git config difftool.myaraxis.cmd araxisgitdiff ONE $LOCAL THREE FOUR $REMOTE`
        * `git config difftool.prompt false`

* Alternate Editor
    * When VI default is not preferred
    * `git config --global core.editor <editor-on-path>`

## Command Line History

### Day 1

    git --version
    git config --global user.name "GitHub Teacher"
    git config --global user.name
    git config --global user.email "training@github.com"
    git config --global user.email
    git config --global user.name "Teacher"
    git config --global user.name
    git config --global user.name "GitHub Teacher"
    git config --global --list
    git config --global color.ui auto
    git config --global --list
    git config --global core.autocrlf input
    git config --global --list
    cd sample-proj
    pwd 
    git init
    git status
    git add .
    git commit -m'First commit'
    cd ..
    pwd
    git init jordan
    cd jordan
    pwd
    touch index.html
    pwd
    git status
    git add index.html
    git status
    git commit -m'First commit home page'
    git status
    touch contact-us.html
    touch about-us.html
    touch classes.html
    git status
    touch app.js
    touch style.css
    git status
    git add about-us.html classes.html contact-us.html
    git status
    git commit -m'Add scaffold of html pages'
    git status
    git add app.js
    git status
    git commit -m'Scaffold application javascript'
    git status
    git add style.css
    git status
    git commit -m'Scaffold stylesheets'
    git status
    vi index.html
    git status
    vi app.js
    git status
    git diff
    git status
    git add index.html
    git status
    git status
    git diff
    git diff --staged
    git commit -m'Add basic HTML to home page'
    git status
    git add app.js
    git status
    git status
    git diff
    git diff --staged
    git commit -m'Add initial IIFE function'
    git status
    vi index.html
    git status
    git diff
    git add index.html
    git status
    vi index.html
    git status
    cat index.html
    git diff
    git diff --staged
    git diff
    git status
    git diff HEAD
    git status
    git add index.html
    git status
    git diff --staged
    git commit -m'Added major and minor titles'
    git status
    vi app.js
    git status
    vi index.html
    git status
    vi style.css
    git status
    git diff
    git diff app.js
    git diff app.js index.html
    git diff app.js
    git diff --color-words app.js
    git add app.js
    git status
    git diff --staged
    git diff --staged --color-words
    git commit -m'Change var names, add console log'
    git status
    git diff --word-diff index.html
    git diff --stat
    git add index.html
    git status
    git diff
    git diff --staged --color-words
    git commit -m'Edit author names, add event date'
    git status
    git add .
    git status
    git commit -m'Add basic html selectors'
    git status
    git config --global alias.s "status -s"
    pwd
    git status -s
    git status
    vi about-us.html
    git status
    git s
    touch events.html
    git s
    git config --global alias.ds "diff --staged"
    git s
    git add about-us.html
    git s
    git ds
    git status
    rm events.html
    git s
    git ds
    git ds --color-words
    git status
    cat about-us.html
    git reset HEAD about-us.html
    cat about-us.html
    git s
    git commit -am"About us contact info'\
    git commit --amend
    git s
    git log
    git log --stat
    git log --patch
    git log --patch --word-diff
    git log --stat -2
    git log -2 --patch
    git log -2 --patch --color-words
    git log -3 --format=raw
    git log --format=oneline
    git log --format=oneline --abbrev-commit
    git log --format=oneline --abbrev-commit -3 --stat --patch
    git log --oneline
    git log --oneline --stat
    git log --all --decorate --oneline --graph --stat
    git config --global alias.lol "log --all --graph --decorate --oneline"
    git config --list --global
    git lol
    git lol --stat
    git lol
    git log -S"May 28"
    git lol
    git log --format=raw --grep="IIF*"
    git log --format=raw --grep="IIF*" --stat --patch
    git status
    export PS1="$ " && 
    cd scratch/jordan
    pwd
    git graphlive 25
    git branch
    git branch feature1
    cd .git
    cd refs/heads
    cat feature1
    cd ../../
    pwd 
    cd ..
    pwd
    git branch
    git checkout feature1
    vi index.html
    git status
    git add .
    git status
    git commit -m'Add more home page content'
    git branch
    touch feature.html
    git s
    git add .
    git s
    git commit -m'Add feature page'
    git branch
    git checkout master
    git branch
    git branch -m feature1 feature-page
    git branch
    git branch
    git branch about-info-update 9573430
    git checkout about-info-update 
    git branch
    git branch prototype feature-page
    git checkout prototype 
    generaterandomchanges 5 proto txt
    git branch
    git branch
    git checkout master
    git branch -d about-info-update 
    git branch
    git branch -d prototype
    git branch -D prototype
    git branch
    git merge feature-page
    git branch
    cat index.html
    git branch
    git branch -d feature-page
    git branch sample1
    git branch sample2
    git checkout sample1
    git branch
    generaterandomchanges 5 samp-one txt
    git checkout sample2
    git branch
    generaterandomchanges 3 samp-two md
    git checkout master
    a-l
    git merge sample1
    git branch
    git branch -d sample1
    git merge sample2
    git log --format=raw -1


### Day 2

    git status
    git branch
    git branch -d sample2
    git branch
    vi index.html
    git branch home-page-content
    git branch
    vi index.html
    git status
    git s
    git add index.html
    git status
    git diff --staged
    git commit -m'Change title to Git "Foundations"'
    git checkout home-page-content 
    vi index.html
    git s
    git add .
    git s
    git commit -m'Change title to just Git & GitHub'
    git log --patch --all -3 --oneline
    git log --patch --all -3 --oneline --color-words
    git branch
    git checkout master
    git merge home-page-content 
    git status
    vi index.html
    git ss
    git s
    git add index.html
    git status
    git commit
    cat index.html
    git status
    git remote add origin https://github.com/githubteacher/jordan.git
    git remote
    git remote -v
    git branch
    git branch -d home-page-content 
    git push -u origin master
    cat contact-us.html
    git fetch origin
    cat contact-us.html
    git diff master origin/master
    git pull
    cat contact-us.html
    generaterandomchanges 3 main txt
    git status
    git push
    git status
    git branch
    git branch cleanup
    git branch -d cleanup
    git checkout -b cleanup
    git branch
    git rm main1.txt
    git rm main2.txt
    git status
    git rm main3.txt
    git status
    git commit -m'Remove main*.txt files from root'
    git rm samp-one*
    git status
    git commit -m'Remove samp-one* files'
    git status
    rm .DS_Store
    git status
    git add -u samp-two2.md
    git add -u samp-two3.md
    git status
    git commit -m'Remove sample 2 and 3 files'
    git rm --cached samp-two1.md
    git status
    git commit -m'Untrack samp-two file'
    git status
    git status
    git push -u origin cleanup 
    git status
    rm .DS_Store
    git status
    git branch -vv
    git log --stat -5 --oneline
    git branch
    git checkout master
    git merge cleanup
    git status
    git branch -vv
    git push
    cd ..
    mkdir student
    cd ..
    cd student
    pwd
    git clone https://github.com/githubstudent/jordan.git
    cd jordan
    git log
    git branch
    git branch -a
    git remote -v
    git branch poetry
    git checkout poetry 
    pwd
    git status
    vi augeries-of-innocence.md
    git s
    git branch
    git add .
    git status
    git commit -m'Add Blake Augeries of Innocence'
    git branch -vv
    git branch -a
    git push -u origin poetry
    git config --local user.name "GitHub Student"
    vi augeries-of-innocence.md
    git add .
    git status
    git commit -m'Added line break to poem'
    git push
    pwd
    git pull
    git remote add teacher https://github.com/githubteacher/jordan.git
    git remote -v
    pwd
    cd student
    cd jordan
    git graphlive 25
    git fetch teacher
    git branch -a
    git branch
    git checkout master
    git merge teacher/master
    git branch -vv
    git push
    cd ..
    cd ..
    pwd
    cd ..
    mkdir student-writer
    cd student-writer
    git clone https://github.com/githubteacher/jordan.git
    cd jordan
    git remote -v
    git branch
    git checkout -b test
    generaterandomchanges 5 test txt
    git branch -a
    git push -u origin test
    cd ..
    pwd
    cd ../
    pwd
    cd jordan
    pwd
    git fetch
    git branch -vv
    git pull
    cd ~/scratch/jordan
    git graphlive 25
    git rm test1.txt
    git status
    git commit -m'Remove test1'
    git rm test2.txt
    git status
    git commit -m'Remove test2'
    generaterandomchanges 3 main md
    git reset --soft 2128bea
    git status
    git commit -m'Add main1-3 markdown files'
    git reset --mixed HEAD~1
    git status
    rm main3.md
    git status
    git add .
    git status
    git commit -m'Add main1 and 2 files'
    git reset --hard 9cfec3a
    git status
    git reflog -10
    git reset --hard f7fd4b3
    git reflog -5
    git reset --hard 9cfec3a
    git config --global alias.undo "reset HEAD@{1}"
    touch new-file.txt
    git add .
    git status
    git commit -m'Add new file for test'
    git undo
    git status
    rm new-file.txt
    git status
    touch jordan.log
    touch matthew.log
    touch build.log
    git status
    echo "oranges" >  orange.md
    git status
    touch .gitignore
    vi .gitignore
    git status
    git status
    git add .gitignore
    git status
    git commit -m'Add first draft of .gitignore'
    git status
    git add .
    git commit -m'Oranges!"\
    git commit --amend
    git status
    git push
    cat .gitignore
    cat ~/.gitignore
    git config --global core.excludesfile ~/.gitignore
    pwd
    touch proj-notes.jordan
    git status
    cat .gitignore
    touch important.jordan
    git status
    vi .gitignore
    git status
    git add .gitignore
    git commit -m'Reverse ignore pattern for important.jordan'
    git status
    git add .
    git commit -m'Add important.jordan'
    vi .gitignore
    git status
    vi test1.txt
    git status
    git rm --cached test*.txt
    git status
    git status
    git commit -m'Remove tracking for test*.txt'
    git status
    git branch
    git branch -d cleanup 
    git branch
    git checkout -b feature
    git status
    git checkout .gitignore
    git status
    git status
    git status
    rm .DS_Store
    git branch
    generaterandomfiles 3 hello txt
    git status
    git add .
    git commit -m'Three hello files'
    git status
    echo "hello 1" > hello1.txt
    echo "hello 2" > hello2.txt
    git status
    git status
    git stash save "Hello messages to hello txt files"
    git checkout master
    touch hotfix.txty
    mv hotfix.txty hotfix.txt
    git status
    git add .
    git commit -m'Add hotfix file'
    git status
    git checkout feature
    git status
    git stash list
    git status
    git stash pop
    git add hello1.txt
    git commit -m'Hello 1 only'
    git add .
    git status
    touch another-file.txt
    git status
    git stash --include-untracked save "Hello2 and another-file"
    git stash --include-untracked
    git status
    git checkout master
    touch hotfix2.txt
    git add .
    git commit -m'Hot fix 2'
    git checkout feature
    git stash pop
    rm another-file.txt
    git status
    git status
    git stash save "Modified Hello2 file"
    echo "lemons" > orange.md
    git status
    git stash save "Oranges are now lemons"
    git stash list
    git stash pop stash@{1}
    git stash list
    git stash 
    git status
    git stash list
    git branch -a
    git push -u origin feature
    git branch -a
    git checkout master
    git status
    git commit -am'Hello2 change'
    git status
    git checkout master
    git branch
    git merge feature
    git branch -a
    git fetch --prune origin
