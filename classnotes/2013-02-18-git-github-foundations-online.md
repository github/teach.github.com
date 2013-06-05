---
layout: bare
title: Git and GitHub Foundations Online
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-02-18-git-github-foundations-online.md
eventdate: 2013-02-18
---

on 2013-02-18 and 2013-02-22

Teachers:

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

## Command History

    git --version
    git init newproject 
    cd newproject
    ls
    ls -a
    ls -la
    tree .git 
    git config user.name
    git config user.email
    git config color.ui
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    pwd
    ls
    ls -la
    vi shakespeare.txt 
    ls
    cat shakespeare.txt
    git status
    git add shakespeare.txt
    git status
    git commit -m "Initial commit"
    cat shakespeare.txt
    ls -la
    tree .git
    ls
    vi shakespeare.txt
    git status
    git add shakespeare.txt
    git staut
    git status
    git commit -m "The noblest man"
    git status
    vi shakespeare.txt
    git add shakespeare.txt
    git status
    vi shakespeare.txt
    git add shakespeare.txt
    vi shakespeare.txt
    git add shakespeare.txt
    git status
    tree .git/objects
    git status
    vi shakespeare.txt
    git reset HEAD shakespeare.txt
    git status
    cat shakespeare.txt
    vi shakespeare.txt
    git diff
    git add shakespeare.txt
    git status
    git diff
    git diff --staged
    vi shakespeare.txt
    git status
    git diff
    git diff --staged
    git diff HEAD
    git diff
    git diff --staged
    git diff HEAD
    vi shakespeare.txt
    git add shakespeare.txt
    git status
    git diff --staged
    vi shakespeare.txt
    git diff
    git diff --color-words
    git diff --word-diff
    vi shakespeare.txt
    git diff
    git diff -w
    git diff -w --color-words
    git help diff
    history
    git status
    vi shakespeare.txt
    git diff
    git add .
    git diff --staged
    git commit -m "Costly blood"
    git status
    cat shakespeare.txt
    git log
    tr.git
    cd scratch/newproject
    git log
    git config user.name
    git config user.email
    git log --stat
    git log --patch 
    git log --patch --word-diff
    git log --patch --word-diff --stat
    git log --patch --word-diff --stat -1
    git log -2
    git log --format=full
    git log --format=fuller
    git log --format=email --patch 
    git log --format=raw
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline --abbrev-commit --graph
    git log --pretty=oneline --abbrev-commit --graph --decorate
    git status
    git config alias.lg
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit  --all
    git log --format=oneline --abbrev-commit --graph --decorate
    git lol
    git config --global alias.lol "log --format=oneline --abbrev-commit --graph --decorate"
    git lol
    git config --global alias.lol "log --format=oneline --abbrev-commit --graph --decorate --all"
    git lol
    git status
    generaterandomfiles 6 file txt
    ll
    cat file1.txt
    cat file2.txt
    cat file3.txt
    git status
    git add . 
    git status
    git commit -m "Added some files I'm just going to delete anyway"
    git status
    git rm file1.txt
    ls
    git status
    rm file2.txt
    git status
    git rm file2.txt 
    git status
    open .
    git status
    git add .
    git status
    git add -u .
    git status
    git commit -m "Deleted file of those files"
    git commit --amend -m "Deleted five of those files"
    git log --stat -2
    ls
    git rm --cached file6.txt
    ls
    git status
    git commit -m "Deleted the sixth text file, finally"
    git status
    vi .gitignore
    git status
    git add .gitignore
    git status
    git commit -m "Added a gitignore file"
    git config core.excludesfile
    cat `git config core.excludesfile`
    ls -la
    git status
    rm file6.txt
    ls
    git status
    ls
    s
    ls
    generaterandomfiles 5 file txt
    mkdir files
    ls
    tree
    git add .
    git statsu
    git status
    git commit -m "Added some files for the purpose of moving them around"
    tree
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add .
    git status
    vi shakespeare.txt
    git status
    git add -A .
    git status
    git commit -m "Moved files"
    ls -l ~ > listing.txt
    ls
    git add .
    git commit -m "Added a longer file to play with"
    cat listing.txt
    git log --stat
    git log --stat -
    git log --stat -M
    tree
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Talk about the ship of Theseus"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M85
    git log --stat -1 -M83
    git log --stat -1 -M81
    vi files/listing.txt
    git add .
    git commit -m "Changed a file after moving it"
    git log --stat -M -3
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    mkdir empty
    git status
    tree
    cd empty
    touch .gitignore
    cd ..
    git status -u
    tree
    cd empty
    rm .gitignore
    echo "This dir intentionally left blank" > README
    ll
    cd ..
    ll
    rm -rf empty
    cat shakespeare.txt
    cat shakespeare.txt| openssl sha1
    tree .git/objects| less
    git lol
    git log --format=raw -1
    git ls-tree 409ccf681487f6ecc49ebed0e0078dbd79657b38
    git ls-tree 9b15e1be90a61a25ead67e564f42f030228d6703
    git status
    ls
    git lol
    tr.git
    cd scratch
    cd newproject
    git loglive
    man watch
    git branch
    git status
    tree .git/refs
    cat .git/refs/heads/master
    vi shakespeare.txt 
    git add .
    git commit -m "Beg the utterance"
    git branch feature
    tree .git/refs
    cat .git/refs/heads/feature
    git branch
    git checkout feature
    git branch
    vi shakespeare.txt
    git status
    git add .
    git commit -m "Shakespeare gets a title"
    cat shakespeare.txt
    git checkout master 
    cat shakespeare.txt
    vi shakespeare.txt
    git add .
    git commit -m "Domestic fury"
    git lol
    git merge feature -m "Merged in the feature branch"
    git lol
    cat shakespeare.txt
    git lol
    git branch -d feature 
    git branch feature2
    vi shakespeare.txt
    git add .
    git commit -m "Blood and destruction"
    cat shakespeare.txt
    git checkout feature2
    vi shakespeare.txt
    git add .
    git commit -m "Defective Shakespeare"
    vi raven.txt
    git add .
    git commit -m "Raven FTW"
    git checkout master
    git merge feature2
    git status
    vi shakespeare.txt
    git add shakespeare.txt 
    git status
    git commit -m "Merged after resolving conflict"
    git lol
    git config alias.lol
    git branch
    tree .git/refs
    cat .git/refs/heads/feature2
    cat .git/refs/heads/master
    git branch -d feature2
    git checkout -b feature3
    git branch
    ls
    git branch
    vi raven.txt
    git add .
    cat raven.txt
    git status
    git commit -m "Eagerly wishing the morrow"
    git lol
    git checkout master
    vi shakespeare.txt
    git add .
    git commit -m "Smiley mothers"
    git lol -5
    git merge feature3
    git branch -d feature3
    git log --pretty=oneline
    git brandh
    git branch
    git tag MERGE_COMMIT
    vi README.md
    ls
    git status
    git add .
    git commit -m "Added a README"
    git lol -10
    git tag SMILEY_MOTHERS 18d1bd1
    tree .git/refs
    cat .git/refs/tags/SMILEY_MOTHERS
    git show SMILEY_MOTHERS
    git tag -a README_ADDED
    tree .git/refs
    cat .git/refs/tags/README_ADDED
    cat .git/refs/tags/MERGE_COMMIT
    git show README_ADDED
    git checkout SMILEY_MOTHERS
    ls
    git branch mothers
    git branch -D mothers
    git checkout master
    git branch feature4
    vi shakespeare.txt
    git add .
    git commit -m "Choked pity"
    git checkout feature4 
    vi raven.txt
    git add .
    git commit -m "Lost Lenore"
    vi raven.txt
    git add .
    git commit -m "Radiant maiden"
    git branch
    git rebase master
    cat raven.txt
    git checkout master
    cat raven.txt
    git merge feature4
    git branch -d feature4
    vi raven.txt
    git commit -a -m "Fixed a typo"
    git branch feature5 6fa4bf2
    git checkout feature5
    tree
    cd files
    ls
    generaterandomchanges 10 random txt
    git lol -15
    git rebase -i 6fa4bf2
    ls
    vi random1.txt
    vi random2.txt
    vi random7.txt
    git status
    git add .
    git status
    git rebase --continue
    git lol -5
    git rebase -i HEAD~2
    git log --stat -1
    git rebase master
    git checkout master
    git merge feature5
    git branch -d feature5
    git checkout -b feature6
    cd ..
    vi raven.txt
    git status
    git stash
    cat raven.txt
    git branch
    tree .git/refs
    git stash list
    git checkout master
    ls
    vi shakespeare.txt
    git add .
    git commit -m "Caesar rage"
    git checkout feature6
    git help stash
    git stash list
    git stash pop 
    cat raven.txt
    git stash list
    git add .
    git commit -m "Silky sad uncertainty"
    git help stash
    git rebase master
    git checkout master
    git merge feature7
    git merge feature6
    git branch -d feature6
    git reflog
    vi shakespeare.txt
    git add .
    git commit -m "Havoc"
    git reflog
    git reset --hard HEAD@{1} 
    cat shakespeare.txt
    git reflog
    git reset --hard HEAD@{1}
    cat shakespeare.txt
    git reset --hard HEAD@{1}
    cat shakespeare.txt
    git reflog
    git reset --hard HEAD@{1}
    git checkout -b feature
    cd files
    generaterandomchanges 10 monkey txt
    git rebase -i HEAD~10
    git reflog
    git reset --hard HEAD@{11}
    git rebase -i HEAD~10
    git reflog
    git rebase master
    git checkout master
    git merge feature
    cd ..
    git branch -d feature
    git remote add origin https://github.com/githubtrainer/poetry.git
    git remote
    git remote -v
    cat .git/config
    git config --local --list
    git remote
    git push 
    git push -u origin master 
    git remote set-url origin https://github.com/githubtrainer/poetry.git
    git push -u origin master
    git config --list
    git config credential.helper
    git config --unset --global credential.helper
    git config credential.helper
    git config --global credential.helper cache 
    git config --unset --global credential.helper
    git push -u origin master
    export PS1="$ "
    tr.git
    cd scratch
    ll
    cd newproject
    cd ..
    ls
    git clone https://github.com/githubstudent/poetry.git poetry-fork
    ls
    ls -l
    cd poetry-fork
    ls -l
    git remote -v
    vi shakespeare.txt
    git add .
    git commit -m "Ate at his side"
    git push
    vi shakespeare.txt
    git add .
    git commit -m "Havoc"
    git push
    history
    ll
    git pull 
    git loglive -15
    git fetch https://github.com/githubstudent/poetry.git master
    git merge FETCH_HEAD 
    git status
    vi shakespeare.txt
    git add shakespeare.txt
    git commit -m "Cry HAVOC"
    git push
    ls
    git branch -a
    git fetch 
    git lol -15
    git merge origin/master 
    git branch -a
    history
    cd ..
    ls
    git clone https://github.com/githubtrainer/poetry.git
    cd poetry
    git remote -v
    git checkout -b tlberglund
    vi shakespeare.txt
    git add .
    git commit -m "Carrion men"
    git loglive -15
    git config alias.lol
    vi ~/scripts/git-loglive
    git lol
    git loglive -15
    git branch
    git lol
    cd ../poetry
    git loglive -15
    git push -u origin tlberglund
    git config credential.helper "cache --timeout 3600000"
    git fetch
    git loglive -12
    git checkout master
    git merge tlberglund
    git push
    git lol
    git branch -a
    git branch -d tlberglund
    git push --delete origin tlberglund
    git config credential.helper "cache --timeout 3600"
    git branch
    git branch -a
    git diff origin/josecjacob
    git merge origin/josecjacob
    git diff origin/andychw
    git branch -a
    git checkout andychw
    git branch -a
    ll
    vi shakespeare.txt
    git add .
    git commit -m "Undo Andy's careful work"
    git push
    git status
    git config credential.helper cache
    git checkout master
    git merge andychw
    git branch
    git branch -d andychw
    git branch
    git remote -v
    vi raven.txt
    git add .
    git commit -m "Fantastic"
    git pus
    git push
    vi raven.txt
    git commit -a -m "Beating heart"
    git push
    git pull
    git push
    git pull
    git fetch
    git push
    git pull
    git loglive -8
    git pull
    git config --global branch.autosetuprebase always
    git config branch.master.rebase true
    git branch
    vi raven.txt
    git add .
    git commit -m "Some late visitor"
    git push
    git pull
    git push
    git loglive -15
    git loglive -13
    git pull
    git loglive -10
    git pull
    git loglive -10
    git loglive -13
    git pull


## Chat Transcript

    tlberglund  has entered the room
    tlberglund  turned on guest access
    2:35 PM
    John B. has entered the room
    2:50 PM
    John B. has left the room
    7:35 PM
    Nicolas S.  has entered the room
    7:40 PM
    John B. has entered the room
    7:50 PM
    Nancy S.    has entered the room
    8:00 PM
    Rong-En F.  has entered the room
    Sky C.  has entered the room
    Pradeep B.  has entered the room
    Aveek M.    has entered the room
    Jack C. has entered the room
    Sourav C.   has entered the room
    Thierry has entered the room
    Melissa H.  has entered the room
    balac   has entered the room
    thegiive    has entered the room
    Jack C. hands!
    Kenny P.    has entered the room
    Amit K. has entered the room
    Andy W. has entered the room
    srinivas    has entered the room
    Dinesh D.   has entered the room
    John    has entered the room
    alanshe has entered the room
    Bijoy   has entered the room
    Vilas P.    has entered the room
    Vic L.  has entered the room
    8:05 PM
    Nicolas S.  hey guys :)
    nikhilk has entered the room
    Sky C.  hi
    Andy W. hi
    himanshu    has entered the room
    tlberglund  https://github.com/githubtraining/feedback/issues
    8:10 PM
    Pradeep B.  I have git version 1.7.10.2 (Apple Git-33)
    8:15 PM
    John B. that works!
    Lucy H. has entered the room
    Deepak S.   has entered the room
    GinaLiu has entered the room
    shadik  has entered the room
    Abhi    has entered the room
    Gibu    has entered the room
    sapnat  has entered the room
    Ken T.  has entered the room
    Jignesh T.  has entered the room
    Abhranil C. has entered the room
    vinay   has entered the room
    vineethv    has entered the room
    Anbalagan   has entered the room
    Pawan G.    has entered the room
    aliku   has entered the room
    8:20 PM
    Sourav C.   on my system, the .git directory is 52K
    Aveek M.    So does it mean that if any of the files in the .git directory are corrupted, so is your git repo?
    John B. Aveek: if the .git/ directory has corrupted files then you are at risk of losing that from your local repository
    Nicolas S.  Sourav: That's fine, the size for an empty repo will probably vary depending on the cluster size you formatted your hard drive with
    Sourav: 52k is perfectly reasonable for a new repo
    Sourav C.   yeah, just wanted to share
    Nicolas S.  :)
    8:25 PM
    Aveek M.    So if I copy over all the git config files to another computer, it should just start working? Obviously git itself needs to be installed but then I don't need to do the config all over again right?
    John B. Aveek: You can copy your git config files from machine to machine
    Nicolas S.  Aveek: exacly. It's just simple textfiles :)
    balac   git config --global (~/ saves where ?
    Wayne H.    has entered the room
    Nicolas S.  balac: $HOME/.gitconfig
    balac   thx
    Nicolas S.  you're welcome :)
    alanshe So the autocrlf works when doing git checkout ?
    8:30 PM
    Aveek M.    git config --list shows
    View paste 
    core.autocrlf=input
    color.ui=auto
    core.repositoryformatversion=0
    core.filemode=true
    core.bare=false
    core.logallrefupdates=true
    user.name=aveekmisra
    user.email=aveekmisra@gmail.com
    color.ui=auto
    why is color.ui coming twice?
    Sourav C.   i believe it is because it is set at two different levels
    John B. Alanshe: I believe so
    Aveek M.    but then it is not evident which level is what
    Sourav C.   aveek, you can see each level using git config -l --global
    Aveek M.    ah i see .. thx!
    Deepak S.   ok
    8:35 PM
    Aveek M.    is there a way to revert back to a given version in the staging area? say I have 4 modifications made to shakespeare.txt and then did an add but then I want to commit the 2nd version I had added .. is it possible?
    8:40 PM
    Nicolas S.  ok, all yours tlberglund :)
    Sourav C.   is reset head same as checkout ?
    Nicolas S.  Sou
    Sourav: no. reset will act on the staging area, and checkout will act on the working copy
    Sourav C.   ok
    8:45 PM
    Aveek M.    any special options for adding binary files like .gif files?
    John B. Aveek: git treats all files the same
    Nicolas S.  Aveek: you can just add them, but git won't be able to diff them
    Aveek M.    ok, makes sense
    8:50 PM
    Vilas P.    has left the room
    Jack C. i am confused
    what's the difference between RESET and checkout
    John B. Jack: What's got you stuck
    checkout is used to make your working copy represent some point in your repo history
    Jack C. oh
    so in repo, I do git checkout to revert?
    Nicolas S.  reset will just cancel changes added to the staging area and leave your files like they were on the working copy before.
    Jack: if you want to revert to a previous commit, yes, checkout is the simplest way of doing it
    Jack C. thanks
    himanshu    is there something line git diff --help? to see everything that shows some help
    Nicolas S.  himanshu: git help diff :)
    himanshu    thanks Nicolas
    sapnat  how to find diff of file between branch and head
    Nicolas S.  whenever you have doubts for "git <command>" just "git help <command>" and that will show you the manual page for that command
    John B. git diff <ref>
    sapnat: ^
    shadik  if we have changed n number of lines in a file , is it possible to get side-by-side view using git diff
    8:55 PM
    sapnat  ok
    John B. shadik: yes, I believe Tim will cover setting up a difftool
    shadik  ok
    thanks
    John B. I bet there's a way to do it on the command line, but I'm not sure of it
    Nicolas S.  you could pipe git diff's output to vimdiff if you are a vim user
    himanshu    are we going to get some transcript describing all the commands we are running as part of training?
    Nicolas S.  (and like using vimdiff)
    John B. take a look at `git help difftool` for more info
    shadik  ok
    John B. himanshu: good question, Tim usually provides a command log
    balac   View paste 
    git help diff
    No manual entry for git-diff
    any specific thing to do to get help ?
    himanshu    thanks
    Aveek M.    is it possible to get the diff in such a way as to know its a diff between a tab and 4 spaces? So I want to know which line in the diff is 4 spaces and which one is a tab. Helpful during code review :-)
    John B. balac: good question. first, check out: https://www.kernel.org/pub/software/scm/git/docs/git-diff.html
    balac: I'm not exactly sure why you don't have help installed... what OS are you on?
    Nicolas S.  Aveek: absolutely! I just don't remember exactly how you do that, give me a second :)
    balac   View paste 
    rhel  5.4 (Tikanga)
    9:00 PM
    Jack C. oh yeah LOG!
    Nicolas S.  Aveek: http://stackoverflow.com/questions/5574195/make-git-highlight-tab-characters-in-a-diff
    that has a very comprehensive answer :)
    John B. balac: seems that you don't have the man pages installed
    http://stackoverflow.com/questions/14250505/installing-git-documentation-packages-on-rhel-5
    Aveek M.    thx!
    John B. ^ that has some info on installing the man pages for your operating system
    balac   thx.. will check it out later.
    srinivas    does that mean that other people can commit with my name
    ?
    John B. srinivas: yes, git has some extra features for signing commits
    9:05 PM
    srinivas    oh ok
    Sourav C.   there is no format=fullest :)
    Nicolas S.  hah, sadly, no :)
    9:10 PM
    Gibu    is there anything similar to svn log --xml
    Nicolas S.  Gibu: not out of the box, but you can build your own format
    Gibu    ok...
    Nicolas S.  by passing some specific options to git log
    View paste 
    git log --pretty=format:"<entry><author>%an</author><commit_date>%cd</commit_date><message_body>%b</message_body></entry>"
    something like that might do what you want (I haven't tested it though)
    Gibu    ok thanks :)
    9:15 PM
    shadik  Once you modify the file , is it mandate to add the file to staging area followed by commit
    ?
    Nicolas S.  shadik: yes, you need to add the file to the staging area before you commit it
    John B. shadik: but if you don't want to commit it, then you don't have to stage it
    you can think of staging like a shopping basket for changes
    change things in your working directory, stage the ones you want to group together, and then commit the staged changes all at once
    shadik  i commited the modifed file without adding to the staging area
    Nicolas S.  shadik: did you use git commit -a ?
    shadik  yes
    Nicolas S.  shadik: that's a shortcut that does git add to all the changes you have on your working directory before git commit :)
    shadik  ok
    thanks
    9:20 PM
    Abhranil C. has left the room
    9:25 PM
    Abhranil C. has entered the room
    9:35 PM
    Amit K. Hey - I can't hear a thing :(
    9:40 PM
    Amit K. are others experiencing it too ?
    sapnat  has left the room
    Thierry View paste 
    fine on my end
    John B. Amit: Is "Mic and Speakers" selected in GoTo Training?
    Deepak S.   nopes .. we can hear
    Amit K. i can hear it now. maybe some local issue
    John B. ok, glad it's sorted
    shadik  are slides used will be shared after the training ?
    tlberglund  shadik: Yes
    shadik  ok
    John B. shadik: I'm sure Tim will include a link, but you can find lots of our materials here: http://teach.github.com
    shadik  ok
    srinivas    I dont see the color scheme in my terminal for git commands is it git that gives the color scheme or coming from bash
    Nicolas S.  srinivas: check the value of `git config --global color.ui`
    srinivas: if it's "auto" then git should be sending colors to your terminal
    9:45 PM
    Gibu    git rm file remove the file from staging ?
    Nicolas S.  srinivas: check `git config --global color.ui`
    srinivas: if it isn't auto, then `git config --global color.ui auto` should set you up for full color :)
    srinivas    its empty
    thanks nicholas
    John B. Gibu: can you clarify your question? I don't understand what you're asking.
    Amit K. You added deleted files
    balac   is it possible to correct previous comments as well. ie, not he latest commit ?
    Nicolas S.  balac: yes, but it's a bit more involved than just `git commit --amend`
    9:50 PM
    vineethv    has left the room
    Abhranil C. has left the room
    John B. balac: the reason it's more complicated is that every commit depends on the commit before it, so you have to change all of the commits that came after the one you're ammending
    balac   oh..ok..thx
    Aveek M.    that's a bit weird, every other git command automatically creates a config file in the background but with ignore, you explicitly need to create a .gitignore file ... I am curious why there is no "git ignore" command
    9:55 PM
    himanshu    does .gitignore become effective only after checking-in?
    Nicolas S.  himanshu: nope
    John B. although it only applies to files that have not yet been added to the repository
    so if you add a file like config.yml to your repo, and then create a .gitignore that ignores that config.yml file
    it won't be removed from your repo
    since it's already in there
    Jack C. what if I do the push
    himanshu    ok, also i guess, i can ignore the .gitignore itself just in case i don't want to check it in?
    Jack C. will .ignore push to master?
    John B. http://github.com/github/gitignore has a collection of popular .gitignore files
    Nicolas S.  himan
    John B. Jack: can you give some more details about your question?
    Nicolas S.  himanshu: it's not the best idea: usually you want to share the same ignore patterns with all your team
    10:00 PM
    Jack C. I have my .ignore committed
    and If I do git push
    Gaurav  has entered the room
    himanshu    sure nicolas, thanks... was just asking technically
    Jack C. will .ignore pushed to master branch?
    John B. it will be pushed wherever you push it
    Jack: if it's committed, then yes
    Jack C. ....uh oh...
    then i need to not to commit it
    John B. That's usually the desired behavior
    Jack: Why don't you want to share your .gitignore?
    Jack C. because everyone using different editor
    John B. aha
    I understand now
    Nicolas S.  Jack: usually it's a good idea to share the ignore patterns, because it's specially useful for project artifacts like .javac, .o, etc
    John B. What you should do is create a .gitignore for your whole team
    with the project specific ignores
    Jack C. ok... I got it
    John B. and each member of the team should ignore the editor artifacts using their global gitignore
    Jack: both solutions suggested work, you and your team can choose what works best for you
    10:05 PM
    Jack C. I will talk to my team regarding .gitignore
    10:10 PM
    vineethv    has entered the room
    10:20 PM
    Pradeep B.  has left the room
    Pawan G.    has left the room
    Gaurav  has left the room
    10:25 PM
    Pawan G.    has entered the room
    junham  has entered the room
    vinay   can we add empty folders
    10:30 PM
    thegiive    what is the default percentage which the git will judge this action is moving the file ?
    Sourav C.   Does the hash computed only on the content?
    John B. all git objects, Tim will explain more
    Eric    has entered the room
    himanshu    in case of binary files, move will mostly not be interpreted?.. because any change will likely change alot of it?
    John B. Tim: Does the hash computed only on the content?
    from above
    himanshu    what is the algorithm used to calculate similarity index?
    10:35 PM
    John B. commits and trees also get hashed
    10:35 PM
    John B. so when you're hashing the blob, the filename is ignored
    but when you hash the commit, the filename is included there along with all the other subtrees
    Wayne H.    if two file with same content, will it be viewed as same blob ?
    John B. Wayne: great question
    they will both be the same blob under the hood
    10:40 PM
    Wayne H.    thx
    John B. that's where git get's a lot of it's power
    Pawan G.    has left the room
    Sourav C.   how will they share history?
    Aveek M.    If I needed to do a diff with HEAD, its easy to do a "git diff HEAD" but for some other commit version, I need to specify the hsh value of the commit ... so for e..g. " git diff 0ade2344"?
    John B. each time you make a new commit, any file or tree that hasn't changed is pointed to at the same old blob urls
    Sourav: they won't share history
    Sourav C.   okay
    John B. because they will be pointed to by different filenames in a commit
    Nicolas S.  Aveek: yeah, you either end up loving to hate or hating to love the hashes as object ids :)
    John B. Aveek: you can also do `git diff HEAD~1`
    to mean "one commit before HEAD"
    or `git diff HEAD~5`
    Aveek M.    i see .. that helps!
    John B. you can also do `git diff 0ade2344~2` to specify two commits before 0ade2344
    10:50 PM
    balac   the log alias i had , doesnot show all branches.. whats the command to see all branches
    Nicolas S.  balac: add `--all`
    to show all branches
    Sky C.  When we do merge, the last commit of master lost?
    John B. Sky: can you clarify?
    Sky C.  the last commit before merge, was on HEAD, master
    Nicolas S.  Sky: no, if you look at Tim's screen, you can see that the one with the message "Beg the utterance" is still there, below the merged commits
    which was the previous "master"
    John B. when he merged, master was moved to the new commit
    Sky C.  ah, I see
    Tripti  has entered the room
    John B. since master is just a pointer... it works like a bookmark into your repository history
    Sky C.  the last commit of master moved under the feature
    Aveek M.    is there a way to do an interactive merge and then abort the entire merge process if midway we discover the merge isn't what we want to do right now?
    10:55 PM
    Wayne H.    does git only provide hash as version number ?
    John B. Sky: when the merge happened, a new commit was created
    which includes the history of master and the history of the branch that was merged
    Nicolas S.  Aveek: you can use git merge --no-commit, which will let you review the change before committing the merge
    Sky C.  John B.: I see. thanks
    John B. after that commit was created (the merge commit) the master branch was moved up
    Wayne: Yes
    git does not provide sequential version numbers, everything is identified by hashes
    Wayne H.    ok
    shadik  suppose say i have created a branch1 from master and edited some files in branch1 , commited and from branch1 i created a branch2 and made some more modifications on different or same . Now i do a merge branch2 with the master, then it means all the changes made in branch2 are merged to master right . Later on i do a some more modifications on branch1 and do a merge with master again, then will be there be any conflicts during the merge ?
    John B. shadik: when you do the first merge of branch2 into master, you will get all the commits that were in that history
    Nicolas S.  shadik: if your newer changes to branch1 conflict with the changes you did on branch2 on top of branch 1, yes
    shadik  how can i avoid this situation ?
    11:00 PM
    John B. Tim: take a look at the question by shadik
    Sky C.  can I have the command again for merge the conflict file?
    Sourav C.   adding the option --all to alias lol would be good in my opinion
    Thierry View paste 
    thanks
    himanshu    has left the room
    tlberglund  Sourav: --all should have been in lol
    Vic L.  has left the room
    Sky C.  ah, I find it just merged to the file
    Ken T.  Does Git shows the conflict files like svn with the files ended with the reversion number?
    Sourav C.   ahh, i may have missed it
    tlberglund  Sourav: I didn't type it the first time, the corrected myself. :)
    Nicolas S.  Ken: no, but git status will tell you which files have conflicts
    shadik  how can i store this chat log ?
    Sourav C.   i believe you were using watch for loglive
    tlberglund  Ken: And the conflicted files mark each conflicted hunk as to which branch it comes from.
    Sourav: Nope, it's actually a more complex script. watch is awesome, but it's another dependency to install. This way I can distribute a link to a Gist containing the script and anyone (with an *nix OS) can use it.
    shadik  Nicolas/John , Can you please let me know is this chat history stored somehwere ?
    Sourav C.   oh, cool
    so, how would a branch off a branch work
    Ken T.  Then how did Git provides the function like "using theirs or using mines" when merge conflicts happens?
    Sourav C.   do we need to merge the child branch to parent branch always
    or we can skip and merge any branch with any other
    Sky C.  some interesting finding. before the merge, the commit of master shows on the top:
    View paste 
    $ git lol
    * 72d4650 (HEAD, master) new commit in master
    | * b8fb66d (feature2) new commit in branch
    |/  
    *   eea104a Merged in the feature branch
    |\  
    | * fc7d845 get a title
    * | 2f74a63 add to the master
    |/
    tlberglund  Shadik: There's no way to predict ahead of time if there will be commits *if* you do additional commits on branch1 after merging branch2. There will only be conflicts if there are conflicts. :)
    11:05 PM
    tlberglund  Shadik: But there's nothing about that scenario that will *cause* conflicts particularly.
    11:05 PM
    Sky C.  after merge, the last master commit goes below the feature2 branch:
    View paste 
    $ git lol
    *   55f0044 (HEAD, master) modified after merge
    |\  
    | * b8fb66d (feature2) new commit in branch
    * | 72d4650 new commit in master
    |/  
    *   eea104a Merged in the feature branch
    |\  
    | * fc7d845 get a title
    * | 2f74a63 add to the master
    |/
    tlberglund  Ken: There's a "git checkout --ours" switch
    Nicolas S.  Ken: "mine" is "the branch I'm currently standing on" and "theirs" is "the branch I'm merging into mine"
    er, ours
    not mine :)
    tlberglund  Ken: That's not the precise syntax, but you get the idea.
    Ken T.  ok, thx
    shadik  ok thanks ,
    Sky C.  that cause me thought the last master commit 72d4650 was lost...
    Jack C. bye guys
    Andy W. has left the room
    Sky C.  bye all

    Feb 21  
    7:45 PM
    tlberglund  has entered the room
    Nancy S.    has entered the room
    John B. has entered the room
    7:50 PM
    John B. Am I in the right place?
    tlberglund  John: Yes.
    Vic L.  has entered the room
    shadik  has entered the room
    Nicolas S.  has entered the room
    7:55 PM
    himanshu    has entered the room
    8:00 PM
    Nicolas S.  http://github.com/signup
    8:05 PM
    Sourav C.   has entered the room
    Sky C.  has entered the room
    Anbalagan   has entered the room
    Gaurav  has entered the room
    tlberglund  Ask all your questions in here.
    vinay   has entered the room
    Lucy H. has entered the room
    T   has entered the room
    GinaLiu has entered the room
    Jacob   has entered the room
    Anne    has entered the room
    Jack C. has entered the room
    Jack C. hihi guys
    Jignesh T.  has entered the room
    Bijoy   has entered the room
    8:10 PM
    John B. Hey Jack!
    vineethv    has entered the room
    8:15 PM
    Sourav C.   git did not ask me for a commit message
    John B. what command did you run?
    Sourav C.   it added "Merge branch 'f3'" as commit message
    git merge f3
    Rong-En F.  has entered the room
    John B. generally it will pre-populate your editor with the commit message
    Nicolas S.  Sourav: it might be that you have an environment variable set to prevent that
    could you tell us the output of `echo $GIT_MERGE_AUTOEDIT`
    Sourav C.   it is blank
    8:20 PM
    Gaurav  has left the room
    Jack C. why do we need this kind of tag?
    8:25 PM
    John B. A tag is way to point at a specific commit by name
    Melissa H.  has entered the room
    Nicolas S.  Jack: it's specially useful when you release versions of a program or library
    think of "v1.0"
    Jack C. but why two kinds of tag?
    John B. aha
    Nicolas S.  an annotated tag is useful to add, say, release notes
    John B. The difference is that the light tag is just a pointer, similar to a branch
    Nicolas S.  or stuff like that
    John B. it can be deleted and or moved
    an annotated tag is a git object
    and once it's in the repo, all new commits depend on that tag as a part of the history
    so if you delete the tag, all the commits later would have different hashes
    Jack C. dang! very confusing
    Gibu    has entered the room
    8:30 PM
    John B. Jack: I hope this extra discussion was helpfule
    let me know if you have more questions
    Jack C. so, the annotated tag is not part of the commit!
    it is just a label
    John B. yes, just a label
    you can attach extra information on an annotated tag
    Jack C. that's why when you check out from it, you got deattached
    from master or branches
    i got it
    8:40 PM
    Sky C.  we need to change in branch feature4 first, then commit in master, then rebase master, correct?
    View paste 
     66973cf (HEAD, master) commit to master 2
    * 5040d0e modified master after feature4
    | * 4d1486c (feature4) modify feature4
    |/  
    * e7257da (tag: README_ADDED) Add a readme
    *   dafe25d (tag: MERGE_COMMIT) Merge branch 'feature3'
    Jack C. you need to commit in feature4 first
    Sky C.  View paste 
    $ git rebase master
    Current branch master is up to date.
    I already commit in feature4
    but nothing changed in rebase master
    John B. you need a commit in master
    Sky C.  John: yes, I did as well
    John B. then you need to checkout your feature branch and then rebase
    when you ran git rebase master, what branch were you on?
    Sky C.  oh, let me try
    8:45 PM
    John B. think of it this way
    when you run rebase
    you're telling git "I wish I had waited until now to make my branch"
    Sky C.  Thanks John. It works
    John B. and by rebasing, git saves your changes to your branch
    updates it with the new changes to master
    and then reapplies your changes
    Sky C.  Thanks John. I misunderstood. I ran rebase in the master branch, instead of the feature4 branch
    John B. glad you got it sorted
    8:55 PM
    T   View paste 
    what was that command again?
    View paste 
    the last one
    Nicolas S.  git rebase -i HEAD~2
    T   View paste 
    thx got it
    Nicolas S.  that means "interactive rebase using as a base two commits before HEAD"
    T   View paste 
    thx!
    Nicolas S.  no problem
    Andy W. has entered the room
    9:05 PM
    himanshu    i lost the audio
    9:10 PM
    Sky C.  sound lost?
    T   View paste 
    same here
    shadik  me too
    Gibu    me too
    Rong-En F.  me too
    John B. I'll ask tim
    Nicolas S.  yeah, Tim is working on it
    Jignesh T.  me too
    Bijoy   mee too
    Rong-En F.  yes
    T   View paste 
    back
    shadik  yes
    Lucy H. yes
    himanshu    fine now
    Sky C.  yes
    Jack C. where can I find the course outline?
    himanshu    just the start of hard reset
    Gaurav  has entered the room
    John B. Jack: Tim should be emailing notes after the class today
    9:20 PM
    alanshe has entered the room
    9:30 PM
    Sourav C.   has left the room
    vineethv    has left the room
    Gaurav  has left the room
    9:40 PM
    vinay   should we use origin for all the repos we create
    9:45 PM
    Nicolas S.  vinay: origin is just the default name for a remote, the same as master is the default name for the mainline branch. Usually it's a good idea to keep it, but you can change it if you want
    vinay   ok
    is there any issue if i use origin for all the repos we create
    Nicolas S.  vinay: no, since it's the default name you get, you will have it in all repos by default
    vinay   ok
    9:50 PM
    tlberglund  https://github.com/githubtrainer/poetry
    Gaurav  has entered the room
    10:00 PM
    Anne    has left the room
    10:05 PM
    shadik  I am getting permission denied (publickey)
    ?
    10:10 PM
    Gaurav  has left the room
    Nicolas S.  shadik, what do you have on git remote -v ?
    shadik  fatal: Not a git repository (or any of the parent directories): .git
    i got this
    John B. shadik: try using the https url
    instead of the ssh url
    shadik  ok
    Nicolas S.  shadik: what's the outpuf of ls?
    10:15 PM
    shadik  now its working with https
    10:25 PM
    Jack C. what is this? remotes/origin/HEAD -> origin/master
    I found this remotes/origin/HEAD -> origin/master
    10:30 PM
    Jack C. so we actually only have one master now?
    Gaurav  has entered the room
    Sky C.  How about the difference between "origin/master" and "origin/HEAD"?
    View paste 
    $ git lol
    * 29009dd (HEAD, origin/master, origin/HEAD, master) Work hard
    View paste 
    $ git branch -a
    * master
      remotes/origin/HEAD -> origin/master
      remotes/origin/master
    is it because of fork?
    10:35 PM
    Sky C.  I would like to know why the "remotes/origin/HEAD" is generated.
    John B. it's saying that the remote repo
    called origin (which is on github)
    HEAD points to the master branch
    of that remote repo
    tlberglund  git clone https://github.com/githubtrainer/poetry.git
    Sky C.  ok, thanks John
    10:40 PM
    himanshu    View paste 
    my clone command is stuck...
    C:\himanshu\work\trainings\github> cd tmp
    C:\himanshu\work\trainings\github\tmp> git clone https://github.com/githubtraine
    r/poetry.git
    Cloning into 'poetry'...
    Nicolas S.  himanshu: that's weird. Could you try aborting it and cloning again?
    himanshu    sure
    Jack C. can I push my own branch to that upstream repo?
    Nicolas S.  Jack: yep
    that's why we added you all as cllaborators
    collaborators*
    Jack C. (evil smiling)
    Nicolas S.  haha
    10:55 PM
    tlberglund  git config --global branch.autosetuprebase always
    git config branch.master.rebase true
    Jack C. what is good about rebase automatically on master?
    Nicolas S.  Jack: you avoid some unnecessary merge commits every time you pull commits
    but it's actually just personal opinion
    some people like / don't care about those merge commits, others do
    Jack C. ok
    Nicolas S.  what Tim is saying right now, basically :)
    11:00 PM
    T   View paste 
    Thanks!
    Jignesh T.  how can I keep my forked repo up to date?
    Nicolas S.  jig
    Gibu    Thanks Tim
    tlberglund  Gibu: You bet!
    Jack C. bye~
    tlberglund  Jignesh: That would be a great question for the feedback repo! Let me get you that URL.
    Nicolas S.  Jignesh: you can add the repo you forked from as a second remote
    tlberglund  https://github.com/githubtraining/feedback/issues
    Nicolas S.  …or, Tim can handle that :)
    tlberglund  Heh.
    Well, Nicolas was giving you the answer. You add, in this case, https://github.com/githubtrainer/poetry.git as a second remote. Maybe call it "upstream" or something.
    So, "git remote add upstream https://github.com/githubtrainer/poetry.git&quot;
    Then occasionally "git pull upstream"
    And then you win.
    aliku   has entered the room
    Jignesh T.  Thanks
    tlberglund  Jignesh: You are welcome, sir.
    11:05 PM
    Vic L.  has left the room
