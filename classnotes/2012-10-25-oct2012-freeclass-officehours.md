---
layout: bare
title: GitHub Free Class and Office Hours (October 2012)
description: GitHub Free Class and Office Hours (October 2012) class notes
tags: [notes, event]
path: classnotes/2012-10-25-oct2012-freeclass-officehours.md
eventdate: 2012-10-25
---

on 2012-10-25

* Led by Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Supported by (Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Supported by Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Resources

* [http://kb.perforce.com/article/1417/git-p4](http://kb.perforce.com/article/1417/git-p4)
* [https://github.com/github/gitignore](https://github.com/github/gitignore)
* [http://teach.github.com/articles/book-authoring-using-git-and-github/](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [https://help.github.com/articles/post-receive-hooks](https://help.github.com/articles/post-receive-hooks)
* [http://training.github.com/resources/videos/](http://training.github.com/resources/videos/)
* [http://carl-topham.com/theblog/post/using-git-media-temple/](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [https://github.com/githubtraining/feedback/issues?state=open](https://github.com/githubtraining/feedback/issues?state=open)
* [https://github.com/blog/1227-commit-status-api](https://github.com/blog/1227-commit-status-api)
* [http://teach.github.com/articles/lesson-git-credential-cache/](http://teach.github.com/articles/lesson-git-credential-cache/)
* [http://teach.github.com/articles/github-issues-cheatsheet/](http://teach.github.com/articles/github-issues-cheatsheet/)
* [https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)

## Installation
* Git Installation
    * [http://git-scm.com](http://git-scm.com)
    * [http://windows.github.com](http://windows.github.com)
* Minimum is 1.7.ANYTHING
* Best is 1.7.10 or higher

## Suggested Books, Articles
* ProGit: [http://git-scm.com/book](http://git-scm.com/book)
* Getting started with Version Control: [http://teach.github.com/articles/lesson-new-to-version-control/](http://teach.github.com/articles/lesson-new-to-version-control/)
* Git Workflows: [https://github.com/zkessin/dvcs-workflows](https://github.com/zkessin/dvcs-workflows)
* Cheat Sheets: [http://teach.github.com/articles/git-cheatsheets/](http://teach.github.com/articles/git-cheatsheets/)

## Course Materials, Links
* Training Materials: [http://teach.github.com](http://teach.github.com)
* Slides: [http://teach.github.com/articles/course-slides/](http://teach.github.com/articles/course-slides/)
* Post-event Git and GitHub questions: [https://github.com/githubtraining/feedback/](https://github.com/githubtraining/feedback/)
* Free Office Hours Sessions: [http://training.github.com/web/free-classes/](http://training.github.com/web/free-classes/)

## Server Side Git Receive Hooks for Hosting Pushes
* Heroku slugs (git protocol) 
    * [https://devcenter.heroku.com/articles/git](https://devcenter.heroku.com/articles/git) (Requires heroku account and login)
* Server side hook for publishing
    * [http://net.tutsplus.com/tutorials/other/the-perfect-workflow-with-git-github-and-ssh/](http://net.tutsplus.com/tutorials/other/the-perfect-workflow-with-git-github-and-ssh/)
    * [http://stackoverflow.com/questions/279169/deploy-a-project-using-git-push](http://stackoverflow.com/questions/279169/deploy-a-project-using-git-push)
* Service hooks on GitHub repos
    * [https://help.github.com/articles/post-receive-hooks](https://help.github.com/articles/post-receive-hooks)
    * [https://github.com/blog/964-all-of-the-hooks](https://github.com/blog/964-all-of-the-hooks)


## Git Free Class History

    git clone https://github.com/githubstudent/poetry.git student-poetry
    cd student-poetry
    
    vi caesar.txt
    git status
    git remote -v
    git add caesar.txt
    git commit -m "Let slip the dogs of war"
    git push
    cd ../poetry
    git remote -v
    git pull
    cat caesar.txt
    git log
    vi caesar.txt
    git commit -a -m "Little bits of text cleanup"
    git push
    cd ../student-poetry
    git remote -v
    git remote add trainer https://github.com/githubtrainer/poetry.git
    git remote -v
    git fetch trainer
    git branch -a
    git merge trainer/master 
    
    git push
    git push origin
    git remote -v
    git config credential.helper
    git config --unset credential.helper
    git push origin
    git push 
    git config credential.helper
    git config --unset --global credential.helper
    git push 
    cd ../poetry
    git fetch
    git checkout -b jonesch-master master
    git pull https://github.com/jonesch/poetry.git master
    git status
    vi caesar.txt
    git add caesar.txt
    git commit
    git checkout master
    git merge jonesch-master
    git push
    git pull
    
    git status
    vi caesar.txt
    git add caesar.txt
    git commit
    git push
    git status
    git merge --abort
    git pull
    git remote -v
    git pull origin
    git pull origin master
    git status
    
    cat caesar.txt
    git checkout master
    git rebase --abort
    git status
    git pull
    vi caesar.txt
    git add caesar.txt
    git rebase --continue 
    git status
    git push
    
# GitHub Office Hours Command Line History

    cd ../student-poetry
    git remote -v
    git fetch trainer
    git branch -a
    git merge trainer/master
    git push
    vi caesar.txt
    git commit -a -m "Carrion men"
    git push
    git remote -v
    git fetch trainer
    git branch -a
    git diff trainer/master
    git ls-remote https://github.com/githubtrainer/poetry.git
    git fetch https://github.com/githubtrainer/poetry.git refs/heads/master
    git diff FETCH_HEAD
    git status
    git merge training/master
    git merge trainer/master
    git log
    
    git branch
    cat caesar.txt
    vi file.txt
    git branch feature
    vi newfile.txt
    git commit -a -m "newfile"
    git checkout feature
    vi newfile.txt
    git add newfile.txt
    git commit -m "Hopefully a conflict here"
    git checkout master
    git log
    git diff HEAD^
    git diff HEAD^^
    git difftool
    git config --list --global
    git config --global diff.tool p4merge
    which p4merge
    cat `which p4merge`
    git difftool
    p4merge
    git difftool
    git difftool HEAD^
    git config --global difftool.prompt false
    git difftool HEAD^
    git diff feature
    git diff feature...master
    git diff master...feature
    git diff master...trainer/master
    git diff feature...trainer/master
    git diff HEAD^
    git config --list global
    git config --list --global
    git merge feature
    vi newfile.txt
    git config --global merge.tool p4merge
    git config --global mergetool.prompt false
    git config --global mergetool.keepbackups false
    git status
    git mergetool
    git status
    rm newfile.txt.orig
    git commit
    git log
    git log -5
    git config --global mergetool.keepBackup false
    git help mergtool
    git help mergetool
