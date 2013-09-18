---
layout: bare
title: Programutvikling Oslo Workshop
description: Programutvikling Oslo Workshop Class Notes
tags: [notes]
path: classnotes/2013-09-10-programutvikling-oslo-workshop.md
eventdate: 2013-09-10
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

## Resources

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

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
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
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline
* History of Git and your initial setup
* Git configuration and its inheritance
* Understanding and thinking in Git's three stages
* Adding, committing, and diff-ing code changes
* The Similarity Index; Moving, Renaming, and Removing files
* Managing and using Git Remotes
* Overview of Git's Architecture
* Branching, Tagging, and Stashing
* Merging, Rebasing, and managing conflicts
* Undoing your work with Git
* Making Git work with SVN
* Other Things
  * Common GitHub Workflow
  * Merging strategies
  * Submodules
  * Ugly merge conflicts, esp. with rebasing

## Command History

    git --version
    git config user.name
    git config --global user.name "Tim Berglund"
    git config user.email
    git config --global user.email "tlberglund@github.com"
    git config color.ui
    git config --global color.ui auto
    git init programutvikling
    ls -la
    tree .git
    vi caesar.txt
    git commit -m "Initial Commit"
    git commit -m "The noblest man"
    git help diff
    git statu
    git diff
    git diff HEAD
    git diff HEAD --color-words
    git diff HEAD --word-diff
    git diff --staged
    git diff
    git commit -m "Costly blood"
    git commit -m "Iambic pentameter"
    git help log
    git log -2
    git log --graph
    git log --graph --abbrev-commit
    git log --graph --abbrev-commit --format=oneline
    git log --graph --abbrev-commit --format=oneline --decorate
    git log --graph --abbrev-commit --format=oneline --decorate --all
    git config --global alias.lol "log --graph --oneline --decorate --all"
    git config --global alias.lol
    vi ~/.gitconfig
    git log --patch
    generaterandomfiles 6 junk txt
    git commit -m "Created Cruft"
    git rm junk1.txt
    rm junk2.txt
    git rm junk2.txt
    pwd|pbcopy
    open .
    git rm --cached junk6.txt
    git commit -m "Deleted cruft"
    vi .gitignore
    vi .gitignore
    git add .gitignore
    git commit -m "Ignore the things"
    mkdir -p src/main/resources
    echo "This was a good idea" > src/main/resources/important.log
    vi src/main/resources/.gitignore
    git status -u
    git commit -m "More ignoring"
    rm junk6.txt
    rm -rf src
    git add -u .
    git commit -m "Cleaned cruft"
    git log --format=raw
    generaterandomfiles 5 random txt
    git commit -m "Things to move"
    mkdir files
    git mv random1.txt files/
    tree
    mv random2.txt files/
    git rm random2.txt
    git add files/random2.txt
    git commit -m "Move all the things"
    ls -la ~ > listing.txt
    git commit -m "Long file"
    git log --stat
    vi
    vi listing.txt
    git add -A .
    git commit -m "Moved AND CHANGED"
    git log --stat
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M95
    vi files/listing.txt
    git commit -m "change after move"
    git log --stat -M
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M95 --follow -- files/listing.txt
    git log
    git loglive
    git loglive -12
    ll ~/scripts
    ls ~/scripts
    cat ~/scripts/git-loglive
    git branch feature
    tree .git/refs
    cat .git/refs/heads/feature
    cat .git/HEAD
    git commit -m "Dumb mouths"
    git checkout feature
    git commit -m "Title"
    git merge feature
    git branch -d feature
    git branch feature2
    git commit -m "Cursed men"
    git checkout feature2
    vi beowulf.txt
    git commit -m "Beowulf+things"
    git merge feature2
    git add caesar.txt
    git commit
    git lol -10
    git loglive -10
    git branch -d feature2
    git branch feature3
    cat caesar.txt
    git commit -m "Blood and destruction"
    git checkout feature3
    git commit -m "Added README"
    git loglive -8
    git lol -8
    git lol -4
    git rebase master
    git show 1e916a1
    git show 9369b8b
    git show ae916a1
    git reset --hard 9369
    git merge feature3
    git lol -3
    git reset --hard HEAD^
    git reflo
    git reflog
    git reset --hard ae916a1
    cat README.md
    tr.git
    cd scratch
    export PS1="$ "
    cd programutvikling
    git remote add origin https://github.com/githubteacher/poetry.git
    cat .git/config
    git push -u origin master
    git branch -d feature3
    git branch -a
    git show 24ed
    git diff origin/master
    cat beowulf.txt
    git commit -m "Smiley mothers"
    git fetch
    git lol -5
    git clone https://github.com/githubstudent/poetry.git
    git commit -m "All pity"
    git commit -m "Caesar rage"
    git pull
    git pull https://github.com/githubstudent/poetry.git master
    git commit -m "Merged student contrib"
    git commit -m "Havoc, yo"
    git config --global push.default simple
    git push
    git help config
    git remote add teacher https://github.com/githubteacher/poetry.git
    git pull teacher master
    history
    git checkout -b feature
    git stash
    git branch
    vi README.md
    git commit -m "Fixed README, phew"
    git checkout feature
    git stash pop
    git stash list
    git status
    vi caesar.txt
    git add .
    git commit -m "Carrion men"
    git checkout master
    git tag README_FIX
    git show README_FIX
    git tag -a RAGE a252a
    git show RAGE
    git push
    git push origin RAGE
    git push --tags
    pwd
    ls
    svn co https://github.com/githubteacher/poetry svn-poetry
    l
    svn info
    rm -rf svn-poetry
    git svn clone https://github.com/githubteacher/poetry
    cd poetry
    ll
    cd ..
    git help svn
    git svn clone --stdlayout https://github.com/githubteacher/poetry svn-poetry
    cd svn-poetry
    git svn dcommit
    git svn rebase
    git lol

