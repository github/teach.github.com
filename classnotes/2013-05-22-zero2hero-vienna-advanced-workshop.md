---
layout: bare
title: Zero2Hero Vienna Advanced Workshop
description: Zero2Hero Vienna Advanced Workshop Class Notes
tags: [notes, public, workshop]
path: classnotes/2013-05-22-zero2hero-vienna-advanced-workshop.md
eventdate: 2013-05-22
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

* Patch-mode adding **and** reverting **and** resetting
  * Stop the madness
* Rebase and interactive rebase
* Reset redux
* Squash Merge
* Revert
* Cherry Pick
* Visual Merge and Diff Tools
  * Command-line driver (`p4merge`)
  * Diff
    * diff.tool
    * difftool.prompt
  * Merge
    * merge.tool
    * mergetool.prompt
    * mergetool.keepTemporaries
    * mergetool.keepBackup
* Submodules
* Repository Hooks
* Service Hooks
* WebHooks
  * https://zapier.com for general-purpose integration to many of the things
* API 
  * http://developer.github.com
* Project Sites with GitHub Pages
  * https://github.com/github/teach.github.com
  * https://github.com/github/training.github.com
  * Uses Jekyll
  * Look into it
* Rebase on Pull
* Filter Branch
* Rerere

* Project layout vs SVN and CVS traditions
* Git and CI
* Workflow/branching/forking/etc.

* In-house Git hosting
  * aka GitHub Enterprise
  * GitLab
  * Gitorious
  * Gitolite

* GUIs: GitHub for Mac and Windows
* git subtree


## Command History

    git remote -v
    ls
    git push -u origin master
    git help config
    git config credential.helper
    git config --global --unset credential.helper
    git config --global -e
    vi ~/.gitconfig
    git remote -v
    git push
    git push -u origin master
    git config --global credential.helper cache
    ls
    git rm Der\ Rabe
    git rm svn.txt
    git rm FinsterWars.txt
    git rm testfile.txt
    git status
    git commit -m "Some cleanup"
    git push
    ll
    vi raven.txt
    git diff
    git add -p raven.txt
    git status
    git diff --staged
    git diff
    git commit -m "Midnight dreary"
    git status
    git diff
    git status
    git checkout HEAD -- raven.txt
    git status
    git help checkout
    vi raven.txt
    git show HEAD
    git staus
    git status
    git add .
    git status
    git diff --staged
    git commit --amend
    git show HEAD
    git checkout HEAD -p -- raven.txt
    git help checkout
    git checkout -p HEAD
    git checkout -p HEAD^ -- raven.txt
    vi raven.txt
    git status
    git diff --staged
    git lol
    git commit --amend
    git lol
    git show HEAD
    git help reset
    git status
    git lol
    git branch feature
    git checkout feature
    ll
    vi raven.txt
    git commit -m "Nearly napping"
    git add .
    git commit -m "Nearly napping"
    git checkout
    git checkout master
    vi README.md
    git add .
    git commit -m "Added README"
    git lol -5
    git checkout feature
    git rebase master
    git lol -5
    ll .git/objects/82/d776e40afe0095e186917914954e8d04edf774
    git cat-file -p 82d776
    git branch adopted 82d776
    git lol -5
    git show adopted
    git show feature
    git branch -D adopted
    git lol
    git checkout master
    git merge feature
    git lol -5
    git branch -d feature
    git lol -10
    git checkout -b feature
    git branch
    cd files
    ls
    generaterandomchanges 10 random txt
    git lol
    git lol -p
    git lol
    git lol -12
    git rev-parse HEAD
    git rev-parse HEAD~10
    git rev-parse HEAD^^^^^^^^^^
    git rev-parse master
    git rebase -i HEAD~10
    git lol -10
    git log --stat -1
    git checkout master
    git lol -10
    git reflog
    git branch
    git checkout feature
    git lol -5
    git reset --hard a800814
    git lol -15
    ls
    git reflog
    git reset --hard HEAD@{1}
    git lol -10
    git reset --hard HEAD@{1}
    git lol -15
    git reset --soft 0fd68dd
    git lol -6
    ls
    git status
    git reset HEAD random6.txt
    git status
    rm random6.txt
    git status
    ls
    git commit
    git lol -5
    git reset --soft cf11213
    git status
    git commit
    git lol -5
    git reflog
    git lol -10
    git reset --hard a800814
    git lol -12
    git checkout master
    git merge --squash feature
    git status
    git reset HEAD random6.txt
    git status
    rm random6.txt
    git status
    git commit
    git lol
    git branch -D feature
    git lol -10
    git push
    git branch
    git branch -a
    git fetch --prune
    git branch -a
    git branch -D rafacm
    git branch -D tlberglund
    git branch -a
    git lol
    git show 7b6e107
    git show 7b6e107 --color-words
    git lol
    git revert 7b6e107
    git status
    git revert --abort
    git status
    git lol
    cd ..
    vi raven.txt
    git add .
    git commit -m "Probably a bug"
    vi raven.txt
    git add .
    git commit -m "Gently rapping"
    git push
    git lol
    git show 4481f0b
    git revert 4481f0b
    git lol
    vi raven.txt
    git show HEAD
    git lol
    git show 7b6e107
    git checkout 7b6e107 -- MarkusNewFile.txt
    cat MarkusNewFile.txt
    vi MarkusNewFile.txt
    cat MarkusNewFile.txt
    echo $LANG
    file MarkusNewFile.txt
    git status
    git commit -m "File with some encoding problems"
    git config core.editor
    ll
    subl .
    asciidoctor
    bash
    git subtree
    git help subtree
    git help config
    git status
    git lol
    git push
    git fetch
    git lol
    git lol -8
    git show b9207be
    git show 60ad79a
    git show 5fcde23
    git lol -10
    git cherry-pick b9207
    git status
    vi raven.txt
    git add raven.txt
    git status
    git commit
    git commit --allow-empty
    git lol
    git checkout -b feature
    ls
    vi ozymandias.txt
    git add .
    git commit -m "Ozzie title"
    vi ozymandias.txt
    git add .
    git commit -m "King of kings"
    ll
    vi README.md
    git add .
    git commit -m "README updates"
    git checkout master
    git lol
    git cherry-pick 2398ef2
    git lol -10
    git show HEAD
    git show 2398ef2
    git lol -10
    git merge feature
    git lol -10
    git lol
    git cherry-pick 10f6173
    git help cherry-pick
    git lol
    git branch -d feature
    vi ozymandias.txt
    git diff
    git diff -t p4merge
    p4merge
    git help diff
    git diff
    git difftool
    git config --global diff.tool p4merge
    git difftool
    git config --global difftool.prompt false
    git difftool
    git difftool -t opendiff
    git difftool -t araxis
    git difftool
    git add .
    git difftool
    git difftool --staged
    git status
    git commit -m "Mighty works"
    git lol -5
    git branch feature HEAD^
    git checkout feature
    git lol -5
    vi ozymandias.txt
    git add .
    git commit -m "Nothing beside"
    git lol -5
    git checkout master
    git status
    git merge feature
    vi ozymandias.txt
    git mergetool -t p4merge
    git status
    git commit
    git lol -5
    vi ~/.gitconfig
    history
    ll
    git config --global mergetool.keepBackup false
    git config --global mergetool.keepTemporaries false
    git config --global mergetool.prompt false
    git show HEAD --stat
    git status
    ll
    rm ozymandias.txt.orig
    vi ~/.gitconfig
    git config --global merge.tool p4merge
    git mergetool
    which p4merge
    cat /usr/local/bin/p4merge
    cd .git/hooks
    ll
    vi commit-msg.sample
    cd ..
    ll
    vi ozymandias.txt
    cd .git/hooks
    ll
    mv commit-msg.sample commit-msg
    ll
    cd ../..
    vi ozymandias.txt
    git add .
    git commit -m "Boundless"
    git commit -m "Boundless monkey"
    vi .git/hooks/pre-commit.sample
    git help init
    git lol
    git fetch
    git lol
    git checkout gh-pages
    ll
    tree
    vi index.html
    ll
    git branch
    git checkout master
    ll
    git lol --stat
    git checkout gh-pages
    vi index.html
    git add .
    git commit -m "Detail on poets"
    git commit -m "Detail on monkey(s)"
    git lol --stat
    git push
    cd ~/github/teach.github.com
    subl .
    git lol
    git checkout master
    git push
    git lol
    git branch -a
    git branch -d feature
    vi ozymandias.txt
    vi raven.txt
    vi caesar.txt
    git add .
    git commit -m "Added Caesar finally"
    git commit -m "Added Caesar finally, monkey"
    git push
    git branch
    git lol
    git fetch
    git lol
    git fetch
    git lol
    git fetch
    git lol
    git fetch
    git pull
    git lol
    git config --global branch.autosetuprebase always
    cat .git/config
    git branch -a
    git checkout martinahrer
    cat .git/config
    git config --local branch.master.rebase true
    cat .git/config
    ll
    git lol
    git show 1f5e750
    git checkout 1f5e750 -- caesar.txt
    ll
    vi caesar.txt
    git add .
    git status
    git commit -m "Noblest man"
    git commit -m "Noblest monkey (rage)"
    git push
    git checkout master
    git checkout martinahrer -- caesar.txt
    vi caesar.txt
    git status
    git commit -m "Noblest monkey"
    git push
    git lol
    git fetch
    git lol
    git push
    git pull
    git push
    git lol
    ll .git
    cat .git/HEAD
    git branch
    cat .git/refs/heads/master
    git lol
    git checkout f0d0a3f
    git lol
    ls
    vi ozymandias.txt
    vi r
    vi raven.txt
    vi README.md
    git add .
    git commit -m "Dangerous change"
    git commit -m "Dangerous monkey"
    git lol
    git checkout master
    git lol
    git show 1d05a94
    git checkout 1d05a94
    git lol
    git reflot
    git reflog
    cat .git/HEAD
    pwd
    cd ..
    cp -r newproject fb-example
    cd fb-example
    git help filter-branch
    git log --oneline -- files/
    tree
    git filter-branch --subdirectory-filter files -- master
    ls
    git lol
    ls
    pwd
    ll files
    git help filter-branch
    git filter-branch --subdirectory-filter files -- --all
    cd .
    cd ..
    rm -rf fb
    rm -rf fb-example
    cp -r newproject fb
    cd fb
    git filter-branch --subdirectory-filter files -- --all
    ll
    git lol
    ll .git
    tree .git/logs
    ll
    git lol
    git log --oneline
    git log --oneline  --decorate
    cd ..
    rm -rf fb
    cp -r newproject files-fb
    cd files-fb
    git filter-branch --tree-filter 'rm files/*' -- master
    git filter-branch --tree-filter 'rm files/* || true' -- master
    ll files
    ll
    git lol
    git checkout master
    git lol
    ll files
    ll
    cd ..
    cd newproject
    git lol
    git checkout master
    git lol
    cd ..
    cp -r newproject fb-tree
    cp -r newproject fb-subdir
    cd fb-subdir
    git filter-branch --subdirectory-filter files -- --all
    ll
    git lol
    git remote rm origin
    git lol
    open .git/refs
    git lol
    git branch -D gh-pages
    git lol
    ll
    cd ../newproject
    git lol
    git lol -- files/random5.txt
    git lol -- files/file1.txt
    git lol --follow -- files/file1.txt
    git lol --follow -- files/*
    cd ../fb-subdir
    ll
    cd ../newproject
    git lol -- ozymandias.txt
    git log -S antique
    git log -S antique --path
    git log -S antique --patch
    git log --grep antique
    git log -S antique --patch
    git config rerere.enabled true
    git lol
    git checkout -b feature
    vi caesar.txt
    git add .
    git commit -m "Potentially buggy"
    git commit -m "Potentially a money"
    git commit -m "Potentially a monkey"
    git checkout mater
    git checkout master
    vi caesar.txt
    git add .
    git commit -m "dumb mouths"
    git commit -m "dumb monkey"
    git lol
    git merge feature
    git status
    vi caesar.txt
    git add caesar.txt
    git commit
    git lol
    git reset --hard HEAD^
    git lol
    git merge feature
    git status
    vi caesar.txt
    git add .
    git commit -m "some dang monkey"
    cd .git
    ll
    cd rr-cache
    ll
    cd fffaec46465a68f62a2eecc01ef45f46ba506366



