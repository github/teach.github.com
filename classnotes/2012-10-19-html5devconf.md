---
layout: bare
title: HTML5DevConf GitHub Workshop
description: HTML5DevConf GitHub Workshop class notes
tags: [notes, event]
path: classnotes/2012-10-19-html5devconf.md
eventdate: 2012-10-19
---

Held on October 17, 2012

Taught by:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Jeff Pemberton
* Zachary Kaplan

## Suggested Books, Articles
* ProGit: http://git-scm.com/book
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [Git Workflows](https://github.com/zkessin/dvcs-workflows)
* [Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)

## Course Materials, Links
* [Training Materials](http://teach.github.com) 
* [Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Server Side Git Receive Hooks for Hosting Pushes
* Heroku slugs (git protocol) 
    * [Deploying with Git](https://devcenter.heroku.com/articles/git) (Requires heroku account and login)
* Server side hook for publishing
    * [The Perfect Workflow, with Git, GitHub, and SSH](http://net.tutsplus.com/tutorials/other/the-perfect-workflow-with-git-github-and-ssh/)
    * [Deploy a project using Git push](http://stackoverflow.com/questions/279169/deploy-a-project-using-git-push)
* Service hooks on GitHub repos
    * [Post-Receive Hooks](https://help.github.com/articles/post-receive-hooks)
    * [All of the Hooks](https://github.com/blog/964-all-of-the-hooks)

## Objectives
We're going to learn to:

* Create local Git repos
* Understand Git network operations, including cloning, remotes, pushing and pulling.
* Merging branches, tags, and arbitrary hashes with recursive and fast-forward outcomes.

## Prep
* Please install Git at any time before class starts.
    * http://git-scm.com
    * http://windows.github.com
* We're happy to help with any installation questions.
* Minimum is 1.7.ANYTHING
* Best is 1.7.10 or higher

Test:

    git --version

from the terminal


## Command Line History

    echo Welcome to the HTML5 GitHub workshop
    git --version
    pwd
    git init project1
    open .
    git config user.name
    git config user.email
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git commit -m"My first commit"
    git log -p
    vim first.txt
    git diff
    git diff --color-words
    git diff --staged
    git reset HEAD first.txt
    git add -p first.txt
    git diff --staged --color-words
    git add -p --color-words .
    git commit -m"My second commit"
    git commit -a -m"My third commit"
    echo CRUFT >> build.log
    echo CRUFT >> other.log
    echo CRUFT >> special.log
    vim .gitignore
    git add .gitignore
    git commit -m"Ignoring log and build files"
    cd project1
    treelive 5
    rm first.txt
    git rm first.txt
    git commit -m"Removing first.txt"
    git checkout 9fbbe81e28917f44 -- first.txt
    git add first.txt
    git commit -m"Restoring first.txt to its working state"
    git mv first.txt uno.txt
    git commit -m"Renamed the file"
    git log --stat -1
    mv uno.txt another.txt
    git commit -m"Renamed again"
    mv another.txt renamedwithchange.txt
    vim renamedwithchange.txt
    git add -A .
    git commit -m"Renamed yet again"
    git log --stat
    git log --stat -M
    git commit -m"Made a copy"
    git log --stat -C -1
    git log --stat -C -C -1
    z git_git
    git l2 --simplify-by-decoration
    git summary
    git info
    git log -C -C --stat
    git log -C -C --stat --author="Matth"
    git blame rerere.
    git blame rerere.c
    git blame -C rerere.c
    history
    cd -
    git clone https://github.com/githubstudent/hellogitworld.git
    git log --stat -2
    git branch matthewfeature
    cd hellogitworld
    treelive
    treelive 1
    treelive 2
    treelive
    vim matthewfeature.txt
    git commit -m"Matthew feature work"
    git branch thousands
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git commit -m"Thousands"
    git checkout thousands
    git checkout matthewfeature
    git push -u origin matthewfeature
    git branch -a
    git branch -r
    git remote -v
    git remote add http://github.com/brentbeer/hellogitworld.git
    git remote add brent http://github.com/brentbeer/hellogitworld.git
    git remote add brentlaptop git://10.32.45.199/brentbeer/hellogitworld.git
    git ls-remote origin
    git branch -r
    git checkout feature_image
    git branch -vvv
    git remote add lara https://github.com/larataylor/hellogitworld.git
    git fetch lara
    git diff matthewfeature lara/larafeature
    git diff  lara/larafeature matthewfeature
    git diff 7c0ffa9d88 lara/larafeature
    git log 7c0ffa9d88 lara/larafeature
    git remote add railsofficial http://railsofficialrepo
    git clone https://github.com/githubtrainer/hellogitworld.git hgwofficial
    generaterandomchanges 2 brentstuff txt
    git fetch
    git merge origin/master
    generaterandomchanges 2 brentstuffagain txt
    git diff origin/master
    git pull
    generaterandomchanges 2 brentstuffagain2 txt
    git push
    git pull --rebase
    git gc
    cp -r hgwofficial hgwdamaged
    cd hgwdamaged
    echo NEW >> new.txt
    git commit -m"New stuff"
    vim .git/objects/1e/a3092d359cbb95520b23d8e0804414832a9585
    cd hgwofficial
    git log
    vim .git/refs/heads/handcrafted
    git branch
    vim fix.txt
    git stash
    vim brentstuff1.txt
    git add .
    git commit -m"Brent fixes"
    git stash branch feature6
    git branch -a
    git reset --hard
    git checkout bisect
    git log
    git bisect good HEAD~9
    gitk --all &
    git bisect start
    git bisect good HEAD~14
    git bisect bad HEAD
    git bisect run mvn test
    git bisect reset
    git checkout master
    git status
    clear
    echo ADD >> fix.txt; git add . ; git commit -m"One"
    echo ADD >> fix.txt; git add . ; git commit -m"Two"
    echo ADD >> fix.txt; git add . ; git commit -m"Three"
    echo ADD >> fix.txt; git add . ; git commit -m"Four"
    git rebase -i 19e3734
    git rebase -i ffdc01b
    git reset --hard 19e3734
    git reflog
    git reset --hard 43cb87b
    git log --oneline


## Chat Log

    http://git-scm.com
    http://windows.github.com
    
    git config user.name
    git config user.email
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git status
    
    git log
    git log --stat
    
    razic   Try this one on for size:
    git --no-pager log -n10 --pretty=oneline --decorate --graph --abbrev-commit
    thats what i use everytime i do a git log
    
    Skip M. can you alias that?
    razic   yes but is a little tricky
    i'll show you how

    razic   Skip Moore: https://github.com/razic/dotfiles/blob/master/.gitconfig
    because it's a tricky one, you have to specify !git first if you can see
    btw, the exclamation mark allows you to execute ANY shell command to a git alias
    
    Skip M. thanks so rm -rf could be alaised
    razic   yes, but why would you want rm -rf?
    also here is more on git colors for those interested:
    http://git-scm.com/book/en/Customizing-Git-Git-Configuration#Colors-in-Git
    
    Quim G. Thank you for talking about the colors. I wanted to ask but I thought this was a problem in my terminal and the question was going too far from the got topic :)
    git topic
    
    razic   No problem. Colors in Git are extremely important to me.
    Did you check out my gitconfig?
    Jeff B. Can you send the gitconfig again? I joined after it was sent. Thanks
    razic   https://github.com/razic/dotfiles/blob/master/.gitconfig
    
    Skip M. what was the command is he talking about
    matthewmccullough   git add -p .
    git diff
    git diff --staged
    git diff --staged --color-words
    Quim G. Where is this gitconfig file sitting?
    Jeff B. After you edit ~/.gitconfig, how do you get it read up the changes?
    razic   Quim Gil: I put it in my home directory
    Quim Gil: catch what he just said?
    Jeff: you reload your terminal
    close and reopen or reload your profile
    brntbeer    Jeff Beckley ^^
    razic   Jeff Beckley: let me know if you need help
    10:10 AM
    Quim G. razic: ooohh, my git looks pretty now. Thank you!
    10:15 AM
    razic   Quim Gil: no problem. i also recommend http://ethanschoonover.com/solarized for terminal colors and text editor colors
    Skip M. I use https://github.com/paulirish/dotfiles for my terminal which has a lot of the coloization
    
    git commit -a -m"My third commit"
    razic   also try doing a git status like this
    git status -s
    mean "short" status
    more concise
    
    razic   great with colors
    matthewmccullough   View paste
    
    *.log
    build/
    output/
    
    Quim G. Happy to see you cad add *.*~ to .gitignore to forget about those temp files created automatically (at least by gedit in Linux)
    
    Quim G. How do you get that treelive?
    11:05 AM
    Scott R.    https://github.com/matthewmccullough/scripts/blob/c9faaa4ede5136c4c87ea179f535680828e2e8f1/treelive ?
    Quim G. After 'git status' I get: # Not currently on any branch.
    brntbeer    Quim Gil: did you include the "-- first.txt"
    on the checkout command
    if you want to raise your hand i can come by and take a look
    11:10 AM
    Quim G. raising :)
    matthewmccullough   git checkout 9fbbe81e28917f44 -- first.txt
    11:25 AM
    matthewmccullough   git log --stat -M
    11:35 AM
    brntbeer    git shortlog -s
    is a good way to see number of commits by author
    11:40 AM
    matthewmccullough   git blame -C rerere.c
    11:45 AM
    matthewmccullough   https://github.com/githubtrainer/hellogitworld
    Oshri L.    has entered the room
    11:55 AM
    
    matthewmccullough   git remote -v
    git push -u origin YOURBRANCHNAME
    
    matthewmccullough   git remote add lara https://github.com/larataylor/hellogitworld.git
    2:15 PM
    matthewmccullough   git clone https://github.com/githubtrainer/hellogitworld.git hgwofficial
    View paste
    git clone https://github.com/githubtrainer/hellogitworld.git hgwofficial
    2:25 PM
    Skip M. View paste
    $ git merge origin/master --no-commit
    Updating d43feb7..d23c108
    Fast-forward
     brentstuffagain1.txt |    1 +
     brentstuffagain2.txt |    1 +
     2 files changed, 2 insertions(+), 0 deletions(-)
     create mode 100644 brentstuffagain1.txt
     create mode 100644 brentstuffagain2.txt
    smoore at Skips-MacBook-Pro-2.local  ~/gitclass/teset on master
    $ git diff origin/master
    smoore at Skips-MacBook-Pro-2.local  ~/gitclass/teset on master
    $ git merge origin/master --abort
    fatal: There is no merge to abort (MERGE_HEAD missing).
    
    why am i gettin gthe merge_head missing?
    
    matthewmccullough   git pull --rebase
    
    matthewmccullough   gitk --all &
    
    Quim G. Sorry, I have to leave a bit earlier due to Caltrain, family etc etc. Thank you for all your help! I learned a lot.
    Jeff B. Thanks, great class!
    brntbeer    bye guys! hope you enjoyed!
    matthewmccullough   https://github.com/zkessin/dvcs-workflows
