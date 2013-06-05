---
layout: bare
title: NFJS GitHub Workshop
description: NFJS GitHub Workshop class notes
tags: [notes, event]
path: classnotes/2012-11-02-nfjs-git-workshop1.md
eventdate: 2012-11-02
---

Held on November 2 & 3, 2012 and taught by Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Advanced Git Notes
* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

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
    * [The Git-SCM Web Site (all platforms)](http://git-scm.com)
    * [The GitHub for Windows GUI and Command Line](http://windows.github.com)
* Version
    * Minimum is 1.7.10, but can have issues with HTTPS credential prompting.
    * Best is 1.8.0 or higher
* GUIs
    * [The GitHub for Windows GUI and Command Line](http://windows.github.com)
    * [The GitHub for Mac GUI without Command Line](http://mac.github.com)

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


## Git Half-Day Command Line History

    git init project1
    cd project1
    git config -e --global
    git commit -m "My first commit"
    touch first.txt
    vim first.txt
    git diff --word-diff
    git diff --color-words
    git add -p first.txt
    git commit -m "My second commit"
    git commit -am "My third commit"
    git clone https://github.com/githubstudent/hellogitworld.git
    git branch matthewfeature
    touch matthewfeature.txt
    git commit -m"Matthew feature file"
    subl matthewfeature.txt
    git add matthewfeature.txt
    git commit -m"Feature work
    git commit -m"Feature work"
    git remote -v
    git push -u origin matthewfeature
    git remote add official https://github.com/githubtrainer/hellogitworld
    git merge remotes/official/master
    git checkout matthewfeature
    git checkout origin/bisect
    gitk &
    git bisect good 56cb3
    
    git clone https://github.com/jquery/jquery-mobile.git
    cd jquery-mobile
    git log 
    git log --author="Matthew"
    git log --author="Matthew" --since=2.months.ago
    git log --author="Matthew" --since=9.months.ago
    git log --author="Matthew" --since=19.months.ago
    git log --author="Matthew" --since=19.months.ago --patch
    git log --author="Matthew" --since=19.months.ago --patch -S corners
    
    git clone https://github.com/githubtrainer/hellogitworld hgwt
    cd hgwt
    generaterandomchanges 3 nfjs txt

# Git 90 Minute Class Command Line History

    git --version
    git config user.name
    git config user.email
    git config --global user.email "matthew@github.com"
    git config --global user.name "Matthew McCullough"
    
    git init project2
    open .
    mate first.txt
    git add first.*
    git add *.txt
    git commit -m"My first commit"
    git log
    git add first.txt
    git diff
    git diff --staged
    git config alias.servehere
    git servehere
    
    
    cd ..;git servehere
    git clone git://10.0.1.16/project2 matthewp2
    cd project2
    
    git remote add origin https://github.com/matthewmccullough/project2.git
    git push -u origin master
    git clone https://github.com/githubstudent/poetry.git
    cd poetry
    git branch matthewmfeature
    git status
    git add matthewmfeaturefile.txt
    git commit -m"Branch file"
    git checkout master
    git checkout matthewmfeature
    git push -u origin matthewmfeature
    git branch -a
    vim matthewmfeaturefile.txt
    git add .
    git commit -m"Fixed it"
    git push
    clear
    git remote add official https://github.com/matthewmccullough/poetry.git
    git fetch official
    git merge official/master
    git ls-remote official
    generaterandomchanges 5 change txt
    git revert 97e4873
    cd ..
    ls
    git clone git@github.com:githubtrainer/hellogitworld
    cd hellogitworld
    git checkout bisect
    git log --oneline
    mvn test
    git bisect start
    git bisect bad
    git bisect good HEAD~13
    git bisect run mvn test

# NFJS Advanced Git - Command Line History

    git clone git@github.com:matthewmccullough/github-workflow.git
    cd github-workflow
    tree .git | more
    git tag
    git checkout gh-pages
    git checkout patch-1
    git help remote
    git remote remove origin
    git push --mirror otes/origin/HEAD -> origin/master                                          │···
    git push --mirror git@github.com:matthewmccullough/mirro1.git
    
    git clone git@github.com:matthewmccullough/github-workflow.git hgw1
    cd hgw1
    git branch -r 
    git branch -r  | sed s/origin/git\ checkout/
    vim ~/.gitconfig
    
    git clone ghsm://mirro1 test
    cat .git/config
    git branch -r
    git help clone
    generaterandomchanges 2 sample txt
    git push origin other
    git push origin 
    
    git clone git@github.com:matthewmccullough/poetry.git
    git commit -a -m"Matthew changes"
    git pull --rebase
    git diff
    git rebase --continue
    tree
    git checkout --orphan oraph1
    git rm -rf *
    touch docs.txt
    git commit -m"Docs"
    echo CHANGE >> docs.txt
    git commit -a -m"One more docs"
    gitk --all &
    git branch feature10
    echo CHANGE >> caesar.txt; git commit -a -m"Change'
    git checkout feature10
    echo CHANGE >> caesar.txt; git commit -a -m"Change"
    echo Created a branch, created a few commits on each, with the intent of cherry picking one commit from the feature branch back to master
    git log --format=raw -1 9ae6f3d
    git config user.name "Bug Fixer"
    git cherry-pick 9ae6f3d
    vim caesar.txt
    git commit
    git log --format=raw -1
    gitk --all&
    git l2
    git cherry-pick -x e2ffdc4
    echo STUFF >> caesar.txt
    git pull
    git mergetool
    git commit 
    git branch
    git push origin oraph1
    git push origin feature10
    git bundle create ../spencer.bundle master
    git ls-remote spencer.bundle
    cd test
    git fetch ../spencer.bundle
    git fetch ../spencer.bundle refs/heads/master
    git merge FETCH_HEAD
    open .git
    git branch illcheckthisoutlater FETCH_HEAD
    git ls-remote https://github.com/matthewmccullough/poetry
    git fetch origin refs/pull/10/head
    git merge --no-ff FETCH_HEAD
    history
    git ls-remote origin
    git ls-remote origin | more
    git fetch
    git branch -a
    vim .git/config
    git show
    git show HEAD~1
    git show HEAD~1:caesar.txt
    git show HEAD~1:/
    subl hello.md
    gist
    gist hello.md
    git init project9
    cd project9
    hub create
    hub browse
    git push -u origin master
    
    hub clone project9
    
    hub clone dhinojosa/usingguava
    
    hub clone jenkins-workshop-repos
    
    hub clone poetry
    git checkout -b feature99
    generaterandomchanges 10 sample txt
    git push -u origin feature99
    hub pull-request
    ghi 
    ghi list
    ghi
    ghi show 10

    git ls-files 
    git ls-files -m
    git rm sample9.txt
    rm sample8.txt
    git ls-files -d
    git annotate caesar.txt
    git blame caesar.txt
    git blame -C caesar.txt

    z git_git
    git blame rerere.c
    git blame -C rerere.c
    git annotate rerere.c
