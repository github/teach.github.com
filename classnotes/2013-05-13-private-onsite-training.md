---
layout: bare
title: Private Onsite Training
description: Private Onsite Training Class Notes
tags: [notes]
path: classnotes/2013-05-13-private-onsite-training.md
eventdate: 2013-05-13
---

## Teachers
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))
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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command History

    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    vi ~/.gitconfig
    vi .git/config
    git help init
    git config --global color.ui auto
    git config --list
    git config --list --local
    git config --global -e
    ls
    git status
    ls
    vi caesar.txt
    git status
    git add .
    git status
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    open .git
    git status
    ls
    cat caesar.txt
    git diff --staged
    git diff
    git status
    git diff
    vi caesar.txt
    git status
    git diff
    git diff --staged
    git add caesar.txt
    git status
    git diff --staged
    git diff
    git status
    git reset HEAD caesar.txt
    git status
    git add caesar.txt
    git status
    git diff --staged
    git commit -m "Costly blood"
    vi caesar.txt
    git status
    git diff
    git add .
    vi caesar.txt
    git status
    git diff
    git diff --word-diff
    git diff --staged
    git diff HEAD
    git add .
    git commit -m "Dumb mouths"
    git help log
    git log
    git log --format=raw
    git log --stat
    git log -p
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --all
    git log --graph --decorate --all --oneline
    git lol
    git config --global alias.lol "log --graph --decorate --all --oneline"
    git lol
    git config --list
    git config --list | grep $alias
    git config --list | grep "$alias"
    git config --list | grep "alias"
    git config alias.lg
    git lg
    git lol
    git lol --stat
    git cat-file 51f9
    git cat-file -t 51f9
    git cat-file -s 51f9
    git cat-file -p 51f9
    git lol
    git cat-file -t e35faf5
    git cat-file -s e35faf5
    git cat-file -p e35faf5
    git cat-file -p b72ee
    git help cat-file
    ll
    git status
    git lol
    generaterandomfiles 5 junk txt
    ls
    git status
    git add .
    git status
    git commit -m "Cruft to fix"
    git lol
    git log --stat
    echo monkey > junk6.txt
    git add .
    git status
    git log -1 --stat
    git commit --amend
    git log -1 --stat
    git log --format=raw
    ls
    git rm junk1.txt
    ls
    git status
    rm junk2.txt
    git status
    git rm junk2.txt
    git status
    git statu
    git status
    git add .
    git status
    git add -u .
    git status
    ls
    git rm --cached junk6.txt
    ls
    git status
    git commit -m "Cleaned up our cruft"
    git lol --stat -2
    git status
    vi .gitignore
    git status
    git add .
    git status
    git commit -m "Started ignoring files"
    mkdir build
    touch build/monkey.class
    mkdir build/libs
    mkdir build/libs/monkey.jar
    git status -u
    rmdir build/libs/monkey.jar
    touch build/libs/monkey.jar
    git status -u
    git status
    git status -u
    vi build
    vi .git
    vi .gitignore
    git status
    mkdir -p src/main/resources
    echo "This seemed like a good idea at the time" > src/main/resources/junk10.txt
    git status
    cat .git
    cat .gito
    cat .gitignore
    vi src/main/resources/.gitignore
    git status
    git status -u
    git add .
    git status
    tree
    cat `git config core.excludesfile`
    ls
    tree
    rm -rf build
    rm -rf src
    rm junk6.txt
    ls
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    ls
    cat file1.txt
    cat listing.txt
    git status
    git rm src/main/resources/.gitignore
    git rm src/main/resources/junk10.txt
    git status
    git commit -m "Moar ignoar"
    git status
    git add .
    git commit -m 'Added files to move'
    git log -1 stat
    git log -1 --stat
    mkdir files
    tree
    git status
    git mv file1.txt
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    git add -A .
    git status
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Massive refactoring"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M80
    git log --stat -1 -M70
    vi files/listing.txt
    git add .
    git commit -m "Change after move"
    git statu
    git log --stat -3
    git log --stat -- files/listing.txt
    git log --follow --stat -- files/listing.txt
    git log -M80 --follow --stat -- files/listing.txt
    git branch
    git status
    cat .git/refs/heads/master
    git lol
    git branch feature
    tr.git
    cd scratch/qualcomm
    git loglive
    git lol
    git branch
    cat .git/HEAD
    git checkout feature
    cat .git/HEAD
    git branch
    vi caesar.txt
    git add .
    git commit -m "Beg utterance"
    git branch feature2
    git branch feature3 master
    git branch -d feature2
    git branch -d feature3
    cat caesar.txt
    git checkout master
    cat caesar.txt
    vi caesar.txt
    git add .
    git commit -m "Title"
    git merge feature
    git reset --hard 1dd3
    git merge feature --no-commit
    git status
    git diff --staged
    git commit
    git log --format=raw -1
    git branch -d feature
    git checkout -b feature2
    git branch
    vi caesar.txt
    vi raven.txt
    git add .
    git status
    git commit -m "Really bad stuff"
    git checkout master
    git diff feature2
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git lol
    git merge feature2
    vi caesar.txt
    git status
    vi caa
    vi caesar.txt
    git add .
    git status
    git commit
    git reset --hard 278a
    git merge feature2
    p4merge
    cat `which p4merge`
    git config --global merge.tool p4merge
    git config --global mergetool.keepBackup false
    git config --global mergetool.keepTemporaries false
    git config --global mergetool.prompt false
    git mergetool
    git status
    git commit
    git help mergetool
    git config --global diff.tool p4merge
    git config --global difftool.prompt false
    vi caesar.txt
    git difftool
    git add .
    git difftool --staged
    git difftool -t kdiff3
    git difftool -t opendiff
    git status
    git commit -m "Blood and destruction"
    git status
    git s
    git loglive -15
    git branch feature3
    git branch -d feature2
    vi raven.txt
    git add .
    git commit -m "Dying embers"
    git checkout feature3
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git rebase master
    git lol
    git branch adopted b5afaa0
    git brandh -D adopted
    git branch -D adopted
    git checkout master
    git merge feature3
    git branch -d feature3
    git checkout -b feature4
    ls
    cd files
    ls
    generaterandomchanges 10 random txt
    git log --stat
    git help gitrevisions
    git rebase -i HEAD~10
    git lol
    git log --stat -1
    git rebase -i HEAD^
    vi file2.txt
    ll
    ls
    vi random2.txt
    vi random9.txt
    git status
    git add .
    git status
    git rebase --continue
    ls
    git checkout master
    cd ..
    vi raven.txt
    git add .
    git commit -m "Eagerly wished"
    git merge feature4
    git reset --hard adf61ad
    git checkout feature4
    git reflog
    git reset --hard 57cd064
    git reflog
    git status
    git log --stat
    git checkout master
    git merge feature4 --squash
    git status
    git reset files/random6.txt
    git status
    rm files/random6.txt
    git status
    git commit
    git reset --hard HEAD^
    git checkout feature4
    git reset --soft 1f6651a
    git status
    ls
    ls files
    rm files/random6.txt
    git reset --mixed files/random6.txt
    git reset files/random6.txt
    git reset -- files/random6.txt
    git status
    tree
    git commit -m "Random 1-5, 7-10"
    git checkout master
    git merge feature4
    git remote
    git remote add origin https://github.com/githubteacher/poetry.git
    cat .git/config
    git branch -d feature4
    git lol
    git branch
    git push -u origin master
    git branch -a
    cat ~/scripts/git-loglive
    cd Documents/Presentations/discrete-math
    ll
    git status
    git diff
    git status
    vi code/src/discrete/core.clj
    git diff
    git add .
    git commit -m "Added Stirling Number functions"
    git branch
    git branch mv master gh-pages
    git branch -m master gh-pages
    git branch
    cat .git/config
    git submodule update
    cat .gitmodules
    cd dependencies/revealjs
    git fetch
    git log
    git lol
    cd ..
    cat .gitm
    cat ../.gitmodules
    cd plugins
    git fetch
    git lol
    cd ..
    git status
    cd ..
    git lol
    git push --prune
    vi .git/config
    git push --prune
    git push --delete origin gh-pages
    git push -u origin gh-pages
    git push -u origin master
    cd Documents/Presentations/d
    cd Documents/Presentations/discrete-math
    git branch
    git branch -a
    git push -u origin gh-pages
    git push --delete origin master
    git fetch
    git lol
    git push --delete origin master
    jekyll --server
    ll
    vi README.md
    subl README.md
    ll -a
    vi _config.yml
    vi index.md
    git add .
    git status
    git commit -m "Fixed up the README"
    git push
    cat README.md|pbcopy
    cat README.md
    ll
    vi Gemfile
    vi alt.md
    cd github/teach.github.com/classnotes
    cd ..
    subl .
    jekyll
    jekyll --server
    open classnotes
    git status
    git add classnotes/
    git commit -m "Removed leading blank line on WWC Boulder"
    git push
    dir.gradle2
    git remote
    git remote -v
    git fetch review
    git help rev-list
    git loglive
    git loglive -15
    which git-loglive
    cat /Users/tlberglund/scripts/git-loglive
    git branch feature
    vi raven.txt
    git add .
    git commit -m "Lost Lenore"
    git checkout feature
    cd files
    ll
    cd ..
    vi caesar.txt
    git add .
    git commit -m "Caesar rage"
    git checkout master
    git lol -10
    git checkout feature
    git rebase master
    git checkout master
    git merge feature
    git remote
    git help remote
    git remote show origin
    git branch -a
    tree .git/refs
    git branch -a
    cat .git/refs/remotes/origin/master
    cat .git/refs/heads/master
    git push
    git branch -d feature
    git fetch
    git log --format=raw -1
    vi .git/config
    git diff origin/master
    git diff HEAD..origin/master
    git merge origin/master
    cat .git/config
    git status
    git reset --hard HEAD^
    git status
    vi caesar.txt
    git add.
    git add .
    git commit -m "Ate at my side"
    git status
    git lol -5
    git push
    git pull
    git push
    tr.git
    cd scratch
    ll
    git clone https://github.com/githubstudent/poetry.git
    ll
    mv poetry prose
    ll
    cd prose
    git remote -v
    git branch -a
    git remote set-url origin https://github.com/githubstudent/prose.git
    git remote show origin
    vi .git/config
    vi caesar.txt
    git add .
    git commit -m "Monarch's voice"
    git push
    vi caesar.txt
    git add .
    git commit -m "Cry Havoc"
    git push
    git fetch
    git lol
    git status
    git pull
    git loglive -10
    git loglive -12
    git branch
    git pull https://github.com/githubstudent/prose.git master
    git status
    vi caesar.txt
    git add .
    git commit
    git push
    vi raven.txt
    git add .
    git commit -m "Buggy Raven"
    git push
    vi raven.txt
    git add .
    git commit -m "Nameless"
    git push
    git remote add root https://github.com/githubteacher/poetry.git
    git remote -v
    git fetch root
    git lol
    git rebase root/master
    git status
    vi raven.txt
    git lol
    git status
    git add raven.txt
    git rebase --continue
    git lol
    git push
    git push -f
    history
    git lol
    git ls-remote origin
    git fetch origin refs/pull/56/head
    cat .git/FETCH_HEAD
    git merge FETCH_HEAD
    git merge --abort
    git branch monkey FETCH_HEAD
    gitk --all
    git merge monkey
    vi caesar.txt
    git add .
    git status
    git commit
    git branch -d monkey
    git pull
    git push
    git fetch origin refs/pull/56/head
    git diff FETCH_HEAD
    git rev-parse FETCH_HEAD
    git checkout e418c5 -- caesar.txt
    vi caesar.txt
    git status
    git reset
    git status
    git checkout HEAD -- caesar.txt
    git status
    cat caesar.txt
    git checkout e418c5
    git status
    git branch
    cat .git/HEAD
    cd ..
    pwd
    ls
    git clone https://github.com/githubteacher/poetry.git
    cd qualcomm
    git remote -v
    git push
    git branch
    git checkout master
    git push
    git --version
    git help config
    git help gitcredentials
    git help config
    git help gitcredentials
    git config --global credential.helper cache
    git push
    git pull
    git push
    git loglive -8
    git push
    git pull
    git push
    vi caesar.txt
    git add .
    git commit -m "Carrion men"
    git push
    git pull && git push
    git pull
    git loglive -12
    git pull
    git loglive -10
    git pull
    git loglive -8
    git pull
    git loglive -9
    git pull
    gitk --all
    git pull
    git loglive -12
    git fetch
    gitk --all
    vi README.md
    git add .
    git commit -m "README\n"
    git fetch
    git loglive -8
    git status
    git pull --rebase
    git status
    vi README.md
    git add .
    git status
    git commit
    git rebase --continue
    git push
    git rebase --continue
    git pull --rebase
    git push
    git pull && git push
    vi README.md
    git add README.md
    git merge --abort
    git pull --rebase
    git status
    vi README
    vi README.md
    git add README.md
    git rebase --continue
    git push
    git pull --rebase && git push
    git lol
    git config --global branch.autosetuprebase always
    git config branch.master.rebase true
    cat .git/config
    vi raven.txt
    git add .
    git commit -m "Fantastic terrors"
    git pull && git push
    git loglive -15
    git loglive -12
    git loglive -13
    git fetch
    git loglive -18
    git fetch
    git pull
    git loglive -10
    git status
    git lol
    gitk --all
    git lol
    git fetch
    git lol
    git show f286176
    git loglive -15
    git branch 0a
    git branch -d 0a
    git pull --rebase
    git branch -a
    git branch tlberglund
    git checkout tlberglund
    vi raven.txt
    git add .
    git commit -m "Still beating"
    git push -u origin tlberglund
    cat .git/config
    git fetch
    gitk --all
    git fetch
    git diff origin/tjbobo
    git checkout tjbobo
    git branch
    git diff master
    vi optimusprime.txt
    git add .
    git commit -m "Jazz"
    git push
    git loglive -12
    git checkout master
    git merge tjbobo
    git pull
    git push
    git lol
    git push
    git pull
    git push
    git branch -d tjbobo
    git push origin :tjbobo
    git fetch
    git branch -a
    git pull
    git branch -a
    git fetch --prune
    git help config
    gitk --all
    git diff origin/bansai
    git diff origin/bansi
    git log origin/bansi --graph
    gitk --all
    git rev-parse origin/bansi
    git rev-parse origin/bansi^
    git lol
    git show fc0d250
    git show d6ceee3
    git cherry-pick fc0d250
    git status
    vi bansi
    git add bansi
    git status
    git commit
    git status
    git push
    git pull
    git push
    git status
    vi bansi
    git add bansi
    git status
    git commit
    git rebase --continue
    git status
    git rebase --skip
    git push
    git loglive -20
    git tag HUNTING_HART
    git tag MUSIC 6c4b
    git show MUSIC
    tree .git/refs
    cat .git/refs/tags/HUNTING_HART
    git tag -a SIGN 37a51
    tree .git/refs
    cat .git/refs/tags/SIGN
    git show SIGN
    cat .git/refs/tags/SIGN
    git cat-file -t 854882
    git cat-file -p 854882
    git tag -s CHERRY-PICK 05180b5
    git show CHERRY-PICK
    git push
    git push --tags
    open .git
    git push --tags
    git push --delete origin refs/tag/HUNTING_HART
    git push --delete origin refs/tags/HUNTING_HART
    git checkout SIGN
    git checkout master
    vi
    ls
    git status
    vi raven.txt
    git add .
    git commit -m "Still the beating"
    git reset --soft HEAD^
    git status
    vi ascetic.txt
    git status
    git stash --include-untracked
    ls
    cat raven.txt
    git branch -a
    git checkout ancientRime
    ll
    ls
    vi coleridge.txt
    git add .
    git commit -m "one of three"
    git checkout master
    git help stash
    git stash list
    git stash pop
    git status
    git add .
    git commit -m "Things\n"
    cd ..
    pwd
    l
    ls
    git init super-project
    git init file-api
    git init image-api
    cd file-api
    vi file.txt
    git add .
    git commit -m "version 1"
    vi file.txt
    git add .
    git commit -m "version 2"
    cd ../image-api
    vi image.txt
    git add .
    git commit -m "Version A'
    git commit -m "Version A"
    vi image.txt
    git add .
    git commit -m "Version B\n"
    cd ../file-api
    git remote add origin https://github.com/githubteacher/file-api.git
    git push -u origin master
    cd ../image-api
    git remote add origin https://github.com/githubteacher/image-api.git
    git push -u origin master
    cd ../super-project
    git remote add origin https://github.com/githubteacher/super-project.git
    vi README.me
    vi README.md
    git add .
    git commit -m "Added the README"
    git push -u origin master
    ls ..
    git help submodule
    git submodule add https://github.com/githubteacher/file-api.git file-api
    git submodule add https://github.com/githubteacher/image-api.git image-api
    ls
    pwd
    ls file-api
    ls image-api
    git status
    cat .gitmodules
    git commit -m "Added submodules"
    git push
    cd image-api
    git log
    pwd
    cd ..
    git log
    cd image-api
    git log
    git checkout e6abda4
    git log
    git log --decorate
    cd ...
    pwd
    cd super-project
    ls
    git status
    git add image-api
    git status
    git commit -m "Downgraded image API"
    git log --format=raw -1
    git cat-file -p f0454
    git show 6027bcc
    cd file-api
    git show 6027bcc
    git log
    pwd
    cd ..
    cd file-api
    vi file.txt
    git add .
    git commit -m "version 3"
    git push
    cd ../super-project
    cd file-api
    git fetch
    git log
    git log --all
    git checkout 5f537019
    cd ..
    git status
    git add file-api
    git commit -m "Upgraded file API"
    git push
    pwd
    cd image-api
    pwd | pbcopy
    git remote add local file:///Users/tlberglund/Documents/Training/Git/scratch/super-project/image-api
    git remote add local file:///Users/tlberglund/Documents/Training/Git/scratch/image-api
    git remote rm local
    git remote add local file:///Users/tlberglund/Documents/Training/Git/scratch/image-api
    git fetch local
    cd ../file-api
    pwd
    cd ../image-api
    vi image.txt
    git add .
    git commit -m "C"
    pwd
    cd ../../image-api
    vi image.txt
    git add .
    git commit -m "C"
    cd ../super-project/image-api
    git log
    git lol
    git reset --hard master
    git lol
    git fetch local
    git lol
    git checkout 5c09e
    cat image.txt
    git remote -v
    vi image.txt
    git add .
    git commit -m "I know better"
    git push local monkey
    git branch monkey
    git push local monkey
    cd ..
    pwd
    cd ..
    git clone https://github.com/githubteacher/super-project.git sp-1
    cd sp-1
    ls
    cd file-api
    ls
    cd ../image-api
    ls
    cd ..
    git submodule init
    git submodule update
    cd ..
    ls
    git clone --recurse-submodules https://github.com/githubteacher/super-project.git sp-1
    git clone --recurse-submodules https://github.com/githubteacher/super-project.git sp-2
    pwd
    cd qualcomm
    git lol
    git show 37a5108
    git lol
    git show 2666a70
    git revert 2666a70
    git lol
    git revert cba98e8
    git status



