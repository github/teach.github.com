---
layout: bare
title: GitHub Foundations Private Class
description: GitHub Foundations Private Class
tags: [notes, event]
path: classnotes/2013-08-28-foundations-private.md
eventdate: 2013-08-28
---

## Trainers
* Peter Bell ([Twitter](http://twitter.com/peterbell), [GitHub](https://github.com/peterbell))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

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

    git config --global user.name "GitHub Teacher"
    git config --global user.email "training@github.com"
    git config --global --list
    git config --global user.name
    cat ~/.gitconfig
    git config --global color.ui auto
    git config --global core.autocrlf input
    git config --global --list
    cd ~/scratch
    git status
    mkdir pl-project
    cd pl-project
    touch index.html
    touch index.css
    touch about_us.html
    touch about_us.css
    cd ..
    git init new_project
    ls new_project
    ls -a new_project
    cd pl-project
    git status
    git init .
    git status
    touch README
    echo "README Info here" > README
    git status
    git add README
    git status
    git commit -m'Initial commit. Add README'
    git status
    git add index.*
    git status
    git commit -m"Create first cut of home page"
    git status
    git add .
    git status
    git commit -m"Create initial about us page files\

    git status
    git log
    git show a3f9
    git show a
    git show a3
    git show a3f
    git show a3f9
    git log --oneline
    vi index.html
    git status
    git add .
    git status
    git commit
    git status
    git log --oneline
    subl index.css
    subl index.html
    git status
    git diff
    git status
    git diff
    git add index.css
    git status
    git diff 
    git diff --staged
    git commit -m "Updated the home page css"
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
    git add .
    git status
    git status
    git commit -m'Update page title and header'
    clera
    vi index.html
    git status
    git diff
    git diff --color-words
    git status
    git diff
    git add .
    git commit -m'Change page title to "any"'
    git status
    git status
    touch badfile.txt
    touch morefile.txt
    git status
    git add .
    git status
    git commit -m'Add both bad file texts'
    git status
    git rm badfile.txt
    git status
    git commit -m'Remove badfile from project'
    git status
    git log --oneline
    open .
    git status
    git status
    git add morefile.txt
    git status
    git add .
    git status
    git add -u .
    git status
    git commit -m"Remove more file sample content"
    cat index.
    cat index.html
    mkdir css
    git mv index.css css/index.css
    git status
    git commit -m'Move index stylesheet to subdir'
    git status
    ls -al
    ls css
    git log --oneline
    mkdir about-out
    git status
    git mv about_us.html about-us/index.html
    rm -rf about-out
    mkdir about-us
    git mv about_us.html about-us/index.html
    git status
    git commit -m'Move about to sub dir, renamed'
    mv about_us.css css/about_us.css
    git status
    git add -u .
    git status
    git add .
    git status
    git reset HEAD
    git status
    git add -A .
    git status
    git commit -m'Move about us stylesheet to subdir'
    git status
    ls -al ~ > dir-list.md
    git status
    cat dir-list.md
    git add .
    git status
    git commit -m'Add directory listing'
    git status
    git mv dir-list.md directory-list.md
    git status
    vi directory-list.md
    git status
    git add .
    git status
    git commit -m'Rename dir list, update contents'
    git log --oneline
    git log --oneline --stat
    git log --oneline --stat -M
    git log --oneline --stat -M90
    git log --oneline --stat -M85
    mkdir log
    touch log/temp.log
    git status
    git status -u
    touch .gitignore
    vi .gitignore
    git status
    ls -a log
    git add .
    git status
    git commit -m'Add ignore patterns'
    git rm --cached directory-list.md
    git status
    git commit -m'Untrack dir list file'
    git status
    vi .gitignore
    git status
    vi .gitignore
    git status
    git add .
    git commit -m'Ignore log file and dirs, directory lists'
    git status
    vi ~/.ignore-jordan
    git config --global core.excludesfile ~/.ignore-jordan
    touch todos.jordan
    git status
    git status
    git remote add origin https://github.com/githubteacher/pl-sample.git
    git status
    git remote -v
    git remote rm origin
    git status
    git remote -v
    git remote add origin https://github.com/githubteacher/pl-sample.git
    git help remote
    git remote --set-url origin https://github.com/githubteacher/pl-sample.git
    git remote set-url origin https://github.com/githubteacher/pl-sample.git
    git remote -v
    git push -u origin master
    git push -u origin master
    git fetch origin
    cat README
    git pull
    cat README
    git push
    git log --oneline
    git branch -r
    cd ..
    mkdir student
    cd student
    git clone https://github.com/githubstudent/pl-sample.git
    cd pl-sample
    git remote -v
    vi jordanmccullough.txt
    git status
    git add .
    git status
    git commit -m'Add jordan info file'
    git status
    git push
    git log --oneline
    cd scratch
    git branch
    git branch cart
    git branch
    git checkout cart
    git branch
    touch shopping-cart.html
    git add .
    git status
    git commit -m'Add shopping cart'
    git status
    git log
    git log --graph --oneline --decorate --all
    cd .git
    cd refs
    cd heads
    cat master
    cd ../../
    cd ..
    git branch
    git checkout master
    git status
    git merge cart
    git log --graph --oneline --decorate --all
    git checkout cart 
    vi shopping-cart.html
    git add .
    git commit -m'Add cart placeholder'
    git checkout master
    git log --graph --oneline --decorate --all
    git merge cart
    git log --graph --oneline --decorate --all
    git checkout cart 
    vi shopping-cart.html
    git status
    git add .
    git commit -m'Add cart content sample'
    git status
    git checkout master
    git log --graph --oneline --decorate --all
    git branch
    git merge --no-ff cart
    git log --graph --oneline --decorate --all
    git branch
    git branch -d cart
    git branch
    git log --graph --oneline --decorate --all
    git branch contact
    git log --graph --oneline --decorate --all
    git branch
    git checkout contact 
    touch contact-us.html
    git add .
    git status
    git commit -m'Add contact us page placeholder'
    git status
    git checkout master
    git branch
    vi README
    git status
    git add .
    git commit -m'Update readme'
    git status
    git log --oneline --graph --all --decorate
    git branch
    git status
    git merge contact
    git log --oneline --graph --all --decorate
    git branch
    git branch
    git branch -d contact
    git log --oneline --graph --all --decorate
    git checkout -b bad_idea
    git branch
    touch bad_file.txt
    git add .
    git commit -m "Bad idea here"
    git status
    git branch -d bad_idea
    git checkout master
    git branch -d bad_idea
    git log --oneline --graph --all --decorate
    git branch -D bad_idea
    git branch
    git checkout -b contact_us
    subl contact-us.html
    vi contact-us.html
    git statu
    git status
    git add .
    git commit -m "Adding new contact information"
    git checkout master
    git status
    vi contact-us.html
    git add .
    git commit -m "Adding new logo to contact us page"
    git status
    git branch
    git merge contact_us
    vi contact-us.html
    git status
    git add .
    git status
    git commit
    git status
    git log --oneline --graph --all --decorate
    git branch
    git branch -d contact_us
    git branch
    git checkout -b new_design
    vi index.html
    git branch
    git checkout master
    vi index.html
    git status
    git add .
    git commit -m "Bug fix"
    git branch
    git checkout new_design 
    git status
    vi index.html
    git status
    git add .
    git commit -m "New design"
    git status
    git checkout master
    git merge new_design 
    cat index.html
    git checkout --ours -- index.html
    git status
    git add .
    git status
    git commit
    git status
    git log --oneline --graph --all --decorate
    git branch -d new_design 
    git log --oneline --graph --all --decorate
    git config --global alias.lol "log --oneline --graph --all --decorate"
    git lol
    git config --global alias.s "status -s"
    git s
    touch test.html
    git s
    git add .
    git s
    git reset --hard
    git s
    git status
    git branch
    git checkout -b more_design
    vi index.html
    git status
    git add .
    git commit -m'Add logo'
    git log --stat --patch
    git checkout master
    vi index.html
    git status
    git add .
    git commit -m'Title change'
    git branch
    git merge more_design 
    git config --global difftool p4merge
    git config --global diff.tool p4merge
    git config --global difftool.p4merge "/Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE"
    git config --list --global
    git config --global difftool.p4merge.cmd "/Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE"
    git mergetool
    git lol
    git branch
    git branch -d more_design 
    git branch -D more_design 
    git lol
    git tag V1.0
    git lol
    git show V1.0
    git lol
    git tag V0.5 53f33f3
    git lol
    git show V0.5
    git lol
    git tag -a BUG_FIX_1 6a7439e
    git lol
    git show BUG_FIX_1
    git lol -5
    git lol --since=yesterday
    git lol --since=30.minutes.ago
    git lol
    git rev-parse V1.0
    git rev-parse 247f
    git branch
    git rev-parse master
    git rev-parse HEAD~2
    git lol
    git status
    rm index.html.orig
    git status
    git reset --hard
    git status
    git s
    git branch
    git checkout -b feature-j
    touch jordan.txt
    touch more.txt
    git status
    git add .
    git status
    git stash save "intial jordan test files"
    git checkout master
    vi index.html
    git status
    git add .
    git commit -m'Fix title'
    git status
    git branch
    git checkout feature-j 
    git stash list
    git stash pop
    git stash list
    git commit -m'Initial jordan files'
    git lol
    touch another.txt
    git s
    vi jordanmccullough.txt
    git status
    git stash
    git status
    git stash --included-untracked
    git stash --include-untracked
    git status
    git stash list
    git stash drop stash@{0}
    git stash list
    git stash git stash list
    git branch
    vi index.html
    git status
    git stash save "Home page title change"
    git status
    git stash list
    git branch title-change stash@{0}
    git branch
    git lol
    git merge title-change 
    git status
    git checkout master
    git merge feature-j 
    git status
    git lol
    git branch
    git branch -d title-change 
    git branch -d feature-j 
    git branch
    git status
    touch new.html
    git add .
    git commit -m "Typoooo here"
    git commit --amend
    git lol
    vi index.html
    git status
    git commit -am "Changed home page"
    git status
    touch link.html
    vi index.html
    git commit -am "Added new link feature"
    git status
    git add .
    git status
    git commit --amend
    git status
    git lol
    git show 4819 -stat
    git show 4819 --stat
    git status
    git lol
    touch store.html
    touch css/store.css
    touch profile.html
    touch css/profile.css
    git status
    git add *.html
    git s
    git branch
    git commit -m'Add new pages'
    git add *.css
    git add /css
    git status
    git add css/
    git status
    git commit -m'Style new pages'
    git status
    git lol
    git reset --soft HEAD~2
    git status
    git commit -m'Add new pages and styles'
    git lol
    git lol --stat
    git lol
    git reset HEAD~1
    git status
    git add store.*
    git status
    git add css/store.*
    git status
    git commit -m'Add store files'
    git status
    git add .
    git s
    git commit -m'Add profile files'
    git s
    git lol
    git log --stat
    git lol --stat
    git reset --hard HEAD~2
    git s
    git lol --stat
    git reflog
    git status
    git reset --hard HEAD@{4}
    ls css
    git lol --stat
    git reflog
    git reset --hard HEAD@{1}
    git reflog
    git reset --hard HEAD@{6}
    git lol --stat
    git lol
    git show 3b8f3eb
    git lol
    git revert 3b8f3eb
    git lol
    git lol --stat --patch --color-words
    vi index.html
    vi css/index.css
    git status
    git diff
    git log --patch
    git help merge
    git status
    git branch
    git checkout -b feature-p
    touch peterbell.txt
    git add .
    git commit -m'Add Peter file'
    git status
    git lol
    git status
    git checkout master
    git status
    git push
    git pull
    git status
    vi README
    git add .
    git status
    git commit
    git status
    git push
    git lol
    git checkout feature-p 
    git rebase master
    git lol
    cat README
    git branch
    git checkout master
    git merge feature-p 
    git lol
    git fetch
    git lol
    git pull --rebase
    git lol
    git help merge-base
    cd ../../
    mkdir collaborator
    cd collaborator
    git clone https://github.com/githubteacher/pl-sample.git
    cd pl-sample
    git remote -v
    git branch
    git checkout -b jm-cart
    touch jm-cart.html
    git status
    git add .
    git commit -m'Add jordan shopping cart'
    git status
    git branch
    git checkout master
    git branch -m jm-cart jmccullough-cart
    git checkout jmccullough-cart 
    git push -u origin jmccullough-cart 
    cd ../
    cd ../
    mkdir svn-demo
    cd svn-demo
    git svn clone https://github.com/githubstudent/example-basic.git
    cd example-basic.git
    cd ..
    rm -rf example-basic.git
    git svn clone https://github.com/githubstudent/example-basic.git -s
    cd example-basic.git
    cat .git/config
    touch newfile1.txt
    touch newfile2.txt
    git status
    git add newfile1.txt
    git commit -m'First new file'
    git add .
    git status
    git commit -m'Second file'
    git log
    git svn dcommit
    cd ..
    mkdir svn-2
    cd svn-2
    git svn clone https://github.com/githubstudent/example-basic.git -s
    cd ~/scratch
    git init last-effort
    cd last-effort
    generaterandomchanges 10 main txt
    git lol
    touch loose.txt
    touch spare.txt
    git status
    git clean -f
    git reset --mixed HEAD^^^^
    git status
    git clean -f

