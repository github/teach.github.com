---
layout: bare
title: Advanced Git Class
description: Advanced Git Class Class Notes
tags: [notes]
path: classnotes/2013-04-22-advanced-git-class.md
eventdate: 2013-04-22
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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline
* Commit Data Structure Internals
* Porcelain and Plumbing (and software design)
* Undoing and Re-doing Almost Anything
* Reusing Small Pieces of Code
  * cherry-pick
* Merge vs Rebase
* Advanced Interactive Rebase
* Building Custom Commands via Aliases
* Tags (signed!)
* Refspecs
* Branch Fetch/Pull Options (refspecs)
* GitHub API
* Common Branching Strategies
* Applying Branching Strategies
* Branching Models


## Command History

    echo "It is an ancient mariner\nAnd he stoppeth one of three"
    echo "It is an ancient mariner\nAnd he stoppeth one of three" | git hash-object
    git help hash-object
    echo "It is an ancient mariner\nAnd he stoppeth one of three" | git hash-object -w --stdin
    git cat-file -p 59caa7bd8cdaedee1a4d645d72ea19fab400f06f
    git cat-file -s 59caa7bd8cdaedee1a4d645d72ea19fab400f06f
    git cat-file -t 59caa7bd8cdaedee1a4d645d72ea19fab400f06f
    git status
    git update-index --add --cacheinfo 100644 59caa7bd8cdaedee1a4d645d72ea19fab400f06f mariner.txt
    git status
    git diff --staged
    git help write-tree
    git write-tree
    git cat-file -t fa6eb1e8bf170bf41cdc4a5240daf72c27a6717f
    git cat-file -p fa6eb1e8bf170bf41cdc4a5240daf72c27a6717f
    git cat-file -p 59caa7bd8cdaedee1a4d645d72ea19fab400f06f
    git commit-tree fa6eb1e8bf170bf41cdc4a5240daf72c27a6717f -m "Hipster commit"
    git cat-file -p f25d17bc2c82ce540b92175da7ae9a54da40fa64
    ls
    git status
    cat-file -p 59ca
    git cat-file -p 59ca
    echo f25d17bc2c82ce540b92175da7ae9a54da40fa64 > .git/refs/heads/master
    cat .git/refs/heads/master
    git status
    git log
    git log --patch
    ls
    git status
    git checkout -- mariner.txt
    ls
    cat mariner.txt
    git status
    vi mariner.txt
    git status
    git add .
    git status
    git commit -m "Graybeard"
    cat .git/objects/07/98fea8a3d8f157ebafafdd39689e52826e59ae
    cd ..
    git init advanced
    cd advanced
    vi raven.txt
    git add .
    git status
    git commit -m "Initial commit"
    cd advanced
    git loglive
    cat ~/scripts/git-loglive
    vi raven.txt
    git add .
    git commit -m "Eagerly wished"
    git checkout -b feature
    git branch
    tree .git/refs
    cat .git/refs/heads/feature
    vi raven.txt
    git add .
    git commit -m "Midnight dreary"
    git lol
    git checkout master
    vi raven.txt
    git add .
    git commit -m "Surcease of sorrow"
    git merge feature
    cat raven.txt
    git help reset
    git reset --hard b7099ee
    cat raven.txt
    git reflog
    git lol
    git log --oneline
    git reset --hard 0281b80
    git reset --hard b7099ee
    git checkout feature
    vi raven.txt
    git status
    git diff
    git commit -m "Quaint lore"
    git add .
    git commit -m "Quaint lore"
    vi raven.txt
    git add .
    git commit -m 'Scary drapes'
    vi raven.txt
    git add .
    git commit -m "Nearly napping"
    git checkout master
    git merge feature
    vi raven.txt
    git blame raven.txt
    git show e504b292
    git revert e504
    git show 34f3
    vi raven.txt
    git add .
    git commit -m "I <3 bugs"
    git ls-tree e504
    git ls-tree HEAD
    git reset --hard HEAD^
    git revert HEAD
    cat raven.txt
    git reflog
    git reset --hard HEAD@{5}
    git reflog
    git branch adopted 7d994a4
    git branch -d adopted
    git branch -D adopted
    ls
    vi README.md
    vi mariner.
    vi mariner.txt
    git ad
    git add .
    git commit -m "Ancient Mariner"
    git lol
    git checkout feature
    git rebase master
    git branch old-feature 8ace2e5
    git show 1e32
    git show e5a0
    git branch -D old-feature
    git reflog
    git reset --hard HEAD@{6}
    git show b7099
    git rebase -i feature^4
    git rebase -i HEAD~
    git rebase -i feature~4
    ls
    git status
    vi raven.txt
    git add .
    git rebase --continue
    git status
    vi raven.txt
    git blame raven.txt
    vi raven.txt
    git status
    git add raven.txt
    git status
    git rebase --continue
    git rebase master
    git checkout master
    git merge feature
    git reflog
    git reset --hard HEAD@{1}
    git checkout feature
    git reflot
    git reflog
    git reset --hard HEAD@{10}
    git checkout master
    git show d3df
    git cherry-pick d3df9a5
    vi raven.txt
    git merge --squash feature
    git status
    vi raven.txt
    git add raven.txt
    git commit
    git reflog
    git reset --hard HEAD@{2}
    git lol
    vi ~/.gitconfig
    git lol
    git log --oneline --decorate --graph --all
    git config --global alias.lol "log --oneline --decoroate --graph --all"
    gitlol
    git lol
    git config --global alias.lol "log --oneline --decorate --graph --all"
    git lol
    git merge feature
    git reset --hard HEAD^
    git checkout feature
    git lol
    git rebase master
    git checkout master
    git merge feature
    git rebase -i HEAD~5
    vi raven.txt
    git add .
    git continue --rebase
    git rebase --continue
    vi raven.txt
    git add .
    git rebase --continue
    git branch -D feature
    git rebase -i HEAD~3
    git tag MIDNIGHT 9d62
    tree .git/refs
    cat .git/refs/tags/MIDNIGHT
    git -a MARINER bcdd42
    git tag -a MARINER bcdd42
    tree .git/refs
    cat .git/refs/tags/MIDNIGHT
    cat .git/refs/tags/MARINER
    git show MIDNIGHT
    git show MARINER
    git cat-file -p `cat .git/refs/tags/MARINER`
    tree .git/objects
    git cat-file -p `cat .git/refs/tags/MARINER`
    git tag -s SURCEASE
    tree .git/objects
    tree .git/refs
    git show SURCEASE
    git config --global --list
    git remote add origin https://github.com/githubteacher/advanced.git
    git push -u origin master
    git branch -a
    git fetch
    git help ls-remote
    git ls-remote
    tree .git/refs
    git fetch origin refs/pull/1/head
    git show FETCH_HEAD
    git merge FETCH_HEAD
    git reset --hard HEAD^
    vi .git/config
    tree .git/refs
    git fetch
    tree .git/refs
    vi .git/config
    git fetch
    tree .git/refs
    git merge refs/pull/origin/1/head
    git push
    git push --tags
    tree .git/refs
    git help update-ref
    git config --global tag
    ll
    vi raven.txt
    git merge origin/feature2
    vi raven.txt
    git push
    vi .git/config
    rm -rf .git/refs/pull
    git pull
    git reflog
    git reset --hard HEAD@{1}
    git pull --rebase
    git config --global branch.autosetuprebase always
    git config branch.master.rebase true
    vi raven.txt
    git add .
    git commit -m "Nameless"
    git push
    git pull
    git push
    curl -i https://api.github.com/users/octocat/orgs
    curl -i https://api.github.com/users/octocat
    curl -i https://api.github.com/users/tlberglund
    wget https://secure.gravatar.com/avatar/ddf2d42eac63eb87e1542fc218dbfc86\?d\=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png
    open ddf2d42eac63eb87e1542fc218dbfc86\?d=https:%2F%2Fa248.e.akamai.net%2Fassets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420

