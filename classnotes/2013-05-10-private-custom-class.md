---
layout: bare
title: Git Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private]
path: classnotes/2013-05-10-private-custom-class.md
eventdate: 2013-05-10
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

* Eclipse & Git
    * [Git for Eclipse](http://eclipse.github.com)

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

* Git Log - Finding by Patch Content
    * Search patch contents of all logs
    * Returns log for any commits with patches containing string
    * `git log -S"<string-pattern-match">`

* Git Log - Finding by Commit 
    * Search commit messages by regular expression
    * Returns log for any commits with matching commit message
    * `git log --grep="regex-pattern-or-string"`

*  Git Stash
    * Temporary store of uncommited changes
    * Store file modifications, restore clean working directory
        * `git stash <"Optional Message">`
    * Retrieve last stashed modifications
        * `git stash pop`
    * Review stashes 
        * `git stash list`

* Git Revert
    * Undo a prior commit's patches
    * Create a new commit (writing new history, not affecting existing)
    * `git revert <commit-ref>`

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
    git config --global user.email "training@github.com"
    git config --global --list
    git config --global color.ui auto
    git config --global core.autocrlf input
    git config --global --list
    mkdir jordan
    cd jordan
    touch index.html
    touch app.js
    touch style.css
    git init
    git status
    git add  app.js index.html style.css
    git status
    git commit -m'First commit of project files'
    git status
    vi app.js
    vi style.css
    git status
    vi index.html
    git status
    git add style.css
    git status
    git commit -m'Add body style selector'
    git statsu
    git status
    git add app.js
    git status
    git commit -m'First IIFE function call'
    git status
    git add index.html
    git status
    git commit -m'Add doctype and body scaffold'
    git status
    vi app.js
    vi style.css
    git add .
    git status
    git reset HEAD app.js
    git status
    git reset HEAD app.js
    git status
    git reset HEAD style.css
    git status
    git diff
    git diff app.js
    git status
    git add .
    git status
    git diff
    git diff --staged
    git status
    git reset HEAD .
    vi app.js
    vi style.css
    git status
    git diff
    git add app.js
    git status
    git diff --staged
    vi app.js
    git status
    git diff
    git add app.js
    git status
    git status
    git diff --staged
    git status
    vi app.js
    git status
    cat app.js
    git diff HEAD
    git status
    git add app.js
    git commit -m'Add if test block'
    git status
    vi app.js
    git diff
    git diff --color-words
    vi style.css
    git diff --color-words
    git diff --word-diff
    git status
    git add app.js
    git diff --staged
    git commit -m'Change var names'
    git status
    git commit -a -m'Up font size and px'
    git status
    git log
    git log --stat
    git log --patch
    git log -3 --patch --stat
    git log --format=raw
    git log --format=oneline
    git log --format=oneline --abbrev-commit
    git log --oneline
    git help log
    git status
    git config --global alias.s "status -s"
    git s
    vi index.html
    git s
    git config --global alias.lol "log --decorate --oneline --all --graph"
    git lol
    git s
    git lol
    git status
    git add .
    git status
    git reset --mixed HEAD index.html
    git status
    git add .
    git status
    git diff --staged
    git commit -m'Add header to home page'
    git lol
    git reset --soft 483af10
    git status
    git lol
    git commit -m'Add Git Class title to body'
    git lol
    git status
    git lol
    git reset --hard 06c3ba8
    git lol
    git reflog
    cd scratch/jordan
    git reset --hard HEAD@{3}
    git reflog
    cd scratch/jordan
    git status
    generaterandomchanges 3 stuff txt
    git log --oneline
    git status
    git rm stuff1.txt
    git s
    git status
    git commit -m'Remove stuff1 no longer needed\
    git status
    git lol
    rm stuff2.txt
    git status
    git add -u stuff2.txt
    git status
    git commit -m'Remove stuff2 extra file'
    git lol
    generaterandomchanges 3 more-stuff- txt
    git lol
    open .
    git status
    git add -u .
    git status
    git commit
    git status
    git lol
    git log --oneline --stat
    git rm --cached stuff3.txt
    git status
    git commit -m'Do not track stuff3.txt'
    git status
    open .
    git status
    mkdir stylesheets
    git mv style.css stylesheets/style.css
    git status
    git commit -m'Organize css to subdir'
    git status
    git status
    cat dir-listing.txt
    git add .
    git commit -m'Home dir listing'
    git status
    git mv dir-listing.txt README.md
    git status
    vi README.md
    git status
    git add README.md
    git status
    git commit -m'Renae dir-listing to README for clarity'
    git status
    git lol
    git log 
    git log --stat
    git log --stat -M
    git log --stat -M100
    git log --stat -M70
    touch issues.log
    touch build.log
    git status
    vi index.html
    git status
    vi .gitignore
    git status
    git add .gitignore
    git status
    git commit -m'First commit ignore file'
    cat ~/.gitignore
    cat .gitignore-example
    touch jordan.notes
    git status
    vi ~/.gitignore-jordan
    git config --global --list
    git config --global core.excludesfile "~/.gitignore-jordan"
    git status
    vi ~/.gitignore-jordan
    git status
    git remote add origin https://github.com/githubteacher/jordan.git
    git status
    git push origin master
    cd ..
    mkdir student-mode
    cd student-mode
    git clone https://github.com/githubstudent/jordan.git
    git log
    cd jordan
    git remote -v
    generaterandomchanges 3 student-was-here txt
    git lol
    git remote -v
    git push origin master

### Day 2
    git branch
    git branch feature1
    git branch
    git status
    git branch
    git checkout feature1
    git status
    git diff
    git add index.html
    git status
    git s
    git commit -m'Add subtitle with Jordan info'
    generaterandomchanges 3 feature-one- txt
    git checkout master
    git status
    git checkout feature1
    vi feature-one-1.txt
    git status
    git checkout master
    git reset --hard HEAD
    git status
    vi index.html
    git status
    git checkout master
    git checkout -- index.html
    git status
    git checkout master
    git branch
    git branch -m feature1 featureA
    git branch
    git branch prototype
    git branch ideas
    git branch
    git branch -d ideas
    git branch -d prototype
    git branch
    git branch -d featureA
    git branch -D featureA
    git branch fix-up 0681695
    git branch
    git checkout fix-up
    vi app.js
    git status
    git add app.js
    git status
    git commit -m'Fix var names to "a" and "b"'
    git status
    git checkout master
    git status
    git status
    git branch
    git merge fix-up
    git branch
    git branch -d fix-up
    git branch feature2
    generaterandomchanges 3 mainline-code txt
    git checkout feature2
    git status
    generaterandomchanges 4 feat-two- txt
    gitk --all
    git branch
    git checkout master
    git merge feature2
    generaterandomchanges 5 mainline md
    git branch feature3
    git checkout feature3
    generaterandomchanges 4 feature-three- txt
    git checkout master
    git merge feature3
    git branch
    git checkout -d feature2
    git branch -d feature2
    git branch
    git branch -d feature3
    git status
    git branch feature4
    git branch
    vi index.html
    git status
    git commit -am'Added jordan name to title'
    git status
    git branch
    git checkout feature4
    vi index.html
    git status
    git commit -am'Added different class title'
    git checkout master
    git branch
    git merge feature4
    git status
    vi index.html
    git status
    git add index.html
    git status
    git commit
    cat index.html
    git branch
    git branch -d feature4
    git branch feature
    generaterandomchanges 3 main-more- txt
    git checkout feature
    generaterandomchanges 2 other txt
    vi index.html
    git status
    git commit -am'Added event date'
    git rebase master
    git branch
    git checkout master
    git merge feature
    vi index.html
    git commit -am'Add may 9th date'
    git checkout feature
    vi index.html
    git commit -am'Change to year 2012'
    git status
    git branch
    git rebase master
    git status
    vi index.html
    git status
    git add index.html
    git rebase --cotinue
    git rebase --continue
    git status
    git rebase --continue
    git rebase --skip
    git status
    git branch
    vi index.html
    git commit -am'Date range'
    git checkout master
    vi index.html
    git commit -am'Full date'
    git checkout feature
    git rebase master
    git status
    vi index.html
    git add .
    git status
    git rebase --continue
    git checkout master
    git merge feature
    git branch -d feature
    git status
    vi index.html
    git status
    git diff
    git checkout index.html
    git status
    git branch feature10
    git checkout feature10
    git checkout master
    git checkout -b featureZ
    git checkout 3502b32
    git status
    git branch exploration-phase
    git branch
    git branch -m exploration-phase tidy-up
    git checkout tidy-up 
    git rm mainline*
    git status
    git commit -m'Removing mainline text files'
    git rebase master
    git branch
    git revert 768a263
    git status
    vi index.html
    git add .
    git commit
    git status
    git branch
    git branch -d feature2
    git branch -d featureZ
    git branch -d feature10
    git branch
    git checkout master
    git branch -d tidy-up
    git branch -D tidy-up
    git status
    git branch feature-jordan
    git checkout feature-jordan 
    generaterandomchanges 10 jordan-work txt
    git branch
    git rebase -i 13bba8c
    git lol -1 --stat
    git remote -v
    git push origin feature-jordan
    git fetch origin
    git branch
    git fetch
    git branch -a
    git merge origin/feature-jordan
    git status
    git push -u origin feature-jordan
    git status
    git branch
    git checkout feature-jordan 
    git branch -d feature-jordan 
    git checkout master
    git branch -d feature-jordan 
    git tag V1.0 768a263
    git tag QA 768a263
    git tag QA 13bba8c
    git help tag
    git tag -u QA 13bba8c
    git help tag
    git tag -f QA 13bba8c
    git log -5
    git tag -a -f V1.0  -m"Release candidate 1.0" 
    git log -6
    git log --decorate
    git help log
    git show V1.0
    git tag NEEDS_FIX HEAD~~~~
    git tag
    git checkout -b fixing-bugs NEEDS_FIX
    git lol QA
    git branch
    git checkout master
    git fetch origin
    git branch -a
    git checkout feature-tim
    git status
    git checkout master
    git merge feature-tim
    cd ..
    pwd
    cd ..
    cd scratch
    cd eclipse
    cd workspace
    cd sample1
    git status
    git log -1 --stat
