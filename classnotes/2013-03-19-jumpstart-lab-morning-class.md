---
layout: bare
title: Jumpstart Lab Morning Class
description: Jumpstart Lab Morning Class Class Notes
tags: [notes]
path: classnotes/2013-03-19-jumpstart-lab-morning-class.md
eventdate: 2013-03-19
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

* Hipster Commit
* Rebase
* Push/Pull/Fetch/Remote
* Forking and Pull Requesting
* Troubleshooting
  * Reflog
  * Reset



## Command History

  cd ~/github/teach.github.com
  git status
  classnotes --title "Jumpstart Lab Morning Class" --teachers tlberglund -w
  git status
  subl classnotes/2013-03-19-jumpstart-lab-morning-class.md
  tr.git
  cd sc
  ll
  cd scratch
  ll
  mkdir jumpstart
  cd jumpstart
  git status
  mkdir .git
  tree
  git status
  mkdir .git/objects
  mkdir -p .git/refs/heads
  tree .git
  git status
  echo "ref: refs/heads/master" > .git/HEAD
  git status
  tree .git
  echo "So. The Spear-Danes in days gone by had courage and greatness."
  git help hash-object
  tr.git
  cd scratch/jumpstart
  export PS1="$ "
  tree .git/
  while :\ndo\nclear\ntree .git\nsleep 1\ndone
  echo "So. The Spear-Danes in days gone by had courage and greatness." | git hash-object --stdin -w
  export PS1="$ "
  git cat-file -p c023
  git cat-file -s c023
  git cat-file -t c023
  git status
  git update-index --add --cacheinfo 100644 c023c23a67e64dc4af96c2932a3292e42039321b beowulf.txt
  git status
  ls
  ls .git
  git write-tree
  git cat-file -t f419e
  git cat-file -s f419e
  git cat-file -p f419e
  ls
  git commit-tree f419e48cc86ee4d9c14295b58d74a6ec945a5b45 -m "Initial hipster commit"
  git status
  git cat-file -p a97f
  echo a97f9610de7d6d7e3c414936f7ecb1daeefd583f > .git/refs/heads/master
  git status
  ls
  git checkout master -- beowulf.txt
  ls
  git status
  cat beowulf.txt
  cat .git/refs/heads/master
  rm beowulf.txt
  git checkout master
  ls
  git reset --hard HEAD
  ls
  cat .git/ORIG_HEAD
  rm .git/ORIG_HEAD
  git loglive
  git lol
  git config alias.lol
  cat ~/scripts/git-loglive
  git branch feature
  git branch
  vi tolkien.txt
  git add .
  git statsu
  git status
  git commit -m "Tolkien poem"
  git checkout feature
  git branch
  git statu
  git status
  vi raven.txt
  git add .
  git commit -m "Fantastic Terrors"
  git log --format=raw -1
  git rebase master
  git checkout master
  ls
  cat tolkien.txt
  git merge feature
  git checkout feature
  mkdir files
  cd files
  generaterandomchanges 10 random txt
  git help revisions
  git rebase -i HEAD~10
  git checkout master
  git remote
  pwd
  cd ..
  git remote list
  git remot
  git remote
  git remote add origin https://github.com/githubteacher/jumpstart.git
  git remote
  git remote -v
  cat .git/config
  git config --local --list
  git push -u origin master
  git config --unset --global credential.helper
  git push -u origin master
  git lol
  git branch -a
  ls
  vi raven.txt
  git add .
  git commit -m "Still beating"
  git fetch
  git status
  cat .git/config
  git push
  git config branch.master.rebase true
  git config --global branch.autosetuprebase always
  git pull
  git push
  git reflog
  git reset --hard HEAD@{3}
  git show add64
  vi .git/refs/remotes/origin/master
  git merge origin/master
  git reflog
  git reset --hard HEAD@{2}
  git fetch
  git push
  tr.git
  cd scratch
  ls
  git clone
  git clone https://github.com/githubstudent/jumpstart.git cloned-jumpstart
  ls
  cd cloned-jumpstart
  ls
  vi raven.txt
  git add .
  git config --local user.name "GitHub Student"
  git config --local user.email "training+githubstudent@github.com"
  git commit -m "Some late visitor"
  git push
  git fetch
  git loglive -10
  git lol
  git pull
  git loglive -8
  git loglive -6
  git pull https://github.com/pnblackwell/jumpstart.git master
  vi tolkien.txt
  git add .
  git commit
  git push
  git rebase --continue
  git rebase --abort
  git config --unset branch.merge.rebase
  git pull https://github.com/pnblackwell/jumpstart.git master
  vi tolkien.txt
  git status
  git add .
  git rebase --continue
  git status
  git push
  git pull
  vi tolkien.txt
  git reflog
  git reset --hard HEAD@{15}
  git livelog -15
  git loglive -10
  git remote -v
  git remote add upstream https://github.com/githubteacher/jumpstart.git
  git remote -v
  git lol
  git pull upstream
  git pull upstream master
  git lol
  git reflog
  git reset --hard HEAD@{23}
  git branch
  git rebase --abort
  git branch
  git reflog
  git reset --hard HEAD@{25}
  git loglive -7
  cat .git/config
  git config --local --unset branch.master.rebase
  cat .git/config
  git pull https://github.com/pnblackwell/jumpstart.git master
  git pull
  vi tolkien.txt
  git add .
  git commit
  git push
  git pull upstream master


