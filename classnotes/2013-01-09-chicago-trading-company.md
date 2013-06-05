---
layout: bare
title: Chicago Trading Company Git Workshop
description: Internal Class for the Chicago Trading Company
tags: [notes, class, private]
path: classnotes/2013-01-09-chicago-trading-company.md
eventdate: 2013-01-09
---

Taught by:

* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.10, but can have issues with HTTPS credential prompting.
* Best is 1.8.X or higher

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

## Tools, Tips, Shortcuts

* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)
* [Log Live](https://gist.github.com/3714970)
* [git lg alias](https://gist.github.com/1131406)

## Resources

* SSL Certificates
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

## Class Outline

 * Class logistics
 * Introduction and History
 * Git's Three Stage Thinking
 * Versioning Files in Git
 * Viewing History in Git
 * Understanding Git's Content Tracking
 * Moving and copying files
 * Branching and Merging in Git
* Rebase and interactive rebase
* Establishing upstream repositories
* Push, pull, and fetch
* RefLog as a safety net
* Reset and revert

## Command Line History

    git --version
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    vi ~/.gitconfig 
    git config --global color.ui auto 
    pwd
    git init newproject
    ls
    cd newproject
    ls
    ls -la
    open .git
    vi caesar.txt 
    git status 
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "The noblest man"
    git help config
    vi caesar.txt
    git diff
    git add caesar.txt
    git status
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git diff
    git diff --staged
    git diff HEAD
    git diff
    git diff --word-diff 
    git diff --color-words
    git diff HEAD --word-diff 
    git status 
    git commit -m "Costly blood"
    git status
    git add .
    git commit -m "Fixed spelling so the line scans properly"
    git log
    git help config 
    git --no-pager log
    git log
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --patch --color-words -1 
    git log --pretty=full
    git log --pretty=email --patch
    git log --pretty=raw
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    open .git
    git log --pretty=oneline --abbrev-commit --graph
    git lg
    git status
    ls
    generaterandomfiles 5 junk txt
    ll
    cat junk1.txt
    cat junk2.txt
    git status
    git add .
    git status
    git commit -m "Add some files prepared for destruction"
    git status
    git log --stat
    git rm junk1.txt 
    ll
    git status
    rm junk2.txt
    ll
    git status
    git rm junk2.txt
    git status
    open .
    git status
    git add -u .
    git status
    git commit -m "Cleaned up the cruft"
    git status
    git log --stat
    ll
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    ll
    git status
    git add .
    git status
    git commit -m "Added files to move around later"
    git status
    tree
    mkdir files
    tree
    git status
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/ 
    tree
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Moved five of my files around (without changing them)"
    vi listing.txt
    mv listing.txt files
    tree
    git status
    git add -A .
    git status
    git commit -m "Remember the Ship of Theseus"
    git log --stat
    git log --stat -M
    git log --stat -M95 
    vi files/listing.txt
    git status
    git add .
    git commit -m "Changed listing after move"
    git log -- files/listing.txt
    git log --stat -- files/listing.txt
    git log --follow --stat -- files/listing.txt
    git log --follow --stat -M90 -- files/listing.txt
    tree .git | less
    git status
    git branch
    export PS1="$ "
    tr.git
    cd scratch/ctc
    git loglive
    ll
    cd newproject
    git loglive
    git branch feature
    git branch
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    git branch
    git status
    vi caesar.txt
    git add .
    git commit -m "Dumb mouths"
    git status
    git l
    git lg
    git checkout feature
    cat caesar.txt
    vi caesar.txt
    git add .
    git commit -m "Added a title to Caesar"
    git lg
    git status
    git checkout master
    git merge feature -m "Merged my feature branch"
    git lf
    git lg
    cat caesar.txt
    git log --pretty=raw -1 
    git loglive
    tree .git/refs
    git branch -d feature
    tree .git/refs
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git checkout feature2
    vi caesar.txt
    vi xanadu.txt
    git status
    git add .
    git commit
    git config core.editor
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit
    git loglive -15
    git branch -d feature2
    git branch feature3
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git checkout feature3
    vi xanadu.txt
    git add .
    git commit -m "Alph the sacred river"
    git lg
    git lg -5
    git rebase master 
    git checkout master
    git merge feature3
    git branch
    git reflog
    git loglive -10
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git checkout feature3
    ll
    ls
    vi caesar.txt
    vi raven.txt
    git status
    git add .
    git commit -m "Choked pity plus dying embers"
    git rebase master
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git rebase --continue
    vi caesar.txt
    git checkout master
    git checkout feature3
    git reflog
    git reset --hard HEAD@{5}
    git reflog
    git reset --hard HEAD@{3}
    git checkout master
    git merge feature3
    git branch -d feature3
    git checkout -b feature4 
    ls
    cd files
    generaterandomchanges 10 random txt 
    git rebase -i HEAD~10 
    git log --stat -1
    git remote add origin https://github.com/githubtrainer/poetry.git
    cat .git/con
    pwd
    cd ..
    cat .git/config
    git push -u origin master 
    cat .git/config
    export PS1="$ "
    tr.git
    cd scratch/ctc
    pwd
    ls
    git clone https://github.com/githubstudent/poetry.git 
    cd poetry
    git remote
    git remote -v
    cat .git/config
    vi raven.txt
    git add .
    git commit -m "Lost Lenore"
    git push
    git remote -v
    git branch
    git checkout master
    git pull
    git lg
    git fetch https://github.com/gsnowman/poetry.git master
    git merge FETCH_HEAD
    git status
    vi raven.txt
    git add raven.txt
    git commit
    git loglive -5
    git push
    git ls-remote origin
    git ls-remote origin | less
    git fetch origin refs/pull/11/head
    git diff FETCH_HEAD..HEAD
    git merge FETCH_HEAD
    git push
    cd ..
    ls
    ls -la
    git clone https://github.com/githubtrainer/poetry.git trainer-poetry
    cd trainer-poetry
    git checkout -b fix-caesar
    vi caesar.txt
    git add .
    git commit -m "Cry Havoc"
    git branch
    git push -u origin fix-caesar:tlberglund 
    cat .git/config
    git branch
    git branch -a
    git fetch
    git branch -a
    git fetch origin refs/heads/my_branch
    git branch -a
    tree .git/refs
    git branch -r
    git diff origin/feature999
    git merge origin/feature999
    ll
    git branch -a
    git checkout medinaa 
    cat .git/config
    git branch
    git diff master
    git checkout master
    git checkout medinaa
    git checkout master
    git merge medinaa
    git push
    git branch
    git lg
    vi caesar.txt
    git merge fix-caesar
    git push
    vi caesar.txt
    git add .
    git commit -m "Carrion men"
    git config credential.helper "cache"
    git push
    git pull
    git push
    git config credential.helper cache
    git pull
    git lg
    vi raven.txt
    git add .
    git commit -m "Nameless forevermore"
    git push
    git pull --rebase
    git push
    git lg
    git pull --rebase
    git lg
    git pull --rebase
    git pull
    git lg
    git pull
    git lg
    git config --global branch.autosetuprebase always 
    git branch -a
    git checkout wufBranch
    cat .git/config
    git config branch.master.rebase true
    vi README
    git add .
    git commit -m "Created a README"
    git pull
    git branch
    git checkout master
    echo "# Best Repo EVer" > README.md
    git add .
    git commit -m "New README"
    git branch
    git pull
    git lg
    git config branch.master.rebase true
    git ls-remote origin

