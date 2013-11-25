---
layout: bare
title: Git and GitHub Intro at Stanford
description: Git and GitHub Intro given to Stanford
tags: [notes, talks, workshop]
path: classnotes/2013-11-14-stanford-git-and-github-intro.md 
eventdate: 2013-11-14
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Resources

* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [Using Git with Media Temple](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.10 but can have issues with HTTPS credential prompting.
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
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline

### Fork and Clone
* Have a project to work on
* [Example Basic](https://github.com/githubteacher/example-basic)

### Config
* `git config --global user.name "GitHub Student"`
* `git config --global user.email "training+githubstudents@github.com"`
* `git config --global color.ui auto`

### Branching
* Before working, create a branch.
* This makes it easier to throw away our work and make sure master is thought of as the "good point of the code"
* Helps for pull requests later too
* Experimentation of features, can later easily throw away

### Add and Commit
* `git add -- <filename>`
* `git commit -m 'first commit of why im making this change'`
* This is similar to a shopping cart.  
  We have our list of items to buy (working directory changes), and when we find them in the store, 
  we add them to the cart. When we're leaving the store, we go to the register with our items (commit).

### Diff
* [GitHub Foundations slides](http://teach.github.com/presentations/git-foundations.html#/7/1)
* Make a change, view it in diff
* Add it, view it in diff.

### Log
* Review older things, see the differences between branches
* `git log master..feature1` What is on feature1 that isn't on master
* You may also think of `git log origin/master..master`. What do I have locally that isn't upstream.  
    This would only work most accurately after a fetch, origin/master is a branch that's used to track the upstream

### Push / Pull Request
* Send the pull request
* Go to `your fork > pull requests > new pull request > recently pushed branches` OR edit the dropdowns on that page.

### Merging
* Often, because I do `git fetch origin` instead of `git pull origin` I manually have to follow up with a `git merge origin/master`
* This can mean conflicts, these conflicts would happen if we did a pull anyway
* Merges just update your code, something something
* `git merge --abort` to get out of things.
* Manually resolve is the way I do it, it's helpful to do this first to understand the syntax.

### Reset
* soft, mixed, hard
* mixed just basically moves things to the working area

### Reflog
* Has your back
* Records any changes that ever happen to the HEAD file (commits, resets, rebases, checkouts, etc)
* Play with `git reset --hard` and see how reflog gets you back to safety
* The reflog itself last 90 days
* The references to hashes that may have been reset and deleted in the last 30 days

### Stash
* Quick saves, shouldn't last longer than 15 minutes.
* `git stash save <keyword>`
* `git stash apply`
* `git stash pop`

## Command Line History

    git --version
    git clone https://github.com/githubstudent/example-basic
    cd example-basic/
    git status
    ls -a
    git config --local user.name "GitHub Student"
    git config --local user.email "training+githubstudents@github.com"
    git config --list
    git config --local --list
    git config --local color.ui auto
    ls
    git checkout -b brent-markdown-files
    ls
    vim brentbeer.md
    git status
    git status
    git add brentbeer.md
    git status
    git commit -m 'wanting to introduce myself to class'
    git branch test1
    git branch test2
    git branch test3
    git checkout test1
    git checkout test2
    git checkout brent-markdown-files 
    vim brentbeer.md 
    git status
    git push -u origin brent-markdown-files
    cd .git/
    ks
    ls
    cd refs/heads/
    ls
    cat brent-markdown-files
    ls
    cd ../..
    cd ..
    ls
    git checkout master
    ls
    git checkout -
    ls
    ls
    git status
    vim brentbeer.md 
    git status
    git diff
    git status
    git add brentbeer.md
    git diff
    git status
    git diff --staged
    vim brentbeer.md 
    git status
    git diff
    git diff --staged
    git diff HEAD
    git status
    git add brentbeer.md
    git status
    git commit -m "add hometown information"
    git status
    git push -u origin brent-markdown-files 
    git remote add teacher https://github.com/githubteacher/example-basic
    git remote -v
    git fetch teacher
    git fetch teacher
    git fetch teacher
    git branch
    git branch -r
    git branch -a
    git branch -a
    git checkout master
    git status
    ls
    git merge teacher/master
    ls
    git status
    git status
    git log origin/master..master --decorate --oneline
    git log --graph --oneline --decorate --all
    git log --graph --oneline --decorate --all --no-merges
    git status
    git status
    git push origin master
    git fetch
    git fetch teacher
    git fetch teacher
    git status
    git log master..teacher/master --decorate --oneline
    git fetch
    git merge teacher/master
    git push origin master
    git push origin master
    git status
    git checkout -b conflict-generate
    vim r
    rm r
    ls
    git status
    vim README.md 
    git status
    git diff
    git commit -am "change markdown syntax"
    git status
    git checkout master
    vim README.md 
    git status
    git commit -am "more readme fixes"
    git log master..conflict-generate 
    git log master..conflict-generate --patch
    git merge conflict-generate 
    git status
    vim README.md 
    git status
    git add README.md
    git commit
    git status
    git push origin master
    git checkout conflict-generate 
    git merge master
    git status
    vim README.md 
    git commit -am "change author flag"
    git checkout master
    vim README.md 
    git status
    git commit -am "change the wording of last line"
    git merge conflict-generate 
    git diff
    git diff
    git merge --abort
    git status
    git log master..conflict-generate --patch
    git diff master..conflict-generate 
    git status
    git log --oneline --decorate
    git reset --soft origin/master
    git status
    git commit -am "more readme changes"
    git status
    git reset origin/master
    git status
    vim README.md 
    git status
    git commit -am "usage status smaller"
    git status
    git reset --hard origin/master
    git status
    vim README.md 
    git status
    git reflog -5
    git reflog -10
    cat .git/HEAD 
    cat .git/refs/heads/master 
    cat .git/refs/heads/conflict-generate 
    cat .git/refs/heads/test1
    cat .git/refs/remotes/teacher/master 
    git status
    git reflog -10
    git reset --hard d440d25
    git status
    git log -1 --patch
    git log -1 --patch
    git status
    git reset --hard origin/master
    git status
    vim index.html 
    git status
    git stash save "index changes"
    git status
    git checkout -b css-features
    vim css/default.css 
    vim css/default.css 
    git status
    git commit -am "comic sans?"
    git checkout master
    git stash
    git stash list
    vim README.md 
    git stash
    git stash list
    git log -1
    git status
    git stash list
    git stash show stash@{0}
    git stash show stash@{0} -p
    git stash apply stash@{1}
    git diff
    git stash list
    git stash pop
    git stash list
    git stash delete stash@{0}
    git stash drop stash@{0}
    git status
    git commit -am "changes"
    git config --local credential.helper cache
    git status
    git push origin master
    generaterandomchanges 1 master-test md
    git push origin master
    git remote -v
    git remote set-url origin git@github.com:githubstudent/example-basic.git
    git config --local credential.helper osxkeychain
    git config --local user.name "GitHub Teacher"
    git config --local user.email "training+githubteacher@github.com"
    git status
    git checkout -b feature1
    generaterandomchanges 1 features md
    generaterandomchanges 2 features md
    git status
    git config --local --unset-all credential.helper
    git push -u teacher feature1
    git status
    git checkout master
    git checkout -b changes-123
    generaterandomchanges 4 stupid cpp
    ls
    git checkout master
    ls
    git lol -5
    git lol -6
    git lol -10
    git checkout master
    git branch -d changes-123 
    git branch -D changes-123 
    git fetch
    git fetch teacher

