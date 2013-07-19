---
layout: bare
title: QCon NYC 2013 Advanced Git
description: QCon NYC 2013 Advanced Git Class Notes
tags: [notes, conference, workshop]
path: classnotes/2013-06-10-qcon-nyc-2013-advanced-git.md
eventdate: 2013-06-10
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

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

* Common Git Mistakes
  * Mispelling commit messages
  * Committing too often
  * Committing the wrong thing
  * Pushing a bad commit (revert)
* Deep structure of commits
* Rewriting commits
  * Merging
  * Reset
  * Rebase
  * Cherry-pick
* Migrating
  * From SVN, big binaries
  * filter-branch
* Workflows
  * (Living together in peace and harmony with people)
  * Trusted/untrusted collaborators
  * Maintenance/new dev
  * Dos and don'ts on release management
  * CI servers
  * Automerging
  * Stash
* Working together on the same branch
* Success stories/advocacy


## Command History

    git branch
    git branch feature
    cat RE
    cat README.txt
    git mv README.txt README.md
    git status
    vi README.md
    git status
    git add .
    git status
    git commit -m "Update the README"
    git lol -5
    git log
    git log --format=raw
    git log --stat
    git log --graph
    git log --graph --oneline
    git log --graph --oneline --decorate
    git log --graph --oneline --decorate --all
    git config --global alias.lol "log --graph --oneline --decorate --all"
    git lol -5
    git lol -10
    git log -1
    ll .git
    git checkout feature
    git branch
    git status
    git loglive
    which git-loglive
    cat /Users/tlberglund/scripts/git-loglive
    git help --all
    mkdir files
    cd files
    pwd
    generaterandomfiles 10 random txt
    ll
    rm random*
    generaterandomchanges 10 random txt
    git loglive -15
    git loglive -20
    git rebase -i 52e5784
    git loglive -15
    ls
    git reflog
    git reset --hard 3d19
    ls
    git lol -12
    git reset --hard HEAD@{1}
    git reflog
    git reset --hard 3d19e57
    git reset --soft 52e5784
    ls
    git status
    git reset --mixed HEAD random6.txt
    git reset HEAD random6.txt
    git status
    rm random6.txt
    git status
    git commit -m 'Random 1-5,7-10'
    git lol -5
    git checkout master
    git merge feature
    cd ..
    pwd
    git merge feature
    git lol
    git lol -6
    git reflog
    git reset --hard 1288147
    git checkout feature
    git lol -5
    git rebase master
    git checkout master
    git merge feature
    vi ra
    vi raven.txt
    git status
    git add .
    git commit -m "Nameless"
    vi README.md
    git add .
    git status
    git commit --amend
    git log --stat -1
    git commit --amend
    git reflog
    git show ed7c627
    git show ed7c627:raven.txt
    git show origin/master:raven.txt
    git remote -v
    git push
    git checkout master
    git pull
    git remote -v
    git log
    git log -1
    git branch tlberglund
    git branch
    git checkout tlberglund
    git remote add matthew https://github.com/githubstudent/hellogitworld.git
    git fetch matthew
    git lol matthew/matthewmccullough -5
    git cherry-pick e88855e
    git show e888
    git fetch https://github.com/vladistan/hellogitworld.git vladistan
    git checkout master
    git lol FETCH_HEAD -5
    git rev-parse FETCH_HEAD
    git merge FETCH_HEAD
    git push
    git push origin
    git show b61e8dd
    git revert b61e8dd
    git show 6066
    git show b61e8dd
    git push
    git merge tlberglund
    git push
    git fetch https://github.com/LiveLoud/hellogitworld.git sandro
    git merge --no-commit FETCH_HEAD
    git status
    git merge --abort
    git merge --squash FETCH_HEAD
    git status
    git diff --staged
    git merge --abort
    git reset
    git status
    rm file.1
    git fetch https://github.com/kiiadi/hellogitworld.git kylethomson
    git lol FETCH_HEAD _5
    git lol FETCH_HEAD -5
    git merge --squash FETCH_HEAD
    git status
    git diff --staged -- pom.xml
    git status
    git diff --staged -- kyle.txt
    git status
    git diff --staged -- herro.txt
    git reset kyle.txt
    git status
    vi raven.txt
    git status
    git add raven.txt
    git status
    git commit -m "Merged Kyle's stuff"
    git status
    git checkout HEAD -- kyle.txt
    git status
    cd  ..
    pwd
    ls
    git svn clone https://github.com/githubteacher/hellogitworld/ hgw-svn
    cd hgw-svn
    ls
    cd ..
    rm -rf hgw-svn
    git svn clone https://github.com/githubteacher/hellogitworld/trunk hgw-svn
    cd hgw-svn
    ll
    ls
    vi raven.txt
    git add .
    git commit -m "Silky sad"
    git svn dcommit
    git svn rebase
    git svn dcommit
    git loglive -15
    git loglive -10
    git remote 0v
    git remote -v
    cd ../hellogitworld
    git remote -v
    git config credential.helper cache
    vi raven.txt
    git merge tlberglund
    vi raven.txt
    git add .
    git commit -m "Silky sad"
    git push
    vi raven.txt
    git add .
    git commit -m "Fantastic terrors"
    git push
    vi raven.txt
    git add .
    git commit -m "Still beating"
    git fetch
    git push
    git pull
    git push
    git fetch
    git config branch.master.rebase true
    git config --global branch.autosetuprebase always
    vi raven.txt
    git add .
    git commit -m "Some visitor"
    git fetch
    git pull
    git push
    git pull
    git push
    vi raven.txt
    git add .
    git commit -m "Only this"
    git push
    git pull
    git push
    git pull
    git push
    cd .git/hooks
    ll
    pwd
    cd ..
    ll
    pwd
    git status
    git branch
    git checkout tlberglund
    vi caesar.
    vi caesar.txt
    git add .
    git commit -m "Bleeding earth"
    vi caesar.txt
    git status
    git stash
    git status
    cat caesar.txt
    git checkout master
    vi README.md
    git add .
    git commit -m 'srsly'
    git checkout tlberglund
    git stash pop
    vi caesar.txt
    git add .
    git commit -m "Butchers"

