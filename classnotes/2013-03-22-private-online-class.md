---
layout: bare
title: Private Online Class
description: Private Online Class Class Notes
tags: [notes,online,private]
path: classnotes/2013-03-21-private-online-class.md
eventdate: 2013-03-21
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Austin Spires ([Twitter](http://twitter.com/austinspires), [GitHub](https://github.com/aspires))

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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix))
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
  git branch -d feature2
  git branch feature3
  git branch
  ls -l
  vi raven.txt
  git add .
  git commit -m "Nearly napping"
  git checkout feature3
  vi raven.txt
  git add .
  git commit -m "Some visitor"
  git checkout master
  git merge feature3
  git log --format=raw -1
  git branch -d feature3
  git branch feature4
  git checkout feature4
  vi tolkien.txt
  git add .
  git commit -m "Deep roots"
  ls
  vi README.md
  git add .
  git commit -m "Added a README"
  git lol -10
  git checkout master
  git merge feature4
  git loglive -15
  git loglive -20
  git branch -d feature4
  ls
  vi raven.txt
  git add .
  git commit -m "Gently rapping"
  git checkout -b feature5 ac678
  vi tolkien.txt
  git add .
  git commit -m "Fire"
  vi tolkien.txt
  git add .
  git commit -m "Light from shadow"
  cat raven.txt
  cat tolkien.txt
  git lol -10
  git lol -8
  git rebase master
  ls
  git checkout master
  git merge feature5
  git branch -d feature5
  git branch feature5
  git reflog
  vi tolkien.txt
  git add .
  git commit -m "Buggy Tolkien"
  cat tolkien.txt
  git reset --hard 9159
  cat tolkien.txt
  git reflog
  git reset --hard HEAD@{1}
  cat tolkien.txt
  git reset --hard HEAD^
  git reflot
  git reflog
  ll .git/objects/1e
  ls
  git checkout feature5
  cd files
  tree
  tree ..
  git loglive -15
  generaterandomchanges 10 random txt
  git lol
  git rev-parse HEAD~10
  git rebase -i HEAD~10
  git loglive -20
  vi random7.txt
  git status
  git add .
  git rebase --continue
  git rebase -i HEAD~10
  git log --stat -1
  git checkout master
  git merge feature5
  git branch -d feature5
  git rebase --abort
  cd newproject
  ls
  ll
  git remote
  git remote add origin https://github.com/githubteacher/poetry.git
  git remote
  git remote v
  git remote -v
  git remote show origin
  cd ..
  cat .git/config
  git push -u origin master
  ll ~/.ssh
  ssh-keygen -f ~/.ssh/monkey
  ll ~/monkey
  ll ~/.ssh/monkey
  ll ~/.ssh/
  rm ~/.ssh/monkey
  rm ~/.ssh/monkey.pub
  cat ~/.ssh/config
  cat /etc/ssh_config
  ssh-keygen -f github-class
  vi ~/.ssh/config
  ll
  rm github-class*
  ssh-keygen -f ~/.ssh/github-class
  cat ~/.ssh/github-class.pub
  ls
  vi tolkien.txt
  git add .
  git commit -m "Finished Tolkien"
  git branch -a
  git lol -10
  git status
  git push
  git remote set-url origin git@github.com:githubteacher/poetry.git
  git push
  git fetch
  git log -2
  git log origin/master -2
  git merge origin/master
  cat tolkien.txt
  ls
  vi raven.txt
  git add .
  git commit -m "Some late visitor"
  git pull
  git push
  pwd
  ls
  cd ..
  ls
  git clone git@github.com:githubstudent/poetry.git
  ll
  cd poetry
  ls
  ls -l
  git remote show origin
  vi ozymandias.txt
  git add .
  git commit -m "Shelly FTW"
  vi ozymandias.txt
  git add .
  git commit -m "SHelly conflict"
  git push
  git push
  git remote set-url origin https://github.com/githubstudent/poetry.git
  git push
  git fetch
  git status
  git diff origin/master --stat
  git diff origin/master -- README.md
  git diff origin/master -- raven.txt
  git pull
  git push
  git pull https://github.com/githubstudent/poetry.git master
  git status
  vi ozymandias.txt
  git add ozymandias.txt
  git commit
  git status
  git push
  git fetch
  git loglive -15
  git push
  git pull
  git push
  git lol
  git remote -v
  git remote add upstream git@github.com:githubteacher/poetry.git
  git pull upstream master
  git lol
  git status
  git push
  git remote -v
  cd ..
  git clone git@github.com:githubteacher/poetry.git teacher-poetry
  cd teacher-poetry
  ls
  vi ozymandias.txt
  git add .
  git commit -m "Lifeless things"
  git push
  git pull && git push
  git loglive -10
  git pull && git push
  git lol
  git pull
  git lol
  git config --global branch.autosetuprebase always
  git config --local branch.master.rebase true
  git pull
  vi ozymandias.txt
  git add .
  git commit -m "Fixed lines"
  git pull
  git push
  git pull
  git loglive -10
  git loglive -18
  git pull
  git loglive -15
  git pull
  git show 69d3
  git pull
  git push
  git pull
  git checkout -b tlberglund
  vi ozymandias.txt
  git mv ozymandias.txt ozymandias.md
  git add .
  git commit -m "MOAR Shelley"
  git push -u origin tlberglund
  git branch -a
  git fetch
  git loglive -20
  git loglive -18
  git fetch
  git checkout master
  git merge tlberglund
  git merge origin/philips
  git loglive -15
  git branch -a
  git checkout amberry
  git branch -a
  git remote show origin
  git log --patch -1
  vi foo.md
  git add .
  git commit -m "More markdowny"
  git push
  git branch -a


## Chat History

