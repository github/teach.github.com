---
layout: bare
title: Rich Web Experience 2013 Git Workshop
description: Rich Web Experience 2013 Git Workshop Class Notes
tags: [notes]
path: classnotes/2013-12-03-rich-web-experience-2013-git-workshop.md
eventdate: 2013-12-03
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
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline

* Install and setup
* Committing
* Staging area
* Comparing things (`diff`)
* Looking at history (`log`)
* Deleting and moving
  * Internals
* Branching and merging
* Rebasing
* `reset` and `reflog`
* Remote repos
  * `push`, `pull`, `fetch`
* Pull requests
* Collaboration on GitHub in general
* "Briefly" touch on submodules
* SVN migration
  * Mechanics
  * Social and political
* Gist
* Hooks


## Command History

    git init newproject
    cd newproject
    ls -la
    tree .git
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    vi caesar.txt
    git commit -m "Initial commit"
    git commit -m "Noblest man"
    git diff HEAD
    git diff HEAD --color-words
    git diff HEAD --word-diff
    git diff --staged
    git commit -m "Costly blood"
    git commit -m "Iambic"
    git help log
    git log --author=Tim
    git log --author="Fird'
    git log --author="Fird"
    git log
    git log --format=raw
    git log --graph
    git log --graph --oneline
    git log --graph --oneline --decorate
    git log --graph --oneline --decorate --all
    git config --global alias.lol "log --graph --oneline --decorate --all"
    cd scratch/newproject
    git loglive
    generaterandomfiles 6 junk txt
    git commit -m "Cruft"
    git rm junk1.txt
    rm junk2.txt
    git rm junk2.txt
    open .
    git add -u .
    git help add
    git rm --cached junk6.txt
    git commit -m "Cleanup cruft"
    git add .gitignore
    run-help git
    git commit -m "Added .gitignore"
    mkdir -p src/main/resources
    ll /etc > src/main/resources/real-file.log
    vi src/main/resources/.gitignore
    vi .gitignore
    git diff
    git checkout HEAD -- .gitignore
    git status -u
    rm -rf src
    rm junk6.txt
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    cat file1.txt
    cat file2.txt
    cat file4.txt
    cat listing.txt
    git commit -m "Ready to move"
    mkdir files
    mkdir files/monkey
    rm -rf files/monkey
    git mv file1.txt files/
    mv file2.txt files/
    git rm file2.txt
    git add files/file2.txt
    git commit -m "Moved small things"
    vi listing.txt
    git add -A .
    git commit -m "Moved AND changed"
    vi files/listing.txt
    git commit -m "Change after move"
    git log --stat
    git log --stat -M
    git log --stat -M75
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M75 --follow -- files/listing.txt
    git branch feature
    git commit -m "Ruby lips"
    git checkout feature
    git commit -m "Title"
    git merge feature -m "Merged feature"
    git show feature
    git show master
    gitk --all
    git branch -d feature
    git log --patch
    ll files
    git log -- files/file3.txt
    git log --follow -- files/file3.txt
    git log --patch --follow -- files/file3.txt
    git branch feature2
    git commit -m "Cursed limbs"
    cat caesar.txt
    git checkout feature2
    git commit -m "Domestic fury"
    git checkout master
    git merge feature2 -m "Merged"
    git branch -d feature2
    git branch feature3
    git commit -m "Blood and destruction"
    git checkout feature3
    cat chesterton.txt
    git commit -m "Vine"
    git loglive -12
    git rebase master
    git merge feature
    git merge feature3
    git branch -d feature3
    tree
    cd files
    generaterandomchanges 10 random txt
    git rebase -i ce29
    git reset --hard 7035
    git reset --hard HEAD@{1}
    git remote add origin https://github.com/githubteacher/rwx.git
    cat .git/config
    git push --set-upstream origin master
    git add chesterton.txt
    git commit -m "Milk"
    git lol -10
    git config push.default
    git config --global push.default simple
    git diff origin/master
    git reset --hard HEAD^
    git lol -5
    git merge origin/master
    git branch -a
    git checkout origin/master
    git checkout master
    git commit -m "Smiley mothers"
    git fetch
    git lol -6
    export PS1="$ "
    tr.git
    cd scratch/
    git clone https://github.com/githubstudent/rwx.git
    cd rwx
    git commit -m "Pity"
    git commit -m "Caesar Rage"
    git config --global --unset credential.helper
    git pull https://github.com/githubstudent/rwx.git master
    vi cae
    git reflog
    git commit
    git status
    git push
    git remote add teacher https://github.com/githubteacher/rwx.git
    git pull teacher master
    git config --global credential.helper cache
    git clone https://github.com/githubteacher/rwx.git teacher-rwx
    cd teacher-rwx
    git pull
    ls
    git add caesar.txt
    git commit -m "Havoc and stuff"
    git push
    while :\ndo\nclear\ngit pull\nsleep 1\ndone
    git loglive -6
    git loglive -5
    while : do; git pull && git push; sleep 1; done
    while : do; git pull && git push; sleep 1; done;
    git --version
    git config credential.helper
    git config branch.master.rebase true
    git config --global branch.autosetuprebase always
    vi caesar.txt
    git commit -m "Carrion men"
    git pull && git push
    while : do; git pull; sleep 1; done;
    while : do; git pull; sleep 1; done
    while :\ndo\ngit pull\nsleep 1\ndone
    git loglive -10
    git loglive -8
    git loglive -7
    history
    while : git pull; sleep 1\n;
    git branch
    git checkout -b chesterton
    vi chesterton.txt
    git add .
    git commit -m quill
    git lol
    git push --set-upstream origin chesterton
    open .git
    cd code/anxious-cows
    subl .
    ll .git/hooks
    ls .git/hooks
    vi .git/hooks/commit-msg.sample
    pwd
    svn clone https://github.com/githubteacher/rwx
    svn checkout https://github.com/githubteacher/rwx rwx-svn
    cd rwx-svn
    cd ..
    rm -rf rwx-svn
    svn checkout https://github.com/githubteacher/rwx/trunk svn-rwx
    cd svn-rwx




