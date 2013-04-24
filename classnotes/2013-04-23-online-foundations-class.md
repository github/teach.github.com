---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-23-online-foundations-class.md
eventdate: 2013-04-23
---

## Teachers
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))
* Ben Straub ([Twitter](http://twitter.com/benstraub), [GitHub](https://github.com/ben))
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))


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

### Day 1 CLI

    git init jordan
    ls -al
    mkdir sample
    ls -al
    cd sample
    touch index.html
    ls
    pwd
    git init
    git add .
    git commit -m'our first commit'
    cd ..
    ls
    rm -rf sample
    ls
    cd jordan
    ls
    touch index.html
    vi index.html
    ls
    pwd
    clear
    ls
    touch core.css
    touch app.js
    ls
    git add index.html
    git status
    git commit -m'First commit of home page'
    git status
    git add app.js
    git status
    git commit -m'First commit of application javascript'
    git status
    git add core.css
    git status
    git commit -m'First commit of page stylesheet'
    git status
    ls
    vi index.html
    git status
    git add .
    git status
    git commit -m'Added "Git Foundations" title'
    git status
    ls -al
    pwd
    git status
    ls
    vi index.html
    git status
    git add index.html
    git status
    clear
    git status
    vi index.html
    git status
    cat index.html
    clear
    git status
    git commit -m'Added trainer names'
    git status
    git add index.html
    git status
    git commit -m'Added big heading for class title'
    git status
    ls
    vi app.js
    vi core.css
    git status
    git add app.js
    git status
    git reset HEAD app.js
    git status
    git diff
    git add app.js
    git status
    git reset HEAD app.js
    git status
    git diff
    git status
    git add app.js
    git diff
    git status
    git diff --staged
    git commit -m'Added first function for hello()'
    git status
    git add core.css
    git status
    vi core.css
    git status
    git diff --staged
    git diff
    git add core.css
    git status
    git diff --staged
    git commit -m'Body and header styling'
    git status
    ls
    vi index.html
    git status
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git status
    git add index.html
    git status
    git commit -m'Edited trainer line, added some description'
    git status
    git log
    git log -2
    ls
    vi index.html
    git status
    git add .
    git status
    git commit
    clear
    git log -2
    git log --oneline -5
    git help log
    git log --patch -2
    git log --stat -3
    git log --oneline -3 --stat
    git log -S"Ben"
    git log --oneline --graph --decorate
    ls
    git status
    vi core.css
    git status
    git add core.css
    git status
    git commit -m'Added empty new line to stylesheet'
    git status
    git help add
    git help commit
    pwd
    git status
    touch sample1.html
    touch sample2.html
    touch sample3.html
    git status
    git commit -a -m'Adding sample files, these should not stay'
    git add .
    git status
    git commit -m'Sample files just as a demo'
    ls
    ls -al
    git rm sample1.html
    git status
    ls -al
    git commit -m'Deleting sample1 file'
    clear
    git log --oneline -5
    git log --oneline -5 --stat
    ls -al
    git rm sample*
    git status
    ls -al
    git commit -m'Removing remaining sample files'
    git status
    touch extras1.txt
    touch extras2.txt
    touch extras3.txt
    touch extras4.txt
    touch extras5.txt
    ls -al
    git status
    git add .
    git status
    git commit -m'Adding extras files'
    git status
    clear
    ls -al
    open .
    git status
    git add extras1.txt extras2.txt
    git status
    git add -u extras1.txt extras2.txt
    git status
    clear
    git status
    git commit -m'Removing extras 1 and 2'
    git status
    rm .DS_Store
    git status
    ls -al
    rm extras3.txt
    git status
    git add -u .
    git status
    git commit -m'Removed extras 3'
    git status
    ls -al
    git rm --cached -- extras4.txt
    ls -al
    git status
    git commit -m'No longer tracking extras 4 file'
    git status
    ls -al
    touch extras6.txt
    git status
    git add .
    git commit -m'Adding extra files 4, 6'
    git status
    vi extras6.txt
    git status
    rm .DS_Store
    git status
    git add -A .
    git status
    git commit -m'Extras file modifications'
    git status
    ls -al
    git mv extras4.txt extras1.txt
    git status
    git commit -m'Renamed extras4 to extras1'
    git status
    git add -A .
    git status
    git commit -m'Renaming extras 6 to 2'
    git status
    ls -al
    vi index.html
    git mv index.html home.html
    git status
    git add .
    git status
    git diff --staged
    git commit -m'Renamed home file, edited sub title trainers'
    clear
    git log --oneline --stat -5
    git log --oneline --stat -5 -M
    git log --oneline --stat -5 -M80
    ls -al
    git log --oneline --stat -- home.html
    git log --oneline --stat -5 -M
    git log --oneline --stat --follow -- home.html
    git status
    ls -al
    touch history.log
    touch Dev-Notes.md
    git status
    vi .gitignore
    ls -al
    git status
    vi .gitignore
    git add .
    git status
    git commit -m'Adding first .gitignore'
    git status
    touch Dev-Notes-More.txt
    git status
    ls -al
    vi .gitignore
    git status
    vi extras1.txt
    git status
    git rm --cached -- extras1.txt
    git status
    git commit -m'No longer tracking extras1.txt'
    git status
    vi extras1.txt
    git status
    cat .gitignore
    vi .gitignore
    vi ~/.gitignore-example
    cat ~/.gitignore-jordan
    cat ~/.gitignore-example
    pwd
    touch aboutme.jordan
    ls -al
    git status
    git config --global core.excludesfile ~/.gitignore-example
    pwd
    git status
    ls -al
    vi home.html
    git status
    git diff -- home.html
    git checkout -- home.html
    git status
    vi home.html
    git log --oneline -8 --stat
    git log --oneline --graph --decorate
    git log --oneline --graph --decorate -8
    git log --oneline --graph --decorate -15
    git checkout 948c4c1
    git status
    git checkout .gitignore
    git status
    git checkout 948c4c1
    ls -al
    git log --graph --oneline --decorate -15
    git checkout master
    git status
    git config --global alias.lol "log --decorate --oneline --stat --graph --all"
    git config --global --list
    git lol
    git config --global alias.s "status -su"
    git s
    git status

### Day 2 CLI

    git status
    git config --list
    git s
    git status
    git s
    git lol
    git log --oneline
    git log --oneline --graph --decorate
    git brach
    git branch
    git branch prototype
    git branch
    git log --oneline --graph --decorate
    git checkout prototype
    ls -al
    git status
    touch proto1.txt
    touch proto2.txt
    git status
    git add .
    git status
    git commit -m'Adding prototype files'
    ls -al
    git branch
    git log --oneline -5
    git branch feature1 143b9ee
    git log --oneline --decorate --graph -10
    git branch
    git log --oneline --decorate --graph -10
    git branch -d feature1
    git checkout master
    git branch
    git branch -d prototype
    git log --oneline --decorate --graph -10
    git log --oneline --decorate --graph -10 --all
    git branch -D prototype
    git branch
    git log --oneline --decorate --graph -10 --all
    git branch feature1 
    git branch -m feature1 contact-us-page
    git branch
    git checkout contact-us-page
    git status
    ls -al
    vi contact-us.html
    git status
    git add .
    git commit -m'Added contact page'
    git log --oneline -5
    vi contact-us.html
    git status
    git add .
    git commit -m'Adding basic contact form'
    git status
    git checkout master
    git merge contact-us-page
    git status
    ls -al
    git branch
    git checkout -b class-offerings
    vi classes.html
    git status
    git add .
    git commit -m'New classes description page'
    git branch
    vi contact-us.html
    git status
    git branch
    git checkout contact-us-page
    git brnch
    git branch
    git status
    git add .
    git status
    git commit -m'Added contact telephone number'
    git status
    git log --online --all --graph --decorate -10
    git log --oneline --all --graph --decorate -10
    git branch
    git checkout master
    git merge class-offerings
    git log --oneline --all --graph --decorate -10
    git branch
    git merge contact-us-page
    git status
    ls -al
    git log --oneline --all --graph --decorate -10
    git branch
    git branch contact-us-update
    git checkout contact-us-update
    vi contact-us.html
    git status
    git add .
    git commit -m'Changed phone to 999'
    git status
    git branch
    git checkout contact-us-page
    vi contact-us.html
    git status
    git add .
    git commit -m'Changed phone to 444'
    git status
    git checkout master
    git log --oneline --decorate --all --graph
    git branch
    git merge contact-us-page
    git merge contact-us-update
    git status
    vi contact-us.html
    git status
    git add contact-us.html
    git status
    git commit
    git branch
    git checkout class-offerings
    ls
    vi classes.html
    git add .
    git commit -m'Added class series desc.'
    git checkout master
    git branch
    git merge --no-commit class-offerings
    git status
    git diff --staged
    git commit -m'Merging in class series changes'
    git log --oneline --decorate --all --graph
    git branch
    git branch -d contact-us-update
    git branch
    touch reset-test1.txt
    touch reset-test2.txt
    touch reset-test3.txt
    touch reset-test4.txt
    git status
    git add reset-test1.txt
    git commit -m'Test file one'
    git add reset-test2.txt
    git commit -m'Test file two'
    git status
    git add reset-test3.txt
    git commit -m'Test file three'
    git add reset-test4.txt
    git commit -m'Test file four'
    git log --oneline -8
    git reset --soft dae6eb4
    git status
    git log --oneline -8
    git commit -m'Fourth test file added'
    git log --oneline -8
    git reset --soft 7b82b35
    git status
    git commit -m'Added file 3 and 4'
    git log --oneline -8
    git reset --mixed 7b82b35
    git status
    git log --oneline -8
    rm reset-test4.txt
    git status
    git add .
    git status
    git commit -m'Adding just file 3'
    git status
    git log --oneline -8
    ls -al
    git log --oneline -8
    git status
    echo "test three" > reset-test3.txt
    git status
    git add .
    git status
    git commit -m'More file three changes'
    git status
    git log --oneline -8
    git reset --hard 89fca21
    git status
    ls -al
    git log --oneline -8
    git status
    git branch
    git remote add origin https://github.com/githubteacher/jordan.git
    git remote
    git remote -v
    git push origin master
    git status
    git branch
    git push origin class-offerings
    git push -u origin class-offerings
    git checkout class-offerings 
    touch other.md
    git add .
    git commit -m'Other file'
    git push
    cd ..
    pwd
    git clone https://github.com/githubstudent/jordan.git
    mkdir githubstudent
    cd githubstudent
    pwd
    git clone https://github.com/githubstudent/jordan.git
    ls -al
    cd jordan
    pwd
    git status
    cd jordan
    ls
    git status
    git branch
    git branch -a
    git checkout class-offerings
    git branch
    git checkout master
    git checkout -b cleanup-root
    ls -al
    git rm app.js
    git status
    git commit -m'Removed app.js, never used'
    git status
    ls -al
    vi home.html
    git status
    git add .
    git commit -m'Added class date to home page'
    git log --oneline -5
    git remote -v
    git branch
    git push -u origin cleanup-root
    ls
    vi home.html
    git commit -am'Changed helper credit to Tim B.'
    git push
    cd ..
    pwd
    cd ..
    pwd
    ls
    cd jordan
    git log --oneline -5
    git branch
    git checkout master
    git branch
    git pull origin master
    git checkout -b pull-request-collision
    git branch
    git pull https://github.com/philiphayward/jordan.git cleanup-root
    git status
    vi home.html
    git add .
    git status
    git commit -m'Merging in Philip changes to names'
    git status
    git checkout master
    git branch
    git merge pull-request-collision 
    git push
    git status
    git pull
    git pull origin master
    cd ..
    ls
    cd githubstudent
    ls
    cd jordan
    ls
    git log --oneline -5
    git remote -v
    git remote add githubteacher https://github.com/githubteacher/jordan.git
    git remote -v
    git remote
    git branch
    git checkout master
    git branch
    git pull githubteacher master
    pwd
    git fetch origin
    git fetch githubteacher
    git branch 
    git branch -r
    git diff master githubteacher/class-offerings
    cd ..
    pwd
    cd ..
    mkdir student-contributor
    cd student-contributor
    git clone https://github.com/githubteacher/jordan.git
    git branch
    cd jordan
    git branch
    git checkout -b contact-improvements
    ls
    vi contact-us.html
    git status
    git add .
    git commit -m'Tidied up contact page'
    git push -u origin contact-improvements 
    pwd
    cd ..
    ls
    cd ..
    pwd
    cd jordan
    git status
    ls
    vi home.html
    git status
    git diff
    git config --global diff.tool p4merge
    git config --global difftool.p4merge.cmd "/Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE"
    git config --global difftool.prompt false
    vi ~/.gitconfig
    git config --global --list
    git status
    git diff
    git difftool
    git log --oneline -10
    git reset --hard HEAD~3
    git log --oneline -8
    git reflog
    git reset --hard HEAD@{1}
    git log --oneline -8
    git reflog
    git checkout -b reflog-derived-branch HEAD@{1}
    git branch
    git lol

