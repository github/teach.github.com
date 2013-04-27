---
layout: bare
title: Git Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private]
path: classnotes/2013-04-26-in-person-foundations-class.md
eventdate: 2013-04-26
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

## Resources

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
    * [The GitHub for Mac Client](http://mac.github.com)
    
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.8.0 or higher

* Microsoft Visual Studio 2012
    * [Visual Studio 2012 Update 2](http://www.microsoft.com/en-us/download/details.aspx?id=38188)
    * [Visual Studio Tools for Git](http://visualstudiogallery.msdn.microsoft.com/abafc7d6-dcaa-40f4-8a5e-d6724bdb980c)
    * [Getting Started with Git in Visual Studio](http://blogs.msdn.com/b/visualstudioalm/archive/2013/01/30/getting-started-with-git-in-visual-studio-and-team-foundation-service.aspx)

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
git --version

    git config user.name
    git config user.email
    git config --global user.name "Jordan McCullough"
    git config --global user.email "jordan@github.com"
    vi ~/.gitconfig
    git config --global core.autocrlf auto
    git config core.autocrlf
    git config --global color.ui auto
    git cofig color.ui
    git config color.ui
    cd ~/scratch
    pwd
    mkdir test1
    ls
    cd test1
    pwd
    git init
    git config --unset --global core.autocrlf
    git init
    history
    ls
    ls -al
    tree -D .git
    ls -al
    tree -D .git
    ls -al .git
    vi raven.txt 
    ls
    cat raven.txt
    git status
    git add raven.txt 
    git status
    git commit -m "Initial commit"
    git status
    vi raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "Eagerly wished"
    git status
    vi raven.txt
    git status
    cat raven.txt
    git add raven.txt
    git status
    vi raven.txt
    git status
    git diff
    git diff --staged
    git status
    git diff HEAD
    git status
    git diff --stat 
    git diff -- raven.txt 
    git status
    git diff --staged
    git commit -m "Surcease of sorrow"
    git status
    git add .
    git status
    git commit -m "Rare and raidiant"
    git status
    git log
    git --pager log
    git -p log
    git config core.pager
    git config --global --unset core.pager 
    git log
    git help log
    git help config
    git log --format=raw
    git log --format=oneline
    git log --oneline
    git config --global core.pager "less -F -X"
    git log --oneline
    git log --graph
    git log --oneline --graph
    git log --oneline --graph --decorate
    git log --oneline --graph --decorate --all
    git config --global alias.lol "log --oneline --graph --decorate --all"
    git lol
    git log --stat 
    git log --patch
    git lol --patch
    git lol --stat
    git lol --stat -2
    git lol --patch -1
    git lol -p -1
    ls
    ls -al
    mkdir scripts
    open scripts
    ls
    ls ~/scripts/
    chmod +x ~/scripts/generaterandom*
    ~/scripts/generaterandomfiles 5 junk txt
    ll
    git status
    git add .
    git commit -m "Files we're about to delete"
    git log --stat -1
    cat junk1.txt
    cat junk2.txt
    cat junk3.txt
    git rm junk1.txt
    ll
    git status
    rm junk2.txt
    ll
    git status
    git rm junk2.txt 
    git status
    open .
    git status
    git add .
    git status
    git add -u . 
    git status
    echo "More junk " > junk6.txt
    git status
    git add -u .
    git status
    git add .
    git status
    git help add
    git commit -m "Cleaned up cruft, added more"
    git log --stat -1
    ll
    git rm --cached junk6.txt
    git status
    git commit -m'Removing Junk6 from repo'
    ls -al
    git status
    echo "angry monkey" > junk1.txt
    git add junk1.txt
    git status
    git commit -m "Re-adding deleted file"
    git log --stat
    git log --oneline -- junk1.txt 
    git status
    vi .gitignore
    git status
    vi .gitignore
    git add .gitignore
    git status
    mkdir Debug
    echo "stuff" > Debug/lol.obj
    git status
    git status -u
    vi .gitignore
    git status
    git add .gitignore
    mkdir -p a/Debug
    touch a/Debug/monkey
    git status -u
    vi .gitignore
    git config core.excludesfile
    cat `git config core.excludesfile`
    git status
    git add .
    git commit -m "Added a .gitignore"
    git status
    ll
    rm -rf Debug
    rm -rf a
    rm junk6.txt
    ll
    rm junk1.txt
    git status
    git rm junk1.txt
    git commit -m "Cleaned up final cruft"
    git status
    git lol
    ls
    ~/scripts/generaterandomfiles 5 random.txt
    ~/scripts/generaterandomfiles 5 random txt
    ls
    mkdir files
    git status
    git add .
    ll
    git status
    ls -la ~ > listing.txt
    vi listing.txt
    git status
    git add .
    git status
    git commit -m "Files to move around"
    git log --stat -1
    git mv random1.txt files/
    tree 
    git status
    mv random2.txt files/
    tree
    git status 
    git add files/random2.txt
    git status
    git rm random2.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Moved random files"
    git log --stat -1
    git log --stat -1 -M
    ls
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Moved and changed a file"
    git log --stat -1 -M
    git log --stat -1 -M90
    git log --stat -- files/listing.txt
    git log --follow --stat -- files/listing.txt
    vi files/listing.txt
    git add .
    git commit -m "Changed after moving"
    git log --follow --stat -- files/listing.txt
    git log -M90 --follow --stat -- files/listing.txt
    git status
    git lol
    pwd|pbcopy
    pwd
    cd scratch/test1
    git lol
    git branch feature1
    git lol
    git branch
    git lol
    git branch
    git checkout feature1
    git branch
    ls -al
    vi raven.txt
    git add .
    git commit -m "Quaint and curious"
    git branch
    git lol
    cat raven.txt
    git checkout master
    cat raven.txt
    git lol
    vi raven.txt
    git diff
    git diff --color-words
    git diff --word-diff
    git lol
    git add .
    git commit -m "Sad drapes"
    git lol
    git status
    vi raven.txt
    git status
    git checkout feature1
    git branch feature2
    git lol
    git checkout feature2
    git add .
    git status
    git commit -m'Added authorship info'
    git checkout master
    git lol
    git branch
    touch README
    vi README
    git status
    git add .
    git status
    git commit -m'Added README'
    git lol
    git branch
    git checkout feature1
    git lol
    git checkout master
    git log -10
    git lol -10
    git merge feature1
    git lol
    git branch -D feature2
    git lol
    cat raven.txt
    git lol
    git branch tom-maybe 
    git lol
    git branch
    git lol -10
    git reset --hard 2a69 
    git lol -10
    git branch
    git merge tom-maybe
    git lol -10
    git branch
    git branch feature2
    git lol
    git branch
    git branch -d tom-maybe
    git branch -d feature1
    git branch
    git lol
    log lol -10
    git lol -10
    git checkout feature2
    ls -al
    vi raven.txt
    git status
    git add .
    git commit -m'Added authorship'
    git checkout master
    git lol -10
    git branch
    git merge feature2
    git lol
    git branch -d feature2
    git lol -10
    git status
    ls
    git checkout -b feature3
    git branch
    git lol
    vi raven.txt
    git add .
    git commit -m "Stilled beating"
    git checkout master
    vi raven.txt
    git add .
    git commit -m "Stood repeating"
    git lol
    git merge feature3 
    git status 
    vi raven.txt
    git status
    git add raven.txt
    git status
    git reflog
    git reset --hard HEAD@{1}
    git lol
    vi raven.txt
    git add .
    git commit -m "Some visitor"
    git lol
    git merge feature3 
    vi raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "Merged branch"
    git lol -10
    git branch -d feature3
    git branch
    git checkout -b jordan-test
    ~/scripts/generaterandomchanges 10 cruft txt
    git status
    git log --oneline -11
    git branch
    git reset --soft 1e0dac7
    git log --oneline -11
    git status
    git commit -m'Extra files 5 thru 10'
    git log --oneline -9
    git reset --mixed ae49ffa
    git status
    git log --oneline -8
    git status
    git add .
    git commit -m'New sample files'
    git log --oneline -10
    git reset --hard 54214fb
    git log --oneline -5
    touch newstuff.txt
    git branch
    git status
    git add .
    git commit -m'stuff'
    git commit --amend
    git log --oneline -5
    touch newmore.txt
    git status
    git add .
    git status
    git reset HEAD newmore.txt
    git status
    rm newmore.txt
    git status
    git lol
    git checkout master
    git branch -D jordan-test 
    git lol
    git remote add origin https://github.com/githubteacher/poetry.git 
    git push -u origin master
    git lol
    git branch -a
    vi raven.txt
    git add .
    git commit -m "Late visitor"
    git lol
    git status
    git push
    git config --global push.default simple
    git push 
    git lol
    git fetch
    git lol
    cat README
    git lol
    git diff origin/master
    git diff origin/master..HEAD
    git diff HEAD..origin/master
    git checkout origin/master 
    git lol
    git checkout master
    git lol
    vi raven.txt
    git add .
    git commit -m "Nameless here"
    git lol
    git push 
    git lol
    git merge origin/master
    git push
    git remote -v
    git branch -vv
    git branch
    git checkout -b jordan
    git branch
    git remote -v
    pwd
    cd ..
    git clone https://github.com/githubteacher/poetry.git
    cd poetry
    ls
    ll
    git branch
    git branch -a
    git checkout -b jordan
    git branch
    ls
    ll
    git lol
    git config lol
    git config alias.lol
    git config --global alias.lol "log --oneline --graph --decorate --all"
    git branch
    vi chesterton.txt
    git add .
    git commit -m "Strange song"
    git push -u origin jordan
    git branch -a
    git fetch
    git branch -a
    git lol
    git diff origin/nigel
    git branch
    git checkout master
    git diff origin/nigel 
    git merge origin/nigel 
    git lol
    git diff origin/awesomeness 
    git branch
    git branch -a
    git checkout msg-r0x0rz
    git branch -a
    git branch
    ll
    vi lolz.nfo
    git add .
    git commit -m "Converted to markdown"
    git lol
    git remote show origin 
    git status
    git push
    git checkout master
    git push
    git pull
    git lol
    git push
    git ll
    git lol
    git fetch
    git merge msg-r0x0rz 
    git checkout lorien
    ls
    git diff master
    open Lorien.rtf
    git checkout master
    git checkout -- Lorien.rtf
    git checkout master
    git branch
    git checkout lorien 
    git checkout master
    git merge lorien 
    git lol
    git branch
    git branch -a
    git merge origin/tvc
    git merge origin/tom
    git merge origin/pdf
    git merge origin/pgf
    git merge origin/*
    git branch -a
    git branch origin/Matty origin/awesomeness origin/craiggarrett1 origin/jordan origin/justinbranch origin/justinbranch2 origin/melissa 
    git merge origin/Matty origin/awesomeness origin/craiggarrett1 origin/jordan origin/justinbranch origin/justinbranch2 origin/melissa 
    git lol
    git branch
    git branch -d lorien
    git branch msg-r0x0rz 
    git branch -d msg-r0x0rz 
    git branch -d jordan 
    git push
    git pull
    git push
    git branch
    git branch -a
    git push --delete origin jordan
    git fetch --prune
    git push --delete origin jordan
    git fetch --prune
    git branch -a
    git fetch --prune
    git fetch
    git remote
    git remote -v
    git lol
    git bundle create ../poetry.bundle b1961ac..master 
    cd ..
    ll
    du -sh poetry
    git init poetry-2
    cd poetry-2
    git remote add bundle ../poetry.bundle
    git fetch bundle
    cd ..
    pwd
    git clone poetry.bundle poetry-2
    git clone file://poetry.bundle poetry-2
    rm -rf poetry-2
    git clone file://poetry.bundle poetry-2
    cd poetry
    ll
    git help bundle
    git bundle list-heads ../poetry.bundle
    rm ../poetry.bundle
    git bundle create ../poetry.bundle master
    ll -h ..
    git lol
    rm ../poetry.bundle
    git bundle create ../poetry.bundle b1961ac..master
    git bundle create ../poetry.bundle master..b1961ac
    ll ..
    ll
    rm ../poetry.bundle
    git bundle create ../poetry.bundle master
    ll ..
    cd ..
    git init poetry-2
    cd poetry-2
    git remote add bundle file://../poetry.bundle
    git fetch
    git fetch bundle
    ll ..
    git remote add bundle file:///Users/jordanmccullough/scratch/poetry.bundle
    git remote set-url bundle file:///Users/jordanmccullough/scratch/poetry.bundle
    git fetch bundle
    pwd
    cd ..
    git init web-app
    cd web-app
    touch index.html
    touch styles.css
    cd ..
    git init slide-controller
    cd slide-controller
    touch app.js
    touch require.js
    git add .
    git status
    git commit -m'First commit'
    echo "javascript" > require.js
    git status
    git add .
    git commit -m'First function'
    git status
    git checkout 
    ls
    cd ..
    ls
    cd web-app
    git status
    git add .
    git commit -m'First commit of web app'
    echo "HTML Here" > index.html
    git status
    git add .
    git commit -m'index.html\

    git status
    git log --oneline
    cd ..
    ls
    cd slide-controller
    git remote add origin https://github.com/githubteacher/slide-controller.git
    git push origin master
    cd ..
    cd web-app
    git status
    pwd
    ls -al
    git submodule add https://github.com/githubteacher/slide-controller.git slides
    ls -al
    git status
    cd slides
    ls -al
    git log --oneline
    cd ..
    git status
    pwd
    git log
    git status
    git commit -m'First commit of submodule for slide-controller'
    cd slides
    git log
    git log --oneline --decorate
    git checkout 503d42b
    cd ..
    pwd
    git status
    git diff
    git add .
    git commit -m'Changed pointer in submodule'
    git status
    cd ..
    ls
    cd poetry
    git status
    git lol
    git log --oneline
    git tag RELEASE_1
    git log --oneline --decorate
    git tag RELEASE_0.5 f879002
    git log --oneline --decorate
    git tag -a -m"Good release" RELEASE_0.7 3ba3167
    git log --oneline --decorate
    git show RELEASE_0.7
    git show RELEASE_0.5
    git push --tags
    git status
