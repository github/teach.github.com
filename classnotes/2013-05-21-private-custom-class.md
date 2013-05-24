---
layout: bare
title: Git Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private]
path: classnotes/2013-05-21-private-custom-class.md
eventdate: 2013-05-21
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

* Git Log - Finding by Patch Content
    * Search patch contents of all logs
    * Returns log for any commits with patches containing string
    * `git log -S"<string-pattern-match">`

* Git Log - Finding by Commit 
    * Search commit messages by regular expression
    * Returns log for any commits with matching commit message
    * `git log --grep="regex-pattern-or-string"`

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
    git status
    git stash
    git checkout gh-pages
    git status
    git submodule update
    git checkout preroll-slide-update 
    git stash pop
    git status
    git stash
    git checkout gh-pages
    git status
    git submodule update
    bundle exec jekyll --server --automv .gitconfig .gitconfig-jordan
    git config --global --list
    git --versiongit config --global user.name "GitHub Teacher"
    git config --global user.email "training@github.com"
    git config --global color.ui auto
    git config --global core.autocrlf input
    git config --global --listcd ~/scratch
    vi README
    git status
    git add README
    git status
    git commit -m'First commit. Add readme file'
    git status
    git status
    vi index.html
    git status
    vi README
    git status
    vi styles.css
    git status
    vi app.js
    git status
    git add README
    git status
    git commit -m'Add event date to readme description'
    vi overrides.css
    git status
    git add overrides.css
    git add styles.css
    git status
    git commit -m'Add initial basic stylesheets'
    git status
    git add .
    git status
    git reset HEAD app.js
    git status
    git commit -m'Add scaffold for html home page'
    git status
    git add .
    git status
    git commit -m'Add basic JavaScript IIFE'
    git statusgit statusvi index.html
    git status
    git diff
    git add .
    git status
    git diffgit diff --staged
    vi index.html
    git status
    git diff
    git diff --staged
    git commit -m'Add basic tag structure to home page'
    git status
    git diff
    git add index.html
    git status
    git diff --staged
    vi index.html
    git status
    git diff
    git diff --color-wordsgit status
    git diff --color-words HEAD
    git add .
    git status
    git diff --staged --color-words
    git commit -m'Add title and header to home page'
    git statusvi notes.md
    git status
    vi index.html
    git status
    git add .
    git status
    git reset HEAD notes.md
    git status
    rm notes.md
    git status
    git reset HEAD index.html
    git status
    git diff
    git checkout -- index.html
    git statusgit help log
    git log
    git config --global --list
    git log
    git log --format=rawgit log --format=oneline -5
    git log --format=oneline --abbrev-commit -3
    git log --oneline -6
    git log --stat
    git log --stat --patch
    git log --patch --oneline --color-wordsvi index.html
    git status
    git add .
    git status
    git commit -m'Change "And" to ampersand'
    git statusgit log --patch --oneline --color-words
    git log --oneline --graph --decorate --all
    git config --global alias.lol "log --oneline --graph --decorate --all"
    git config --global --list
    git lolgit lol -2
    git lol --stat
    git config --global alias.s "status -s"
    git lol
    git status
    git s
    vi index.html
    git s
    git add .
    git s
    git statusgit s
    git reset HEAD index.html
    git status
    git s
    git checkout index.html
    git s
    git status
    git lol --patchgit log -S "color: blue"
    git log -S "color: blue" --patch --stat
    git log --grep="Add*"
    git log --grep="scaff*"
    git log --grep="Add scaff*"vi TODO.md
    git status
    vi .gitignoregit status
    git add .
    git status
    git commit -m'Add first .gitignore pattern'
    vi .gitignore
    mkdir logstouch logs/01.log
    touch logs/02.log
    touch logs/build.log
    git status
    git status -u
    vi .gitignore
    git status
    git add .
    git commit -m'Add log ignore pattern'
    git statuscd logsvi .gitignore
    git status
    cd ..
    git status -u
    git add logs/.gitignore
    git commit -m'Un-ignore build.log files'
    git status
    git add .
    git status
    git commit -m'First commit build.log'
    git status
    cat ~/.gitignore
    vi ~/.gitignore
    git config --global core.excludesfile "~/.gitignore"
    pwdgit statusgit rm overrides.css
    git statusgit commit -m'Delete overrides.css, deprecated and unnecessary'
    git lol
    generaterandomfiles 5 remove-me txt
    git status
    git add .
    git commit -m'Add remove-me files for test'
    git status
    git lolgit rm remove-me1.txt
    git status
    git commit -m'Remove me1.txt'
    git status
    git rm remove-*
    git statusgit commit -m'Remove last of me*.txt files'
    git statusgit lol --stat
    la
    generaterandomfiles 5 sample txt
    git status
    git add .
    git commit -m'Add sample files'
    git status
    git lol
    open .
    git status
    git add -u sample*
    git status
    rm .DS_Store
    git status
    git add -u sample*
    git status
    git add -u sample2.txt
    git status
    git add -u .
    git statusgit commit -m'Remove other sample files 2-5'
    git status
    git status
    cat sample1.txt
    git rm --cached -- sample1.txt
    git status
    git commit -m'Untrack sample1.txt'
    git status
    vi .gitignore
    git status
    git add .
    git commit -m'Ignore sample1.txt pattern'
    git statusgit lolmkdir css
    git mv styles.css css/general-layout.css
    git status
    git commit -m'Move stylesheet, rename to general-layout' css
     ~ > directory.txt
    git status
    cat directory.txtgit status
    git add .
    git commit -m'Add directory listing file'
    git statusgit mv directory.txt logs/directory.txt
    git status
    vi logs/directory.txt
    git status
    git add .
    git status
    git commit -m'Move directory from root to subdir, tiny mods'
    git statusgit lol --stat -5git lol --stat -M
    git lol --stat -M90
    git lol --stat -M92
    git log logs/directory.txt
    git log --follow logs/directory.txtgeneraterandomfiles 5 moveme txt
    git status
    git add .
    git commit -m'Add moveme files'
    mkdir movme
    git mv moveme1.txt /moveme/01.txt
    git mv moveme1.txt moveme/01.txtgit statusgit mv moveme1.txt movme/01.txt
    git status
    open .
    git status
    rm .DS_Store
    git status
    git add -A .
    git status
    git commit -m'Relocate moveme to sub directory'git statusvi index.html
    vi README
    git status
    git stash
    git status
    git stash listvi app.js
    git status
    git add .
    git commit -m'Alert hello world'
    git status
    git stash pop
    git status
    git diff
    git stash list
    git stash save "Index and README Stuff"
    git status
    git stash listvi sample1.txt
    git status
    touch hello-world.txt
    git status
    git stash
    git stash --include-untracked
    git status
    git stash pop
    
### Day 2

    git status
    git stash
    git status
    git stash pop
    git status
    git stash save --include-untracked "Storing all new work to the side"
    git stash list
    git status
    git stash pop
    rm hello-world.txt
    git status
    git checkout -- README
    git checkout -- index.html
    git status
    git branch
    git log -1
    git branch feature1
    git branch
    git graphlive
    git graphlive 30
    git checkout feature1
    vi app.js
    git s
    git diff
    git add app.js
    git status
    git commit -m'Fix JS syntax error, tidy code line breaks'
    git status
    git checkout master
    git branch prototype 2x9a7df
    git branch prototype 2c9a7df
    git branch
    git branch feature2 master
    git checkout feature2
    generaterandomchanges 2 feature2 txt
    git status
    git checkout feature1
    git branch
    git checkout master
    git branch -d feature2
    git branch -D feature2
    git branch -d prototype
    git branch -m feature1 app-js-fixes
    git branch
    git merge app-js-fixes 
    cat app.js
    git branch
    git branch -d app-js-fixes 
    tree .git/refs/heads
    git branch prototype 65367d
    tree .git/refs/heads
    cat .git/refs/heads/prototype
    cat .git/refs/heads/master
    touch extra.md
    git s
    git add .
    git commit -m'Extra new file'
    cat .git/refs/heads/master
    git branch -d prototype 
    git branch home-page-improvements
    vi README
    git status
    git add .
    git commit -m'Update readme for event info'
    git checkout home-page-improvements 
    vi index.html
    git status
    git s
    git add .
    git diff --staged
    git commit -m'Add event date range to home page sub title'
    git status
    git checkout master
    git merge home-page-improvements 
    git status
    git branch
    git branch -d home-page-improvements 
    git remote add origin https://github.com/githubteacher/jordan.git
    git status
    git remote -v
    git push -u origin master
    git branch 
    git branch -a
    git fetch origin
    git status
    git pull origin
    git graphlive 30
    git branch
    vi css/general-layout.css 
    git status
    git branch
    git checkout -b stylesheet-updates
    git status
    git add .
    git status
    git commit -m'Add header styling'
    git status
    git checkout master
    git checkout -b cleanup-effort
    git rm sample1.txt
    git rm README
    git status
    rm -rf logs
    git status
    git add -u logs/
    git  status
    git reset HEAD README
    git status
    git commit -m'Remove log files and ignores'
    git status
    git add -u
    git status
    git commit -m'Remove README, no longer needed'
    git status
    git push --all origin
    git status
    git branch -v
    git branch -vv
    git push -u origin cleanup-effort 
    git push -u origin stylesheet-updates 
    git branch -vv
    git fetch
    git pull
    cd ..
    pwd
    mkdir student
    cd student
    git clone https://github.com/githubstudent/jordan.git
    pwd
    cd jordan
    pwd
    git config user.name "GitHub Student"
    git config --list --local
    git branch
    git checkout -b finish-home-page
    git status
    vi index.html
    git status
    git add .
    git commit -m'Finish body description of home page'
    git branch -a
    git remote -v
    git push -u origin finish-home-page 
    git branch
    vi index.html
    git status
    git add .
    git commit -m'Add presenter name to page body'
    git branch -vv
    git push
    git remote -v
    git log --oneline -5
    git log --oneline -5 --all
    git remote add teacher https://github.com/githubteacher/jordan.git
    git remote -v
    git branch
    git status
    git checkout master
    git branch
    git status
    git remote -v
    pwd
    cd ..
    cd student
    cd jordan
    git graphlive 30
    git branch
    git pull teacher master
    git branch -vv
    git push
    git status
    git branch -vv
    cd ..
    pwd
    cd ..
    mkdir student-write
    cd student-write
    git clone https://github.com/githubteacher/jordan.git
    cd jordan
    pwd
    git branch
    git checkout -b major-changes
    git mv index.html home.html
    git status
    git commit -m'Renaming home page'
    git status
    git branch -a
    git push -u origin major-changes
    cd ..
    pwd
    cd ..
    cd jordan
    git branch -vv
    git pull
    git lol
    git checkout master
    git pull
    git status
    git branch -a
    generaterandomchanges 5 random txt
    git log --oneline -10
    git graphlive 30
    pwd
    cd ../../
    cd jordan
    git graphlive 40
    git graphlive 25
    git reset --soft f2a47d0
    git status
    git commit -m'Add all five random at once!'
    git log --stat -1
    generaterandomchanges 3 mixed md
    git reset --mixed a8f3911
    git status
    rm mixed3.md
    git status
    git add .
    git status
    git commit -m'Add two mixed file examples'
    git log --stat -1
    generaterandomchanges 7 hard txt
    git reset --hard da3fb3e
    git reflog
    git reflog -15
    git reset --hard 4f669e4
    git reflog -15
    git reset --hard HEAD@{1}
    git reflog -15
    git branch hard-file-examples HEAD@{3}
    generaterandomchanges 5 main-code html
    git checkout hard-file-examples 
    git branch
    git rebase master
    git branch
    git rebase -i 46c53fb
    git checkout master
    git branch
    git branch -d cleanup-effort 
    git branch problems
    vi index.html
    vi home.html
    git add .
    git commit -m'Silly change in Master, Conflicts ensue!'
    git checkout problems 
    vi home.html
    git status
    git add .
    git commit -m'Changing title again, to cause conflict'
    git checkout master
    git merge problems
    git status
    vi home.html
    git status
    git add .
    git status
    git commit -m'Merge, fixing up page header title'
    cat home.html
    git log --format=raw -1
    git branch -a
    git branch -d problems 
    git branch
    git branch -d hard-file-examples 
    git branch -D hard-file-examples 
    git status
    git branch 
    git branch -D stylesheet-updates 
    git branch -a
    git fetch origin
    git branch -a
    git fetch
    git branch -a
    git fetch --prune
    git branch -a
