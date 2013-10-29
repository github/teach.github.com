---
layout: bare
title: Private Git Foundations Training
description: Private Git Foundations Training Class Notes
tags: [notes]
path: classnotes/2013-10-28-private-git-foundations-training.md
eventdate: 2013-10-28
---

## Teachers
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))
* Markus Olsson ([Twitter](http://twitter.com/niik), [GitHub](https://github.com/niik))


## Class Outline

* Configuration with `config`
* Establishing SSH Authentication 
* Creating repositories (locally and remotely)
* Reviewing Three Stage Thinking with `add`
* Creating version history with `commit`
* Reviewing history with `log`
* Searching history with regex and string matching
* Assessing changes with `diff`
* Deleting and untracking with `rm`
* Understanding the similarity index `mv`
* Assessing file history through renames and paths
* Working with branches and merges
* Understanding local and upstream repositories
* Exploring Pull Request and Forking on GitHub.com
* Rewriting history with `rebase` and interactive modes
* Undoing commits with the three variants of `reset`
* Recovering with `reflog` history
* Storing works-in-progress with `stash`
* Selecting individual commits with `cherry-pick`
* Creating release markers with `tags`


## Timing

* Begin Training: 9:00am
* 10 minute Break: 10:30am
* Lunch Break: 12:00pm
* Resume Teaching: 01:00pm
* 10 minute Break: 2:30pm
* Conclude Training: 4:00pm

## Course Materials, Links
* [Course Slides](http://teach.github.com/presentations/)
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Resources

* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [GitHub Training Videos](http://youtube.com/githubguides/)


* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation
* Git Installation
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
    * [The GitHub for Mac Client and Command Line](http://mac.github.com)
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.8.0 or higher

## Suggested Books, Articles
* [Free ProGit Book](http://git-scm.com/book)
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)



## Command Line History

    git config user.name
    git config --list --global
    git --version
    git config --list --global
    git config --global user.name "GitHub Teacher"
    git config --global user.name
    git config --global user.email "training@github.com"
    git config --global --list
    cat ~/.gitconfig
    git config --global core.autocrlf input
    git config --global --list
    git config --global color.ui auto
    cd scratch
    git init jordan-project
    cd jordan-project
    git status
    touch index.html
    touch README.md
    touch styles.css
    touch app.js
    git status
    git add README.md
    git add index.html
    git status
    git commit -m"Initial commit, adding basic readme and home page"
    git status
    git add app.js
    git status
    git commit -m'Add placeholder javascript app file'
    git status
    git add styles.css
    git status
    git commit -m'Add placeholder for the main stylesheet'
    git status
    git status
    vi README.md
    git status
    vi index.html
    git status
    git diff
    git add README.md
    git status
    git diff
    git status
    git diff
    git status
    git diff --staged
    git commit -m'Include basic title and description'
    git status
    git add index.html
    git status
    git diff
    git diff --staged
    git status
    git commit -m'Include basic html structure and title tag'
    git status
    vi README.md
    git status
    git add README.md
    git status
    git diff
    git diff --staged
    vi README.md
    git status
    git diff
    git diff --staged
    git add README.md
    git status
    git status
    git diff --staged
    git commit -m'Add trainer names, remove description'
    git status
    cd .git
    cd ../
    vi index.html
    git status
    git add .
    git status
    git diff
    git diff --staged
    vi index.html
    git status
    git diff
    git diff --staged
    git diff HEAD
    git status
    git status 
    git add .
    git status
    git commit -m'Add title and instructors to page'
    git status
    git status
    git config --global alias.s "status -s"
    git config --global --list
    git s
    git add app.js
    git s
    git commit -m'Add basic IIFE'
    git s
    vi index.html
    git s
    git diff
    git diff --color-words
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git log
    git log --format=raw
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --patch --word-diff
    git s
    git diff
    git diff --color-words
    git add index.html
    git commit -m'Change ampersands'
    git status
    git log --patch --color-words
    git log
    git log -3
    git log -3 --format=oneline --patch
    git log -3 --format=oneline --patch --color-words
    git log --oneline
    git config --global alias.lol "log --oneline --graph --decorate --all"
    git lol
    git lol -5 --stat
    vi README.md
    git log -G "## with"
    git log -G "^(##)"
    git log -G "^(##) Jo"
    git log -S "GitHub" --patch --color-words
    git log --grep "IIFE"
    git s
    generaterandomchanges 5 sample txt
    git lol --stat
    git rm sample1.txt
    git status
    git commit -m'Remove first placeholder file'
    git status
    git rm sample*.txt
    git s
    git status
    git reset HEAD 
    git status
    git status
    git checkout  -- .
    git status
    git rm sample*.txt
    git status
    git commit -m'Remove sample files'
    git s
    git status
    generaterandomchanges 5 more txt
    git lol
    open .
    git status
    git add more*.txt
    git status
    git add -u .
    git status
    git commit -m'Remove first three more files'
    git status
    git rm more4.txt
    git status
    open .
    git status
    git add -A 
    git status
    git commit -m'Remove remaining more files'
    git status
    vi jordan.txt
    git status
    git add .
    git commit -m'Add the jordan file'
    git status
    git rm --cached jordan.txt
    git status
    git commit -m'Remove tracking of jordan content'
    git status
    cat jordan.txt
    git status
    rm jordan.txt
    git status
    mkdir css
    mkdir js
    git status
    git mv app.js js/main.js
    git status
    git commit -m'Refactor, clean up javascript location from root'
    open .
    git status
    git status -u
    git status -u
    git add -u styles.css
    git status
    git add css
    git status
    git commit -m'Move stylesheets to separate dir'
    vi css/styles.css
    git status
    git add .
    git status
    mv css/styles.css css/main.css
    git status
    git add -A
    git status
    git reset HEAD
    git status
    mv css/main.css css/styles.css
    git status
    git add .
    git status
    git diff --staged
    git commit -m'Add font size'
    git status
    git status
    cat dir-listing.txt
    git add .
    git status
    git commit -m'Add directory listing'
    git status
    git mv dir-listing.txt home-directory.txt
    git status
    vi home-directory.txt
    git status
    git diff --staged
    git add -A
    git status
    git commit -m'Renamed dir listing, edit content'
    git log -3 --stat
    git log -3 --stat  -M
    git log -3 --stat  -M98
    git log -3 --stat  -M95
    git log -3 --stat -p --color-words -M95
    vi home-directory.txt
    git status
    git add .
    git commit -m'Remove first few lines of dir list'
    git log -M --stat
    clea
    git log home-directory.txt
    git log --stat home-directory.txt
    git log --stat --follow home-directory.txt
    git lol
    git status
    git branch
    git lol
    git branch jordan-feature
    git branch
    git checkout jordan-feature 
    git graphlive
    git graphlive 15
    cd scratch
    cd jordan-project
    git graphlive 15
    git branch
    git rm home-directory.txt
    git status
    git commit -m'Remove sample dir file'
    touch about.html
    git status
    git s
    git add .
    git status
    touch contact.html
    git s
    git add .
    git status
    git commit -m'Add placeholder new pages'
    git status
    git checkout master
    git checkout jordan-feature 
    generaterandomfiles 3 jordan md
    git status
    git add .
    git status
    git commit -m'Add jordan files'
    git checkout master
    git status
    git merge jordan-feature 
    git branch -d jordan-feature 
    git checkout -b feature-2
    git status
    git rm jordan*
    git status
    git commit -m'Remove jordan files'
    git status
    git mv about.html team.html
    git status
    git commit -m'Rename team page'
    git status
    git log --format=raw -2
    git checkout master 
    git branch
    touch js/dependencies.js
    git status
    git add .
    git status
    git commit -m'Add dependencies javascript stuff'
    git branch
    git merge feature-2 
    git log -2 --format=raw 
    git branch -d feature-2 
    git checkout -b random-stuff
    generaterandomchanges 3 random txt
    git branch -d random-stuff 
    git checkout master
    git branch -d random-stuff 
    git branch -D random-stuff 
    cd scratch/
    cd samples
    git init tes
    cd tes
    generaterandomchanges 5 main txt
    git lol --oneline
    git rebase -i HEAD^^^
    git status
    git log --stat
    git lol
    git branch feature 1ffd207
    git checkout feature 
    git checkout master -- main4.txt
    git status
    git diff
    ssh-keygen -t rsa -C"GitHub Teacher key"
    cat /Users/jmccullough/.ssh/id_rsa.pub
    git remote add origin https://github.com/githubteacher/jordan-project.git
    git remote 
    git remote -v
    git push -u origin master
    git fetch
    git pugit log -2 --oneline --stat
    git remote 
    git remote -v
    git branch -v
    git branch -vv
    git fetch
    git branch -vv
    git branch
    vi team.html
    git status
    git add .
    git commit -m'Add team page title'
    git status
    git log --oneline --stat origin/master
    git pugit remote -v
    git fetch origin
    git branch 
    git branch -a
    git checkout team-improvements 
    git branch -a
    vi team.html
    git status
    git add .
    git status
    git commit -m'Add title for team announcement'
    git branch -vv
    git push
    git branch
    git pugit branch -vv
    git branch
    git merge master
    git status
    vi team.html
    git status
    git add .
    git s
    git status
    git lol
    git push
    git fetch
    git branch -vv
    git branch
    git status
    git checkout master 
    mkdir student
    cd student
    git clone https://github.com/githubstudent/jordan-project.git
    git branch
    cd jordan-project
    git branch
    git checkout -b student-jordan
    generaterandomchanges 10 jordan txt
    git status
    git lol
    git branch -a
    git remote -v
    git push -u origin student-jordan 
    git remote -v
    git remote add upstream https://github.com/githubteacher/jordan-project.git
    git remote -v
    git remote rm update 
    git remote rm upstream
    git remote add teacher https://github.com/githubteacher/jordan-project.git
    git remote -v
    git fetch teacher master
    git fetch teacher
    git branch -a
    git checkout master
    git merge teacher/master
    git status
    git push
    cd ..
    cd ../
    cd jordan-project
    git branch
    git pugit status
    git branch -a
    git checkout -b cleanup
    git rm jordan*
    git status
    git commit -m'Remove jordan files'
    git status
    vi README.md
    git status
    git add .
    git s
    git commit -m'Add description'
    git status
    git branch
    git checkout master
    git graphlive 15
    generaterandomchanges 3 bug-fixes txt
    git status
    git branch
    git checkout cleanup 
    git rebase master
    cd scratch
    cd samples
    cd tes
    git blame main1.txt
    cd ..
    cd ..
    cd student
    cd jordan-project
    git blame README.md
    git merge cleanup 
    git checkout master 
    git merge cleanup 
    git branch -d cleanup 
    generaterandomchanges 10 random md
    git rebase -i 1a12325
    git status
    git rebase --continue
    git rebase -i 1a12325
    git checkout master
    git status
    generaterandomchanges 10 reset md
    git reset --soft 5f961f
    git status
    git commit -m'Add reset 9 and 10'
    git reset --mixed e7dc8
    git status
    git add reset1*.
    git add reset1*
    git status
    git add reset9.md
    git status
    rm reset6.md
    rm reset7.md
    git status
    rm reset8.md
    git status
    git commit -m'Add reset 9 and 10'
    git status
    git reset --hard 8d1ddc4
    git status
    git reflog
    git reflog
    git branch recover-5-file e7dc875
    git branch
    git checkout recover-5-file 
    git branch
    git checkout master
    git reset --hard 7b7125d
    git graphlive 20
    git push
    generaterandomchanges 10 last-of-rb txt
    git reset --soft origin/master
    git status
    git commit -m'Add 10 more rebase random files'
    git branch -vv
    git push
    git reset --soft e7dc875
    git status
    git commit -m'Cleanup, will require The Force'
    git push
    git push -f
    git rm reset*
    git status
    git rm last*
    git status
    git rm random*
    git commit -m'Remove all random files'
    git status
    git git rm bug-fixes*
    git status
    git commit -m'Remove bug fix notes'
    git push
    git revert 644cce9
    git status
    git branch -vv
    git push
    git branch
    git branch -d team-improvements 
    git branch -d recover-5-file 
    git branch
    git checkout -b important-work
    touch pick-me-1.md
    echo "Pick Me > pick-me-1.md
    vi pick-me-1.md
    git status
    git add .
    git status
    git commit -m'Pick me file'
    git rm bug-fixes*
    git commit -m'Remove bug fixes'
    git checkout master
    git cherry-pick 0e0374d
    vi index.html
    git status
    git rm team.html
    git status
    git stash
    git status
    git checkout -b stuff
    git stash list
    git stash pop
    git diff
    git add index.html
    git s
    git commit -m'Updated class finish time'
    git status
    git stash save "Deleting team page"
    git stash list
    git show stash@{0}
    git rm contact.html
    git status
    git stash save "Remove the contact page"
    git stash list
    git branch remove-pages stash@{1}
    git branch -a
    git checkout master 
    git status
    git merge remove-pages 
    git branch -d remove-pages 
    git remote -v
    git branch -a
    git fetch
    git fetch --prune
    git branch -a
    git branch -d stuff 
    git graphlive 15
    git status
    generaterandomchanges 15 final-stuff md
    git status
    git tag V0.1 ccf66b6
    git show V0.1
    git tag -a BUG_FIXES cdcedfc
    git log --oneline -5 V0.1
    git log --oneline -5 BUG_FIXES 
    git show BUG_FIXES 
    git tag
    git push --tags
