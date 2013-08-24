---
layout: bare
title: GitHub Foundations Private Class
description: GitHub Foundations Private Class
tags: [notes, event]
path: classnotes/2013-08-09-foundations-private.md
eventdate: 2013-08-09
---

## Trainers
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [GitHub Guides YouTube Channel](http:/youtube.com/githubguides)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)
* [Merge Tool - Araxis](http://blog.ianbattersby.com/2012/08/04/git-mergetool-with-araxis-on-mac-os-x/)
* [Configure Merge and Diff Tools](http://teach.github.com/presentations/git-foundations.html#/20/3)

## Installation

* Git Installation
    * [The GitHub for Mac Client and Command Line](http://mac.github.com)
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
* [Course Slides](http://teach.github.com/presentations/git-foundations.html)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## CLI

    git --version
    git config --global user.name "GitHub Teacher"
    git config --global user.email "training@github.com"
    git config --global user.name
    git config --global user.email
    git config --global --list
    git config --global core.autocrlf input
    git config --global color.ui auto
    cd ~/scratch
    git init vr-class
    cd vr-class
    cd .git
    tree -L 1 .
    cd ..
    git config --local user.name "Jordan McCullough"
    git config --local --list
    vi index.html
    git status
    git add index.html
    git status
    git commit -m"Add first commit, include index html"
    git status
    touch style.css
    touch app.js
    touch README.md
    git status
    git config --local color.ui false
    git status
    vi README.md
    git status
    git add README.md
    git status
    git commit -m'Add README with initial text'
    git status
    vi app.js
    git status
    git add app.js
    git status
    git commit -m'Add first draft of app javascript'
    git status
    vi style.css
    git status
    git add .
    git status
    git commit -m'Add stylesheet with body font size'
    git status
    vi index.html
    git status
    git add .
    git status
    vi index.html
    git status
    git add index.html
    git status
    git commit -m'Added teacher and paragraph'
    git status
    vi README.md
    git status
    git diff
    git config --local --unset color.ui
    git diff
    git status
    git add .
    git diff
    git diff --staged
    vi README.md
    git status
    git diff
    git diff --staged
    git diff
    git diff --staged
    git diff HEAD
    git add .
    git status
    git commit -m'Format title and date, remove verbose sample text'
    git status
    git config --global alias.s "status -s"
    git s
    touch sample.txt
    git s
    vi index.html
    git s
    rm sample.txt
    git checkout index.html
    git status
    git s
    vi index.html
    vi style.css
    git status
    git s
    git diff
    vi style.css
    git s
    git diff
    git diff --color-words
    git s
    git add index.html
    git s
    git diff --staged
    vi index.html
    git diff --staged --color-words
    vi index.html
    git status
    git diff --staged --color-words
    git diff HEAD --color-words
    git diff HEAD --color-words index.html
    git status
    git reset HEAD index.html
    git status
    git add .
    git status
    git reset HEAD 
    git status
    git add index.html
    git diff --staged
    git s
    git commit -m'Change description of home page'
    git status
    git add .
    git status
    git commit -m'Update collaboration with cool designer'
    git status
    git log
    git log
    git log --stat
    git log --format=raw
    git log --oneline
    git log --oneline --stat
    touch about.html
    touch schedule.html
    git status
    git add .
    git commit -m'Add scaffold files'
    git status
    vi index.html
    vi about.html
    git status
    git diff
    git add .
    git commit -m'Normalize all head titles'
    git status
    git log --oneline --stat
    git log --oneline --stat --patch
    git log --oneline --stat --patch --color-words
    git status
    git rm about.html
    git rm schedule.html
    git s
    git status
    git commit -m'Remove about and schedule, obsolete html files'
    git status
    git log --oneline -3
    git log --oneline -3 --stat
    generaterandomchanges 5 main txt
    open .
    git status
    git config --local color.ui false
    git status
    git s
    git add main1.txt
    git status
    git s
    git add -u main1.txt main2.txt
    git status
    git commit -m'Remove random main1 and 2 files'
    git log --oneline -3 --stat
    git rm --cached main*
    git status
    git commit -m'Remove main 3-5 sample files'
    git status
    rm main*
    git status
    git log --stat --oneline -5
    ls ~/ > file-list.txt
    git status
    git add .
    git commit -m'Add file listing content'
    git status
    mkdir css
    git mv style.css css/style.css
    git status
    git commit -m'Refactor and move style to sub dir'
    generaterandomchanges 5 move-me txt
    git status
    open .
    git s
    git status
    git s -u
    git add move-me*
    git status
    git add -u move-me*.txt
    git status
    git add -u -A
    git add -A
    git status
    git commit -m'Relocate move-me text file to sub dir'
    cat file-list.txt
    git mv file-list.txt directory-content.txt
    git status
    vi directory-content.txt
    git status
    git diff
    git diff HEAD
    git status
    git add directory-content.txt
    git s
    git commit -m'Rename dir list and edit content'
    git log --oneline --stat --patch
    git log --oneline --stat -M
    git log --oneline --stat -M80
    git log --oneline --stat -M70
    open .
    touch notes.md
    git status
    vi .gitignore
    git status
    vi .gitignore
    git statsu
    git status
    git status
    git add .
    git status
    git commit -m'Add first .gitignore'
    git status
    touch notes.more
    git status
    vi .gitignore
    vi ~/.vr-ignore
    git status
    git diff
    git config --global core.excludesfile "~/.vr-ignore"
    git config --global --list
    cat .gitignore
    mkdir test
    touch test/notes.aha
    git status
    vi test/.gitignore
    git status
    git status -u
    git config --list --global
    git log --oneline --stat
    git status
    rm -rf test
    git status
    git add .
    git status
    git commit -m'Remove os specific patterns'
    vi index.html
    git s
    git add .
    git s
    git diff --staged
    git reset HEAD index.html
    git status
    git checkout -- index.html
    git status
    git log --stat --oneline -5
    git log --oneline -5
    git commit --amend
    git status
    generaterandomchanges 10 random txt
    clera
    git log --oneline
    git reset --hard a62db0d
    git log --oneline
    git reset --mixed a8794d0
    git status
    git log --oneline -6
    git add .
    git commit -m'Add random 6-8 example files'
    git log --oneline -5
    git log --oneline
    git reset --soft e6124e9
    git status
    git commit -m'Add all random files at once'
    git log --oneline -4
    git sttus
    git status
    echo "change" > random1.txt
    git add .
    git status
    git diff --staged
    git reset HEAD random1.txt
    git diff
    git log --oneline
    git reset --soft e6124e9
    git status
    git reset HEAD random6.txt random7.txt random8.txt
    git status
    git status
    git clean 
    git clean -f
    git status
    git reset --hard HEAD
    git log --oneline -5
    git status
    git reflog
    git log --oneline -10
    git reset --hard HEAD@{1}
    git log --oneline -10
    git reflog
    git reset --hard 48abe32
    git log --oneline -5
    vi index.html
    git status
    git add .
    git commit -m'Jordan was here'
    git log --online -5
    git log --oneline -5
    git revert 2dfded9
    git log --oneline -10
    git log --oneline -10 --patch
    git config --list --local
    git config --local --unset color.ui
    git status
    cd scratch
    git init move
    cd move
    ls -al > dir-list.txt
    git add .
    git status
    git commit -m'Add dir list in root'
    git tatus
    git s
    mkdir sub
    git branch feature
    mkdir sub
    git mv dir-list.txt sub/dir-list.txt
    git status
    vi sub/dir-list.txt
    git status
    git add .
    git status
    git commit -m'Move to sub dir'
    git status
    git checkout feature 
    git log --all --oneline --decorate
    git log --all --oneline --decorate --graph
    vi dir-list.txt
    git tsatus
    git status
    git add .
    git commit -m'Change in root to dir list'
    git status
    git checkout master
    git merge feature
    git status
    cd github/teach.github.com
    git ls-remote
    export PS1="$ " && cd scratch
    cd vr-class
    git graphlive 15
    cd ~/my-projects/matthew-scripts
    sub git-graphlive
    subl git-graphlive
    subl git-graphlive
    git graphlive 10
    git branch
    git branch j-feature
    git branch
    git checkout j-feature
    vi README.md
    git status
    git add .
    git status
    git s
    git commit -m'Add teacher name, title to README\
    cd .git
    cd refs
    cd heads
    cat master
    cat j-feature
    cd ../.././/
    cd ../
    git log 
    vi .git/refs/heads/j-feature
    git branch 
    git branch -d j-feature 
    git checkout master 
    git status
    git reset --hard
    git status
    git branch
    git branch -d j-feature 
    git branch feature
    git checkout feature 
    generaterandomc 3 feature txt
    generaterandomchanges 3 feature txt
    git branch -d feature
    git checkout master
    git branch -d feature
    git branch prototype
    git checkout prototype 
    generaterandomchanges 3 proto md
    git checkout feature 
    git diff --stat feature prototype
    git diff --stat prototype feature
    git checkout master
    git branch bug-fix 48abe
    git branch
    git checkout bug-fix 
    git branch
    vi .gitignore
    git add .
    git status
    git commit -m'Remove OS-specific ignores'
    git status
    git branch
    git checkout master
    git branch -d prototype
    git branch -D prototype
    git branch -m feature random-stuff
    git branch -D random-stuff 
    cat .gitignore
    git merge bug-fix
    git branch
    cat .gitignore
    git config core.editor subl
    git status
    git rm directory-content.txt
    git status
    git commit
    git config core.editor "subl -w"
    git commit
    git config --unset core.editor
    subl .git/config
    git log --all --decorate --oneline --graph
    git status
    git status
    git reset HEAD directory-content.txt
    git checkout directory-content.txt
    git status
    git status
    git branch
    git branch -d bug-fix 
    gitk --all
    generaterandomchanges 5 mainline txt
    git branch more-random
    git checkout more-random 
    generaterandomchanges 3 more md
    git checkout master 
    git merge more-random 
    git branch -d more
    git branch -d more-random 
    git reflog
    git reset --hard HEAD@{1}
    git branch feature2
    git checkout feature2 
    generaterandomchanges 3 hello txt
    git merge --no-ff feature2
    git checkout master
    git merge --no-ff feature2
    git branch -d feature2 
    git branch
    git branch feature
    git status
    vi index.html
    git commit -am"Remove title to just GitHub"
    git status
    git checkout feature
    vi index.html
    git commit -am"Just Foundation Class"
    git status
    git checkout master
    git merge feature
    git status
    vi index.html
    git status
    git add .
    git commit
    git status
    generaterandomchanges 5 main-more txt
    git branch -d feature
    git branch feature-j
    generaterandomchanges 2 master txt
    git checkout feature-j 
    vi README.md
    vi index.html
    git status
    git add README.md
    git commit -m'Update authorship'
    git add .
    git commit -m'Update teacher name'
    git branch
    git rm main-more*
    git commit -m'Tidy up spare files'
    git rm mainline*
    git commit -m'Remove mainline files'
    git rm hello*
    git commit -m'Remove hello files'
    git status
    git rebase master
    git status
    git checkout master
    git remote add origin https://github.com/githubteacher/vr-class.git
    git remote 
    git remote -v
    git push -u origin master
    git push -u -f origin master
    git remote -v
    git push -u origin master
    git fetch origin
    git branch -vv
    git pull
    git merge feature-j 
    vi README.md
    git status
    git add .
    git commit
    git push
    git push
    git push -u origin feature-j 
    cd ..
    cd ../
    cd scratch
    mkdir student
    cd student/'\

    cd student
    git clone https://github.com/githubstudent/vr-class.git
    cd vr-class
    git log --oneline
    git branch readme-improv
    git checkout readme-improv 
    vi README.md
    git status
    git add .
    git commit -m'Add fork-collaborate text'
    git branch
    git remote -v
    git push -u origin readme-improv 
    git branch
    git branch -vv
    git remote -v
    git push -u origin readme-improv 
    git branch
    git checkout -b bug-fix master
    touch BUG-FIX-NOAW.txt
    echo "bug fix" > BUG-FIX-NOAW.txt
    git add .
    git commit
    git branch
    git push origin bug-fix 
    cd ..
    cd ..
    cd ../
    cd scratch
    cd vr-class
    git pull
    git blame BUG-FIX-NOAW.txt
    git blame index.html
    git branch
    vi someitn.txt
    vi index.html
    git status
    git branch class-wrap-up
    git status
    git stash save "Changes to home, added something to something file"
    git status
    git branch
    git checkout class-wrap-up 
    git stash --list
    git stash list
    git stash pop
    git add index.html
    git commit -m'Changes to home page'
    git status
    git stash
    git status
    git checkout master
    git stash list
    git stash pop
    git stash save "Something content file"
    touch last-notes.txt
    touch more-info.txt
    git status
    git stash --included-untracked 
    git stash --include-untracked 
    git stash list
    git branch something stash@{1}
    git branch
    git checkout something 
    git status
    git log -1
    git branch
    git checkout master 
    git merge something 
    git log --oneline
    git rebase -i b3efc46
    git status
    vi README.md
    git add .
    git status
    git rebase --continue
    git log --oneline -10
