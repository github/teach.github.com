---
layout: bare
title: GitHub Foundations Online Open Enrollment
description: GitHub Foundations Online
tags: [notes, event]
path: classnotes/2013-07-10-online-foundations.md
eventdate: 2013-07-10
---

## Trainers
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))


## CLI

### Day 1

  git --version
  git config --global user.name "GitHub Teacher"
  git config --global user.name
  git config --global user.email "training@github.com"
  git config --global color.ui auto
  git config --global core.autocrlf input
  git config --global --list
  git init foundations-class-july
  cd foundations-class-july
  vi index.html
  git status
  git add index.html
  git status
  git commit -m'First commit, initial index page content'
  clear
  git status
  vi index.html
  git status
  vi styles.css
  git status
  git add index.html
  git add styles.css
  git status
  git reset HEAD styles.css
  git status
  git commit -m'Add body and title tags'
  git status
  git add styles.css
  git status
  git commit -m'Add initial stylesheet selectors'
  git status
  vi styles.css
  git status
  git add styles.css
  git status
  git commit
  git status
  vi styles.css
  git status
  vi index.html
  git status
  vi index.html
  git status
  git diff
  git add index.html
  git diff
  git status
  cat index.html
  git diff
  git status
  git diff --staged
  vi index.html
  git status
  git diff
  git diff --staged
  git diff
  git add index.html
  git status
  git diff
  git diff --staged
  vi index.html
  git status
  git diff
  git diff HEAD
  git diff
  git add index.html
  git status
  git diff --staged
  git commit -m'Updated author names, add div around date'
  git status
  clear
  vi index.html
  git status
  git diff
  git diff --color-words
  vi styles.css
  git status
  git diff
  git diff --color-words
  git diff --word-diff
  git status
  git diff --stat
  git diff --word-diff --stat styles.css
  git diff --word-diff styles.css
  git diff --word-diff index.html
  history
  clear
  git log
  git log -3
  git log -3 --stat
  git log -1 -p
  git log -1 -p --color-words
  git log -5 -p --color-words
  git status
  git diff styles.css
  git add styles.css
  git diff --staged
  git commit -m'Change font size, color'
  git status
  git log -1 -p --color-words
  git log --oneline -2 --patch --color-words
  git log --formt=raw -3
  git log --format=raw -3
  git log --oneline
  git log -4
  git log --oneline -p -5
  git log -S "color: #333;"
  git log -p -S "color: #333;"
  git log --oneline -p -5
  git log -S "<h1>GitHub" --stat --oneline
  git log -S "<h1>GitHub" --stat --oneline -p
  git log --oneline
  git diff ea20f98 4c2c3b5
  git diff 4c2c3b5 ea20f98
  git diff 4c2c3b5 ea20f98 index.html
  git log 4c2c3b5 ea20f98 index.html
  git log 4c2c3b5 ea20f98 --stat
  export PS1="$ " && clear
  tail ~/history
  tail ~/.zsh-history
  cd my-projects/matthew-scripts
  historytailzsh
  historytailzsh 5 5
  cat .zsh_history
  git status
  git diff
  git diff --color-words
  git checkout index.html
  git status
  generaterandomchanges 5 soft txt
  clear
  cd ~/scratch/foundations-class-july
  git graphlive
  git graphlive 20
  git log --oneline --stat -7
  git reset --soft 5810178
  git status
  git commit -m'Add five soft text files'
  clear
  git reset --soft 5810178
  git status
  git reset HEAD soft5.txt soft4.txt
  git status
  git commit -m'Add first three soft txt'
  git status
  git add .
  git status
  git commit -m'Add soft txt 4-5'
  git reset --soft 5810178
  git status
  vi styles.css
  git statu
  git status
  git add .
  git commit -m'Adding stuff happens here'
  git status
  git reset --soft 5810178
  git status
  git reset HEAD styles.css
  git status
  git commit -m'Add five soft txt files'
  git status
  git add .
  git status
  git commit -m'Add H2 font sizing'
  git status
  git commit --amend
  clear
  generaterandomchanges 3 mixed adoc
  clear
  git status
  git reset --mixed 7ead5c8
  git status
  git add .
  git status
  git commit -m'Add mixed 1-4 adoc'
  clear
  git status
  vi index.html
  git status
  git add .
  clear
  git status
  git reset --mixed HEAD index.html
  git status
  git diff
  clear
  git add .
  git status
  git reset --mixed HEAD -- index.html
  git status
  git diff
  git checkout HEAD index.html
  git status
  clear
  generaterandomchanges 5 junk txt
  vi junk3.txt
  vi index.html
  git status
  git log --oneline -10
  clear
  git reset --hard 7ead5c8
  git status
  generaterandomchanges 5 ui txt
  clear
  git status
  git log --oneline
  git reset --hard 7ead5c8
  git status
  clear
  git branch
  git branch feature1
  git branch
  git checkout feature1
  git status
  touch feature1.txt
  git status
  git add feature1.txt
  git status
  git commit -m'Add feature 1 file'
  git status
  git log --oneline --all --decorate --graph - 5
  git log --oneline --all --decorate --graph -5
  git statu
  git status
  git checkout master
  vi index.html
  git status
  git add .
  git commit -m'Remove event date'
  clear
  git log --format=raw -3 --all
  git branch
  git branch feature2
  git branch -d feature2
  cd .git
  cd refs
  cd heads
  cat master
  cat feature1
  rm feature1
  cd ../../..
  pwd
  git branch
  git branch bugfix 5810178
  git branch
  git checkout bugfix 
  vi styles.css
  git status
  git add .
  git commit -m'Fix all default styles'
  git branch
  git checkout master
  git branch about-page
  git status
  git branch
  git checkout about-page 
  touch about.html
  git status
  git add .
  git commit -m'Add about.html page'
  git checkout master
  git branch
  cat styles.css
  git merge bugfix
  cat styles.css
  git branch
  git log --format=raw -3
  git branch -d bugfix
  git branch -d about-page
  git branch -D about-page 
  git graphlive 20
  git branch trainers-page
  git checkout trainers-page 
  vi trainers.html
  git status
  git add .
  git status
  git commit -m'Build trainers page'
  git status
  vi trainers.html
  git status
  git add .
  git commit -m'Contact info'
  git checkout master
  git status
  git merge trainers-page 
  git branch -d trainers-page 
  git log --format=raw -3
  git reset --mixed b293fb
  git reset --mixed b293f3
  git status
  git branch trainer-page
  git checkout trainer-page 
  git status
  git add .
  git commit -m'Add trainer page\
  git status
  git checkout master
  git status
  git merge --no-ff trainer-page 
  git checkout trainer-page 
  touch newpage.html
  git add .
  git commit -m'Another page'
  cd scratch
  cd test-ghfm
  touch test1.txt
  rm test1.txt
  generaterandomchanges 5 hello txt
  git status
  git log
  git log --oneline
  git reset --hard 12e6c95
