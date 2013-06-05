---
layout: bare
title: TWC Wynkoop Class
description: A private class at the Wynkoop, Denver TWC Engineering Campus
tags: [notes, class]
path: classnotes/2012-12-10-time-warner-wynkoop.md
eventdate: 2012-12-10
---

Held on December 10, 2012

Taught by:

* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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
* [Log Live](https://gist.github.com/3714970)
* [git lg alias](https://gist.github.com/1131406)

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
* [GitHub Training Feedback](https://github.com/githubtraining/feedback/issues)

## Class Outline

* History and Intro
* Installing and configuring
* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Understanding Git's Content Tracking 
* Moving and copying files
* Branching and Merging in Git
* Rebase and interactive rebase
* Establishing upstream repositories 
* Push, pull, and fetch
* RefLog as a safety net
* Stash for work-in-progress
* Reset modalities
* Collaboration through Pull Requests 
* Code review features of GitHub
* Graphical merge/diff tools
* Merge/rebase difference
* Rebase-on-pull
* Merge squash
* Cherry pick
* Revert

## TODOs

* Include git-loglive link
* Include git lg alias





## Command Line History

    git init newproject
    cd newproject
    watch -n 1  tree -L 3
    watch -n 1  tree -L 3 .git
    rm .git/hooks/*
    git config user.name
    git config user.email
    git config core.autocrlf
    pwd
    vi caesar.txt 
    git status
    git add .
    git status
    git commit -m "Initial commit"
    tree .git
    tree .git |less
    vi caesar.txt
    git status
    git add caesar.txt
    git commit -m "The noblest man"
    git status
    ll
    vi tolkien.txt
    git add .
    git commit -m "Stubbed out the Toklien poem"
    git status
    vi tolkien.txt
    git add -p tolkien.txt
    git status
    git diff --staged
    git diff 
    git diff HEAD
    git status
    git diff --staged
    git commit -m "Deep roots"
    git status
    git diff
    vi tolkien.txt
    git statu
    git status
    git checkout -- tolkien.txt
    git status
    vi caesar.txt
    git diff 
    git diff --color-words
    git config color.ui
    git diff --color-words > diff.txt
    cat diff.txt
    vi diff.txt
    git diff --word-diff
    vi caesar.txt
    git diff 
    git diff -w
    git diff -w --color-words
    vi caesar.txt
    git status
    rm diff.txt
    git status
    git add .
    git commit -m "Fixed accenting so line scans correctly"
    git log
    git log --stat
    git log --patch
    git diff -p -1
    git log -p -1
    git log -p -2
    git log --pretty=email --patch -1
    git log --pretty=raw -3
    git log --pretty=raw
    git log --graph
    git log --graph --pretty=oneline
    git config --unset --global alias.lol
    git log --graph --pretty=oneline --abbrev-commit
    git log --graph --oneline
    git log --graph --pretty=oneline --abbrev-commit
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    git lol
    git config --unset --global alias.lol
    git lol
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    git lol
    vi ~/.gitconfig
    git lg
    generaterandomfiles 6 file txt
    ls
    cat file2.txt
    git status
    git add .
    git status
    git commit -m "Added some files prepared for destruction"
    git status
    ll
    git rm file1.txt
    git status
    rm file2.txt
    git status
    git rm file2.txt
    git status
    open .
    git status
    git add -u .
    git status
    git reset HEAD file3.txt
    git reset HEAD file4.txt
    git reset HEAD file5.txt
    git status
    vi caesar.txt
    git status
    git add .
    git status
    git add -u . 
    git status
    git rm --cached file6.txt
    git status
    ll
    git commit -m "Deleted most of the things"
    git status
    git lg
    git config alias.lg
    git help log
    vi ~/.gitconfig
    git lg
    vi ~/.gitconfig
    git lg
    vi ~/.gitconfig
    git lg
    vi ~/.gitconfig
    git help log
    vi ~/.git
    vi ~/.gitconfig
    git lg
    git loglive
    git status
    vi .gitignore
    git status
    mkdir build
    touch build/Monkey.class
    touch build/Important.class
    ll ~ > console.log
    git status
    git status -u
    vi .git
    vi .gitignore
    git status
    git add .
    git status
    mkdir -p src/main/resources
    tree
    vi src/main/resources/static-resource.log
    tree
    git status
    vi src/main/resources/.gitignore 
    git status
    git status -y
    git status -u
    git add .
    git status
    vi .gitignore
    git status
    git diff --staged -- .gitignore 
    git diff -- .gitignore 
    git add .
    git commit -m "Started ignoring things"
    git config core.excludesfile
    vi ~/.gitignore
    git config core.excludesfile
    cat ~/.git
    cat ~/.gitignore
    pwd
    ls
    rm -rf build
    rm -rf src
    rm console.log
    rm file6.txt
    ls
    generaterandomfiles 5 file.txt
    generaterandomfiles 5 file txt
    ll ~ > listing.txt
    ll
    git status
    git add -u .
    git status
    git add .
    git status
    git commit -m "Added some files I want to move around"
    ll
    mkdir files
    tree
    git status
    git mv file1.txt files/
    git status
    mv file2.txt files/
    git status
    git rm files2.txt
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    open .
    git status
    git add -A . 
    git status
    git ls-tree HEAD
    git commit -m "Moved some of the files"
    git log --stat -1
    git log --stat -M -1
    vi listing.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Simluated Java refactoring"
    git log --stat -M -2
    git log --stat -2
    git log --stat -M -2
    git log --stat -M75 -2
    git log --stat -M78 -2
    vi files/listing.txt
    git add .
    git status
    git commit -m "Changed a file after moving it"
    git log --stat -M
    git log --stat -- files/listing.txt
    git log --stat --follow -- files/listing.txt
    git log --stat --follow -M83 -- files/listing.txt
    tree
    cp files/listing.txt . 
    git status
    rm listing.txt
    git loglive -15
    git branch
    git status
    git lg
    ll .git
    rm .git/COMMIT_EDITMSG
    ll .git
    tree .git/objects | less
    tree .git/refs
    cat .git/refs/heads/master
    git log --oneline -1
    cat .git/HEAD 
    cat .git/refs/heads/master
    git branch feature
    vi caesar.txt
    git add .
    git commit -m "Utterance of my tongue"
    git rev-parse HEAD
    git rev-parse master
    git rev-parse feature
    git rev-parse feature^
    git rev-parse master^
    git rev-parse feature
    git checkout feature 
    cat caesar.txt
    vi caesar.txt
    git add .
    git commit -m "Added a title"
    git lg
    git checkout master
    git merge feature 
    git lg
    git log --pretty=raw -1
    git lg
    vi ~/.gitconfig
    git branch -d feature
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git checkout feature2
    vi caesar.txt
    ll
    vi tolkien.txt
    git status
    git add .
    git status
    git commit -m "Conflict plus good change"
    git merge master
    git status
    git merge --abort 
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git commit -m "Merged with blood and destruction"
    git lg
    git reset --hard 8e16277
    git lg
    git merge feature2
    git config --global merge.tool kdiff3
    git mergetool
    git status
    rm caesar.txt.BA*
    rm caesar.txt.L*
    rm caesar.txt.R*
    git status
    git config --global merge.tool.prompt false
    git config --global mergetool.keepTemporaries false
    git config --global mergetool.prompt false
    git config --global mergetool.keepBackup false
    git mergetool
    git status
    git --global merge.tool p4merge
    git config --global merge.tool p4merge
    git mergetool
    git status
    cat caesar.txt
    git commit -m "Merged with blood and destruction"
    git lg
    git branch -d feature2
    git branch feature3
    vi caesar.txt
    git status
    git difftool -t kdiff3
    git difftool -t p4merge
    git config --global diff.tool kdiff3
    git difftool
    git add .
    git commit -M "Smiley mothers"
    git commit -m "Smiley mothers"
    git checkout feature3
    vi jabberwocky.txt
    tree
    cd files
    git add .
    git commit -m "Got a start on Jabberwocky"
    pwd
    tree
    tree ..
    git add .
    git add ..
    git commit -m "Got a start on Jabberwocky"
    pwd
    ls
    generaterandomchanges 6 random txt
    git lg
    git checkout f0e4986
    git status
    cat .git/HEAD
    cat ../.git/HEAD
    cd .
    cd ..
    vi jabberwocky.txt
    git add .
    git commit -m "MOAR Jabberwock"
    git rev-parse HEAD
    git checkout master
    git checkout 42065cd470d653af2094a302c2346416fe6fa593
    git branch feature4
    git checkout master
    git checkout feature4
    git commit --amend 
    git show 42065cd
    git lg
    git checkout feature3
    git reset --hard f0e49 
    git reflog
    git reset --hard HEAD@{1} 
    git reflog
    git reset --hard HEAD@{1} 
    git branch
    git merge feature4
    git branch -d feature4
    git lg
    git branch
    git rebase master
    git checkout master
    git merge feature3
    git branch -d feature3
    git branch
    git branch feature
    vi caesar.txt
    git commit -a -m "Choked pity"
    git checkout feature
    cd files
    generaterandomchanges 8 random txt
    git rebase -i HEAD~8 
    git config core.editor "mate -w"
    git rebase -i HEAD~8 
    find ~/.gradle -name "ratpack*.jar"
    git rebase -i HEAD~8 
    ll
    vi file1.txt
    git add .
    git status
    git rebase --continue
    git config --unset core.editor
    ll random1.txt
    git lg
    git checkout master
    git merge feature
    git branch -d feature
    git branch feature2
    ll
    cd ..
    ll
    vi caesar.txt
    git add .
    git commit -m "Caesar Rage"
    git checkout feature2
    cd files
    ll
    ls
    generaterandomchanges 5 monkey.txt
    generaterandomchanges 5 monkey txt
    ls
    git checkout master
    git merge --squash feature2
    git status
    cd ..
    git status
    git commit -m "Added five monkeys"
    git branch -d feature2
    git branch -D feature2
    git show HEAD
    git help merge
    git help rebase
    cat ~/scripts/git-loglive
    git loglive 
    git loglive  -10
    git --version
    pwd
    git remote add origin https://github.com/githubtrainer/poetry.git 
    cat .git/config
    git push -u origin master 
    git remote
    git remote -v
    git branch
    git branch -a
    cat .git/config
    git branch -a 
    git lg
    git branch -a
    tree .git/refs
    cat .git/refs/remotes/origin/master
    cat .git/refs/heads/master
    git rev-parse origin/master
    cat .git/config
    git status
    git remote
    git remote -v
    export PS1="$ "
    tr.git
    cd scratch
    pwd
    ls
    git clone https://github.com/githubstudent/poetry.git
    cd poetry
    cat .git/config
    ls
    vi caesar.txt
    git add .
    git commit -m "Cry HAVOC"
    git push
    git remote -v
    cd ..
    cd poetry
    git remote set-url origin https://github.com/githubstudent/poetry.git
    git push
    git config user.email
    git branch
    git fetch
    git status
    git fetch https://github.com/brntbeer/poetry-1.git master
    git branch -a
    tree .git/refs
    ll .git
    ls .git
    cat .git/FETCH_HEAD
    git fetch https://github.com/brntbeer/poetry-1.git master
    git diff FETCH_HEAD
    git diff FETCH_HEAD..HEAD
    git diff HEAD..FETCH_HEAD
    git merge FETCH_HEAD
    vi caesar.txt
    git merge origin/master
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git commit 
    git loglive -12
    git status
    git push
    git fetch
    git pull 
    git ls-remote
    git ls-remote | less
    git fetch origin refs/pull/11/head
    git merge FETCH_HEAD
    vi README.md
    cat README.md
    vi README.md
    git add README.md
    git status
    git commit
    git push
    git remote
    git remote add trainer https://github.com/githubtrainer/poetry.git
    git lg
    git fetch trainer
    git remote -a
    git branch -a
    git lg
    git merge trainer/master
    git lg
    git status
    git push
    cd ..
    git status
    git fetch
    git checkout -b tlberglund
    ls
    vi jabberwocky.txt
    git add .
    git commit -m "Vorpal sword"
    git branch -a
    git push -u origin tlberglund
    git fetch
    git branch -a
    git fetch
    git branch -a
    git checkout master
    git pull
    git branch -a
    git merge origin/somename
    cat flubber.txt
    git branch -a
    git checkout hawk
    git diff master
    vi README.md
    git add .
    git commit -m "Fixed README"
    git branch
    git push
    git remote -v
    git checkout master
    git merge hawk
    git merge origin/somename
    git merge origin/steven.walters
    git merge origin/hfear
    git merge origin/dcolvin
    git lg
    git merge origin/jmoore
    ls
    git push
    git checkout master
    git pull 
    git merge tlberglund
    git push
    git lg
    git diff origin/tlberglund..tlberglund
    git push origin :tlberglund 
    git push --delete origin dcolvin
    git branch
    git branch -d tlberglund
    ll
    vi jabberwocky.txt
    git add .
    git commit -m "Uffish thought"
    git push
    git fetch
    git loglive -10
    git fetch
    gitk &
    gitk --all &
    git fetch
    git loglive -8
    vi jabberwocky.txt
    git add .
    git commit -m "Through and through"
    git push
    git pull --rebase 
    git push 
    git help config
    git config --global branch.autosetuprebase always 
    git config branch.master.rebase true 
    vi jabberwocky.txt
    git add .
    git commit -m "Beamish boy"
    git push
    git pull
    git push
    git fetch
    git pull
    git loglive -15
    git pull
    git branch
    git branch -a
    git diff HEAD..origin/rmjfeaturebranch
    git lg
    git checkout origin/brntbeer
    ls
    git diff master
    cat brntbeer.txt
    git checkout master
    git fetch
    git lg
    git checkout master
    git cherry-pick 8190ce5
    ls
    cat br
    cat brntbeer.txt
    git log --pretty=fuller -1
    git push
    git pull
    git push

