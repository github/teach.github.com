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

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [GitHub Guides YouTube Channel](http:/youtube.com/githubguides)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)
* [Merge Tool - Araxis](http://blog.ianbattersby.com/2012/08/04/git-mergetool-with-araxis-on-mac-os-x/)
* [Configure Merge and Diff Tools](http://teach.github.com/presentations/git-foundations.html#/20/3)

## Installation

* Git Installation
    * [The GitHub for Mac Client and Command Line](http://mac.github.com)
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
* [Course Slides](http://teach.github.com/presentations/git-foundations.html)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

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
  
### Day 2

    git config user.name "GitHub Teacher"
    git config --local user.email "training@github.com"
    git config --list --local
    git config alias.s "status -s"
    git config --list --local
    git s
    touch text.txt
    git s
    git status
    git log --graph --all --decorate --oneline
    git config alias.lol "log --graph --all --decorate --oneline"
    git lol
    git lol -10
    git lol -10 --stat
    cat .git/config
    git branch
    git branch -d trainer-page 
    git checkout -b collision 
    vi index.html
    git s
    rm text.txt
    git s
    git add .
    git s
    git commit -m'Change instructor to just Jordan'
    git checkout master
    vi index.html
    git s
    git add .
    git s
    git commit -m'Clean up instructor heading'
    git branch
    git merge collision
    git s
    vi index.html
    git s
    git diff
    git add index.html
    git s
    git commit
    cat index.html
    git branch
    git branch -d collision 
    git checkout -b stylesheet-update
    vi styles.css
    git s
    git ad .
    git add .
    git s
    git commit -m'Updated default font and colors'
    git status
    git checkout master 
    vi styles.css
    git status
    git add .
    git status
    git commit -m'Updated font size to ems'
    git merge stylesheet-update 
    git status
    cat styles.css
    git checkout --theirs styles.css
    git s
    cat styles.css
    git add .
    git s
    git commit
    git s
    git branch
    vi README
    git s
    git add .
    git commit -m'Add README'
    git remote add origin https://github.com/githubteacher/foundations-class-july.git
    git remote
    git remote
    git remote -v
    git branch
    git push -u origin master
    touch newfile.txt
    git add .
    git status
    git commit -m'New file'
    git status
    git push
    git branch
    generaterandomchanges 3 remote-tests txt
    git push
    git fetch origin
    git pull
    git remote -v
    git remote
    vi .git/config
    git remote -v
    git remote add origin https://github.com/githubteacher/foundations-class-july.git
    git remote
    git push -u origin master
    git branch
    git branch -a
    git fetch origin
    git branch -a
    git checkout features1
    git log --stat -2 --oneline
    cd ..
    cd mkdir student
    mkdir student
    cd student
    git clone https://github.com/githubstudent/foundations-class-july.git
    cd foundations-class-july
    git remote -v
    git branch
    git checkout -b jordan-fixes
    git s
    vi README
    git s
    git add .
    git commit -m'Update ReaDme'
    git branch -vv
    git push
    git push -u origin jordan-fixes
    git branch -a
    git remote -v
    cd ..
    cd student
    cd foundations-class-july
    git graphlive 20
    git remote add teacher https://github.com/githubteacher/foundations-class-july.git
    git status
    git remote -v
    git config user.name "GitHub Student"
    git config user.email "training+githubstudents@github.com"
    git s
    historytailzsh 3 8
    git s
    git status
    git s
    git status
    git s
    git status
    git s
    git status
    git remote -v
    git fetch teacher
    git branch -a
    git branch -a
    git checkout master
    git merge teacher/master
    cd ..
    cd ~/scratch
    cd foundations-class-july
    historytailzsh
    historytailzsh 8
    cd ~/scratch/foundations-class-july
    gt branch
    git branch
    git graphlive 20
    git remote -v
    git fetch origin
    git pull
    git fetch https://github.com/enialen/foundations-class-july.git master
    git log FETCH_HEAD -3 --oneline -stat
    git log -3 --oneline -stat FETCH_HEAD
    git log -3 --oneline --stat FETCH_HEAD
    git diff master FETCH_HEAD
    git branch
    git merge FETCH_HEAD
    git diff
    vi README
    git s
    git add .
    git status
    git commit
    git status
    historytailzsh 8
    historytailzsh 3 8
    git push
    git branch -a
    git pull https://github.com/DougZorn/foundations-class-july-1.git Doug-fixes
    git status
    vi README
    git add .
    git status
    git commit
    git push
    git rm soft1.txt
    git status
    git commit -m'Remove soft1 test file'
    git rm soft2.txt
    git commit -m'Remove soft2.txt file'
    open .
    git s
    git status
    git add .
    git s
    git add -u .
    git status
    git commit -m'Remove remaining soft files'
    git rm --cached newpage.html
    git status
    git commit -m'No longer track newpage.html'
    mv newpage.html info.html
    git s
    git rm --cached info.html
    git sttaus
    git status
    rm info.html
    git rm remote-t*
    git status
    git commit -m'Remote file cleanup'
    mkdir css
    git mv styles.css css/basic.css
    git status
    git commit -m'Relocate styles to sub dir'
    mkdir extras
    open .
    git status
    git status -u
    git add .
    git status
    git add -u .
    git status
    git commit -m'Renamed newfile to proj-info.txt'
    git log --stat -5
    git log --stat -5 -M
    ls -al ~ > dir-listing.txt
    git status
    cat dir-listing.txt
    git add .
    git status
    git commit -m'New dir listing'
    git s
    open .
    git status
    git add -A
    git status
    vi extras/dir-listing.txt
    git status
    git add .
    git status
    git commit -m'Relocate dirlist and mess with content'
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M90
    git log --stat -1 -M80
    git log extras/dir-listing.txt
    git log --follow extras/dir-listing.txt
    git log --stat -M
    touch info.log
    touch jordan.log
    touch matthew.log
    git status
    vi .gitignore
    git status
    git add .gitignore
    git status
    git commit -m'Add ignore patterns'
    git status
    touch more.log
    git status
    git rm --cached .DS_Store
    git branch
    vi README
    git status
    git stash save "Updating the README"
    git status
    git checkout -b Readme-updates
    git stash list
    git stash pop
    git branch
    git stash save "README updates"
    git branch
    git checkout master
    vi index.html
    git status
    git stash save "updating doctype on html"
    git status
    vi index.html
    git status
    git add .
    git commit -m'Add new doc title'
    git stash list
    git stash pop stash@{1}
    git add .
    git commit -m'Update readme'
    git stash list
    git stash drop
    git branch
    git branch -m Readme-updates readme-updates
    git checkout Readme-updates 
    git branch
    git rebase master
    git graphlive 20
    vi README
    git add .
    git commit -m'Add II to title'
    git checkout master
    vi README
    git status
    git add .
    git commit -m'Part 2'
    git checkout README
    git checkout Readme-updates
    git status
    git rebase master
    git status
    vi README
    git status
    git add README
    git rebase --continue
    git branch
    cat README
    git revert 1a88126
    git tag FILE_TIDY 14938e6
    git log FILE_TIDY
    git tag -a -m"Resolves crashing"  BUG_FIX 081e00b
    git show BUG_FIX 
    git show FILE_TIDY
    git push --tags
