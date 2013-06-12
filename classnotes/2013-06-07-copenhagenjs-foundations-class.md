---
layout: bare
title: Git and GitHub Foundations Online
description: Git and GitHub Foundations Online Class Notes
tags: [notes,notes,online,class]
path: classnotes/2013-06-04-git-and-github-foundations-online.md
eventdate: 2013-06-04
---

## Teachers

* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))
* John Britton ([Twitter](http://twitter.com/johndbritton), [GitHub](https://github.com/johndbritton))

## Materials

### Suggested Books, Articles

* [Free ProGit Book](http://git-scm.com/book)
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Course Materials, Links

* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/presentations/git-foundations.html)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

### Resources
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [Merge Tool - Araxis](http://blog.ianbattersby.com/2012/08/04/git-mergetool-with-araxis-on-mac-os-x/)
* [Configure Merge and Diff Tools](http://teach.github.com/presentations/git-foundations.html#/20/3)

### SVN Remote, Git Local

* `git svn clone <url> -s`
* Proceed with standard Git operations
* `git svn dcommit`
* `git svn rebase`


### Diff Tool
* [P4Merge](http://www.perforce.com/downloads/Perforce-Software-Version-Management/complete_list/Free%2020-User%20Edition#10)

* `git config diff.tool <tool-name-in-config>`
* `git config difftool.prompt false`
* `git config difftool.<tool-name>.cmd "<path [args]>"`
    
        [diff]
            tool = p4merge
        [difftool "p4merge"]
            cmd = "/Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE"
        [difftool]
            prompt = false

## CLI

    git init jordan
    ls -al
    tree .git -d
    tree .git
    cd jordan
    tree .git
    pwd
    tree -L 1
    tree -L 1 .git
    rm -rf .git/hooks
    tree .git
    touch foo
    git status
    git add foo
    git status
    git commit -m 'add foo'
    tree .git
    tree .git |less
    git hash-object foo
    shasum foo
    git hash-object foo
    nano foo
    git hash-object foo
    git add foo
    touch bar
    git hash-object bar
    tree .git/
    tree .git/ |less
    git hash-object foo
    tree .git/ |less
    git log
    tree .git/ |less
    git log --format=raw
    tree .git/ |less
    git show 4d5fcadc293a34
    git ls-tree 4d5fcadc293a34
    git hash-object bar
    git add bar
    git commit -m 'add bar'
    tree .git
    tree .git |less
    git log
    git log --format=raw
    git ls-tree ea41dba10b54a794284e0be009a11f0ff3716a28
    ls -la .git/objects/e6/9de29bb2d1d6434b8b29ae775ad8c2e48c539
    ls -la .git/objects/e6
    cat\ .git/objects/e6
    cat .git/objects/e6/9de29bb2d1d6434b8b29ae775ad8c2e48c5391
    git log --format=raw
    git ls-tree ea41dba10b54a794284e0be009a11f0ff3716a28
    tree .gi
    tree .git
    cat .git/refs/heads/master 
    git show 2b3f3e943b418f17876b6c3e7a07818fdd3d9ac2
    git log
    nano .git/refs/heads/whats-this
    tree .git
    git branch
    git branch new-branch
    git branch
    cat .git/refs/heads/new-branch
    git log
    git branch master~1
    git branch another-branch master~1
    cat .git/refs/heads/another-branch
    git log
    git branch
    git branch -m whats-this jordans-work
    git branch
    tree .git | tree
    tree .git | less
    ls .git
    git config --global user.name
    git config --global user.email
    pwd
    git config --local user.name "JAM"
    git config --local --list
    subl .git/config
    git status
    touch index.html
    touch app.js
    touch styles.css
    git status
    git add app.js index.html styles.css
    git status
    git commit -m'Add first three scaffold files'
    git status
    vi index.html
    git status
    vi app.js
    git status
    vi styles.css
    git status
    git add styles.css
    git status
    git add .
    git status
    git reset --mixed HEAD styles.css
    git status
    git commit -m'Add initial JS IIFE'
    git status
    git add .
    git status
    git commit -m'Add body selector and font size'
    git log --format=raw
    git log --stat
    git status
    vi app.js
    git status
    git add .
    git status
    git status
    vi app.js
    git status
    cat app.js
    git diff
    git diff --staged
    git diff --cached
    git diff --staged
    git diff
    git diff HEAD
    git status
    git add .
    git status
    git commit -m'Add john and jordan vars'
    git status
    vi index.html
    git status
    github .
    git status
    git diff
    git status
    git diff
    git log
    git log --patch
    git log
    git status
    git log --oneline
    git reset --hard HEAD~3
    git log --oneline
    git log --graph --all --decorate --oneline
    git reflog
    git reset --hard HEAD@{1}
    ls -al | less
    cat index.html
    git log --graph --all --decorate --oneline
    git reflog
    git reset --hard HEAD@{1}
    git status
    git remote add origin https://github.com/githubteacher/jordan.git
    git branch
    git push -u origin master
    git config --global alias.lol "log --decorate --all --oneline --graph"
    git lol
    generaterandomchanges 5 copenhagen txt
    git status
    git lol
    git push
    git reset --hard HEAD~6
    git lol
    git push
    git push -f
    git lol
    ls .git/refs
    ls .git/refs/remotes
    ls .git/refs/remotes/origin
    cat .git/refs/remotes/origin/master
    git lol
    generaterandomchanges 5 copenhagen txt
    git lol
    cat .git/refs/remotes/origin/master
    git remote -c
    git remote -v
    git remote add foo aklfjsdfjsaldkghjasdlgh
    git remote -v
    git remote -d foo
    git remote rm foo
    git remote -v
    git status
    git lol
    git push 
    git lol
    git status
    git lol
    git fetch origin
    git lol
    git pull
    cat index.html
    git lol
    git branch -vv
    pwd
    cd ..
    cd scratch
    rm -rf hellogitworld
    git clone https://github.com/githubteacher/hellogitworld.git
    cd hellogitworld
    git branch
    git branch -a
    git checkout bisect
    git branch
    cat README.md
    cat README.md |less
    git log
    git bisect start
    git bisect bad
    cat README.md |less
    git bisect good HEAD~11
    cat README.md |less
    git bisect run mvn test
    git bisect log
    git status
    git branch
    git log
    git bisect log
    gitk
    git checkout master
    gitk 
    github .
    git remote -v
    git remote rm origin
    github .
    git lol
    git reset --hard HEAD~3
    git lol
    gitk --all `git reflog | cut -c1-7`
    git help gc
    cd ..
    pwd
    git init jordan
    cd ..
    rm -rf jordan
    git clone https://github.com/githubteacher/jordan.git
    mv jordan ~/scratch/jordan
    cd scratch
    cd jordan
    cd jordan
    ls -al
    git lol
    git remote rm origin
    git lol
    git rebase -i 32bc8e3
    git lol --stat
    git reflog
    git reset --hard HEAD@{8}
    git lol
    git rebase -i 32bc8e3
    git lol
    git reflog
    git branch
    pwd
    git remote -v
    cd ../../
    rm -rf jordan
    git clone https://github.com/githubteacher/jordan.git
    cd jordan
    git branch
    git branch -a
    git branch feature-jordan
    git branch
    git checkout feature-jordan 
    generaterandomchanges 5 jordan txt
    git lol
    git checkout master
    git branch
    tree .
    git branch
    ls -al
    git branch
    tree .
    git checkout feature-jordan 
    tree .
    git checkout master
    generaterandomchanges 3 main md
    tree .
    tree . | less
    git checkout feature-jordan 
    tree . | less
    git lol
    git branch
    git checkout master
    touch BUG_FIX.txt
    git commit -am'Bug fix to master prod'
    git add .
    git commit -am'Bug fix to master prod'
    git checkout feature-jordan 
    git lol
    git branch
    git rebase master
    git lol
    git checkout master
    git branch
    git lol
    git merge feature-jordan 
    git lol
    git push
    git lol
    git branch
    git branch -d feature-jordan 
    git branch
    git lol
    git branch feature-john
    git branch
    vi index.html
    git add.
    git add .
    git status
    git commit -m'Change title of home page'
    vi index.html
    git add .
    git commit -m'Removed date from body\

    git checkout feature-john 
    git lol
    vi index.html
    git add .
    git commit -m'Title change for feature'
    git status
    git lol
    git rebase master
    git status
    vi index.html
    git status
    git add index.html
    git status
    git rebase --continue
    git status
    cat index.html
    git config --global rerere.enable true
    git status
    git checkout master
    vi styles.css
    git add .
    git commit -m'Change font to 60px default'
    git checkout feature-john 
    git status
    vi styles.css
    git status
    git add .
    git commit -m'Change font to ems'
    git status
    git lol
    git checkout master
    git merge feature-john 
    vi styles.css
    git status
    git add .
    git status
    git commit
    git lol
    git log --format=raw -1
    git log --format=raw -1 --stat
    git lol
    git branch -d feature-john 
    git lol
    git branch
    git branch -a
    git lol
    git show master
    git show master --format=raw
    git branch
    git checkout -b ff
    generaterandomchanges 3 test txt
    git log
    git lol
    git checkout master
    git merge ff
    git lol
    git rev-parse master~3
    export PS1="$ " && cd scratchcd scratch
    cd jordan
    git status
    git lol
    nano .git/refs/heads/master
    git lol
    git merge ff -no-ff
    git merge ff --no-ff
    git lol
    git status
    git push
    git satus
    git status
    git branch
    git branch -d ff
    vi index.html
    git statsu
    git status
    vi styles.css
    git status
    touch dependency.js
    git status
    git stash save "Home page cleanup, h1 size upped"
    git status
    git stash list
    git stash pop
    git status
    git stash --include-untracked 
    git status
    git stash list
    vi index.html
    git status
    git stash
    git stash list
    git stash drop stash@{0}
    git stash list
    git stash pop
    git branch
    git stash save "index and style changes"
    git stash --include-untracked 
    git stash list
    git branch stash-test
    git checkout stash-test 
    git stash apply STASH@{1}
    git stash list
    git add .
    git commit -m'Changes and stuff'
    git status
    git checkout master
    git help stash
    git stash list
    git show stash@{1}
    git diff stash@{1}
    git branch
    git diff stash@{1}
    git stash git status
    git stash list
    git branch
    vi index.html
    git stash save "remove hello from home page"
    git stash list
    gitk --all `git reflog | cut -c1-7`
    git stash list
    git checkout -b changes-from-stash stash@{0}
    git log --oneline
    gitk --all `git reflog | cut -c1-7`
    git branch
    git checkout master
    git status
    vi styles.css
    git stash
    vi styles.css
    git stash pop
    git status
    git add .
    git commit -m'Change to crazy big font'
    git status
    git stash pop
    vi styles.css
    git status
    git reset --hard HEAD^
    git status
    vi styles.css
    git status
    git checkout -b stash-branch 
    git add .
    git commit -m'just a stash'
    git status
    git checkout master
    git status
    git checkout stash-branch 
    git reset --mixed HEAD^
    git status
    git checkout master 
    git status
    git status
    cd ~/scratch/jordan
    git status
    git status
    git reset --hard
    git status
    git status
    git checkout -b 
    git checkout -b feature-x
    generaterandomchanges 5 feature rb
    pwd
    git branch
    git log -1
    git push -u origin feature-x 
    git ls-remote
    git fetch origin refs/pull/1/head
    git diff FETCH_HEAD
    git branch
    git checkout master
    git diff FETCH_HEAD
    git merge FETCH_HEAD
    git lol
    pwd
    git tag 571d0c6 RAND_TXT
    git tag RAND_TXT 571d0c6
    git lol
    git branch
    git checkout RAND_TXT
    git lol
    git checkout master
    git tag -a -m"Really good work" PROD_1 HEAD^^
    git lol
    git show PROD_1
    git remote -v
    git push --tags origin 
    git lol
    git help tag
    git tag -d RAND_TXT 
    git tag -a QA HEAD^^
    git status
    git lol
    git tag -f -a QA HEAD
    git lol
    git status
    git status
    git branch
    git show --format=raw HEAD
    git ls-tree be9acd2073c1296317114d297c01c80d202b2ea6
    mkdir src
    cd src
    touch project.proj
    git add project.proj
    git commit -m 'add a project file in src dir'
    git status
    git show --format=raw HEAD
    git show b1d5741560e9428026cb4fff68ed6fc21f40da02
    git ls-tree b1d5741560e9428026cb4fff68ed6fc21f40da02
    cd ..
    git show --format=raw HEAD
    git status
    git ls-tree b1d5741560e9428026cb4fff68ed6fc21f40da02
    mv copenhagen3.txt cph.txt
    git status
    git add cph.txt
    git status
    git commit -m'move a file'
    git status
    git reset HEAD~1
    git status
    git status
    git add -u copenhagen3.txt
    git status
    git add cph.txt
    git status
    git commit -m 
    git commit -m'move a file'
    git show HEAD --format=raw
    git ls-tree 675aa94675a2bccca5454023929d25887d8d1278
    git status
    ls -al ~ > dir-listing.txt
    git status
    git add .
    git commit -m'Add directory listing'
    git log -1 --oneline --stat
    git log -1 --oneline --stat
    cat dir-listing.txt
    nano dir-listing.txt
    git status
    git diff
    mv dir-listing.txt listing.txt
    git status
    git add -u dir-listing.txt
    git status
    git add listing.txt
    git status
    nano listing.txt
    git status
    git add listing.txt
    git status
    git reset --hard HEAD
    git add listing.txt
    nano dir-listing.txt
    git status
    git mv dir-listing.txt listing.txt
    git status
    git add listing.txt
    git status
    git commit -m 'move a file and change contents'
    git log 
    git log --stat
    git log -M --stat
    git help log
    git log -M70 --stat
    git log -M60 --stat
    git log listing.txt
    git log --follow listing.txt
    git log --stat --follow listing.txt
    git log --stat --follow -M70 listing.txt
    cd scratch/jordan
    touch newfile.txt
    git status
    cd ~/github/teach.github.com
    cd presentations/dependencies
    git log --oneline -5
    cd impressjs
    git checkout HEAD^^
    git remote -v
