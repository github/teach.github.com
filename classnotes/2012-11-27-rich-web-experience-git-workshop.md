---
layout: bare
title: Rich Web Experience Git/GitHub Workshop
description: An all-day Git workshop at the Rich Web Experience 2012
tags: [notes, conference, workshop]
path: classnotes/2012-11-27-rich-web-experience-git-workshop.md
eventdate: 2012-11-27
---

Held on November 27, 2012

Taught by:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* [GitHub Training](http://training.github.com/) ([Twitter](http://twitter.com/githubtraining), [GitHub](https://github.com/githubtraining))

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

## Class-Specific Resources
* [Git Parable](http://tom.preston-werner.com/2009/05/19/the-git-parable.html)
* [Git Ref](http://gitref.org)
* [GitHub Enterprise](https://enterprise.github.com)

## Common Resources
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

# CLI History

    git clone https://github.com/matthewmccullough/dotfiles
    cd dotfiles
    git config --global user.email "matthew@github.com"
    git config --local user.email "matthew+demoguy@github.com"
    git config --global user.name "Matthew CrazyOSS McCullough"
    git config --global user.name "Matthew McCullough"
    git config --local user.name "Matthew CrazyOSS McCullough"
    git config user.name
    git config user.email
    git config --local user.name "Matthew  McCullough"
    git config --local user.name "Matthew Øredev McCullough"
    
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    mate matthewmccullough.txt
    git commit -m "This is my first commit"
    git log -1
    git config --global color.ui auto
    git log > ../log.txt
    vim ../log.txt
    cat ../log.txt
    git reset HEAD matthewmccullough.txt
    git checkout -- matthewmccullough.txt
    git diff HEAD
    git commit -m "Part 1 of the changes"
    git add matthewmccullough.txt
    git commit -m "Part two of the changes"
    git log --stat
    git log --patch -1
    git log --pretty=raw
    git commit -m"Ignoring several more patterns"
    vim monkey.log
    git add *
    git add -f monkey.log 
    git rm monkey.log
    git rm -f monkey.log
    touch monkey.log
    cat .gitignore
    mkdir stuff
    touch stuff/monkey.log
    touch stuff/sarbox-compliance.log
    cd stuff
    vim .gitignore
    git status -s
    git status -u
    git add .gitignore
    git commit -m "Not ignoring sarbox files"
    cd src
    git commit -m "Sarbox tracking"
    cp matthewmccullough.txt matthewmccullough1.txt
    cp matthewmccullough.txt matthewmccullough2.txt
    cp matthewmccullough.txt matthewmccullough3.txt
    cp matthewmccullough.txt matthewmccullough4.txt
    cp matthewmccullough.txt matthewmccullough5.txt
    git commit -m"All the files things"
    git rm matthewmccullough1.txt
    rm matthewmccullough2.txt
    git rm matthewmccullough2.txt
    open .
    git add -u .
    git commit -m "Deleting all unecessary files"
    git log --stat -1
    git log --stat -3
    git checkout HEAD
    touch NEWSTUFF.TXT
    git add NEWSTUFF.TXT
    git checkout 5a2377c
    git reset HEAD NEWSTUFF.TXT
    rm NEWSTUFF.TXT
    git commit -m"Copied files"
    git mv matthewmccullough\ copy\ 2.txt copy1.txt
    git rm matthewmccullough\ copy\ 3.txt
    git add stuff/.
    vim matthewmccullough\ copy.txt
    git add -A .
    git commit -m"Renamed all of the things"
    git log --stat -2
    git log --stat -1 -M
    git log --stat -1 -M50
    git log --stat -1 -M90
    git log --stat -1 -M80
    git log --follow -- matthewmccullough.txt
    git commit -m"Copy of a file"
    git log --stat -M -1
    git log --stat -C -1
    git log --stat -C  -C -1
    git config --global alias.logc "log --stat -C -C -1"
    git logc
    git config --global --list --get-all alias
    git config help
    git help config
    git config --global --get-all "alias.*"
    git config --global --get-all 'alias.*'
    git config --global --get-all 'alias'
    git config --global --list | grep 'alias'
    git log -S "hello"
    git log -p -S "hello" 
    git log -p -S "hi" 
    git log -p -S "DOLOR" 
    git log --stat -S "DOLOR" 
    git log -s
    git log --summary
    cp -rf hellogitworld hellogitworldtrainer
    mv hellogitworld hellogitworldstudent
    git remote -v
    git ls-remote trainer | more
    git remote show trainer
    git merge --dry-run trainer/master
    git merge --no-commit --no-ff trainer/master
    echo RUN MY TESTS HERE
    git merge --abort
    git ls-remote trainer
    git remote add trainer https://github.com/githubtrainer/hellogitworld.git
    git fetch trainer refs/pull/15/head
    git merge --no-commit --no-ff FETCH_HEAD
    git diff --staged
    git commit -m"Brought in #15"
    vim .git/config
    git push origin
    git pull 
    git merge origin/master
    git fetch trainer
    git pull trainer
    git pull trainer master
    git merge trainer/master
    git log --graph
    git log --graph --oneline
    git config alias.servehere
    git daemon --verbose --informative-errors --reuseaddr --export-all --base-path=. --enable=receive-pack
    ifconfig
    git remote add matthew git://10.0.1.16/hellogitworldtrainer
    git ls-remote matthew
    git fetch matthew
    cd hellogitworldtrainer
    git bundle create ../matthew.bundle master
    git ls-remote file:///Volumes/STUDENTDISK/matthew.bundle
    
    git ls-remote file:///Users/mccm06/Documents/Scratch/matthew.bundle
    cd hellogitworldstudent
    git bundle create ../matthew2.bundle master
    git ls-remote file://../matthew2.bundle
    git fetch refs/heads/master file://../matthew2.bundle
    git fetch refs/heads/master file://$PWD../matthew2.bundle
    git branch -a |more
    rm -rf hellogitworld*
    git clone https://github.com/githubtrainer/hellogitworld githubtrainer
    generaterandomfiles 9001 sample txt
    git commit -m"Nine thousand"
    git commit -m"Matthew was here"
    cd hellogithubtrainer
    gitk &
    gitk --all &
    git config --global credential.helper "cache --timeout=300"
    git pushh
    git branch matthewmccfeature1
    git branch
    vim matthewmccfeaturefile.txt
    git commit -m"Feature from matthew"
    git push -u origin matthewmccfeature1
    git checkout ChristophersTotallyPointlessFeature
    git branch -a | more
    git merge ChristophersTotallyPointlessFeature
    git fetch
    git merge origin/ChristophersTotallyPointlessFeature
    git pull
    git branch -d ChristophersTotallyPointlessFeature
    Echo What did I do?
    echo "What did I do?"
    git push 
    git pull --rebase
    history
    git checkout matthewmccfeature1
    echo HELLO > matthew1.txt; git add .; git commit -m"Hello"
    echo HELLO >> matthew1.txt; git add .; git commit -m"Hello"
    git rebase -i b06ae0b
    git rebase --continue
    mate ~/.gitconfig
    git difftool master matthewmccfeature1
    git branch conflict1
    git commit -a -m"Matthew on master"
    git checkout conflict1
    vim matthewmccullough.txt
    git commit -a -m"Tim says"
    git merge conlict1
    git merge conflict1
    git mergetool
    git commit 
    git reset --hard 2000c38
    git log --oneline
    git reset --hard HEAD@{1}
    git config --global alias.undoone "git reset --hard HEAD@{1}"
    git config --global alias.undoone "reset --hard HEAD@{1}"
    git undoone
    git reflog
    svn checkout https://github.com/matthewmccullough/test1/trunk insvnformat
    svn checkout https://github.com/matthewmccullough/dotfile/trunk insvnformat
    svn checkout https://github.com/matthewmccullough/dotfiles/trunk insvnformat
    
    cd insvnformat
    svn log
    git svn clone https://github.com/githubtrainer/hellogitworld hgwassvn
    git svn clone --stdlayout https://github.com/githubtrainer/hellogitworld hgwassvn1
    history | grep svn
    git svn clone --stdlayout http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm hgwsub
    cd hgwsub
    git branch -a
    git commit -m"Where does this go"
    echo STUFF >> newfile2.txt
    git commit -a -m"Again
    git commit -a -m"Again"
    git log --pretty=raw -1
    git remote add github https://github.com/githubtrainer/mynewproject
    git svn rebase
    git svn info
    git svn dcommit
