---
layout: bare
title: EJUG Git Presentation
description: EJUG Git Presentation Class Notes
tags: [notes, jug, public]
path: classnotes/2013-05-21-ejug-git-presentation.md
eventdate: 2013-05-21
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

* Basic Git Concepts
  * What a repo is made out of
  * How to commit code
  * Cool ways of looking at the log
  * Distributed VCS concepts
  * Branching/merging
* Network
  * Push a repo to GitHüb
  * All of the Git repos at once
* Interesting GitHub topics
  * Web site with gh-pages
    * Octopress
  * Track issues
  * Gist
* Other things
  * Bundle
* Graphical Clients
  * GHfM
  * GHfW


## Command History

    git init ejug
    ls
    ll
    cd ejug
    ll
    ll -a
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    ls
    git commit -m "Initial commit"
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Noblest man"
    git status
    git log
    git help log
    git log --pretty=email --patch
    git --format=raw
    git log --format=raw
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --format=oneline
    git log --graph --decorate --format=oneline --abbrev-commit
    git log --graph --decorate --format=oneline --abbrev-commit --all
    git lol
    git config alias.lol
    git config --global alias.s "status -u"
    git s
    git lol
    git branch feature
    git lol
    vi caesar.txt
    git add caesar.txt
    git commit -m "Costly blood"
    git lol
    git checkout feature
    git lol
    git branch
    git s
    vi caesar.txt
    git add .
    git status
    git s
    git commit -m "Title"
    git lol
    git checkout master
    git lol
    cat caesar.txt
    git merge feature
    git lol
    git branch -d feature
    git lol
    git branch feature2
    git checkout feature2
    vi caesar.txt
    git add .
    git commit -m "Ruby lips"
    vi caesar.txt
    git add .
    git commit -m "Utterance"
    git lol
    git lol --patch
    git checkout
    vi README.md
    git add .
    git commit -m "Added README"
    git lol
    git checkout master
    git lol
    git cherry-pick 968e80c
    git lol
    git checkout feature2
    git lol
    git reset --hard HEAD^
    git lol
    git reflog
    git checkout master
    git lol
    git merge --squash feature2
    git status
    git diff --staged
    git commit -m "Dumb mouths"
    git lol
    git branch -D feature2
    git lol
    git log --format=raw 1
    git log --format=raw -1
    git remote add origin https://github.com/githubteacher/ejug-vienna.git
    git remote
    git remote -v
    git lol
    git push -u origin master
    git config --global credential.helper cache
    git lol
    git branch -a
    git fetch
    git lol
    ls
    git diff origin/feature3
    git lol
    git merge origin/feature3
    git lol
    git fetch
    git lol
    git push
    git lol
    git push --delete origin feature3
    git push origin :feature3
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git push
    git fetch
    git lol
    git pull
    git lol
    git push
    git lol
    git branch -a
    git remove -
    git remote -v
    vi .git/config
    cd ..
    git clone https://github.com/githubteacher/ejug-vienna.git
    cd ejug
    cd ../ejug-vienna
    ll
    git lol
    git branch -a
    git fetch
    git branch -a
    git fetch
    git branch -a
    cd ../ejug
    git fetch
    git lol
    git lol gh-pages --stat
    git lol --stat
    ls
    git checkout gh-pages
    ll
    subl .
    git status
    git add .
    git commit -m "Updated site"
    git checkout master
    git push
    git checkout gh-pages
    git push
    git checkout master
    git lol --stat
    gitk --all
    echo "timberglund.com" > CNAME
    ll
    rm CNAME
    cd Documents/Presentations/discrete-math/code/src/discrete
    ll
    cat core.clj|pbcopy
    cd ..
    git clone https://gist.github.com/5622227.git



