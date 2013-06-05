---
layout: bare
title: TWC Broomfield Class
description: A private class at the Wynkoop, Denver TWC Engineering Campus
tags: [notes, class]
path: classnotes/2012-12-11-time-warner-broomfield.md
eventdate: 2012-12-11
---

Held on December 11, 2012

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
* [hubgem](https://github.com/defunkt/hub)
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


## Command Line History

    git init newproject 
    cd newproject
    ls
    ls -a
    tree .git | less
    cat .git/HEAD
    tree .git | less
    git --version
    git config user.name
    git config user.email
    git config --system --list
    git config --global --list 
    git config --local --list 
    vi ~/.gitconfig
    git config --list|less
    git config user.name
    git config user.email
    cd ~/code/ratpack
    git lg
    git config --unset --global color.ui
    git lg
    git status
    cd -
    git config color.ui
    git config --global color.ui auto
    pwd
    watch -n 1 tree -L 3 .git
    pwd
    ls 
    cd ../newproject
    ls
    ls -la
    watch -n 1 tree -L 3 .git
    rm .git/hooks/*
    ls
    vi caesar.txt 
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    git stauts
    git status
    open .
    open .git
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "The nobest man"
    git status
    vi caesar.txt
    git status
    git diff
    git help config
    git diff
    git add caesar.txt
    git diff
    git diff --staged
    vi caesar.txt
    git diff
    git diff -w
    vi caesar.txt
    git diff
    git diff --color-words
    git status
    git diff 
    git status
    git diff HEAD
    git diff HEAD --word-diff
    git status
    git commit -m "Costly blood"
    git status
    git add .
    git diff --staged
    git commit -m "Fixed spelling so line would scan as iambic pentameter"
    git status
    git diff
    git diff HEAD
    vi tolkien.txt
    git add .
    git commit -m "Stubbing out some Tolkien"
    ls
    vi tolkien.txt
    git add -p tolkien.txt
    git add -p . 
    git status
    git diff --staged
    git diff
    git commit -m "Added a stanza to Tolkien"
    git status
    git diff
    git checkout -- tolkien.txt
    git status
    git log
    git log --abbrev-commit
    tree .git/objects | less
    git log --stat 
    git log --patch
    git log --stat -- caesar.txt
    git help log 
    git log --pretty=email -1
    git log --pretty=email --patch -1
    git log --pretty=raw
    git log --pretty=fuller
    git log --graph
    git log --graph --pretty=oneline
    git log --graph --pretty=oneline --abbrev-commit
    vi ~/.gitconfig
    git config alias.lg
    git lg
    git lol
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    git lol
    git config --global alias.lol
    git config --global alias.lol --unset 
    git lol
    git config alias.lol
    git config --global --unset alias.lol
    git lol
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    vi ~/.gitconfig
    git help config
    ls
    git status
    ls
    generaterandomfiles 6 junk txt
    ls
    cat junk1.txt
    cat junk2.txt
    cat junk3.txt
    git status
    git add .
    git status
    git commit -m "Added files prepared for destruction"
    git status
    git rm junk1.txt 
    ls
    git status
    rm junk2.txt 
    git status
    git rm junk2.txt 
    git status
    open .
    git status
    ls
    vi tolkien.txt
    git status
    git add -u .
    git status
    ls
    git rm --cached junk6.txt 
    ls
    git status
    git commit -m "Deleted most of the things"
    ls
    git log --stat -1
    git status
    vi .gitignore 
    cat .git
    cat .gitignore
    git status
    git add .
    git status
    mkdir build
    mkdir -p build/classes/main
    touch build/classes/main/Monkey.class
    touch build/classes/main/Angry.class
    ll ~ > console.log
    git status
    git status -u
    vi .gitignore
    git status
    git add .
    git status
    mkdir -p src/main/resources
    ll ~ > src/main/resources/static.log
    git status
    vi src/main/resources/.gitignore 
    git status
    git status -u
    git add .
    git status
    git commit -m "Started ignoring things (in a principled way)"
    ls
    tree
    rm -rf build
    rm -rf src
    rm junk6.txt
    ls
    git status
    git add -u .
    git status
    git commit -m "Cleanup prior to move"
    ls
    tree
    rm console.log
    ls
    git status
    mkdir files
    ls
    git status
    generaterandomfiles 5 random txt
    ll ~ > listing.txt
    cat listing.txt
    cat random1.txt
    ll
    git add .
    git commit -m "Added things to move around"
    git status
    tree
    git mv random1.txt 
    git mv random1.txt files/
    tree
    git status
    mv random2.txt files/
    tree
    git status
    git add -u . 
    git status
    git add .
    git status
    open .
    git status
    git add -A . 
    git status
    git commit -m "Moved my five small files"
    vi listing.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Moved and changed something"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M80
    git log --stat -1 -M75
    vi files/listing.txt
    git add .
    git commit -m "Further changes to listing"
    git log --stat -- files/listing.txt
    git log --stat -M -- files/listing.txt
    git log --stat -M75 -- files/listing.txt
    git log --stat --follow -- files/listing.txt
    git log --stat --follow -M80 -- files/listing.txt
    ll
    git loglive -15
    git statust
    git status
    git log --pretty=raw -1
    git ls-tree c8103fc
    git cat-file -s 2d5b7
    git cat-file -p 2d5b7
    git rev-parse HEAD
    git help rev-parse
    cat ~/scripts/git-loglive
    git log-live
    git loglive 
    git status
    git add .
    git commit -m "TWC Wynkoop Class notes"
    git push
    git lg
    git rev-parse master
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/HEAD
    git status
    git branch
    git branch feature
    vi caesar.txt
    git add .
    git commit -m "Beg my utterance"
    git g
    git lg
    tree .git/refs
    git checkout feature
    ll
    vi caesar.txt
    git add .
    git commit -m "Added a title to Caesar"
    git branch
    git checkout master
    git branch
    git checkout feature
    git checkout master
    git merge feature -m "Merged in my feature branch"
    git branch -d feature 
    cat caesar.txt
    cat caesar.txt | markdown
    git lg
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Domestic Fury"
    git checkout feature2
    vi tolkien.txt
    git add .
    git commit -m "Crownless no more"
    git merge master
    git checkout master
    git merge feature2
    vi caesar.txt
    git ad d.
    git add .
    git commit -m "Blood and destruction"
    git checkout feature2
    vi caesar.txt
    ll
    vi chesterton.txt
    git status
    git add .
    git status
    git commit -m "Smiley mothers"
    git lg
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Merged in our feature work"
    git lg
    git checkout 0a71aed
    git status
    git branch
    cat .git/HEAD
    ls
    vi tolkien.txt
    git add .
    git status
    git commit -m "Cleaned up the trailer"
    git lg
    ls
    cat tolkien.txt
    git checkout master
    git status
    git branch
    git lg
    git branch adopted 5533 
    git branch
    git lg
    vi .git/refs/heads/master
    vi .git/HEAD
    git reset --hard 0a71aed
    git merge feature2
    cat caesar.txt
    git config --global merge.tool kdiff3
    git config --global mergetool.prompt false
    git config --global mergetool.keepTemporaries false
    git config --global mergetool.keepBackup false
    git mergetool 
    git status
    git config --global merge.tool p4merge
    git mergetool 
    git status
    vi caesar.txt
    git commit -m "Merged feature"
    git lg
    git merge adopted
    git lg
    git branch
    git lg
    git branch -d adopted
    git branch -d feature2
    git lg
    vi caesar.txt
    git add .
    git commit -m "Choked pity"
    git lg
    git branch feature 2796109
    git lg
    vi README.md
    git add .
    git commit -m "Added a README"
    git lg
    git checkout feature
    vi jabberwocky.txt
    git add .
    git commit -m "Started on Jabberwocky"
    vi jabberwocky.txt
    gita dd .
    git add .
    git commit -m "MOAR Jabberwocky"
    git branch
    git lg
    git rebase master
    git checkout master
    git merge feature 
    git branch whoa 8e99057
    git branch -d whoa
    git branch -D whoa 
    git tag TAG_QUESTION
    tree .git/refs
    git show TAG_QUESTION
    git tag -a MERGE_COMMIT 2796
    git checkout MERGE_COMMIT
    git checkout master
    git show MERGE_COMMIT
    git lg
    git checkout feature
    cd files
    ll
    generaterandomchanges 8 file txt
    git lg
    git rev-parse HEAD~8
    git rebase -i HEAD~8
    git lg
    git log -1
    git commit --amend 
    git log -1
    git status
    ll
    cd ..
    ls
    vi jabberwocky.txt
    git add .
    git status
    git commit --amend
    git lg
    git log --stat -1
    git lg
    git checkout master
    git merge feature
    git lg
    git reflog
    git branch
    git checkout feature
    git branch
    git reflog
    git reset --hard HEAD@{13}
    git lg
    git checkout master
    git reset --hard 1ce65cd
    git lg
    vi jabberwocky.txt
    git add .
    git commit -m "Vorpal sword"
    git lg
    git merge --squash feature 
    git status
    git reset files/file6.txt
    git status
    git clean -f
    git status
    git commit -m "Added random files 1-5, 7-8"
    git lg
    git branch -D feature 
    git lg
    export PS1="$ "
    tr.git
    cd scratch/newproject
    export PS1="$ "
    tr.git
    cd scratch/newproject
    git loglive
    git loglive -12
    tmux
    tmux attach
    export PS1="$ "
    tr.git
    cd scratch/newproject
    export PS1="$ "
    tr.git
    cd scratch/newproject
    git lg
    tr.git
    cd scratch/newproject
    git loglive
    git loglive -12
    git remote add origin https://github.com/githubtrainer/poetry.git 
    cat .git/config
    git push -u origin master
    cat .git/config
    git branch 
    git branch -a
    tree .git/refs
    cat .git/refs/remotes/origin/master
    pwd
    tr.git
    cd scratch
    ls
    git clone https://github.com/githubstudent/poetry.git
    cd poetry
    ls
    vi caesar.txt
    vi chesterton.txt
    vi jabberwocky.txt
    git status
    git add.
    git add .
    git commit -m "Changed three files"
    git push
    git config user.name
    git config user.email
    git log -1
    git status
    git fetch
    git status
    git pull 
    git merge origin/master
    git fetch https://github.com/brntbeer/poetry.git master
    git show FETCH_HEAD
    git merge FETCH_HEAD
    git mergetool
    gits tatus
    git status
    git commit
    git push
    git pull
    git status
    git fetch https://github.com/dougfrus/poetry.git master
    git branch doug FETCH_HEAD
    git lg
    git merge --squash doug 
    git status
    git diff
    git diff --staged
    git status
    git reset HEAD test.html
    git status
    rm test.html
    vi dougsfile.txt
    git ad .
    git add .
    git status
    git commit
    git branch -D doug
    git push
    git pull
    git remote add trainer https://github.com/githubtrainer/poetry.git
    git remote -v
    git lg
    git pull
    git pull trainer master
    git lg
    cd ..
    ls
    git clone https://github.com/githubtrainer/poetry.git tr-poetry 
    cd tr-poetry
    git lg
    git remote -v
    git branch
    git checkout -b tlberglund 
    vi caesar.txt
    git add .
    git commit -m "Cry HAVOC"
    git push -u origin tlberglund 
    git fetch origin
    git diff origin/skiing
    git diff HEAD..origin/skiing
    git merge origin/skiing
    git loglive -8
    git branch
    git branch -a
    git loglive -12
    git checkout origin/brendans_work
    git loglive -10
    git checkout master
    git branch -a
    git checkout brendans_work
    git diff HEAD..master
    vi not_quite_empty.txt
    git add .
    git commit -m "Improved NQEAbstractBeanFactory"
    git push 
    git checkout master
    git merge brendans_work
    git status
    git push
    git fetch
    git diff HEAD..origin/brentbeer
    git show c6fbe78
    git cherry-pick 14583d7 
    git log --pretty=raw -1 
    git push
    git merge origin/ntower
    git merge origin/skiing
    git merge origin/twig
    git lg
    git merge origin/jgarbiso
    git push
    git pull
    git lg
    ls
    ll
    git branch
    git checkout master
    git pull
    git remote -v
    git config --global credential.helper "cache --timeout 300"
    git branch
    vi caesar.txt
    git merge tlberglund
    git branch
    git pull
    git branch -a
    git merge origin/tlberglund
    vi caesar.txt
    git checkout -- caesar.txt
    git merge origin/tlberglund
    vi caesar.txt
    git push
    git help remote
    vi .git/config
    git fetch
    git pull
    git push
    git pull && git push 
    git fetch
    git branch -a
    git lg
    git branch -a
    git lg
    git fetch
    git lg
    git fetch
    git show 
    git lg
    vi README.md
    git add .
    git commit -m 'update readme'
    git push
    git pull --rebase 
    git push
    git config --global branch.autosetuprebase always
    git branch -a
    git checkout rumi
    cat .git/config
    git config branch.master.rebase true 
    git pull
    vi chesterton.txt
    git add .
    git commit -m "Demanding aunts"
    git push
    git checkout master
    git cherry-pick e8a9
    git push
    git pull
    git push
    git fetch
    git loglive -15
    git fetch
    git branch -D rumi
    git branch -a
    vi chesterton.txt
    git add .
    git commit -m "Cheiftans"
    git push
    git pull
    git push
    git pull
    git tag
    git branch
    git push --delete origin tlberglund
    git push --delete origin feature
    git push --delete origin gffeature
    git push origin TAG_QUESTION
    git push --tags
    git status
    ls
    vi raven.txt
    git sattus
    git status
    git add raven.txt
    git status
    git commit -m "Raven"
    git show a765
    git revert a7658
    cat junk.txt
    git pull
    git push
    git pull
    git rev-list
    git rev-list --all
    git help rev-list
    git rev-list master
    git ls-tree 553305b67a76639e95e35db31ec5caeb592f2df6
    vi ~/.gitconfig
    git config --unset --global push.default

