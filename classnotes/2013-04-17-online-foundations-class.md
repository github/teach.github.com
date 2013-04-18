---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-17-online-foundations-class.md
eventdate: 2013-04-17
---

## Teachers
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* David Graham ([Twitter](http://twitter.com/davidgraham), [GitHub](https://github.com/dgraham))

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

## Command Line History
### Day 1

    git --version
    git config --global user.name "Jordan McCullough"
    git config --global user.email "jordan@github.com"
    cd ~/
    git config --global --list
    git config --global color.ui auto
    git config --global --list
    git config --global core.autocrlf input
    git config --global --list
    git config --global core.auto input
    git config --global --list
    git config --global --unset core.auto
    git config --global --list
    cd scratch/
    git init u-of-c
    pwd
    cd u-of-c/
    pwd
    cd ..
    mkdir sample-proj
    cd sample-proj/
    touch file1.txt
    git init
    git status
    cd ..
    cd u-of-c/
    touch index.html
    touch styles.css
    git add .
    git status
    git commit -m'First files of project'
    cd .git
    git config --local user.name "GitHub Teacher"
    git config --local user.email "githubteacher@github.com"
    git config --global --list
    git config --local --list
    cat config
    git config --list
    cd refs
    cd heads
    cd ..
    cd ..
    cd ..
    git status
    touch contact-us.html
    touch contact-us.css
    git status
    touch about-me.html
    git status
    git add contact-us.css contact-us.html
    git status
    git commit -m'First commit of Contact Us files'
    git status
    git add .
    git status
    git commit
    echo "Git Foundations - Hello World" > index.html
    echo "333-444-5555" > contact-us.html
    git status
    git diff
    git status
    git add index.html
    git commit -m"Header for home page"
    git status
    git diff
    git add contact-us.html
    git commit -m'Added phone number'
    git status
    vi index.html
    git status
    git diff
    git status
    git add index.html
    git status
    vi styles.css
    git status
    git diff
    git status
    git status
    git diff --staged
    git diff HEAD
    git status
    git commit -m'Tidied up title, added body'
    git status
    git add .
    git status
    git commit -m'Added content styling. Big font!'
    git status
    vi index.html
    git diff
    git diff --color-words
    git diff --word-diff
    vi index.html
    git diff
    git diff -w
    git help diff
    git log
    git log
    git status
    git diff
    git add .
    git status
    git commit
    git status
    git commit 
    git log
    git log --stat
    git log -1
    git log -50
    git status
    git config --global core.editor vim
    git status
    git commit
    git log
    git log -1
    git status
    vi index.html
    git status
    git diff --color-words
    git add index.html 
    git status
    git commit
    git commit
    git log -2
    git log --stat
    git log -3 --format=raw
    git log --graph -3 --format=oneline
    git log -5 --stat --patch --format=oneline --word-diff
    git log --oneline
    git log --oneline --stat --diff-filter=A
    git log --oneline --stat --diff-filter=M
    git log --oneline --diff-filter=M
    cat contact-us.html 
    git log -S"333-444"
    git log -S"333-444" --stat
    git log --oneline --graph --decorate
    vi about-me.html
    git commit -am'Added my name intro'
    git log --oneline --graph --decorate
    git rm about-me.html
    git status
    git commit -m'Deleting About page. Not needed.'
    git status
    generaterandomchanges 5 no-op txt
    git log --oneline
    git rm no-op*
    git status
    git commit -m'Removing extra no-op files'
    git log --oneline
    generaterandomchanges 5 other txt
    open .
    git status
    rm .DS_Store
    git status
    git add .
    git status
    git status
    git add -u .
    git status
    git commit -m'Removing other sample files'
    git status
    generaterandomchanges 1 README  txt
    git status
    git log -1
    git rm --cached -- README1.txt
    git status
    git status
    git commit -m'Removing README from tracking in repo'
    git status
    rm README1.txt
    git status
    mkdir css
    git status
    git mv styles.css css/styles.css
    git status
    git commit -m'Moving stylesheets to subdir'
    vi poem.md
    git status
    git add .
    git commit -m'New poem file'
    git sttaus
    git status
    mkdir reading
    vi poem.md
    git status
    git diff
    git mv poem.md reading/poem.md
    git status
    git diff
    git diff --staged
    git status
    git add .
    git status
    git commit -m'Renamed poem, tweaked verbiage'
    git status
    git log --oneline --stat
    git log --oneline --stat -3
    git log --oneline
    git log --oneline --stat -5
    git log --oneline --stat -5 -M
    git log --oneline --stat -5 -M50
    git log --oneline --stat -5 -M90
    generaterandomchanges 5 move-me txt
    mkdir move
    git status
    git status -u
    git add move-*
    git status -u
    git add -u move-me*
    git status
    git status -u
    git add move/
    git status
    git commit -m'Moved all move-me files to subdir'
    git status
    pwd
    vi .gitignore
    git status
    git add .gitignore
    git status
    git commit -m'Adding ignore pattern file'
    git status
    touch info.log
    touch build.log
    git status
    vi .gitignore
    git status
    git diff
    git commit -am'Added log ignore pattern'
    git status

### Day 2

    vi .gitignore
    mkdir logs
    git status
    vi logs/info.log
    git status
    cat .gitignore
    cd logs
    pwd
    vi readme.log
    git status
    pwd
    vi .gitignore
    cd ..
    pwd
    git status
    git status -u
    git add logs/.gitignore 
    git status
    git commit -m'Reversing ignore for readme logs'
    git status
    git add .
    git status
    git commit -m'First commit Readme log'
    git status
    pwd
    mkdir js
    mkdir _includes
    git status
    vi .gitignore
    git status
    git add .gitignore
    git status
    git diff
    git diff --staged
    git status
    git commit -m'Removing OSX specific file ignore'
    git status
    vi ~/.gitignore-uofc
    cat ~/.gitignore-uofc
    git config --global core.excludesfile "~/.gitignore-uofc"
    git config --global --list
    pwd
    git status
    git status
    pwd
    git status
    git log --oneline -5
    git reset --soft 240c68c
    git status
    git diff --staged
    git commit
    git log -4
    git log -4 --stat
    git log --oneline -7
    git reset --soft 35fd96a
    git status
    git commit -m'Added ignore patterns and files'
    git log --oneline -4
    git status
    vi contact-us.html
    git status
    vi contact-us.css
    git status
    git add contact-us.html
    git status
    git commit -m'Updated contact page'
    git status
    git add .
    git status
    git commit -m'Updated contact stylesheet'
    git status
    git log --oneline -5
    git reset --mixed 032a278
    git status
    git status
    git diff
    git log --oneline -3
    git status
    git add .
    git status
    git commit -m'Updated contact info, styling'
    git status
    git status
    git log --oneline -5
    git log --oneline -10
    git reset --hard 2a601db
    git status
    git log --oneline -4
    rm build.log
    rm info.log
    rm -rf logs/
    git status
    git log --oneline -15
    vi index.html
    git status
    git commit -m'body stuf...'
    git add .
    git commit -m'body stuf...'
    git log --oneline -3
    git commit --amend
    git log --oneline -5
    vi README
    git status
    git add .
    git status
    git commit --amend
    git status
    git log --oneline -10 --stat
    git log --oneline -10
    git log --decorate --graph --oneline -10 --all
    git branch
    git branch prototype
    git branch
    git log --decorate --graph --oneline -10 --all
    git branch poetry b6e70e5
    git log --decorate --graph --oneline -10 --all
    git branch
    git checkout poetry
    git branch
    git log --oneline
    vi index.html
    git status
    git commit -m'Tidied up home page, added date'
    git add index.html
    git commit -m'Tidied up home page, added date'
    git status
    git log --decorate --graph --oneline -10 --all
    git branch
    git branch -d prototype
    git checkout master
    git branch
    git branch -d prototype
    git status
    git log --decorate --graph --oneline -10 --all
    git branch
    git checkout poetry
    cd reading
    vi poem.md 
    git status
    git branch
    git status
    git add .
    git commit -m'More poetry edits'
    git status
    git log --decorate --graph --oneline -10 --all
    git checkout master
    git log --decorate --graph --oneline -10 --all
    git checkout -b poetry-silly poetry
    git branch
    git log --decorate --graph --oneline -10 --all
    pwd
    vi poem2.md
    git status
    git add .
    git commit -m'Sample of roses and violets'
    git status
    git log --decorate --graph --oneline -10 --all
    git checkout poetry
    cd ..
    git rm other1.txt
    git status
    git commit -m'Tidying cruft files'
    git status
    git log --decorate --graph --oneline -10 --all
    git branch
    git branch -d poetry-silly
    git branch -D poetry-silly
    git status
    git log --decorate --graph --oneline -10 --all
    git checkout master
    git branch -D poetry
    git log --decorate --graph --oneline -10 --all
    git checkout -b home-page-improvements
    git status
    vi index.html
    git status
    git commit -am'Tidy the home page, added event date'
    git status
    git log --decorate --graph --oneline -10 --all
    git status
    vi index.html
    git status
    git commit -am'Added authors to sub title'
    git status
    git log --decorate --graph --oneline -10 --all
    git checkout master
    git merge home-page-improvements
    git status
    cat index.html
    git log --decorate --graph --oneline -10 --all
    git branch
    git status
    vi contact-us.css
    vi css/styles.css
    git branch
    git status
    git add contact-us.css
    git commit -m'Contact page styling updates'
    git add .
    git status
    git commit -m'General body styling updates'
    git status
    git log --oneline -5
    git branch
    git checkout home-page-improvements
    vi index.html
    git status
    git add .
    git commit -m'Added body to page regarding awesomeness'
    git status
    git log --oneline -5
    git log --oneline --all --decorate -15
    git log --oneline --all --decorate -15 --graph
    git branch
    git checkout master
    git branch
    git merge home-page-improvements
    git log --oneline --all --decorate -15 --graph
    git branch
    git status
    git log --oneline --all --decorate -15 --graph
    generaterandomchanges 3 info html
    git status
    git log --oneline --all --decorate -15 --graph
    git branch
    git branch -d home-page-improvements
    git branch -d home-page-improvements
    git log --oneline --all --decorate -15 --graph
    git checkout problem-maker
    git checkout -b problem-maker
    git rm move-*
    git status
    git rm info*
    git statsu
    git status
    git status
    git commit -m'Removing extraneous files and samples'
    git status
    git status
    git branch
    vi index.html
    git status
    git add .
    git commit -m'Changed title to "Git"'
    git status
    git checkout master
    git branch
    git branch
    git branch -m problem-maker tidy
    git status
    git branch
    vi index.html
    git status
    git add .
    git commit -m'Title changed to "Hubbernaut"'
    git log --oneline -5
    git log --oneline --graph --decorate --all -10
    git branch
    git merge tidy
    git status
    git log --oneline --graph --decorate --all -10
    git status
    git diff
    vi index.html
    git status
    git add index.html
    git status
    git commit -m'Merging in tidy, file removal, title update'
    git status
    git log --oneline --graph --decorate --all -10
    cat index.html
    git status
    pwd
    git remote add origin https://github.com/githubstudent/u-of-c.git
    git remote 
    git remote -v
    git branch
    git push origin master
    git branch -a
    git branch -d tidy
    git status
    git branch
    git log --all --graph --oneline -10
    git checkout -b prototype
    generaterandomfiles 5 proto-file txt
    git status
    git add .
    git commit -m'Prototype files first commit'
    git status
    git log --all --graph --oneline -10
    git log --all --graph --oneline -10 --decorate
    git push origin prototype
    git fetch origin
    git branch -a
    git diff prototype remotes/origin/prototype
    git status
    git branch -a
    git merge origin/prototype
    cat README
    git log --oneline -2
    git push origin prototype
    git branch -v
    git branch -vv
    git branch -a
    git push -u origin prototype
    git branch -vv
    git branch -a
    git pull origin prototype
    cat README 
    cd ..
    pwd
    mkdir teacher-person
    cd teacher-person/
    git clone https://github.com/githubteacher/u-of-c.git
    cd u-of-c/
    git branch
    git branch -a
    git checkout -b teacher-helping-out
    vi contact-us.html
    git status
    git add .
    git commit -m'Adding in the address info for contact page'
    git status
    git remote -v
    git push origin teacher-helping-out
    git push origin teacher-helping-out
    cd ..
    pwd
    cd ..
    cd u-of-c/
    git remote -v
    git fetch origin
    git status
    git branch
    git checkout master
    git master origin/master
    git branch -a
    git fetch origin master
    git fetch
    git fetch origin
    git diff master origin/master
    git pull origin master
    git branch -a
    git branch -d prototype
    git branch -D prototype
    git status
    git branch
    git branch -a
    git remote prune
    git remote prune origin
    git branch -a
    git 
    -remote
    git push -prune origin
    git push --prune origin
    git 
    -remote
    cd ~/scratch
    git clone https://github.com/githubstudent/u-of-c.git uofc-teacher
    cd uofc-teacher/
    git status
    git checkout -b improving-readme-docs
    vi README 
    git commit -am'Changes to the readme about Jordan'
    git branch
    git remote -v
    git push origin improving-readme-docs
