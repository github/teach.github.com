---
layout: bare
title: W-JAX 2013 GitHub Workshop
description: W-JAX 2013 GitHub Workshop Class Notes
tags: [notes]
path: classnotes/2013-11-04-w-jax-2013-github-workshop.md
eventdate: 2013-11-04
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

## Command History

    git --version
    git --versi
    git init wjax
    ls -la
    tree .git
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    git config color.ui
    git help config
    git commit -m "Initial commit"
    git loglive
    git commit -m "Noblest man"
    git diff
    git diff --word-diff
    git diff --color-words
    git diff HEAD
    git diff HEAD --color-words
    git diff --staged
    git commit -m 'Costly blood'
    git commit -m "Iambic"
    ls .git
    git log
    git help log
    git log --format=raw
    git log --graph
    git log --graph --decorate
    git log --graph --decorate --oneline
    git log --graph --decorate --oneline --all
    git config --global alias.lol "log --graph --decorate --oneline --all"
    git log --format=raw -1
    watch -n 1 "git lol"
    generaterandomfiles 6 junk txt
    cat junk1.txt
    git commit -m "Cruft"
    git rm junk1.txt
    rm junk2.txt
    git rm junk2.txt
    open .
    git add -u .
    git rm --cached junk6.txt
    git commit -m "Anti-cruft"
    ll ~ > console.log
    mkdir -p build/classes/main
    echo "monkey" > build/classes/main/AngryMonkey.class
    vi .gitignore
    git add .gitignore
    git commit -m "Git Ignore"
    git ls
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    git commit -m "Things to move"
    mkdir files
    rm console.log
    rm junk6.txt
    rm -rf build
    git mv file1.txt files/
    mv file2.txt files/
    git rm file2.txt
    git add files/file2.txt
    git status -u
    git add temp/file2.txt
    git help status
    git reset HEAD temp/file2.txt
    cp files/file2.txt temp/
    git status -u
    rm -rf temp
    git commit -m "Moved files"
    vi listing.txt
    git commit -m "Move and change"
    git log --stat 1
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M80
    git log --stat -- files/listing.txt
    git log --stat --follow -- files/listing.txt
    vi files/listing.txt
    git commit -m "Change after move"
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M80 --follow -- files/listing.txt
    git commit -m "Tim lied"
    git log --stat -M
    mkdir temp
    mv files/listing.txt temp/monkey.txt
    vi temp/monkey.txt
    git add -A .
    git commit -m "Tim REALLY lied"
    git log -M --stat
    git reset --hard HEAD^
    tree
    git branch feature
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    git commit -m "Ruby lips"
    git commit -m "Title"
    git merge feature -m "Merged"
    git branch -d feature
    git branch feature2
    git branch monkey bca4
    git branch -d monkey
    git commit -m "Cursed limbs"
    git commit -m "Civil strife"
    git merge feature2
    git help merge
    git reset --hard a3f6f
    git checkout feature2
    git commit -m "Raven intro"
    git merge feature2
    git commit -m "Merged again"
    git loglive -10
    git branch -d feature2
    git branch feature3
    vi README.md
    git add README.md
    git commit -m "Add README"
    git checkout feature3
    git commit -m "Blood and destruction"
    git add raven.txt
    git commit -m "Lost Lenore"
    git rebase master
    git merge feature3
    git reflog
    git branch -d feature3
    git branch feature4
    git checkout -b feature4
    git branch
    git commit -m "Radiant"
    cd files
    generaterandomchanges 10 random txt
    git rebase -i 2f63fc7
    git checkout feature
    git checkout feature4
    git reset --hard 3652723
    git reflog
    git reset --hard HEAD@{1}
    git merge feature4
    git branch -d feature4
    export PS1="$ "
    git remote add origin https://github.com/githubteacher/wjax2013.git
    cat .git/config
    git push -u origin master
    git branch -a
    git diff origin/master
    git pull
    cat caesar.txt
    git commit -m "Nameless"
    git commit -m "Rustling"
    git lol -5
    tr.git
    cd scratch
    cd wjax
    git clone https://github.com/githubstudent/wjax2013.git
    cd wjax2013
    git --version
    git config --global --unset credential.helper
    git config credential.helper
    git commit -m "Choked pity"
    git commit -m "Caesar Rage"
    git loglive -8
    git pull https://github.com/githubstudent/wjax2013.git master
    git commit -m "Caesar Rage Merge"
    git remote
    git remote add teacher https://github.com/githubteacher/wjax2013.git
    git pull teacher master
    cd ..
    ls
    git clone https://github.com/githubteacher/wjax2013.git teacher-wjax
    cd teacher-wjax
    git config --global credential.helper cache
    git commit -m "Cry HAVOC"
    git loglive -5
    git loglive -6
    git lol
    git config branch.master.rebase true
    git config --global branch.autosetuprebase always
    git commit -m "Carrion men"
    git add caesar.txt
    git status
    vi caesar.txt
    git rebase --continue
    git loglive -12
    while :\ndo\ngit pull\nsleep 1\ndone
    git loglive -15
    git loglive -16
    git loglive -20
    git loglive -18
    git tag LITTLE_CHANGE
    tree .git/refs
    git tag -a BEFORE_REBASE_PULLS 89cce
    git show LITTLE_CHANGE
    git show 48b7dee
    git show BEFORE_REBASE_PULLS
    git push origin LITTLE_CHANGE
    git push --tags
    git checkout -b tlberglund
    vi ra
    pwd
    l
    ll
    git log -- raven.txt
    git checkout ff968b87 -- raven.txt
    git commit -m "Fantastic"
    git push --set-upstream origin tlberglund
    vi raven.txt
    git add .
    git commit -m "Still beating"
    git push
    git checkout master
    git branch -d tlberglund
    git fetch
    git pull
    git pull --prune
    git fetch --pruen
    git fetch --prune
