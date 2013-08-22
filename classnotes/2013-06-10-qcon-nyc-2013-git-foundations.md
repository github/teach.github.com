---
layout: bare
title: QCon NYC 2013 Git Foundations (Get Good at Git & GitHub)
description: QCon NYC 2013 Git Foundations Class Notes
tags: [notes, conference, workshop]
path: classnotes/2013-06-10-qcon-nyc-2013-git-foundations.md
eventdate: 2013-06-10
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

## Resources
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
* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false

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

# Supplemental Topics based on Student Questions
* Show the process of using Git
* When I get stuck in a funny state, how do I avoid recloning?
* Show off GUIs: SourceTree, GitHUb for Mac, SmartGit
* Git ignores
* Git line endings
* Network concepts

## Continuous Integration
* [Jenkins Book](http://www.wakaleo.com/books/jenkins-the-definitive-guide)
* [Jenkins Promoted Builds Video](http://www.youtube.com/watch?v=Gd8OfAmKkMQ)
* [Janky - Code](https://github.com/github/janky)
* [Janky - Blog Post](https://github.com/blog/1013-janky)
* [GitHub Commit Status API](https://github.com/blog/1227-commit-status-api)
* [Jenkins Commit Status Plugin](https://github.com/controlgroup/jenkins-github-commit-status)
* [Jenking Commit Status on GitHub - Shortcut](http://bruno.im/2012/oct/24/github-pull-requests-status-jenkins/)
* [Git Notes Jenkins Plugin](https://wiki.jenkins-ci.org/display/JENKINS/git-notes+Plugin)
* Consultant for workflow, process, troubleshooting: [Peter Bell](http://training.github.com/trainers) via email at training@github.com.


## Command Line History

    git --version
    git config user.name
    clear
    git config --global user.name "Matthew McCullough"
    git config user.name
    git config user.email
    git config --global user.email "matthew@github.com"
    git config --global color.ui auto
    clear
    pwd
    git init qcon1
    cd qcon1
    git status
    open .
    clear
    pwd
    vim first.txt
    git status
    git status -sb
    git add first.txt
    git commit -m "My first commit"
    clear
    to.scratch
    ls
    cd qcon1
    clear
    git graphlive 25
    clear
    cd qcon1
    treelive 3 10
    ls
    treelive 2 10
    treelive 2
    git log
    cd ..
    pwd
    git clone https://github.com/githubteacher/hellogitworld.git
    cd hellogitworld
    git status
    cd ..
    cd hellogitworld
    git graphlive 25
    cd ..; cd hellogitworld;treelive 2
    git log
    git branch 
    git branch -r
    git fetch
    git checkout tlberglund
    git branch
    git checkout master
    git checkout -
    pwd
    git remote add myfork https://github.com/githubstudent/hellogitworld.git
    git remote -v
    git help branch
    git fetch myfork
    git branch -r
    git branch matthewmccullough
    git checkout matthewmccullough 
    git status
    vim matthewmccullough.txt
    git add matthewmccullough.txt
    git commit -m"My branch change"
    git push -u myfork matthewmccullough 
    git fetch origin
    ls
    git checkout master
    git pull
    ls
    git pull
    gitk --all&
    clear
    git reflog
    git reset --hard HEAD~1
    git reflog
    git reset --hard b86860f
    open
    open .
    clear
    pwd
    ls
    git branch green
    git checkout green
    mkdir sourcecode
    mv *.txt sourcecode
    cd sourcecode
    ls
    mv peterbell2.txt peterscotlandbell.txt
    git status
    pwd
    cd ..
    git add -A .
    git status
    git commit -m"Renamed"
    git checkout master
    vim peterbell2.txt
    vim raven.txt
    git add .
    git status
    git commit -m "Hotfix"
    git merge green
    which -a historytailzsh
    cat /Users/mccm06/.dotfiles/scripts/historytailzsh | pbcopy
    echo end of QCON morning
    welcome end of qcon morning
    clear
    ls
    git checkout master
    git reset --hard origin/master
    ls
    mv README.txt README.md
    git mv README.txt README.md
    git add -A .
    git status
    generaterandomchanges 10 sample txt
    git s
    git branch rebaseten
    git reset --hard origin/master
    git status
    clear
    git branch 
    git remote -v
    git pull
    git checkout master
    git pull
    git log -1
    git push myfork master
    git branch matthewmccullough
    git branch matthewmccullough1
    git checkout matthewmccullough
    git branch -vv
    generaterandomchanges 3 cherrypick txt
    git push myfork matthewmccullough
    git remote add matthew https://github.com/matthewmccullough/hellogitworld
    git fetch matthew
    git checkout master
    git cherry-pick e888
    git remote add vlad https://github.com/vladistan/hellogitworld
    git fetch vlad
    git fetch https://github.com/vladistan/hellogitworld vladistan
    git merge FETCH_HEAD
    cd ..
    ls
    svn co https://github.com/matthewmccullough/hellogitworld/trunk hgwsvn
    brew install svn
    brew unlink subversion
    brew install svn
    to.scratch
    ls
    cd hellogitworld
    ls
    git remote -v
    generaterandomchanges 2 sample txt
    git push 
    git pull
    git config branch.master.rebase true
    git push 
    git pull
    generaterandomchanges 2 sample txt
    git push
    git pull 
    git push

## Chat Room History

    matthewmccullough   http://git-scm.com
    http://windows.github.com
    http://mac.github.com
    tomsherman  last night, i installed git from http://git-scm.com/ does anyone know the difference between its (basic) client and the windows.github.com client?
    tlberglund  tomsherman: Those are going to be the same command-line client. GitHub for Windows also has the GUI, and also does the auto-updating of the command-line client.
    tomsherman  tlberglund there is some thing called "Git GUI" which seems like a suuuper basic front end
    matthewmccullough   git init qcon1
    git status
    git status -sb
    tlberglund  In Git, you can delete files by adding them.
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    matthewmccullough   git clone https://github.com/githubteacher/hellogitworld.git
    git clone https://github.com/githubteacher/hellogitworld.git
    https://github.com/githubteacher/hellogitworld
    matthewmccullough   https://github.com/signup/free
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    matthewmccullough   We have forked
    Added the remote for myfork
    matthewmccullough   View paste 
    git push -u myfork matthewmccullough
    Use your branch name as the last parameter
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
    tlberglund  Matthew is going HAM.
    matthewmccullough   Hello again!
    matthewmccullough   Hello!
    joanna  what is the url to the notes?
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    Class notes will be at:
    http://teach.github.com/classnotes
    joanna  thanks!
    matthewmccullough   joanna: You bet!
    matthewmccullough   Tim cloned
    View paste 
    git clone https://github.com/githubteacher/hellogitworld
    git log
    git log --graph --pretty=oneline ---abbrev-commit --decorate
    Tim is going to give you a short form of the same command
    This is called an alias
    git log --graph
    But it is too large and heavy
    git log --graph --oneline
    This is a more recent git option switch
    So you might want to write a shell script that calls this (it seems...)
    matthewmccullough   git config --global alias.lol "log --graph --oneline --decorate --all"
    then
    git lol
    Git Aliases
    are what this technique was called
    git log -1
    Limits to the number of most recent commits
    HEAD is a keyword
    It is "where you currently are"
    HEAD is advancing (always moving forward)
    matthewmccullough   The scripts live here: https://github.com/matthewmccullough/scripts
    matthewmccullough   https://github.com/matthewmccullough/scripts/bl...
    View paste 
    https://github.com/matthewmccullough/scripts/blob/master/git-graphlive
    The script Tim just showed is (in a little fancier form) at that URL
    That was a shortcut way just to generate a random file and commit it, times 10
    matthewmccullough   Rebase is "rewriting" the history in this case
    matthewmccullough   These are unpushed commits
    (That Tim is rebasing)
    git reflog
    This shows the history of your "actions" (not necessarily the history the public knows about) since it knows about your local corrective actions
    matthewmccullough   This is a linked list that Tim is talking about
    The "most recent commit" is "attached" to the older commits
    matthewmccullough   There is no way to know if someone has the repo locally
    Tiago A.    im trying to rebase two commits using squash and receiving "Cannot 'squash' without a previous commit"
    git rebase -i 048ac59
    matthewmccullough   Tiago Albineli Motta: So this is saying that the hash you have chosen is not a parent of your current state
    Tiago A.    View paste 
    f582bcd xpto2
    63cd4f2 xpto1
    048ac59 my branch commit
    but it is
    matthewmccullough   Let me look at your screen. Can you wave at me?
    Tiago Albineli Motta: Let's start with a git lol
    or long hand,
    git log --graph --pretty=oneline --all --abbrev-commit --decorate
    Then paste me that
    Tiago A.    ok, i see in the lol that 52e5784 commit has two parents.
    View paste 
    * 63cd4f2 xpto1
    | * 52e5784 (origin/master, origin/anotherperson, origin/HEAD) Separate thing
    ... lot things
    * | | 048ac59 (myfork/timotta) my branch commit
    | |/  
    |/|
    Tiago A.    sorry, not the 52e5784, the 63cd4f2
    matthewmccullough   Tiago Albineli Motta: So we can't rebase (easily) with merge commits.
    Only a straight line of commits.
    For example, try:
    echo THING > thing.txt ; git add thing.txt ; git commit -m"Thing 1"
    echo THING > thing.txt ; git add thing.txt ; git commit -m"Thing 2"
    echo THING > thing.txt ; git add thing.txt ; git commit -m"Thing 3"
    Then rebase on that sequence of three
    Tiago A.    understood!
    Mike G. View paste 
    this is great: http://www.amazon.com/Aerobie-AeroPress-Coffee-Espresso-Maker/dp/B0047BIWSK
    and should deff try: http://www.bulletproofexec.com/coffee/
    matthewmccullough   Also: http://www.intelligentsiacoffee.com
    Tiago A.    solved!
    git reset --mixed 63cd4f2
    git add .
    git commit --amend
    great!
    matthewmccullough   Tiago Albineli Motta: Great. Let me know if there is more I can add to that.
    Happy to help in any way.
    matthewmccullough   git clone https://github.com/githubteacher/hellogitworld.git
    matthewmccullough   d123 is our hash
    You just updated your fork
    matthewmccullough   Happy to help if anyone needs it
    Tiago A.    should i push these changes?
    matthewmccullough   Tiago Albineli Motta: Yes
    tlberglund  https://github.com/githubstudent/hellogitworld
    git remote add matthew https://github.com/githubstudent/hellogitworld.git
    matthewmccullough   git fetch matthew
    git log matthew/matthewmccullough -3
    Alex S. afterparty?
    matthewmccullough   Might.
    git revert is very different from svn revert
    git revert is surgical
    git revert is additive
    it makes a new commit
    It acts on one commit (primarily)
    git revert <commithash>
    matthewmccullough   git squash
    is a flattening tool for all of a branch
    matthewmccullough   A Squash Merge always
    matthewmccullough   pauses before commit
    tlberglund  https://github.com/githubteacher/hellogitworld/
    Kyle T. kiiadi
    vlad    vladistan
    matthewmccullough   So Git blocks on any push to any commit
    on the same branch
    matthewmccullough   https://www.kernel.org/pub/software/scm/git/doc...
    matthewmccullough   Commit hooks are the triggers
    matthewmccullough   http://github.com/matthewmccullough/scripts
    https://github.com/matthewmccullough/scripts/bl...
    tlberglund  http://teach.github.com/classnotes/2013-06-10-qcon-nyc-2013-git-foundations.html
