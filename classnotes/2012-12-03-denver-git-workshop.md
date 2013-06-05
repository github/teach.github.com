---
layout: bare
title: Denver Git Workshop
description: Denver Git Workshop
tags: [notes, event]
path: classnotes/2012-12-03-denver-git-workshop.md
eventdate: 2012-12-03
---

Held on December 3, 2012

Taught by:

* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Wil Moore ([Twitter](http://twitter.com/wilmoore), [GitHub](https://github.com/wilmoore))

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.10, but can have issues with HTTPS credential prompting.
* Best is 1.8.X or higher

## Suggested Books, Articles
* [Free ProGit Book](http://git-scm.com/book)
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Tools, Tips, Shortcuts

* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem ](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

## Resources

* SSL Certificates
    * [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
    * Disabling SSL Certificate Checks for Git:
            git config --global http.sslVerify false
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [Using Git with Media Temple](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Jenkins Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)


## CLI History
                                  
    git init newproject
    cd newproject/
    clear
    ls
    clear
    ls
    clear
    touch readme.md
    git commit .
    ls
    git add .
    git commit -m"initial import"
    clear
    git config --list
    git config user.name
    git config user.email
    git config user.name "Wil Moore III"
    git config user.name
    git config user.email wilmoore@gmail.com
    git config user.email 
    git config user.email wil.moore@wilmoore.com
    clear
    git config --global user.name
    git config --system --list
    touch /Users/wilmoore/local/git/versions/1.7.9.3/etc/gitconfig
    git config --system --list
    ls /Users/wilmoore/local/git/versions/1.7.9.3/etc/gitconfig
    touch /Users/wilmoore/local/git/versions/1.7.9.3/etc/gitconfig
    mkdir /Users/wilmoore/local/git/versions/1.7.9.3/etc
    touch /Users/wilmoore/local/git/versions/1.7.9.3/etc/gitconfig
    ls /Users/wilmoore/local/git/versions/1.7.9.3/etc/gitconfig
    git config --system --list
    git config --global --list
    git config --global
    git config --local --list
    clear
    git config --global user.name "Wil Moore III"
    git config --global user.email "wil.moore@wilmoore.com"
    git config --global color.ui true
    git log-detail 
    clear
    vim readme.md 
    git status
    git add readme.md
    git status
    git commit -m"updated readme"
    git log
    touch file1
    touch file2
    ls
    git add file1
    git status
    git commit -m"added file1"
    clear
    git diff
    ls
    git status
    touch file3
    vim file3
    git diff
    clear
    ls
    git status
    clear
    git diff --staged
    git diff -w
    clear
    git diff HEAD
    clear
    git add .
    git commit -m'added files'
    clear
    vim doc.txt
    git status
    git diff
    clear
    git diff --color-words
    clear
    git .git
    ls .git
    clear
    ls
    git commit --patch
    git add --patch
    ls
    git add doc.txt
    vim doc.txt 
    git status
    git diff
    git diff --staged
    ls
    git add doc.txt
    git diff --staged
    git diff -w
    vim doc.txt 
    git diff -w
    git diff
    git diff -w
    clear
    cd ..
    ls
    git init diffproject
    cd diffproject/
    clear
    vim readme.md
    git diff
    git add readme.md
    vim readme.md 
    git diff
    git diff --staged
    git add readme.md
    git diff --staged
    clear
    git diff HEAD
    git commit -m'initial commit'
    git diff HEAD
    clear
    vim readme.md 
    clear
    git diff HEAD
    git diff --color-words
    vim readme.md 
    git diff --color-words
    git diff
    git diff --color-words
    git diff --word-diff
    vim readme.md 
    git diff --word-diff
    git add .
    git commit -m'added great words'
    vim readme.md 
    git diff
    git diff -w
    cd scratch
    cd newproject
    vi caesar.txt
    git add .
    git commit -m "Initial commit"
    vi caesar.txt
    git add .
    git commit -m "Noblest man"
    vi caesar.txt
    git add .
    git commit -m "Costly blood"
    vi caesar.txt
    tr.git
    export PS1="$ "
    tmux
    tmux attach
    cd scratch/newproject
    export PS1="$ "
    git log
    git log --stat 
    git status
    git commit --amend
    git log
    git lsstat --patch
    git log --patch 
    git log -p -1
    git log --pretty=full
    git log --pretty=email
    git log --pretty=email --patch
    git log --pretty=raw
    git log --pretty=fuller
    git help log
    git config alias.lg
    git lg
    git lol
    git help add
    git help diff
    git diff --stat
    git log --stat
    git status
    ls
    generaterandomfiles 5 junk txt
    ls
    git status
    git add .
    git status
    git commit -m "Added some files prepared for destruction"
    ls
    git rm junk1.txt
    ls
    git status
    rm junk2.txt
    git status
    git rm junk2.txt
    git status
    open .
    git status
    git add -u .
    git status
    git commit -m "Cleaned up a bunch of trash"
    git log --stat
    ll
    ll ~ > junk.log
    mkdir build/
    touch build/Monkey.class
    tree
    git status
    vi .gitignore 
    git status
    git add .gitignore
    git status
    git commit -m "Started ignoring things I don't want to see"
    git status
    ll
    rm -rf build
    rm junk.log
    ls
    ll
    generaterandomfiles 5 file txt
    ll ~ > files.txt
    ls
    cat file1.txt
    mv files.txt listing.txt
    git status
    git add .
    git status
    git commit -m "Added some files to move around"
    tree
    mkdir files
    tree
    git status
    git log --stat -1
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    git add -A .
    git status
    git commit -m "Moved five files WITHOUT CHANGING THEM--this is totally cheating"
    tree
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Moved a file while changing it (see Ship of Theseus"
    git log --stat
    git log --stat -M 
    git log --stat -M95
    git log --stat -M15
    vim files/listing.txt
    git add .
    git commit -m "Some gratuitous changes to listing.txt"
    git log -- files/listing.txt
    git log --follow -- files/listing.txt
    git log -M95 --follow -- files/listing.txt
    git log -M
    git status
    git log --stat -M
    git diff --show-renamed a5e7
    git help diff
    git diff --show-names a5e7
    git diff --find-renames a5e7
    git diff --find-renames --stat a5e7
    git diff --find-renames --patch a5e7
    git diff --find-renames HEAD ~3
    git diff --find-renames HEAD~3
    git config --global --unset alias.lol
    git log --graph --pretty=oneline --abbrev-commit
    git lol
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit" 
    git lol
    git lg
    git loglive
    git config --get-all alias
    git config --get-all alias.*
    git config --get alias
    git config --get-regex alias.*
    git config --get-regex alias.
    git status
    git branch
    git lg
    ll .git
    tree .git/refs
    cat .git/refs/heads/master
    git log -1
    ll. git
    ll .git
    cat .git/HEAD
    git branch
    git branch feature
    git branch
    vi caesar.txt
    git status
    git add .
    git status
    git commit -m "Dumb mouths"
    git lg
    git branch
    git checkout feature 
    git branch
    cat caesar.txt
    tree .git/refs
    cat .git/HEAD
    vi caesar.txt
    git diff
    git add .
    git commit -m "Added a title"
    git lg
    tr.git
    cd scratch/newproject
    git loglive
    export PS1="$ "
    tr.git
    cd scratch/newproject
    git loglive
    git branch
    git checkout master
    git branch
    git checkout feature
    git checkout master
    git merge feature -m "Merged my feature branch" 
    git branch -d feature 
    git branch feature2 
    vi caesar.txt
    tr.git
    cd scratch/newproject
    git loglive
    git commit -a -m "Domestic fury"
    git checkout feature2
    vi caesar.txt
    vi tolkien.txt
    git status
    git add .
    git commit -m "Some work in the feature branch"
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git commit
    ls
    cat caesar.txt
    git branch -d feature2
    git checkout 789c 
    git branch monkey
    git checkout master
    git branch -d monkey
    git branch monkey cc09 
    git branch -d monkey
    git checkout -b feature3 
    git branch
    vi tolkien.txt
    git commit -a -m "Tokien additions"
    vi va
    vi caesar.txt
    git add .
    git commit -m "More Caesar"
    git checkout master
    vi README.md
    git add .
    git commit -m "Added a README (finally)"
    git checkout feature3
    git rebase master 
    ls
    git checkout master
    git merge feature3
    git branch
    git checkout feature3
    l
    cd files
    ll
    generaterandomchanges 10 random txt
    git loglive -15
    git rebase -i 7cc7
    crashplan-stop
    ll
    cd ..
    ll
    git remote
    git remote add origin https://github.com/githubtrainer/poetry.git 
    git remote
    git remote -
    git remote -v
    git push -u origin master 
    cat .git/config
    git remote set-url origin https://github.com/githubtrainer/poems.git
    git push -u origin master 
    tr.
    tr.g
    tr.git
    cd scratch
    export PS1="$ "
    tr.git
    cd scratch
    export PS1="$ "
    ll
    pwd
    git clone https://github.com/githubstudent/poems.git 
    cd poems
    tree
    vi caesar.txt
    git commit -am "Caesar rage"
    git push
    git config user.name
    git config user.name "GitHub Student"
    git config user.email "training+githubstudent@github.com"
    git commit --amend --author
    git help commit
    git commit --amend --reset-author
    git log 
    git push
    git lg
    git branch
    git checkout master
    git status
    git pull
    git branch -a
    git fetch https://github.com/JimHomer/poems.git master 
    ll .git
    cat .git/FETCH_HEAD
    git merge FETCH_HEAD
    git status
    vi caesar.txt
    git add .
    git commit -m "Incporated Jim Homer's PR"
    git push
    git fetch
    git remote add trainer https://github.com/githubtrainer/poems.git
    git remote -v
    git fetch trainer 
    git branch -a
    git diff trainer/master
    git merge trainer/master 
    git push
    git pull trainer master
    git push
    cat .git/config
    git remote set-url origin https://github.com/githubtrainer/poems.git
    git pull
    git status
    git pull
    git checkout -b chesterton
    git branch
    vi chesterton.txt
    git add .
    git commit -m "Started on some Chesterton"
    git push -u origin chesterton 
    git fetch
    git branch -a
    git checkout chesterton
    git branch -a
    vi chesterton.txt
    git commit -a -m "Finished first stanza for you, loser"
    git remote
    git branch
    git push
    git branch
    git pull
    cat chesterton.txt
    git checkout master
    git merge chesterton
    git push
    git branch -a
    git branch -d chesterton
    git branch -a
    git push origin :chesterton
    git checkout master
    git pull
    git branch -a
    git fetch --purge
    git fetch --prune

