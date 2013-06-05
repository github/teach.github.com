---
layout: bare
title: Private Git Class
description: Private Git Class Class Notes
tags: [notes, class, workshop]
path: classnotes/2013-04-01-private-git-class.md
eventdate: 2013-04-01
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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
* [Git Reset Demystified](http://git-scm.com/2011/07/11/reset.html)
* [Always Accept Changes Per File on Merge](http://stackoverflow.com/questions/928646/how-do-i-tell-git-to-always-select-my-local-version-for-conflicted-merges-on-a-s)

## Command History Day 1

     git --version
     git config --global user.name
     git config --global user.name "Brent Beer"
     git config --global user.name
     git config --global user.name "Brent Beer2"
     git config --global user.name
     git config --global user.name "Brent Beer"
     git config --global user.email
     git config --global user.email "brentbeer@github.com"
     git config --global color.ui auto
     git config --global core.autocrlf input
     git config --global --list
     git init newproject
     cd newproject/
     ls 
     ls -a
     ls .git/
     git config --local --list
     cat .git/config 
     git config --list
     git config --system user.name "GitHub Teacher"
     git config --list
     git config --local
     git config --local --list
     git config --system --unset user.name "GitHub Teacher"
     git config --list
     git status
     touch first.txt
     git status
     vim first.txt 
     git status
     git add first.txt
     git status
     git status
     git commit -m"first commit"
     git status
     vim first.txt 
     git status
     git add first.txt
     git status
     git status
     git commit -m"changed the last line, to be like previous"
     vim first.txt 
     git status
     git diff
     git help diff
     git diff -U5
     git status
     git add first.txt
     git status
     git diff
     git diff --staged
     git status
     vim first.txt 
     git status
     git diff
     git diff --cached
     git diff --staged
     git diff HEAD
     git status
     vim first
     vim first.txt 
     git diff HEAD
     git status
     git diff --staged
     git commit -m"specified it as last line"
     git status
     git diff
     git diff HEAD
     git add first.txt
     git status
     git commit -m "middle line for more diffing"
     git status
     git log
     git log --format=full
     git log --format=email
     git log --format=email
     git log --format=fuller
     git log --format=fuller -4000
     git log --format=fuller -1
     git log  -1
     git log  -1 --patch
     git log  -2 --patch
     git show d759abe
     git log -3 -p
     git log -3 --stat
     git log --stat
     git log -1 -p --color-words
     git log -1 -p --word-diff
     git log -2 -p --word-diff
     git log -S=middle
     git log -S="middle"
     git log -1 -p
     git log -S="third"
     git log -G="third"
     git log -S="third" -p
     git log -S="This is the middle line."
     git log -S="This is the middle line." -p
     git help log
     git log -G="This is the middle line." -p
     git log -S "middle"
     git log -S "first"
     git log -S "first" -p
     git log -G "middle" -p
     git log -G "first" -p
     git log
     git log 509a5a
     git show 509a5a
     git log -G "3rd"
     git help log
     git log -p
     git log -p -1
     vim first.txt 
     git help add
     git status
     git diff
     git diff --color-words
     git diff --word-diff
     git diff
     git checkout first.txt
     git status
     git help gitattributes
     vim second.txt
     git status
     git add second.txt
     git status
     git commit -m "preparing for a deletion"
     ls
     ls
     git status
     git rm second.txt
     git status
     git diff --staged
     git status
     git reset HEAD second.txt
     git status
     git checkout -- second.txt
     git status
     ls
     rm second.txt 
     git status
     git help add
     git help add
     git add -u 
     git status
     git commit -m "this file was worthless"
     ls
     chmod 755 first.txt 
     git status
     git diff
     git checkout 
     git checkout first.txt
     ls
     git status
     ls
     vim development.log
     git status
     git add development.log
     git commit -m "setup for moving"
     git status
     ls
     mkdir build
     mv development.log build/
     git status
     git status -u
     mkdir test1`
     mkdir test1
     mkdir test2
     mkdir test3
     git status
     ls -p
     git status
     git status -u
     git add -A .
     git status
     git commit -m"logs belong in the build directory"
     ls -la /Users/brntbeer/
     ls -la /Users/brntbeer/ > home_dir_listing.txt
     git status
     git add .
     git status
     git commit -m "home dir listing added for similarity example"
     git status
     git mv home_dir_listing.txt build/
     git status
     vim build/home_dir_listing.txt 
     git status
     git add build/
     git status
     git add -A --  build/ 
     git status
     git reset HEAD build/home_dir_listing.txt
     git status
     rm build/home_dir_listing.txt 
     git reset HEAD home_dir_listing.txt
     git status
     git checkout -- home_dir_listing.txt
     git status
     git mv home_dir_listing.txt build/
     vim build/
     git status
     git add -A build/home_dir_listing.txt
     git status
     git commit -m "moved home_dir to build, and made changes"
     git log -M40 -1
     git log -M40 -1 -p
     git log -M40 -1 --stat
     mv build/home_dir_listing.txt .
     ls
     git status
     vim home
     git status
     git add -A .
     git status
     git diff --staged
     git diff --staged -M60
     git status
     git commit -m "moved back to higher level"
     git log -1 -M98
     git log -1 -M98 --stat
     git log -1 -M60 --stat
     git help diff
     git log -1 -M60
     git log -1 -M60 -p
     git help diff
     git log -C -C
     git log -C -C --stat
     git branch
     git branch feature1
     git status
     git branch
     git checkout feature1
     git branch
     ls
     git log -1
     git log
     git show HEAD
     git branch
     ls
     vim test-feature1.cpp
     git status
     git add test-feature1.cpp
     git status
     git commit -m 'begin test file for branching purposes'
     git status
     git checkout master
     git checkout -
     git checkout -
     git checkout -
     git checkout -
     ls
     git diff master..feature1
     git diff master...feature1
     git log master..feature1
     git log master..feature1
     git log master..feature1 -p
     git log master..feature1 --stat
     git branch
     git branch feature3
     git branch feature1000
     git branch feature14
     git branch testbranch
     git branch brentbeer
     git branch deleteme
     git branch
     cat .git/refs/heads/brentbeer 
     cat .git/refs/heads/feature1
     cat .git/refs/heads/master
     git log -2 --format=raw
     git branch
     ls .git/refs/
     ls .git
     cat .git/HEAD
     git checkout feature1
     cat .git/HEAD
     cat .git/refs/heads/feature1
     git log -1 --oneline
     git branch -f testbranch
     git branch -d testbranch
     git branch -d deleteme
     git branch
     git checkout feature3 
     generaterandomchanges 5 test txt
     git checkout master
     git branch -d feature3 
     git log master...feature3 --stat
     git branch -d feature3 
     git branch -D feature3
     git checkout feature1
     git branch testbranching
     git checkout testbranching
     git log -1 --oneline
     generaterandomchanges 1 readme md
     git log --oneline
     git log --oneline --decorate
     git branch -d feature1
     git log --oneline --decorate
     git log --oneline --decorate --graph --all
     git checkout master
     generaterandomchanges 1 master txt
     git log --oneline --decorate --graph --all
     git checkout testbranching
     git branch keep-branch
     git checkout master
     git log --oneline --decorate --graph --all
     git branch -d testbranching 
     git branch -D testbranching 
     git log --oneline --decorate --graph --all
     git branch longago 6d555b8
     git log --oneline --decorate --graph --all
     git checkout aa92177
     git log --oneline --decorate --graph --all
     generaterandomchanges 1 nobranch txt
     git log --oneline --decorate --graph --all
     git checkout 8d54ea4
     git log --oneline --decorate --graph --all
     git branch 
     generaterandomchanges 5 test txt
     git log --oneline --decorate --graph --all

# Command History Day 2

    git log
    git branch
    git log --oneline --graph --all --decorate
    git branch feature-test
    git checkout feature-test
    vim build/development.log 
    git diff
    git add .
    git status
    git diff --staged
    git commit -m "added some new user data for log to test merging"
    git status
    generaterandomchanges 1 feature-test m
    git checkout master
    git diff master..feature-test
    git log master..feature-test
    git log master..feature-test -p
    git log master..feature-test --stat
    git log --oneline --graph --all --decorate
    git merge feature-test
    git log --oneline --graph --all --decorate
    git branch -d feature-test
    git branch feature-recursive-merge-branch
    git checkout feature-recursive-merge-branch 
    ls
    vim second.txt
    git status
    git add second.txt
    git commit -m 
    git commit -m "added second.txt for recursive merge"
    git checkout master
    generaterandomchanges 3 master-only-recurisve txt
    git log --oneline --graph --all --decorate
    git diff master..feature-recursive-merge-branch 
    git diff master...feature-recursive-merge-branch 
    git merge feature-recursive-merge-branch 
    git branch -d feature-recursive-merge-branch 
    git branch merge-conflict-prep
    git checkout merge-conflict-prep 
    vim first.txt 
    git add first.txt
    git commit -m "added word into last line to cause conflict with master"
    git status
    git checkout master
    vim first.txt 
    git commit -m "removed last line"
    git add first.txt
    git commit -m "removed last line"
    git merge merge-conflict-prep
    git status
    vim first.txt 
    git status
    git add first.txt
    git commit
    git status
    git branch -d merge-conflict-prep
    git log --oneline --graph --all --decorate
    git branch reset-soft
    git checkout reset-soft 
    generaterandomchanges 5 reset-soft h
    git log --oneline --graph --all --decorate
    git reset --soft HEAD~2
    git status
    git commit -m "resetted the past two commits to staging area and combined them as 1 commit"
    git log --oneline --graph --all --decorate
    generaterandomchanges 3 reset-mixed-or-default m
    git log --oneline --graph --all --decorate -10
    git reset HEAD~2
    git status
    vim reset-mixed-or-default2.m 
    git status
    git commit -am "mixed reset put things in staging area and i continued edits"
    git add .
    git commit -m "mixed reset put things in staging area and i continued edits"
    git log --oneline --graph --all --decorate -10
    git checkout master
    git branch reset-hard-lose-it-all
    git checkout reset-hard-lose-it-all 
    generaterandomchanges 5 reset-hard txt
    git log --oneline --graph --all --decorate -10
    git log --oneline --graph --all --decorate -20
    git checkout reset-soft
    git reset --hard master
    git checkout reset-hard-lose-it-all 
    git log --oneline --graph --all --decorate -20
    git branch -d reset-soft
    git status
    git log --oneline --graph --all --decorate -20
    git reset --hard HEAD~2
    git status
    git log --oneline --graph --all --decorate -10
    git checkout master
    generaterandomchanges 3 master-reset-demo txt
    git status
    ls
    git log --oneline --graph --all --decorate -10
    git merge reset-hard-lose-it-all 
    git status
    git log --oneline --graph --all --decorate -10
    git log --oneline
    git reset --hard HEAD ~2
    git reset --hard HEAD~2
    git log --oneline --graph --all --decorate -10
    git log --oneline
    git status
    git remote add origin https://github.com/brntbeer/newproject.git
    git push -u origin master
    git branch test-pr
    git checkout test-pr
    generaterandomchanges 4 test txt
    git push -u origin test-pr
    git fetch
    git status
    git checkout master
    git status
    git merge origin/master
    git status
    git log --oneline --graph --all --decorate -10
    git branch -d test-pr
    git fetch
    git prune origin
    git prune remote
    git origin prune
    git remote prune
    git remote prune origin
    git log --oneline --graph --all --decorate -10
    cd ..
    cd base_repo/
    ls
    rm private_api_module/
    git remote -v
    git remote rm origin
    git remote add origin https://github.com/githubteacher/base_repo.git
    git status
    ls
    rm -rf private_api_module/
    rm -rf public_api_module/
    git status
    git log
    git reset --hard 45e8bed8973aeea88d26
    git status
    ls
    git status
    git push -u origin master
    cd ..
    ls
    mkdir private_api_module/
    mkdir public_api_module/
    cd private_api_module/
    git log
    git reset --hard 86572875ff6
    git status
    git remote rm origin
    git remote add origin https://github.com/githubteacher/private_api_module.git
    git push -u origin master
    cd ..
    cd public_api_module/
    git log
    git remote rm origin
    git reset --hard 4da28276
    git status
    git remote add origin https://github.com/githubteacher/public_api_module.git
    git push -u origin master
    generaterandomchanges 5 public-api m
    cd ../private_api_module/
    generaterandomchanges 5 private-api h
    git status
    cd ../base_repo/
    git submodule add https://github.com/githubteacher/public_api_module.git
    git submodule add https://github.com/githubteacher/private_api_module.git
    git status
    git commit -m "initialized submodules"
    cd private_api_module/
    git log
    cd ..
    cd public_api_module/
    git log --oneline
    cd ..
    cd ../private_api_module/
    cd ../base_repo/
    ls
    git status
    git push origin master
    cd ../public_api_module/
    git status
    git push origin master
    cd ..
    cd private_api_module/
    git push origin master
    cd ..
    cd base_repo/
    git fetch
    cd private_api_module/
    git fetch
    git status
    git merge origin/master
    git status
    git log
    git push origin master
    cd ..
    ls
    git status
    git commit -am "updated submodule from grabbing it manually"
    git status
    git push origin master
