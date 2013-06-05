---
layout: bare
title: W-JAX Git Workshop
description: W-JAX Git Workshop Class Notes
tags: [notes, inperson, class]
path: classnotes/2012-11-09-wjax-git-workshop.md
eventdate: 2012-11-09
---

Held on November 9, 2012

Distributed version control is all the rage these days, but is it worth it? It has 
been transformative for the dozens of organizations and thousands of developers that 
I've mentored on the unique implementation called Git. But don't take my word for it. 
Discover the joy of a version control system that works for you, not against you, 
in a hands-on workshop. Bring a Windows, Mac, or Linux laptop and we'll install, set 
up, use and bend Git into workflows that weren't even possible with the version 
control systems of yesteryear. Be prepared to rethink how lightweight, fast, and 
refreshing source code control can be. After completing this workshop you'll be 
able to do practical work with Git for your day job or weekend OSS hobby. Attendees 
should have pre-installed Git on their laptops.

Taught by:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Kevin Sawicki ([Twitter](http://twitter.com/kevinsawicki), [GitHub](https://github.com/kevinsawicki))

## Notes
http://teach.github.com/classnotes/2012-11-09-wjax-git-workshop

## Chat Room
https://githubtraining.campfirenow.com/d8903

## Instructors
* Matthew McCullough
* Kevin Sawicki

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

## Other Tips

* Set Notepad++ as default editor
    * `git config --global core.editor "'C:/Program Files (x86)/Notepad++/notepad++.exe'\
    -multiInst -nosession -noPlugin"`

## Windows, Mac, Linux CR, CRLF Line Endings, Whitespace Config
* http://stackoverflow.com/questions/1889559/git-diff-to-ignore-m
* `git config --global core.autocrlf true`
* http://schacon.github.com/git/git-config.html
* `core.whitespace = cr-at-eol`
* `git config --global core.whitespace cr-at-eol`
* `git diff --ignore-space-at-eol`
* `git diff --ignore-space-change`
* `git diff --ignore-all-space`

## Outline
* Introductions
* History of Git and your initial setup
* Git configuration and its inheritance
* SSH Authentication and your first repository
* Understanding and thinking in Git's three stages
* Adding, committing, and diff-ing code changes
* The Similarity Index; Moving, Renaming, and Removing files
* Network protocols, proxies, and Git's speed
* Managing and using Git Remotes
* Overview of Git's Architecture
* Branching, Tagging, and Stashing
* Merging, Rebasing, and managing conflicts
* Undoing your work with Git
* Making Git work with SVN

## Command Line History
    git --version
    git init newproject
    cd newproject
    git config user.name
    git config user.email
    git config --local user.email
    git config --global user.email
    git config --system user.email
    git config --global user.email "matthew@github.com"
    git config --global user.name "Matthew McCullough"
    
    git commit -m "My first commit"
    git show HEAD
    git config core.editor
    vim first.txt
    git diff --color-words
    git diff --word-diff
    git add first.txt
    git diff --color-words --staged
    
    git init testeol
    cd testeol
    mate testline.txt
    git config --local core.autocrlf false
    git add
    git diff -staged
    git config core.whitespace cr-at-eol
    git diff
    git diff --staged
    git diff --staged --color-words
    
    git log
    git log --stat
    git log -p
    git log --pretty=raw
    git config alias.l2
    git config --global alias.l3 "log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
    git l2
    vim .gitignore
    vim build.log
    cat /Users/mccm06/Dropbox/Teach/Courses/Git/git-eclipse-workspace/Test/.gitignore
    vim /Users/mccm06/Dropbox/Teach/Courses/Git/git-eclipse-workspace/Test/.gitignore
    git commit -m "Ignoring log files"
    rm first.txt
    git reset HEAD first.txt
    git checkout -- first.txt
    mv first.txt second.txt
    vim second.txt
    git add -A .
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M70
    git log --stat -1 -M69
    git log --stat -1 -M68
    git log --stat -1 -M67
    mate third.txt
    git commit -m"Third"
    cp third.txt fourth.txt
    git commit -m"Fourth"
    git log --stat -1 -C
    git log --stat -1 -C -C
    git config --global alias.logcpy "log --stat -1 -C -C"
    git logcpy
    git blame fourth.txt
    z git_git
    git blame rerere.c
    git blame -C rerere.c
    cd -
    git blame second.txt
    git gc
    git log --oneline
    git rev-parse d207e
    git rev-parse HEAD
    git init newproject1
    cd newproject1
    open .git
    touch newfile.txt
    git commit -m "First new file"
    git cat-file -t 64a1521
    git cat-file -p 64a1521
    git cat-file -t 41f08bb432460e502f698fa767b5f84e9727351f
    git cat-file -p 41f08bb432460e502f698fa767b5f84e9727351f
    git cat-file -t e69de
    git cat-file -p e69de
    echo 16*16*16*16*16*16*16 = 268435456
    git cc-off
    git clone https://github.com/githubstudent/hellogitworld.git hgwstudent
    gitk --all
    git commit -a -v 
    git remote -v
    to.scratch
    git servehere
    git branch featurematthew
    vim matthewfeature.txt
    git commit -m "On the branch"
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git commit -m"Over nine thousand
    git commit -m"Over nine thousand"
    git checkout featurematthew
    history
    git branch -av
    git branch -av | more
    git branch -vvv
    git push -u origin featurematthew
    git branch -vvv -a
    git branch -vvv -r
    git branch -vvv -l
    git add .
    
    git pull -r
    echo FIXEDIT >> fix.txt
    git commit -a -m"Matthew fixed it"
    git clone https://github.com/githubtrainer/hellogitworld ghwtrainer
    cd ghwtrainer
    git ls-remote
    git ls-remote | more
    git fetch origin refs/pull/20/head
    git show FETCH_HEAD
    git fetch origin refs/pull/28/head
    git merge FETCH_HEAD
    git rm fix.
    git commit 
    git push
    cd .
    cd hgwstudent
    git checkout master
    git remote add trainer https://github.com/githubtrainer/hellogitworld
    git fetch trainer
    git rm fix.txt
    git merge --abort
    git merge trainer/master
    git add fix.txt
    git commit
    git log -1 --format=raw
    git tag RELEASE_2.0
    git tag
    cat .git/refs/tags/RELEASE_2.0
    git log -2 --format=raw
    git tag -a RELEASE_3.0
    git show RELEASE_2.0
    git show RELEASE_3.0
    git tag -s RELEASE_4.0
    git show RELEASE_4.0
    git tag -v RELEASE_4.0
    git merge RELEASE_3.0 RELEASE_4.0
    vim fix.txt
    git stash
    git stash --untracked
    git stash -u
    git stash list
    git stash show stash@{0}
    git stash pop
    git stash save "You named this"
    git config --global rerere.enabled true
    rm fix.txt
    git status
    git reset --hard
    ls
    git reset --hard 3fdc297
    git l3
    git reset --hard HEAD~4
    git reset --hard HEAD@{2}
    git reset --hard HEAD~5
    git reflog
    history | grep svn
    git svn clone http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm/trunk hgwsub
    rm hgwsub
    cd ..
    clear
    pwd
    git svn clone --stdlayout http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm hgwsub
    cd hgwsub
    git branch 
    git branch -a
    git branch -a | more
    git commit -m "Commit it"
    git commit -am "Commit it"
    git svn dcommit
    git svn clone --stdlayout http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm hgwsubexit


## Chat Room

    git init newproject
    git status
    
    windows: start .git
    
    git config user.name
    git config user.email
    
    git config --global user.email "matthew@github.com"
    git config --global user.name "Matthew McCullough"
    
    git commit -m "My first commit"
    
    git show HEAD
    
    git config --global core.editor "YOURPATHTOEDITOR"
    
    https://github.com/github/gitpad
    
    git diff
    git diff -w
    git diff --word-diff
    git diff --color-words
    
    windows and notepad++: git config --global core.editor "'C:\Program Files (x86)\Notepad++\notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
    
    http://www.kitware.com/blog/home/post/85
    
    editor = "'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
    
    git log
    git log --stat
    git log -p
    git log --color-words
    
    
    git config --global alias.l2 "log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-    commit --date=relative"    
    
    git config --global core.excludesfile ~/.gitignore
    
    git add -u <FILENAME>
    # for deletions
    
    git add -A .
    # for everything (all state transitions)
    
    http://www.loremipsum.de/
    
    git log --oneline
    
    echo "16^7" | bc -l
    
    https://github.com/githubtrainer/hellogitworld
    
    git branch -av
    
    git branch <NEWBRANCHNAME>
    
    git checkout <NEWBRANCHNAME>
    
    git branch -vvv
    
    git branch -r
    #git remote only
    
    git remote add trainer https://github.com/githubtrainer/hellogitworld
    
    git fetch trainer
    
    git tag TAGNAME
    git tag TAGNAME <REF>
    git tag
    
    git commit --gpg-sign
    # As of 1.8
    
    rerere = reuse recorded resolution
    
    git svn clone --stdlayout http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm/trunk hgwsub
