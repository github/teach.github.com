---
layout: bare
title: GitHub Foundations
description: GitHub Foundations Online class notes
tags: [notes, event]
path: classnotes/2013-02-26-online-git-foundations.md
eventdate: 2013-02-26
---

# Event Date: 2013-02-26
## Delivered by Jordan McCullough

# Presentation Outlines

* Class Slide Deck 
    * [http://teach.github.com/presentations/git-foundations.html](http://teach.github.com/presentations/git-foundations.html)

# Helpful Links
* Git-SCM
    * [http://git-scm.com](http://git-scm.com/)
* Free-Online Git Pro Book
    * [http://git-scm.com/book](http://git-scm.com/book)
* GitHub Free Online Classes
    * [https://training.github.com/web/free-classes/](https://training.github.com/web/free-classes/)
* Training Team Q&A
    * [https://github.com/githubtraining/feedback](https://github.com/githubtraining/feedback)
* Shell Scripts
    * [https://github.com/matthewmccullough/scripts](https://github.com/matthewmccullough/scripts)


# CLI History
    cd ~/.ssh
    ls
    vi id_rsa.pub
    cd ~/scratch
    pwd
    git init carroll
    pwd
    cd carroll
    ls
    ls -al
    tree -L 2 -d .git
    tree -L 2 .git
    cd ..
    cd carroll
    cd ..
    mkdir other
    ls
    cd other
    echo "hello" hi.txt
    ls
    echo "hello" >  hi.txt
    ls
    echo "yo" > howdy.md
    ls
    git init
    git add .
    git commit -m'First commit of our project'
    cd ..
    ls
    cd carroll
    echo "Lewis Carrol poetry and things" > README
    echo "sample 1" > jabberwocky.txt
    echo "sample 2" > walrus.txt
    git status
    git add README
    git add jabberwocky.txt walrus.txt 
    git status
    git commit
    git status
    ls -al
    vi README
    vi jabberwocky.txt
    git status
    git add README
    git status
    git commit -m'Initial README overview of poject'
    git status
    git add jabberwocky.txt
    git status
    git commit -m"Introduction to Jabberwocky"
    git status
    ls
    echo "Walrus poem here" > walrus.txt
    git status
    echo "Will also include the Walrus" >> README
    git status
    git add .
    git status
    git reset HEAD walrus.txt
    git status
    git reset HEAD README
    git status
    git checkout -- README
    git checkout -- walrus.txt 
    git status
    vi jabberwocky.txt
    git status
    git diff
    git add jabberwocky.txt
    git status
    git diff
    git diff --staged
    git commit -m'First two lines'
    git status
    git status
    vi jabberwocky.txt
    git status
    git diff
    git add jabberwocky.txt 
    git status
    vi jabberwocky.txt
    git status
    git sattus
    git status
    git diff
    git diff HEAD
    git status
    git add jabberwocky.txt
    git status
    git diff --staged
    git commit -m'First full two lines'
    git status
    vi jabberwocky.txt 
    git status
    git diff
    git diff --color-words
    git diff --word-diff
    git add jabberwocky.txt 
    git diff
    git status
    git diff --staged --color-words
    git status
    git reset HEAD jabberwocky.txt 
    git status
    vi jabberwocky.txt 
    git diff
    git diff --color-words -w
    git diff --stat
    echo "More info" >> README
    git diff --stat
    git diff README
    git diff README jabberwocky.txt 
    git diff --color-words -w jabberwocky.txt 
    git status
    git diff
    git status
    git checkout -- README jabberwocky.txt 
    git status
    git log
    git log --stat
    git log -2
    git log -2 --stat --patch
    git config --global user.name
    git config --global user.name "Jordan McCullough"
    echo "Re-written by Jordan" >> README
    git status
    git add README 
    git commit -m'Added credit to JAM'
    git log -2
    git log --author="Jordan"
    git log --author="GitHub Trainer"
    git config --global user.name "GitHub Trainer"
    git log --patch -3 --abbrev-commit --color-words
    git log --patch --abbrev-commit --color-words
    git log --oneline --stat --patch
    cat ~/.gitconfig-jm
    git log --oneline
    git log --oneline --patch -S"toves"
    git log --oneline --patch -S"toves" --color-words
    ls -la
    rm walrus.txt
    git status
    open .
    git checkout -- walrus.txt
    generaterandomchanges 3 extra txt
    git log --oneline
    ls
    git rm extra1.txt
    ls
    git status
    git commit -m'Removing extra1 file'
    git status
    ls
    git rm extra2.txt
    git status
    git commit -m'Removing extra 2 file'
    git status
    ls
    git rm --cached extra3.txt
    git status
    ls
    git commit -m'Rmv extra3 only from repo'
    git status
    rm extra3.txt
    generaterandomchanges 5 morestuff txt
    git log --oneline -10
    ls
    git status
    git add morestuff3.txt
    git status
    git add -u morestuff3.txt
    git status
    git add -u .
    git status
    git commit -m'Rmv morestuff files'
    git status
    rm .DS_Store
    git status
    ls
    git rm walrus.txt
    git status
    open .
    git reset HEAD walrus.txt
    git status
    ls
    git checkout -- walrus.txt
    git status
    ls
    ls
    git rm morest*
    git status
    git commit -m'Rmv last of morestuff'
    git status
    ls
    git mv walrus.txt walrus-oyster.txt
    git status
    git commit -m'Renamed walrus to better filename'
    generaterandomchanges 5 movme txt
    git log --oneline
    ls
    open .
    ls
    git status
    git add -u movme1.txt movme2.txt
    git status
    git add moveme1.txt moveme2.txt
    git status
    git commit -m'Corrected movme filename spelling'
    ls
    git status
    git add -A
    git status
    git commit -m'Renamed final move-me files'
    git status
    ls
    ls -al > mydir.txt
    git status
    cat mydir.txt
    git add .
    git status
    git commit -m'My directory file'
    git status
    ls
    mkdir sub
    git mv mydir.txt sub/mydir.txt
    git status
    vi sub/mydir.txt
    git status
    git add sub/mydir.txt 
    git status
    git diff
    git diff --staged
    git status
    git commit -m'Moved dir list and mod-ed'
    git log --stat -8
    git log --stat -M
    git log --stat -M90
    git log --stat -M85
    git log --stat -M80
    git log --stat -M80 -1
    git log -- sub/mydir.txt
    git log --follow -- sub/mydir.txt
    git log --follow sub/mydir.txt
    git log --follow -- mydir.txt
    ls
    ls sub/
    git status
    echo "first log " > info.log
    echo "production " > production.log
    echo "more"> sub/more.log
    git status
    echo "more stuff" > summary.info
    git status
    vi .gitignore
    git status
    vi .gitignore
    git add .gitignore
    git status
    git commit -m'New Ignore file'
    git status
    ls
    git add .
    git status
    cd sub
    ls
    vi .gitignore
    ls
    ls -al
    git status
    cd ..
    git status
    git add sub/.gitignore
    git status
    git commit -m'Sub dir ignores'
    git status
    git status
    git add .
    git status
    git commit -m'Sub dir log file'
    git status
    git log --oneline -5
    cat sub/.gitignore
    git log --oneline -10
    git branch
    git branch feature1
    git branch
    pwd | pbcopy
    git checkout feature1
    git branch
    generaterandomchanges 3 feature txt
    git status
    git checkout master
    git branch
    generaterandomchanges 4 production txt
    ls
    git status
    git checkout feature1
    ls
    git log --graph --decorate --all --oneline --abbrev-commit
    git log --graph --decorate --all --oneline --abbrev-commit -10
    git log --graph --decorate --oneline --abbrev-commit -10
    git log --graph --decorate --oneline --abbrev-commit -10 --all
    git branch feature1sub
    git checkout feature1sub
    generaterandomchanges 2 sub txt
    git checkout feature1
    generaterandomchanges 2 feaure-more txt
    git branch -D feature1
    git checkout master
    git branch -D feature1
    git branch -D feature1sub
    git branch jordan
    git checkout jordan
    ls
    git rm mov*
    git commit -m'Removing extra files'
    git status
    ls
    git rm pro*
    git rm prod*
    git rm production2.txt production1.txt
    git status
    git rm production3.txt 
    git rm production4.txt
    git status
    git commit -m'Moved prod files'
    git status
    git commit --amend
    ls
    vi jabberwocky.txt
    git status
    git add jabberwocky.txt 
    git commit -m'Added more jabberwocky text'
    git checkout master
    ls
    git merge jordan
    git status
    ls
    cat jabberwocky.txt 
    git branch -d jordan
    git branch feature2 da798f5
    git checkout feature2
    generaterandomchanges 3 feature md
    git checkout master
    git merge feature2
    ls
    generaterandomchanges 3 mainstuff txt
    git branch
    git branch feature3
    git checkout feature3
    generaterandomchanges 3 feat3- txt
    git checkout master
    generaterandomchanges 5 main- txt
    git checkout feature3
    git rebase master
    git checkout master
    git merge feature3
    generaterandomchanges 3 prod md
    git checkout feature3
    generaterandomchanges 3 feat3- md
    ls
    vi jabberwocky.txt 
    git add .
    git status
    git commit -m'Changed Lewis to Louis'
    git checkout master
    vi jabberwocky.txt
    git add .
    git commit -m'Jabberwookies!'
    git status
    git checkout feature3
    git rebase master
    git status
    vi jabberwocky.txt
    git checkout --theirs -- jabberwocky.txt
    git status
    vi jabberwocky.txt 
    git add jabberwocky.txt
    git status
    git rebase --continue
    git checkout master
    git merge feature3
    git branch -d feature3
    git reset --hard 9f90147
    git status
    ls
    rm feat*
    git status
    ls
    rm main-*
    git status
    git add -A
    git status
    git reset --mixed HEAD
    git status
    git checkout 
    git status
    git checkout -- feat* main-*
    git status
    ls
    git reset --soft 07729ee
    git status
    git commit -m'New commit message here!'
    git reflog
    git reset --hard HEAD@{12}
    git remote add origin https://github.com/githubteacher/carroll.git
    git remote
    git remote -v
    ls ~/.ssh
    cat id_rsa.pub
    cat ~/.ssh/id_rsa.pub
    git remote
    git remote -v
    git push origin
    git push origin master
    git log --oneline
    git remote -v
    git remote rm origin
    git remote add origin https://github.com/githubteacher/carroll.git
    git remote -v
    ls
    git blame walrus-oyster.txt
    git log jabberwocky.txt
    git gui
    gitk --all
    git gui
    git remote -v
    git branch
    git push origin feature2
    git log --oneline
    git fetch origin
    git branch -a
    git diff origin/master
    git pull origin master
    cat jabberwocky.txt 
    cd ..
    mkdir student
    cd student/
    git clone https://github.com/githubstudent/carroll.git
    ls
    cd carroll/
    ls
    vi jabberwocky.txt 
    pwd
    git status
    git add .
    git commit -m'Trying to finish poem'
    git reflog
    open .
    git log -3
    git push origin master
    git remote -v
    git push origin master
    git remote -v
    pwd
    git remote add teacher https://github.com/githubteacher/carroll.git
    git remote -v
    git fetch teacher master
    git branch -a
    git fetch teacher
    git branch -a
    git diff teacher/master
    git branch -a
    git merge teacher/master
    git log --oneline -2
    cd ..
    cd ..
    ls
    cd carroll/
    git pull origin
    git merge origin/master
    vi jabberwocky.txt
    git status
    git branch additions
    git status
    git checkout additions
    git status
    git add .
    git commit -m'jabberwocky almost done!'
    git push origin additions
    git log --oneline -10
    git checkout master
    git log --oneline -10
    git revert a7168a8
    git status
    git reset --hard
    git log --oneline -5
    git revert 1db777b
    git revert 005ceab
    git log --oneline -5
    git push origin master
    git pull origin master
    git status
    git checkout --ours jabberwocky.txt 
    git add .
    git s
    git status
    git push origin master
    git push -f origin master
