---
layout: bare
title: Git and GitHub Foundations Online (Private)
description: Git and GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-02-07-onlineclassnotes.md
eventdate: 2013-02-07
---

Teachers:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))


# 2013-02-07 Online Class Notes

* Is “git checkout” the same as “svn checkout” (or “svn update”)?
* Is there a recursion option for commands? Similar to –R or “—depth” options to svn?
* It seems painful to refer to everything by their hash instead of having a revision number to use.

## Outline

* History and Intro
* Installing and configuring
* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Understanding Git's Content Tracking
* Moving and copying files
* Branching and Merging in Git
* Establishing upstream repositories
* Push, pull, and fetch
* RefLog as a safety net
* Stash for work-in-progress
* Reset
* Collaboration through Pull Requests
* Graphical merge/diff tools

## Resources
* [Slides](http://teach.github.com/presentations/git-foundations.html)
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
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


## Day One Command Line History

    git init project1
    cd project1
    vim first.txt
    git status
    git add first.txt
    git status
    git commit -m"My first commit"
    git config --list
    git config --list | grep gui
    git config --list | grep user
    git config --local user.name
    git config --global user.name
    git config --system user.name
    git config --local user.name "Matthew WantsToBeAYahoo-er McCullough"
    git config --local user.name
    git config --global user.name
    git config --system user.name
    git config user.name
    git config --local user.name "Matthew WantsToBeAYahoo McCullough"
    git help config
    cd ~/.ssh
    ls
    cat id_rsa.pub
    ssh -T git@github.com
    
    cd project1
    cat first.txt
    git status
    vim first.txt
    git status
    git add first.txt
    git status
    git reset HEAD first.txt
    git add first.txt
    git reset HEAD first.txt
    git add first.txt
    git status
    git commit -m"My second commit"
    git log --pretty=raw
    vim first.txt
    git diff
    gitk
    git gui
    git status
    git commit -m"Permanent now"
    git diff
    vim first.txt
    git diff --color-words
    git diff --staged --color-words
    git add -p first.txt
    cat first.txt
    git diff --color-words
    git diff --staged --color-words
    
    git log
    git show 699d
    git show 699
    
    git log
    git log --stat
    git log -p
    git log -p --color-words
    git log --format=raw
    
    z git_git
    git log --author=peff
    git log --author=peff --before=1.year.ago
    git log --author=peff --before=1.year.ago --patch
    git log --author=peff --before=1.year.ago --patch -S debug
    git log --author=peff --before=1.year.ago --patch -S error
    cd -
    
    git status
    git add -A .
    git status
    git reset --hard
    git status
    vim first.txt
    git add -A .
    git status
    git reset --hard
    vim first.txt
    git add -A .
    git status
    git add -A .
    git status
    git commit -m"I deleted this"
    git checkout HEAD~1
    git checkout master
    git reset --soft HEAD~1
    git status
    git commit -m"Resurrecting this file"
    echo CHANGE >> first.txt
    git log --stat -M
    git status
    git reset --hard
    git reset --soft HEAD~1
    git commit -a -m"Resurrect"
    echo CHANGE >> first.txt
    mv first.txt uno.txt
    git add -A .
    git commit -m"Change and rename"
    git log --stat -M
    cat uno.txt
    vim uno.txt
    git add -A .
    git status 
    mv uno.txt another.txt
    git add -A .
    git status
    git commit -m"Changes that will be detected as rename"
    
    vim .gitignore
    git status
    git add .gitignore
    git commit -m"Ignoring log and temp files"
    mkdir subfolder
    cd subfolder
    echo STUFF >> build.log
    echo VALUABLE >> second.txt
    git status
    git add -A .
    git status
    
    git log --oneline
    git checkout 699dbcd
    git status
    git checkout master
    git status
    git commit -m
    git commit -m"New file"
    git status
    
    git checkout master~1
    git checkout master~2
    git checkout master~3
    git checkout master~4
    git checkout master~5
    git checkout master~6
    git checkout master~7
    git checkout master
    git checkout master~7
    git checkout master
    cd ..
    git checkout master
    git checkout master~7
    git checkout master
    git checkout master~7
    git checkout master
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 meme txt
    cd ..
    git add .
    git commit -m"Thousands"
    git checkout master~1
    git checkout master
    git checkout master~1
    git checkout master
    cd project1
    gitk 
    git help gitrevisions
    git remote add origin git@github.com:githubstudent/project1.git
    git push -u origin master

## Day Two Command Line History

    to.scratch
    clear
    history.cuttail 500
    clear
    cd project1
    ls
    git difftool HEAD HEAD~1
    clear
    git status
    git difftool -t p4 HEAD HEAD~1
    git difftool -t p4merge HEAD HEAD~1
    which -a 
    which -a p4merge
    cat /Users/mccm06/.dotfiles/scripts/p4merge
    cat ~/.gitconfig | more
    clear
    git graphlive 5
    cd project1
    git graphlive 5
    clear
    gitk
    gitk --all
    cd project1
    gitk --all
    git difftool  HEAD HEAD~1
    cd project1
    clear
    git difftool  HEAD HEAD~1
    git difftool  HEAD
    echo GOO >> gjj
    git difftool  HEAD
    git add .
    git difftool  HEAD
    git reset --hard
    clear
    which -a git-graphlive
    which -a git-graphlive | xargs vim
    vim /Users/mccm06/.dotfiles/scripts/git-graphlive
    clear
    git branch -a
    historytailzsh 8
    historytailzsh 3 8
    clear
    echo Good morning
    echo Good morning students
    clear
    git branch -a
    git diff master remotes/origin/master
    clear
    git fetch
    git diff master remotes/origin/master
    git branch -a
    gitk --all
    git merge remotes/origin/master
    clear
    git remote -v
    open .
    git branch -a
    cat .git/config
    clear
    cat .git/config
    clear
    cd ..
    clear
    git clone git@github.com:githubstudent/project1.git myprojec1clone
    cd myprojec1clone
    git log
    cd ..
    cleat
    clear
    git clone git@github.com:githubstudent/hellogitworld.git myhellogitworld
    cd myhellogitworld
    git branch -a
    git checkout bisect
    git branch -a
    git checkout master
    git checkout bisect
    git checkout master
    cd ..
    git clone file://~/Documents/Scratch/myhellogitworld hgw2
    git clone file:///Users/mccm06/Documents/Scratch/myhellogitworld hgw2
    git clone /Users/mccm06/Documents/Scratch/myhellogitworld hgw3
    clear
    cd myhellogitworld
    git checkout master
    git branch myfeature1
    git branch 
    git status
    git checkout myfeature1
    vim matthewmcculloughyahoo.txt
    git status
    git add matthewmcculloughyahoo.txt
    git checkout master
    git checkout myfeature1
    git commit -m"Saved to myfeature1"
    git push
    git push -u origin myfeature1
    git branch -a
    git checkout master
    git fetch 
    git show d4dd207
    git diff myfeature1 remotes/origin/myfeature1
    git checkout myfeature1
    git status
    git pull
    git status
    git checkout master
    git merge myfeature1
    echo "It exploded"
    git reset --hard remotes/origin/master
    to.scratch
    clear
    git clone git@github.com:githubtrainer/hellogitworld.git trainerhgw
    cd trainerhgw
    git fetch https://github.com/githubtrainer/hellogitworld refs/pull/20/head
    git merge FETCH_HEAD
    echo build
    git push
    gitk --all
    clear
    git difftool -t p4merge master myfeature1
    clear
    git branch feature2
    git checkout feature2
    vim fix.txt
    git status
    open .
    git stash
    git stash --list
    git stash list
    git status
    cat fix.txt
    git checkout master
    git checkout -
    git stash pop
    git reset --hard
    clear
    git checkout master
    git branch rebasepractice
    echo smallchange1 >> fix.txt
    git commit -a -m"Fix on master
    git commit -a -m"Fix on master"
    git checkout rebasepractice
    echo otherfeaturework >> README.txt
    git commit -a -m"Feature work"
    cd ../myhellogitworld
    gitk --all
    gitk master rebasepractice
    git rebase master
    git checkout master
    git merge rebasepractice
    clear
    history.cuttail
    history.cuttail 150
    welcome
    history.cuttail 500

----------------
    
## Chat Transcript

    Sachin R.   +1
    Tim B.  Chiru: You should have Git installed and a command prompt. Matthew's talking about that now.
    Sachin R.   where we can see presentation
    Tim B.  Greg: better than download; they're actually online in native form. We'll send you links at the end of class.
    matthewmccullough   http://github.com/signup/free
    Tim B.  Sachin: Can you see the screen Matthew is sharing? Just watch that for now, and we'll share slides later.
    Greg    ok, thanks
    Sachin R.   Tim : Thnx
    Gaurav M.   Ok. I got the online account, do we need to have something installed on the laptop too ?
    8:10 AM
    Tim B.  Gaurav: Yes, you should have Git installed.
    Do what Matthew is showing you right now, and let me know if it works.
    Edgar W.    View paste 
    git version 1.7.10.2 (Apple Git-33)
    naveen  i have 1.7.5.4
    (Mac)
    Gaurav M.   View paste 
    [magaurav@heightask-dr ~]$ git --version
    git version 1.7.12
    tarun   i have 1.8.0.2
    Tim B.  tarun: Like a boss. Keep going.
    Gaurav M.   Thanks Tim, I got it
    Tim B.  naveen: Let's move forward with that. You might hit a speedbump later on, but just ask if anything happens and we'll figure it out then.
    8:15 AM
    i_yahoo i just followed the commands on my machine
    and i don't see the .git
    stanleyhlng need to show the hidden file i guess
    Tim B.  i_yahoo: type "pwd" and paste in what it tells you.
    stanleyhing: If you're looking in Windows Explorer, then yes. Otherwise, at Git Bash or a Mac Terminal window, you can type "ls -a" and see the .git folder.
    i_yahoo got it, thanks
    Tim B.  i_yahoo: Win.
    Sachin R.   Tim , is there any way i have the list of command used by presenter , along with chat window
    Tim B.  Sachin: Not directly, but every once in a while I'll ask him to run the "history" command, so you can see that.
    Sachin R.   ok
    thanks
    vishvesh    are git commit atomic?
    8:20 AM
    Edgar W.    ls -la to see the .git
    Tim B.  vishvesh: Yes!
    vishvesh: And remember, this commit is entirely local right now. This is just happening on disk, on your local box. We'll talk to the network later (and those operations will be atomic as well).
    vishvesh    k.. thanks
    Gaurav M.   What is this message:
    View paste 
    [magaurav@heightask-dr project1]$ git commit -m"Initial import"
    [master (root-commit) 4daa879] Initial import
     Committer: Gaurav Maheshwari <magaurav@heightask-dr.eglbp.corp.yahoo.com>
    Your name and email address were configured automatically based
    on your username and hostname. Please check that they are accurate.
    You can suppress this message by setting them explicitly:
        git config --global user.name "Your Name"
        git config --global user.email you@example.com
    After doing this, you may fix the identity used for this commit with: 
        git commit --amend --reset-author
     1 file changed, 5 insertions(+)
    Sachin R.   what are "create mode 100644" ?
    Tim B.  Garurav: We'll configure those things in a minute. :)
    vishvesh    and what is 5 insertions
    Tim B.  vishvesh: That means you added five lines to the file.
    Gaurav M.   sure, thanks Tim.
    vishvesh    oh..k..
    Jacob   What's that historytailzsh thing
    Is that a special shell
    8:25 AM
    naveen  how to reset the author of the first.txt commit
    after setting email and name
    Tim B.  Jacob: Yeah, just some presentation magic. Matthew is using a terminal program called iTerm 2 on the Mac. It allows horizontal and vertical shell splitting.
    naveen  ?
    Tim B.  naveen: That's a bit of an advanced question for now, but 'git commit --amend --reset-author -m "Initial commit"' should do it. :)
    8:30 AM
    Gaurav M.   Why use "--" for each flag vs. a single "-" ?
    Tim B.  Gaurav: As a Unix idiom, -- precedes flags that are spelled out (--message) and - precedes flags that are a single character (-m).
    Hang S. git config --list returns empty..
    Tim B.  Gaurav: So you will see a mix of both.
    Gaurav M.   got it. thanks.
    Tim B.  Hang: That's totally fine. Follow along right now, and you'll have some config in there soon enough. :)
    Hang S. cool.
    8:35 AM
    Greg    you would be a "Yahoo" not "Yahoo-er"
    Hang S. what are configs used for, if they are empty by default and work just fine?
    stanleyhlng can i unset the config?
    matthewmccullough   View paste 
    git config --global user.name "Your Name"
    git config --global user.email "youremail@yahoo.com"
    Tim B.  Hang: EVERYTHING! Lots of things work by default, but there's a huge amount of configurable behavior in Git.
    Hang: And really, the config we're showing you now is essentially required. It "works" without it, but you really do want a user.name and user.email set.
    Hang S. I see. thanks, Tim.
    Tim B.  Hang: You bet!
    8:40 AM
    stanleyhlng git config --local --unset user.name , it works ;)
    8:45 AM
    Tim B.  Ollie: Answer to your config question: no. Config is outside of the repo history.
    Ollie R.    Thanks Tim
    Tim B.  Ollie: My pleasure.
    8:50 AM
    Edgar W.    Be careful you don't overwrite your "real" id_rsa!!!!
    James N.    ++
    Ollie R.    what about passphrases on the key? suggested, discouraged?
    Tim B.  Ollie: That's ultimately an internal Yahoo question, but my advice is yes, passphrase.
    Gaurav M.   how do we avoid overwrite when doing ssh-keygen
    Ollie R.    -f filename
    naveen  View paste 
    ssh -T git@github.com
    Permission denied (publickey).
    it is showing permission denied
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEUsEph3ybbRXwt6KosisNPyVUOsvhsfZbQfOjwJ53dIiMoh9O/oSOfYnJaoTS+3KGmPd61ayMzc+MRDzDoDtrRyCeUFhz3W9JmaRcJpRqkzVCi0k1HbxbCXAT2L8a/8bx6adlfbqc6wHbAAX3gSFnIz7eW7kaI4Ye8XJfnfQWNxHJsINeHFyco1TRheOMFdISgqzgg7Hq8S+wQf46CalVcjMNxktAHdryFByz83t30iZdD7Xu2SP4XGnvfz2D+8n6gsiCvl/FAJWiVvJff8iF8qfFC9BRj7oU80x6AE+kyC9/hqTMoUXJnPirIW0Wcpks9vckd4jrqkpWch10vDH3
    i added pub ssh key
    Ollie R.    what is the opposite of "git add"? to un-stage a file
    Edgar W.    How can one convince git to use an ssh key in some other directory (other than ~/.ssh)?
    Tim B.  Ollie: git reset <filename>"
    8:55 AM
    Tim B.  Edgar: Is that a curiosity question, or do you need that today?
    Edgar W.    Now
    Tim B.  Edgar: Cool. Stand by.
    Edgar W.    I tucked the key generated today into a separate directory so as not to pollute (clobber) my "real" (work) ssh key.
    Ollie R.    I think it has something to do with "ssh -i <path to key>" but I don't know how to config that in git
    Edgar W.    Pfeh.
    Tim B.  Edgar: If you're content with that for now, that's great. I'll get you an answer in a bit otherwise.
    vishvesh    how can git allow add already added file?
    Tim B.  vishvesh: "add" means "put into the staging area," so you do this every time you change a file.
    9:00 AM
    Jacob   Could you repeat the tree and nested trees and children and from where they came from.
    vishvesh    oh. so after modification, can't i just commit directly?
    Tim B.  Jacob: Yes, we'll repeat that.
    Tim B.  vishvesh: No, you must add every time. There are key reasons for this. All will become clear.
    Jacob   So does each and every commit to the same file result in a new folder
    Gaurav M.   please explain the need of "git reset HEAD first.txt" once again..
    Edgar W.    View paste 
    Tim B. -- I'm good...
    Hi ewhipple! You've successfully authenticated, but GitHub does not provide shell access.
    9:05 AM
    Hang S. what if there are a lot of files being modified (e.g. after batch editing)? how to easily add all modified files into the stage area?
    Tim B.  Edgar: Looking good.
    Jacob: Ask that a different way. I'm not sure I understand the question.
    Jacob   So would you say a10b3 is the parent of 7e8b1
    Tim B.  Hang: "git add ."
    Hang S. that's cool. thanks!
    Tim B.  Jacob: "Parent" really only applies to the relationship between *commits*. The diagram we were just talking about was showing the way files are stored in a single commit.
    Jacob: That was a zoomed-in view of _one commit_. Then the commits themselves are also organized into a graph.
    Jacob   OK TX
    Ollie R.    gaurav: git reset is the opposite of git add, it removes a file from staging for the next commit
    Tim B.  Olllie: Thanks! Missed that question from Gaurav. :)
    9:10 AM
    Tim B.  Gaurav: More on reset: it's a powerful command that can do lots of things, but the recipe Ollie gave you is how you can unstage files. Also, "git status" will remind you of that command if you forget.
    Jacob   If every time we commit, a new folder and hash file gets created, is there a way to compact the so many directories that are getting created.
    Greg    gui you are talking about is this? http://mac.github.com/
    Tim B.  Greg: Yes. Also http://windows.github.com
    Gaurav M.   Thanks Ollie and Tim
    Tim B.  Jacob: Ah, I see. Don't stress about that. It might seem like the storage mechanism is wasteful, but there are other layers of optimization on disk that you don't see at this level.
    Jacob: As a quick rule of thumb, Git repos are usually 5x or 10x smaller than the equivalent Subversion repo.
    i_yahoo git gui doesn't work for me
    i mean the command 'git gui'
    Edgar W.    Nor for me.
    Tim B.  Jacob: Meaning the server-side SVN repo, not merely the working copy.
    Edgar W.    (Mac)
    i_yahoo View paste 
    git: 'gui' is not a git command. See 'git --help'.
    Did you mean one of these?
        grep
        init
        pull
        push
    vivekh  View paste 
    arounddry-lm:newproject vivekh$ git gui
    git: 'gui' is not a git command. See 'git --help'.
    Did you mean one of these?
        grep
        init
        pull
        push
    arounddry-lm:newproject vivekh$
    Tim B.  Edgar: Could you repeat the question? Had a browser hiccup here.
    9:15 AM
    Tim B.  If "git gui" is not working for you, this could be an artifact of Yahoo's Git build.
    Edgar W.    Roger that.
    i_yahoo also
    View paste 
    git status
    # On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #   .DS_Store
    nothing added to commit but untracked files present (use "git add" to track)
    how do we make it ignore "hidden" files
    Tim B.  i_yahoo: Ooooh, the hated .DS_Store! I'll bring this up out loud.
    Edgar W.    http://superuser.com/questions/272465/using-multiple-ssh-public-keys -- note on how to configure separate ssh keys for "work" (Yahoo!) and non-work (github.com) keys
    Just for the record
    vishvesh    how to list modified and stage files in project?
    Tim B.  Edgar: Thanks! Was gonna ask you to post that question in https://github.com/githubtraining/feedback/issues, so we could get a decent answer written up for posterity.
    vishvesh    files modified but not staged
    Ollie R.    here's an explicit example of ignoring .DS_Store files: https://help.github.com/articles/ignoring-files
    Tim B.  vishvesh: "git status," and look for the red files.
    vishvesh    hmm.. so all stage will display in green color?
    Tim B.  Ollie: Right. We'll cover that explicitly in the class. ;)
    Ollie R.    sorry :)
    Tim B.  Ollie: Oh, no prob! Just letting you know we will not ignore this hyper-important topic. Commiting a .DS_Store or thumbs.db is a termination offense!
    9:20 AM
    Tim B.  vishvesh: Yes, they should display in green. If there are no colors, just read the headings, and status will tell you what's staged and what's not. Also, pay attention to this diff stuff. It helps clarify the difference.
    Greg    is there a git equivalent of the svn --diff-cmd option?
    Tim B.  Greg: Absolutely! We don't necessarily cover it in this class, but I'll get you a link if I can.
    Ollie R.    greg, I think it's the diff.external config setting
    Tim B.  Greg, Ollie: diff.tool, difftool.prompt, etc. There are various ways to skin the cat.
    9:25 AM
    Tim B.  If you ask that question here [https://github.com/githubtraining/feedback/issues], we'll get you a comprehensive answer today or tomorrow. It's too big for chat. :)
    (And it's usually in the advanced class, so we may not cover it here.)
    gully   line item veto! nice
    Tim B.  gully: Yup!
    wanlin p.   what's that gui
    9:30 AM
    Tim B.  wanlin: GitHub for Mac (https://mac.github.com)
    Greg, Ollie: Some merge/diff tool config here: http://teach.github.com/articles/lesson-git-merge-tool/
    Greg    Ollie - yeah, "git difftool" works instead of "git diff"
    Ollie R.    thanks!
    this is a refresher course for me, but I'm already getting some great new info. I love the technical explanations of what's under the hood, and that add -p is a great tip
    Tim B.  Ollie: the under-the-hood stuff is what really made Git click for me when I initially learned it. It's like it's all just magic until you grasp that. Glad it's helping!
    9:35 AM
    Ollie R.    very true Tim, it has been fairly magical-seeming until that explanation
    I used to use git in a very subversion-y way, but now I see more of the differences
    vishvesh    Tim can you explain quickly when Matthew modified intermediate file based on question-answer , why changes were not reflected after save? "cat first.txt" showed full file, not the one Mathew chose during 'git add' action
    Sachin R.   Tim / Matt : is there any way to get transcript for this irc/chat session ?
    Tim B.  Ollie: That's so key. It really requires a conceptual reboot. SVN it is not!
    9:40 AM
    Tim B.  vishvesh: Matthew was modifying a file in his "working tree"—that is, just a file on his disk. When he added parts of it, he was putting that content in the "staging area."
    The staging area is a Git construct, whereas first.txt is just a file on his disk.
    vishvesh    Very nicely created training for beginners. Its too late in India but i didn't realize the time. Course content are also very basics needed to understand the tool. I am loving learning Git.

    Tim B.  vishvesh: Super! We're also offering a class timed for India students later in the month. You should ask internally about this.
    Greg    is it possible to have multiple accounts in the GitHub for Mac gui?
    vishvesh    oh..ok. Thanks Tim
    Ollie R.    it would be just right if I wasn't splitting my attention between the presentation and the chat room :/
    Greg    one for corp, one for non-corp
    Brian K.    agreed
    Greg    etc.
    Tim B.  Ollie: Heh. Welcome to my world! ;)
    Hang S. why not chat in the control panel of GoToTraining instead?
    9:45 AM
    Tim B.  Hang: It's much harder to keep up with a large volume of questions in that small window. We have not found it to work well in previous classes.
    gully   two screens is helpful
    Hang S. Tim, what would be the user-level config file on Linux? e.g. ~/.git?
    gully   (two displays, that is)
    Tim B.  Hang: ~/.gitconfig
    Hang S. got it. what would be the format?
    Tim B.  Hang: It's an .ini file.
    Hang S. i see. thanks!
    Tim B.  Hang: Feel free to edit. There are user-serviceable parts inside. :)
    Hang S. so, it is an .ini file without any section names? something like user.name=Hang Su ?
    Tim B.  No, you should see section headings. e.g.:
    [user]
    name = Hang Su
    Hang S. ah. i see.
    9:50 AM
    
    Ollie R.    so that git log -p is very much a replay of how a file got from A to B
    Tim B.  Ollie: Yup. Even though patches/diffs are never stored in a particular commit, log -p shows what the equivalent patch _would have been_ to get from the prior commit to the current one.
    Jacob   Does egit or any IDE git plugin have these features
    Tim B.  Jacob: Yes. Mileage may vary, but you should see diff stuff in Eclipse.
    9:55 AM
    Chiru   mute?
    could be my network connection. sorry now I can hear
    Tim B.  Chiru: Good deal. :)
    10:00 AM
    matthewmccullough   git log --author=peff --before=1.year.ago --patch -S error
    10:05 AM
    matthewmccullough   git add -A .
    Picks up all the changes (removes, adds, renames)
    10:10 AM
    Doug A. so in the case of rename being noticed versus the status where it removed/added --- does it make a difference in the end?
    Tim B.  Doug: Yes! It matters for when you're trying to track the changes in a file before and after a move. It's a matter of what log tells you later on.
    Ollie R.    so rename maintains the history of the "old" file, while an add/delete loses them?
    Doug A. so if we plan to rename a file then the best thing to do may very well be to rename it without making any other changes prior to commit?
    Tim B.  Doug: But in the literal sense of what content is tracked at what commit, the question is academic. It's quite practical when it comes to logging stuff later on.
    Ollie: Well, you'll still have the history of that file in those prior commits, but you won't be able to log the file across the delete, where you can across a move.
    Ollie R.    yeah, that's what I meant, thanks
    Doug A. that makes sense
    usually if there's even close to a 50% change to my perl or php, something else probably went wrong in the saving of the file
    10:15 AM
    Greg    when would you want to do a git reset without --hard as the mode?
    Tim B.  Doug: Yup! If it's more like 5% or 10% across a refactor-y move, that's more like it.
    Troy N. git stage seems slightly less confusing than git add
    Tim B.  Greg: We were using reset earlier (with no --hard) to unstage files.
    Troy: You are not the first to suggest this. Alas, we don't make the rules. ;)
    Troy N. :-)
    Greg    I guess I don't understand when you would want to use other modes for reset, such as --soft
    Ollie R.    greg, you're not alone, reset options can be complicated
    Tim B.  Greg: --soft is a rarely used mode. --mixed and --hard are much more common.
    Greg: And nobody every types --mixed, since it's the default, but it's the way you unstage stuff, so it's a good one to know.
    Greg: And --hard is *extremely* useful, although dangerous.
    Edgar W.    And yet, "all" for git commit is lowercase a.
    Greg    ok thanks. dangerous meaning you could blow away code that wasn't committed, right?
    Tim B.  Edgar: There are only so many letters in the alphabet. Sometimes they collide. After a certain point, you'll stop looking for the word they stand for and just love them for what they are.
    Edgar W.    Just sayin...
    Tim B.  Edgar; I hear you. :)
    10:20 AM
    Tim B.  Greg: Yes. It's the one way you can lose data in Git. Modified files are blown away by reset --hard.
    Ollie R.    what does it show if you mv file, then do status before add?
    Edgar W.    Change delta computed on line by line basis, or byte stream delta?
    10:25 AM
    Edgar W.    He said "it" again!
    Tim B.  :)
    Edgar: Just line-by-line.
    Edgar W.    Thanks.
    Tim B.  Ollie: If you "git mv," it looks just like the "git add -A ..."
    They do the same thing. You should use "git add -A" when some external tool has done the moving, like if you're a Java dev and you used Eclipse to move a bunch of classes from one package to another, or a PHP dev and you reorganized directories and changed a bunch of includes.
    Ollie R.    thanks tim, so manually on the command line, git mv is generally better (less typing)
    Tim B.  Ollie: Yes. If you're moving a single file at a time, git mv is the win.
    10:30 AM
    matthewmccullough   https://github.com/github/gitignore
    https://github.com/github/gitignore
    View paste 
    https://github.com/github/gitignore
    Edgar W.    Does .gitignore need to include itself?
    gully   i thought the link you spread earlier here named the file ./.gitignore_global ?
    Edgar W.    View paste 
    appleguess-lm /project1> cat > .gitignore
    appleguess-lm /project1> git status
    # On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #   .gitignore
    nothing added to commit but untracked files present (use "git add" to track)
    appleguess-lm /project1>
    Ah...
    Ollie R.    gully: that was my link, and the filename is arbitrary until it's put into the config
    Tim B.  gully: I don't recall that, but I trust you! You can call the file anything you can. The restriction is that you name the file by setting the "core.excludesfile" config parameter to point to the file.
    Ollie R.    here's the link again: https://help.github.com/articles/ignoring-files
    Tim B.  Ollie: Ah, that's why I don't recall that. Thanks again fer the link. :)
    10:45 AM
    balaji  ~<version>
    is the number of versions to go back from now?
    how do i go to an absolute version?
    say to the 10th version of the master?
    got it thanks
    Tim B.  git help gitrevisions
    10:50 AM
    balaji  and i am assuming master is hte master branch
    and i ont htink we have covered branches, yet
    right?
    matthewmccullough   git help gitrevisions
    Chiru   does "git" stand for something?
    Tim B.  balaji: Correct. "master" refers to the default branch, which we have not covered yet.
    vivekh  And head is currently pointing to master ?
    Tim B.  Chiru: Sort of. It's a British term that translates to "idiot" in American English. The man who named Git (Linus Torvalds) jokingly said that he named it after himself. :)
    Chiru: Linux is also named for Linus. So he named his two major projects after himself.
    Chiru   cool. thanks
    Tim B.  vivekh: HEAD points to the commit you currently have checked out. You'll see it move around when we start branching.
    vivekh: It points to master if you're "on" master. If you're in detached head state, it's going to point to a commit that doesn't have any other name.
    10:55 AM
    Greg    Can you push from the command line without doing anything on the web? Or is that setup required?
    Tim B.  Greg: You need to create a repo to push to, so you *sort of* have to do the web work. There's a command called "hub" that lets you do that repo creation from the command line, though.
    Doug A. If it's not already in the plan, I'd like to know how to deal with fast-forwards
    Edgar W.    View paste 
    appleguess-lm /project1> ls -la ~/.ssh/{*.pub,config}
    -rw-r--r--  1 ewhipple  staff  182 Feb  6 10:02 /Users/ewhipple/.ssh/config
    -rw-r--r--  1 ewhipple  staff  396 Feb  6 08:52 /Users/ewhipple/.ssh/ewhipple-github.com_rsa.pub
    -rw-r--r--  1 ewhipple  staff  241 Jan 11 17:02 /Users/ewhipple/.ssh/id_rsa.pub
    appleguess-lm /project1> cat ~/.ssh/config
    Protocol 2,1
    ForwardAgent yes
    StrictHostKeyChecking no
    Host ew-github
         HostName github.com
         User git
         IdentityFile ~/.ssh/ewhipple-github.com_rsa
         IdentitiesOnly yes
    appleguess-lm /project1>
    And
    View paste 
    appleguess-lm /project1> git config  remote.origin.url
    ew-github:ewhipple/project1.git
    11:00 AM
    Chiru   can we have the notes/presentation?
    Tim B.  https://github.com/github/trainingteam/issues
    matthewmccullough   http://teach.github.com/presentations/git-foundations.html
    Hang S. thank you very much, Matthew and Tim!
    matthewmccullough   Slides: http://teach.github.com/presentations/git-foundations.html
    Edgar W.    Let's you have a separate ssh key for github.com while your Yahoo! ssh key is the default (id_rsa).
    Chiru   thanks guys!
    gully   thanks Edgar
    Gaurav M.   thanks much Matthew and Tim
    James N.    thanks guys, excellent session!
    looking forward to tomorrow
    vishvesh    Thanks Tim & Matthew.
    Ollie R.    thanks edgar, good stuff
    Tim B.  Doug: We'll talk through fast-forwards tomorrow; don't you worry.
    Greg    thanks!
    i_yahoo is there a way to "delete" a repository on github.com?
    Doug A. thanks!
    Sachin R.   thanks !
    sachin t.   thanks
    Tim B.  Yes. Click on settings at the top right, then scroll down.
    (That was for i_yahoo about deleting)
    Garot C.    thank you , see you tomorrow!
    Edgar W.    Is a chat transcript available/
    ?

    Tim B.  Edgar: Yes. We'll email it and the rest of the notes tomorrow.

    Edgar W.    Excellent.
    A dios.
    Tim B.  Also, please let me correct the questions repo. It is here: https://github.com/githubtraining/feedback/issues
    The one I posted before is an internal repo you won't be able to load. :)
    11:05 AM
    Yesterday, February 7
    ← Wednesday, February 6 | Today, February 8 →
    matthewmccullough   Good morning all!
    Glad to have you all back with us today.
    tlberglund  A very good [MDT] morning to our favorite Yahoos! Looking forward to more Git today.
    matthewmccullough   I've totally got that. Yahoos. Not Yahoo-ers.
    7:55 AM
    tlberglund  Ollie: Don't hold back! And keep answering questions for your peers. That's solid gold.
    ---------------
    matthewmccullough   Good morning all!
    Glad to see you there.
    Garot C.    good morning
    Gaurav M.   Good morning Tim, Matthew and all!
    8:05 AM
    matthewmccullough   Morning Gaurav!
    vishvesh    hey a quick start one very basic question.. our team doesn't use open source and currently using SVN..Does git has any advantage over svn for non open source projects?
    matthewmccullough   Morning Garot
    vishvesh: Oh yes. We can show that off with precision.
    8:10 AM
    Jason W.    IMO, the issue isn't also just the hash, it's the lack of a monotonically increasing number that can be used to sort the order of events in a repository.
    Ollie R.    I think that's kind of a cvs/svn thinking that's not really relevant in the git world
    Jason W.    simply by looking at two revision numbers, I can tell you which was committed first
    tlberglund  Jason: I understand. The log command can still give you a time-ordered list of commits, but ultimately, the idea of time-ordering commits is deceptive.
    wanlin p.   can you show the git push command from yesterday
    tlberglund  Time-ordering of commits is less important than *ancestry* of commits. The history is a graph, so topology is more important than time.
    8:15 AM
    Ollie R.    is it safe to say that the main difference between the local repo and the github repo is just who can view it? local = for you only, github = can be public
    tlberglund  Ollie: That's a good way to think about it, yes. The GitHub version has a server in front of it, whereas yours doesn't.
    8:20 AM
    Ollie R.    thanks tim and matt, I now understand the purpose of fetch :) that was always a bit of the "magic" for me
    tlberglund  Ollie: BOOM.
    wanlin p.   I missed the last part of yesterday to push the local to github due to a phone call, could you please show me the command of push
    I've already has a repo on github
    tlberglund  wanlin: It looked like "git push -u origin master"
    wanlin: But first, you need "git remote add origin <your github repo url>"
    wanlin p.   I also couldn't get the slides from the link you provided
    tlberglund  wanlin: http://teach.github.com/presentations/git-foundations.html
    wanlin p.   thanks
    tlberglund  wanlin: If I type your name as wanline, please forgive me. I keep adding the E, then backspacing. At some point I will forget to backspace. :)
    8:25 AM
    Ollie R.    I've never run a git fetch with no args... what does it do? just grab everything in the upstream repo?
    matthewmccullough   Ollie R.: Yes. Retrieves all branches from the upstream.
    Ollie R.    thanks, that's useful info
    Doug A. so this situation would lead to the fastforward situation i was curious about?
    tlberglund  Doug: Yes, this is going to be a fast-forward merge. More on that later, but if you want details now, just ask.
    8:30 AM
    Ollie R.    ah ha, good explanation matt
    Edgar W.    gitk doesn't show the remotes/origin/master commit (even though one exists) for me? Any scoping that I'm missing?
    tlberglund  Edgar: gitk --all
    Edgar W.    Thanks
    tlberglund  Edgar: My pleasure.
    8:35 AM
    Ollie R.    yahoo is very guilty of not closing the loop
    tlberglund  Ollie: We will give you tools to share with your co-workers to help make that better. Ultimate it's a social problem, but it's one that's helped by an easy, low-friction path to get changes back upstream.
    Ollie R.    why are there separate remotes for fetch and push? when would you want them to be different?
    8:40 AM
    tlberglund  Ollie: I have never used that in practice. For almost all cases, they are the same.
    Ollie R.    ok, thanks
    8:45 AM
    Edgar W.    How does one show this affinity without cat'ing the .git file?
    Never mind...
    Ollie R.    is it safe and ok to manually edit that config file, specifically those items you're discussing?
    tlberglund  Edgar: "git remote show origin" also does it. But I always cat .git/config, personally. :)
    Ollie: Totally. I mean, you can screw it up if you do it manually, but you should consider that to be user-serviceable.
    Ollie R.    great, thanks
    tlberglund  Git it build out of text files. EDIT THEM. If you like that sort of thing. :)
    8:50 AM
    Ollie R.    I read online that some people prefer fetch/merge over pull even though pull seems more convenient. They imply that a pull is more dangerous, or has some gotchas verus the separate commands. Can you speak to that?
    perfect explanation, thanks
    Doug A. how do you reset a fetch?
    Ollie R.    that's a great point matt, thanks
    tlberglund  Doug: You really don't. It doesn't do anything to any local branches, so there is nothing to reset. You have those new objects, and your remote branches are updated, period.
    Doug: Technically, you could hack things such that the remote branches point to the commits they used to point to before the fetch, but that would take some doing. Generally a fetch does its work, and you move forward. This is not a problem, since fetching doesn't affect the working tree or any local branch.
    Jacob   How can I revert something that someone has done on the remote master? It's that I find it a common requirement if I want to revert someone's changes?
    tlberglund  Jacob: We don't quite have all the necessary pieces on the table yet, but in short, you'd merge in that remote work, correct it, and push your corrections.
    Jacob: "Correct it" can take various forms. You can use "git revert" or just make changes and commit them. I would call the second approach "failing forward."
    8:55 AM
    matthewmccullough   https://github.com/githubtrainer/hellogitworld
    Ollie R.    didn't there used to be a message regarding "hot forking action" on that page? :)
    matthewmccullough   Ollie R.: Yup. Awkward teenage years. Now wearing a suit. :)
    Ollie R.    sad, that was always a source of immature chuckles
    matthewmccullough   There's always tublr and 4chan
    tlberglund  Ollie: Indeed. We cleaned that up. :)
    matthewmccullough: LOL
    Ashwin K.   So if I forked githubstudent, does my repo maintain some link to githubtrainer?
    tlberglund  Askwin: Well, you forked githubtrainer/hellogitworld as you, so it's something like ashwink/hellogitworld (or whatever your GitHub username is).
    Ashwin: And yes, your fork "knows" it's a fork of the root repo. That becomes important later on.
    9:00 AM
    Praveen B.  what if i already have a projecy with same name
    tlberglund  Praveen: GitHub will append a -1 to the name
    Edgar W.    You're going to go over protection/access control later, yes?
    tlberglund  Edgar: We don't cover teams and orgs in this class, no. That's a great enterprise question, though! If you've got something specific you want to bring to Office Hours on Friday, that would be great.
    9:05 AM
    Edgar W.    Thank you. I'll RTFM.
    Ollie R.    can we do forks and pull requests via a command-line tool? I don't always have access to the yahoo enterprise github gui (technical issues)
    tlberglund  Edgar: LOL. Wasn't going for the blow-off there, but if there's an M you've got to read, that's awesome. :)
    Ollie: Yes! Look for something called the "hub gem." Link forthcoming...
    9:10 AM
    Ollie R.    thanks! can that be configured to work with the yahoo enterprise instance?
    Jason W.    who handles merging problems that come up?
    tlberglund  Ollie: I am not sure offhand. That question was on my mind.
    Jason: We'll talk about that! But the answer is: the person doing the merging. You've got to make it happen locally, not in the GitHub UI.
    Jason W.    thanks
    sushant Send pull request is not highlighted and am not be able to send one. What did I miss?
    tlberglund  sushant: You may not have made any changes in your fork. Is that possible?
    Jacob   Is it possible to do a local checkout of a pull request and test it out before I accept it?
    sushant I have created a file.
    tlberglund  Ollie: Here's the hub command (and it is Enterprise-compatible): http://defunkt.io/hub/
    Jacob: You bet! We'll do that in a few.
    sushant: Give me the link to your fork.
    Ollie R.    awesome, thanks!
    9:15 AM
    sushant https://github.com/sushantkp/hellogitworld
    tlberglund  sushant: You're right, you've made a commit! You're not seeing the Pull Request button?
    sushant the button is not highlighted. I am not able to click it.
    tlberglund  sushant: Give me a few. I'll see if I can duplicate.
    Jason W.    so this is the "code review" part of github...seems useful if developers adapt to having clear maintainers of their codebase
    9:20 AM
    Chiru   I got the email with a comment. but instead of responding to the comment, I made another change to the file. now I can see where the comment is
    Ollie R.    One thing I just did for work was create a pull request, then someone did an inline comment, then I re-committed a change. Suddenly, the inline comment did not match the code. Known issue, or desired behavior, or "other"?
    Ashwin K.   if a fork is forked, is it possible to go up one level and become a 1st level fork of the main repo?
    tlberglund  sushant: Using my administrative superpowers, I've simulated a login as you. I can see the button. It's near the top of the page, next to a button called "Unwatch."
    Jason W.    Ashwin... I seemed to do that (streakcu's fork of the fork)..when I submitted the pull request, I submitted it for githubtrainer, not where I originally forked from
    Ollie R.    great, thanks
    tlberglund  sushant: Paste in your email, and I'll send you a screenshot.
    9:25 AM
    sushant Yes, though after I follow that link, the green button at the bottom "Send Pull Request" is not clickable.
    9:25 AM
    sushant psushant@yahoo-inc.com
    tlberglund  sushant: Ah! Just type in a subject.
    sushant: In the box labeled "Title"
    sushant :)
    Ashwin K.   got it...thanks
    sushant that works
    thanks
    tlberglund  sushant: Sweet.
    9:30 AM
    Ollie R.    tim, got hub installed, though it did require jumping through a few hoops. Thanks again for the link
    tlberglund  Ollie: Yeah, like installing RubyGems? Hoops within hoops (for the non-Ruby dev).
    9:35 AM
    Ollie R.    probably... had to install brew first, and the easy-peasy ruby command for that didn't work so I had to finagle it
    tlberglund  Ollie: Ah, then I've done you a substantial favor by getting you into the world of brew. Best Mac package manager evar.
    Which, to be fair, may not be saying much—but it is a great too.
    tool
    9:40 AM
    matthewmccullough   View paste 
    -
    git clone git@github.com:YOURNAMEHERE/project1.git myprojec1clone
    Edgar W.    For the record...
    View paste 
    appleguess-lm /2013-02-06> git clone git@github:ewhipple/project1.git myproject1clone
    Cloning into 'myproject1clone'...
    ssh: Could not resolve hostname github: nodename nor servname provided, or not known
    fatal: The remote end hung up unexpectedly
    appleguess-lm /2013-02-06> git clone ew-github:ewhipple/project1.git myproject1clone
    Cloning into 'myproject1clone'...
    remote: Counting objects: 15, done.
    remote: Compressing objects: 100% (8/8), done.
    remote: Total 15 (delta 1), reused 11 (delta 0)
    Receiving objects: 100% (15/15), done.
    Resolving deltas: 100% (1/1), done.
    appleguess-lm /2013-02-06>
    where
    View paste 
    appleguess-lm /2013-02-06> cat ~/.ssh/config
    Protocol 2,1
    ForwardAgent yes
    StrictHostKeyChecking no
    Host ew-github
         HostName github.com
         User git
         IdentityFile ~/.ssh/ewhipple-github.com_rsa
         IdentitiesOnly yes
    appleguess-lm /2013-02-06>
    9:45 AM
    tlberglund  Edgar: looks like you could clone from your Enterprise instance, but not the web?
    9:45 AM
    tlberglund  Check your hostname on the web clone.
    Try git clone git@github.com:ewhipple/project1.git myproject1clone
    Edgar W.    Yeah.. that was a typo.
    However, because the ssh key used for this class is not my default ssh key, we get this
    View paste 
    appleguess-lm /2013-02-06> git clone git@github.com:ewhipple/project1.git myproject1clone2
    Cloning into 'myproject1clone2'...
    Permission denied (publickey).
    fatal: The remote end hung up unexpectedly
    appleguess-lm /2013-02-06>
    Which is why I established the definition in .ssh/config
    Ollie R.    I just hit that edgar, you need to paste your public key into your github account
    tlberglund  Edgar: That .ssh/config line didn't do it for you?
    Edgar W.    I'm good.
    Ollie R.    https://github.com/settings/ssh
    Edgar W.    I'm good.
    tlberglund  Edgar: Okay, cool.
    Edgar W.    As I noted, I didn't use my DEFAULT (rsa_id) key for this class (github.com).
    tlberglund  Edgar: Understood. FWIW, I was just having to reconfigure my own SSH key config this morning. Happens to the best of us. :)
    Doug A. if I did that clone already but without the custom name, can I add that name later?
    matthewmccullough   View paste 
    git clone git@github.com:YOURNAME/hellogitworld.git myhellogitworld
    tlberglund  Doug: Without the custom name, you'll clone into a dir called hellogitworld.
    Doug A. or is it to simply rename the directory
    tlberglund  You can always rename that directory anyway.
    Right, jut renaming the dir. That's all there is to it.
    Doug A. I never want to use svn again
    :)
    9:50 AM
    Ollie R.    the local branch name doesn't have to match the remote name, but it is helpful - right?
    tlberglund  Ollie: Right. It preserves sanity, but Git can handle it either way.
    The checkout process is harder if you want the names to be different, but it's not so bad.
    To wit: "git checkout --track -b monkey origin/bisect"
    Jason W.    you can't work on multiple branches at the same time?
    common use case: grepping across multiple branches
    cool..thanks
    Edgar W.    Checked out into the same working directory!
    9:55 AM
    Ollie R.    that works because all the info is actually there on the disk, even if you're not actively working with it right now - right?
    tlberglund  Edgar: That's what you *can't* do. :)
    Edgar W.    One could "checkout" into different (workign) directories.
    Aha!
    Good thing!
    Ollie R.    fyi to students: "git status" is a good way to check which branch you're currently on
    matthewmccullough   git checkout -b feature2
    10:00 AM
    Martin E.   How should I think of the difference between fork and branch?
    Jason W.    +1 Martin's question
    10:05 AM
    Jason W.    no pull requests between branch and master?
    thanks
    Edgar W.    End of class artifacts should include Matthew's nice sketches, if possible.
    :)
    tlberglund  :)
    10:15 AM
    Ollie R.    so, once you make a pull request for a given branch, you should stop development on that branch unless they are relevant to that pull request - right?
    tlberglund  Ollie: Very much true. Keep it up if it's relevant, but don't put other stuff on that branch. Branch *again* if that's what you want to do.
    Ollie R.    which is why you would want to almost always do new work on branches and not just master always
    tlberglund  Ollie: That's right. That's one good approach to branching.
    10:20 AM
    Jason W.    that's also some of the conflict with CI..where you want one place that builds the latest codebase
    Ollie R.    git fetch doesn't care what local branch you're on, right?
    tlberglund  Ollie: That's right. Just get all of the remote branches and all commits on them.
    Jason: Well, you just have to define "latest." Latest of master? Build all remote branches? You have to determine what your policy is in the CI server.
    Scott K.    I really hope you guys go over rebasing, because I've never really understood it
    tlberglund  I've seen plenty of CI servers set up to build all branches, or just certain pre-determined branches. Rarely does anyone just build master in CI. I mean, that's good, but if you've got shared feature branches, you should probably be building them.
    Scott: We *should* get to that. :)
    10:25 AM
    Scott K.    I'm waiting with baited breath
    tlberglund  :)
    Edgar W.    _baited_ breath
    ?
    Scott K.    *bated
    tlberglund  Or bated.
    Edgar W.    Heh
    tlberglund  ("Garlic! I never saw it coming!" <-- baited breath)
    Ollie R.    View paste 
    tim, this is in my .git/config:
    [branch "ollie_feature"]
        remote = origin
        merge = refs/heads/ollie_feature
    10:30 AM
    tlberglund  Ollie: that looks good.
    Ollie R.    yeah, I think I figured it out... that merge line is what links it to the upstream branch, right?
    tlberglund  That whole block constitutes the definition of the upstream.
    Ollie R.    that makes sense
    Jason W.    so there's typically thousands/millions of branches in a codebase of hundreds of developers?
    Doug A. if matthew had made changes after merging FETCH_HEAD, and then done an add/commit/push, it still would have closed the appropriate pull request?
    10:35 AM
    Jason W.    thanks... key thing, branches go away...along with the history after they've been merged
    Ollie R.    ah, so it's okay/recommended to delete a branch after it's merged, that makes sense. If you need to do more development post merge, make a new branch for it.
    what happens if you make a branch, merge it, delete it, then make a new branch *with the same name*?
    Jason W.    cool..thanks
    Ollie R.    great, thanks
    I'd love to see the code for matt's command prompt :)
    image diffing: my mind is officially blown
    10:40 AM
    tlberglund  Ollie: He's using https://github.com/robbyrussell/oh-my-zsh. I forget which theme he has, but we'll get him to share that.
    Troy N. https://github.com/revans/bash-it has some similarities for bash fans.
    10:45 AM
    Scott K.    +1 for oh-my-zsh
    Ollie R.    "git checkout -", nice trick! toggle?
    tlberglund  Ollie: Not unlike "cd -". Totally cool.
    Ashwin K.   stash is pretty handy...luv it
    Ollie R.    ah, so always to master
    no, wait, nevermind that
    tlberglund  cd -, not cd ~. SO CLOSE.
    Scott K.    now the typo shoe is on the other foot
    Ollie R.    "cd -", learned something else new today
    10:50 AM
    Edgar W.    View paste 
    appleguess-lm /myhellogitworld> git status
    # On branch master
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #   poot.txt
    nothing added to commit but untracked files present (use "git add" to track)
    appleguess-lm /myhellogitworld> git stash
    No local changes to save
    appleguess-lm /myhellogitworld>
    Ollie R.    it seems like rebasing can create conflicts just like a merge, correct?
    tlberglund  Edgar: stash doesn't touch untracked files. :)
    Ollie: You bet it can! Same as a merge.
    10:55 AM
    tlberglund  08a0
    f672
    Ollie R.    thanks guys, great training! learned a lot even though I've previously worked with git
    11:00 AM
    Martin E.   Thank you very much. Had a lot of fun and learned a lot!
    Troy N. Great class!
    Ashwin K.   thanks
    Jason W.    thanks
    nancytam    thanks, awesome class
    Doug A. thanks so much!
    sachin t.   Thanks
    matthewmccullough   Thanks all!

## Diagrams

![Diagram 1](https://f.cloud.github.com/assets/24734/162362/6c6b0534-77b6-11e2-97c0-6c5c663c6fdf.jpg)

