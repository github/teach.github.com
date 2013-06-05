---
layout: bare
title: Canoo Public Workshop
description: Canoo Public Workshop Class Notes
tags: [notes, workshop, public]
path: classnotes/2013-05-27-canoo-public-workshop.md
eventdate: 2013-05-27
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

## Questions

* Mental model
* Manage big project
* Workflow
  * Git Flow vs GitHub Flow
  * Feature branching/releasing

## Outline

* Repository internals
* Staging area
* Log/history
* Aliases
  * Sharing Git Config: http://boxen.github.com/
* Branch/merging
* Rebasing
* Upstream repositories
* Pushing/pulling/fetching
* Forking
* Pull Requesting
* Collaborating on a single repo
* Tags
* Workflow
* SVN migration
  * git-svn
  * GitHub SVN hosting
  * Using the two together

## Command History

    git init newproject
    git --version
    ls
    cd newproject
    ls
    tr.git
    cd scratch/newproject
    export PS1="$ \n\n\nls
    export PS1="$ "
    ls
    pwd
    ls -la
    while :\ndo\nclear\ntree .git\nsleep 1\ndone
    rm .git/hooks/*
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    vi ~/.gitconfig
    git config color.ui
    git config --global color.ui auto
    git help config
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    ls
    git commit -m "Initial commit"
    git loglive
    vi caesar.txt
    cat caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Noblest man"
    git log
    git log --format=email
    git log --format=email --patch
    git log --format=raw
    vi caesar.txt
    git add caesar.txt
    git commit -m "Costly blood"
    git log --format=raw
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --format=oneline
    tree .git/objects
    git log --graph --decorate --format=oneline --abbrev-commit
    git log --graph --decorate --format=oneline --abbrev-commit --all
    git help log
    git lg
    git log --graph --decorate --format=oneline --abbrev-commit --all
    git lol
    git config --global alias.lol "log --graph --decorate --oneline --all"
    git lol
    git config alias.lg
    git diff
    vi caesar.txt
    git diff
    git add caesar.txt
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff --staged
    git diff
    git diff --word-diff
    git status
    git diff HEAD
    git commit -m "Wounds"
    git add caesar.txt
    git commit -m "Iambic pentameter"
    vi ~/scripts/git-loglive
    git loglive
    git log -1
    git log ec7674 -1
    git log ec7674 -1 --stat
    git log ec7674 -1 --patch
    git show ec7674
    git show ec7
    git show ec76
    tree .git/objects
    tree .git/objects | less
    git lol
    pwd
    cd ../nw
    cd ../newproject
    git lol
    ll .git
    cat .git/HEAD
    tree .git/refs
    cat .git/refs/heads/master
    git branch feature
    tree .git/refs
    git branch
    git status
    vi caesar.txt
    git add caesar.txt
    git commit -m "Beg my tonugue"
    git checkout feature
    git branch
    git status
    cat .git/HEAD
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    vi caesar.txt
    git add caesar.txt
    git commit -m "Added a title"
    git lol
    git checkout master
    git merge feature
    git lol
    git status
    git reset --hard b26e
    git commit --amend
    git merge feature
    git show b26e
    git reflog
    git branch adopted b26e
    git branch -d feature
    git branch -d adopted
    git branch -D adopted
    ll
    generaterandomfiles 6 junk txt
    ls
    cat junk1.txt
    cat junk2.txt
    git status
    git add .
    git status
    git commit -m "Committed cruft"
    git status
    ls
    git rm junk1.txt
    ls
    git status
    rm junk2.txt
    ls
    git status
    git rm junk2.txt
    git status
    open .
    git status
    git add .
    git status
    git add -u .
    git status
    git rm --cached junk6.txt
    git status
    ls
    git commit -m "Cleaned up cruft"
    git status
    vi .gitignore
    vi .gitignore
    git status
    git add .gitignore
    git commit -m "Git Ignore"
    ll
    echo "Hamlet <3 Eclipse" > .project
    git status
    git add .project
    git add -f .project
    git status
    git commit -m "Added .project (oops)"
    git rm --cached .project
    ll -a
    git status
    git commit -m "Untracked Eclipse"
    git status
    cat .gitignore
    ll -a
    ll
    generaterandomfiles 5 file txt
    git add .
    git status
    git commit -m "Files to move"
    l
    ls
    rm junk6.txt
    git status
    mkdir files
    tree
    git status
    ll ~ > listing.txt
    ll
    git add .
    git status
    git commit --amend
    ll
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git add -A .
    git status
    rm file3.txt files
    ll
    git status
    git checkout -- file3.txt
    ls
    mv file3.txt files
    git status
    git rm file3.txt
    git status
    git add files/file3.txt
    git status
    git add -A .
    git status
    vi listing.txt
    git add -A .
    git status
    git commit -m "Moved files (changed some)"
    git log -2 --stat
    git log -2 --stat -M
    git log -2 --stat -M90
    vi files/listing.txt
    git add .
    git commit -m "Change after add"
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    ll .git
    git checkout -b feature2
    git branch
    git status
    vi caesar.txt
    git add .
    git commit -m "Buggy Shakespeare"
    vi raven.txt
    git add .
    git commit -m "Introducing the Raven"
    git checkout master
    vi caesar.txt
    git add .
    git commit -m "Cursed men"
    git lol -8
    git merge feature2
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Merged feature"
    git reset --hard 023db8c
    git merge feature2
    git reset --hard HEAD@{1}
    git reflog
    git reset --hard HEAD@{1}
    git reflog
    vi caesar.txt
    git merge feature2
    vi caesar.txt
    p4merge
    cat `which p4merge`
    which p4merge
    git config --global merge.tool p4merge
    git config --global mergetool.prompt false
    git config --global mergetool.keepBackup false
    git config --global mergetool.keepTemporaries false
    git mergetool
    git status
    git commit -m "Merged feature2"
    git branch -d feature2
    git config --global diff.tool p4merge
    git config --global difftool.prompt false
    git status
    git add .
    git commit -m "Binary file"
    git checkout -b conflict
    ll
    cp aquaman-riding-fish.gif animated.gif
    rm aquaman-riding-fish.gif
    git status
    git add .
    git commit -m "Aquaman"
    git checkout master
    ll
    cp arnold-commando.gif animated.gif
    rm arnold-commando.gif
    git add .
    git commit -m "Ahnold"
    git lol -5
    git merge conflict
    git status
    git checkout --theirs -- animated.gif
    git status
    git add animated.gif
    git status
    git commit -m "Fixed binary conflict"
    git loglive -15
    git branch -d conflict
    git branch feature3
    vi caesar.txt
    git add caesar.txt
    cat caesar.txt
    git commit -m "Blood and destruction"
    git checkout feature3
    vi raven.txt
    git add .
    git commit -m "Surcease of sorrow"
    git lol -5
    git rebase master
    git show f336
    git show 7c92
    git merge feature3
    git checkout master
    git merge feature3
    git log
    git branch
    git checkout feature3
    git branch
    cd files
    ll
    generaterandomchanges 10 random txt
    ls
    git rev-parse HEAD
    git rev-parse HEAD^
    git rev-parse HEAD^^^^^^^^^^
    git rev-parse HEAD~10
    git rev-parse 352f~10
    git help gitrevisions
    git rebase -i HEAD~10
    git reflog
    git reset --hard 352fb25
    git rebase -i HEAD~10
    git reflog
    git reset --hard 6d0649d
    git checkout master
    git merge feature3
    git branch -feature3
    git branch -d feature3
    git remote add origin https://github.com/githubteacher/poetry.git
    cd ..
    cat .git/config
    git push -u origin master
    git branch -a
    git help serve
    git help daemon
    git fetch
    git lol -6
    git fetch
    git lol -5 --stat
    git branch -a
    git checkout feature5
    git lol -8
    git branch -a
    cat .git/config
    git branch
    git branch -a
    git checkout master
    git branch -d feature5
    git branch
    git diff origin/master
    git diff HEAD..origin/master
    git pull
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git lol -5
    git push
    git config --global push.default simple
    git help config
    git push
    vi caesar.txt
    git add .
    git commit -m "Choked pity"
    git push
    git pull
    git push
    pwd
    cd ..
    ls
    git clone https://github.com/githubstudent/poetry.git
    cd poetry
    ls
    vi caesar.txt
    git add .
    git commit -m "Ceasar rage"
    git push
    vi caesar.txt
    git add .
    git commit -m "Monarch's voice"
    git push
    git pull
    git loglive -12
    git loglive -13
    git pull
    git lol
    git branch
    git pull https://github.com/githubstudent/poetry.git master
    git status
    vi caesar.txt
    git add caesar.txt
    git commit -m "Merged student PR"
    git loglive -10
    git push
    git pull
    git lol
    git config --global credential.helper cache
    vi caesar.txt
    git add .
    git commit -m "Cry HAVOC"
    git push
    git pull
    git remote -v
    git fetch
    while :\ndo\ngit pull\nsleep 1\ndone
    git loglive -8
    git lol
    gitk --all
    git pull
    git config --local branch.master.rebase true
    git config --global branch.autosetuprebase always
    vi caesar.txt
    git add .
    git commit -m "Carrion men"
    git push
    git pull
    git remote -v
    git pull
    git push
    git pull
    git push
    ll
    git log --stat -2
    vi nietzschocat.txt
    git config credential.helper
    watch -n git fetch
    watch -n 1 "git fetch"
    watch -n 2 "git push"
    watch -n 2 "git pull"
    git loglive -15
    watch -n 2 "git pull"
    git show 3dcd957
    cat .git/config
    git branch
    git checkout -b tlberglund
    vi raven.txt
    git add .
    git commit -m "Fantastic terrors"
    git push -u origin tlberglund
    git fetch
    watch -n 2 "git fetch"
    git loglive -10
    gitk --all
    git fetch
    git branch -a
    git checkout hdarcy
    git show HEAD
    git show HEAD --color-words
    git diff HEAD^ --color-words
    ll
    vi shakes.txt
    git log --stat -M
    git log --stat -M -p --color-words
    tree .git/refs
    git tag TIM_WORK 40025
    tree .git/refs
    cat .git/refs/tags/TIM_WORK
    git push
    git tag -a HAMLET
    git push
    tree .git/refs
    cat .git/refs/tags/HAMLET
    git show TIM_WORK
    git show HAMLET
    git push origin HAMLET
    git push --tags
    git fetch
    tree .git
    git fetch
    git lol
    git push --delete origin tlberglund
    git branch -d tlberglund
    git branch -D tlberglund
    git push --delete origin TIM_WORK
    git tag -d TIM_WORK
    git reflog
    cd ..
    pwd
    svn
    svn help
    svn co https://github.com/githubteacher/poetry
    cd poetry
    ll
    ll -a
    cd ..
    rm -rf poetry
    git svn clone https://github.com/githubteacher/poetry
    cd poetry
    git svn rebase
    git lol



## Chat History




