
---
layout: bare
title: 33rd Degree Git Workshop
description: 33rd Degree Git Workshop Class Notes
tags: [notes,conference,workshop]
path: classnotes/2013-03-13-33rd-degree-git-workshop.md
eventdate: 2013-03-13
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

* Repo Structure
* Configuring Git
* Staging Area
* Diff
* Log
* Aliases
* Branching and merging
* .gitignore
* Resolving Merge conflicts
* Internal commit structure
* Amend, Reset, Reflog
* Rebasing
* Remote Repositories
* Push, Pull, Fetch
* Pull Requests
* GitHub Itself (Because It Is Awesome)
  * Issues
  * Project Sites
  * Markdown
  * Keyboard shortcuts
  * Etc.
* Coexisting with SVN

## Command History

  git --version
  git config --list
  vi ~/.gitconfig
  git init newproject
  cd newproject
  ping github.com
  ls
  ls -la
  tree .git
  tree .git | less
  git config user.name
  git config user.email
  tree .git | less
  git config user.email
  cat .git/config
  git config --list --local
  cat ~/.gitconfig
  git config --global user.name "Tim Berglund"
  git config color.ui auto
  git config --global color.ui auto
  vi raven.txt
  git status
  git add .
  git status
  git commit -m "Initial Commit"
  vi raven.txt
  git status
  git add raven.txt
  git status
  git commit -m "Wanted to stop being sad"
  git status
  vi raven.txt
  git status
  git diff
  git add .
  git diff
  git diff --staged
  vi raven.txt
  git status
  git diff
  git diff --staged
  git diff --word-diff
  git status
  git add .
  git status
  git commit -m "Nameless here"
  git help log
  git log
  git log --pretty=raw
  git log --format=raw
  git log --format=raw -1
  git log --format=oneline
  git log --format=oneline --abbrev-commit
  git log --format=oneline --abbrev-commit --decorate
  git log --format=oneline --abbrev-commit --decorate --graph
  git log --format=oneline --abbrev-commit --decorate --graph --all
  git lol
  git config --global alias.lol "log --format=oneline --abbrev-commit --decorate --graph --all"
  git lol
  git lg
  git config alias.lg
  git lol
  tr.git
  cd scratch/newproject
  export PS1="$ "
  git loglive
  cat ~/scripts/git-loglive
  git branch
  git status
  tree .git/refs
  cat .git/refs/heads/master
  git lol
  cat .git/HEAD
  git branch feature
  tree .git/refs
  cat .git/HEAD
  git branch
  vi raven.txt
  git add .
  git status
  git commit -m "Purple curtain"
  git branch
  git checkout feature
  git branch
  cat raven.txt
  vi raven.txt
  git add raven.txt
  git status
  git commit -m "Midnight dreary"
  git lol
  cat raven.txt
  git checkout master
  cat raven.txt
  git lol
  git merge feature
  mate
  git lol
  git log --format=raw -1
  git lol
  git branch -d feature
  ls -la ~ > console.log
  mkdir target
  ll ~ > target/Monkey.class
  ll /usr/bin > target/app.jar
  git status
  git add .
  git status
  git commit -m "Dumb commit"
  git lol
  git status
  git reset --hard 5cb20
  ll
  ll > console.log
  mkdir target
  ll > target/Monkey.class
  ll /usr/bin target/app.jar
  ll /usr/bin > target/app.jar
  git status -u
  vi .gitignore
  git status
  git add .gitignore
  git status
  git commit -m "Added .gitignore"
  open.
  open .
  ll -a
  ls -la
  ls -a
  git status
  git config core.excludesfile
  vi `git config core.excludesfile`
  git lol
  git branch feature2
  vi raven.txt
  git add .
  git commit -m "Fantastic terrors"
  git checkout feature2
  vi raven.txt
  vi tolkien.txt
  git status
  git add .
  git status
  git commit -m "Defective Poe plus Tolkien"
  git checkout master
  git merge feature2
  git status
  vi raven.txt
  git status
  git add raven.txt
  git status
  git commit
  git lol
  git reset --hard 121a5e6
  git merge feature2
  vi raven.txt
  kdiff3
  p4merge
  ll ~/scripts
  ll /Applications/p4merge.app/Contents/MacOS/p4merge
  l /Applications/p4merge.app/Contents/MacOS/p4merge
  ls /Applications/p4merge.app/Contents/MacOS/p4merge
  ls /Applications/p4merge.app/Contents/MacOS/p4merge | pbcopy
  cd ~/scripts
  ln -s `pbpaste` p4merge
  ls
  cd -
  p4merge
  pbpaste
  ll /Applications/p4merge.app/Contents/Ma│·························································
  ll /Applications/p4merge.app/Contents/MacOS/p4merge
  git config --global merge.tool /Applications/p4merge.app/Contents/MacOS/p4merge
  git mergetool
  vi ~/scripts/p4merge
  rm ~/scripts/p4merge
  vi ~/scripts/p4merge
  chmod +x ~/scripts/p4merge
  VCS_INFO_p4
  cd ~/scripts
  ll
  vi p4merge
  ~/scripts/p4merge
  cd -
  ~/scripts/p4merge
  git config --global merge.tool ~/scripts/p4merge
  git mergetool
  git config --global merge.tool p4merge
  git config --global mergetool.prompt false
  git config --global mergetool.keepTemporires false
  git config --global mergetool.keepBackup false
  git mergetool
  git status
  git clean -f
  git status
  git commit
  git reset --hard 121a
  git merge feature2
  git mergetool
  git status
  git commity
  git commit
  git branch -d feature2
  git branch feature3
  vi raven.txt
  git add .
  git commit -m "Some late visitor"
  git checkout feature3
  vi raven.txt
  git add .
  git commit -m "How rude"
  git checkout master
  git merge feature3
  git status
  git show master:raven.txt
  git show feature3:raven.txt
  git checkout --ours -- raven.txt
  vi raven.txt
  git status
  git add raven.txt
  git status
  git commit
  tree .git/objects | less
  git show c1e7883
  git cat-file -p c1e7883
  git cat-file -p 67cf8
  git cat-file -p 717314
  git reflog
  git branch -d feature3
  git branch feature4
  vi raven.txt
  git add .
  git commit -m "Sudden tapping"
  git checkout feature4
  ll
  generaterandomfiles 3 random txt
  rm random*
  generaterandomchanges 3 random txt
  git lol
  git lol -5
  git loglive -12
  git rebase master
  git checkout master
  git merge feature4
  git branch -d feature4
  tree .git/objects
  git remote add origin https://github.com/githubteacher/poetry.git
  git remote -v
  cat .git/config
  git push -u origin master
  git remote
  git remote -a
  git branch -a
  git fetch
  ll
  ls
  git pull
  ls
  git mv README.me README.md
  git status
  git commit -m "Corrected README filename"
  git push
  git config --global push.default simple
  git push
  export PS1="$ "
  tr.git
  cd scratch
  ll
  git clone
  drwxr-xr-x  13 tlberglund  staff  442 Mar 13 17:13 newproject
  git clone https://github.com/githubstudent/poetry.git
  cd poetry
  ls
  vi raven.txt
  git add .
  git commit -m "Finished first stanza"
  git push
  vi raven.txt
  git add .
  git commit -m "Buggy Poe"
  git push
  vi raven.txt
  git add .
  git commit -m "Oops"
  git push
  git loglive -20
  git pull
  git lol
  git pull
  git lol
  git fetch
  git merge origin/master
  git fetch https://github.com/githubstudent/poetry.git master
  git merge FETCH_HEAD
  git status
  vi ra
  vi raven.txt
  git add .
  git commit
  git push
  git remote -v
  git remote add upstream https://github.com/githubteacher/poetry.git
  git remote -v
  git fetch upstream
  git lol
  git pull upstream master

