---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-25-online-foundations-class.md
eventdate: 2013-04-25
---

## Teachers
* Matthew McCullough
* Jason Salaz

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

## Command Line History - Day One

    git --version
    git config user.name
    git config user.email
    git config --global user.name "Matthew J. McCullough"
    git config user.name
    pwd
    git init project1
    open .
    cd project1
    git status
    cd ..
    git status
    cd project1
    clear
    vim first.txt
    git status
    git add .
    git status
    git commit -m "My first commit"
    git status
    ls
    clear
    vim first.txt
    git status
    git add first.txt
    git status
    git reset HEAD first.txt
    cat first.txt
    git add -p
    git status
    git commit -m "Fix part one"
    git add .
    git commit -m "Fix part two"
    git status
    clear
    git log
    git show 32f3ca
    git status
    vim first.txt
    git diff
    git add .
    git diff
    git status
    git reset HEAD first.txt
    git diff
    git diff --color-words
    git add -p 
    git status
    git diff 
    git diff --staged
    git diff HEAD
    git diff --staged
    git diff 
    git diff HEAD
    git commit -m "Part of the changes"
    git commit -a -m "The rest of the changes"
    git status
    clear
    git log
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --format=raw
    clear
    git log -1
    git log -3
    git log -3 --oneline
    clear
    git graphlive 20
    cd project1
    git graphlive 20
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    clear
    ls
    git status
    git add -A .
    git status
    git commit -m "Renamed it"
    git status
    git add -A .
    git status
    git commit -m "Changes with rename"
    clear
    git reset --hard
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git hgwstudentfromcli
    ls
    cd hgwstudentfromcli
    git log
    pwd
    git log -1
    clear
    ls
    vim matthewfirstcontrib.txt
    git add .
    git commit -m"Change from CLI"
    git push 
    gitk
    git gui
    clear
    git branch
    git branch -r
    git pull
    cat matthewfirstcontrib.txt
    head matthewfirstcontrib.txt

## Chat History - Day One

    Jason S.    Good morning everyone. I'm Jason, you heard me a few minutes ago once I finally figured out the GoToTraining Client :). I will be handling any of the questions here in the room and popping in via audio from time to time.
    matthewmccullough   http://teach.github.com/presentations/git-foundations.html
    Jason S.    Feel free to ask any questions as we go along and I'll do my best to answer.
    Alex K. git version 1.7.12.1
    John Z. 1.7.9.5
    Heath C.    1.7.12.3
    Corrina git version 1.8.0
    Richard G.  1.8.2.1
    Ted 1.7.12 - prereq said to install 1.7.11+
    Robert D.   1.8.1.msysgit.1
    matthewmccullough   git config user.name
    git config user.email
    Corrina Should the user.name be the same as my git-hub account username?
    Robert D.   Hi, I don't use the Windows command prompt much. will we mostly be using Git Bash?
    Jason S.    No, it's generally expected that you use your real name within user.name
    matthewmccullough   View paste 
    git config --global user.name "<your-name>"
    git config --global user.email "<you>@<your-domain>.com"
    Jason S.    For the sake of the chat record, the git commands will work via the command prompt, git bash, or the power shell. We suggest using Git Bash for git work because it will more adequately handle certain OS discrepancies like forward and backslash path references for sub-directories.
    But otherwise, the git commands will always be the same.
    matthewmccullough   View paste 
    #Force files to be LF in the repo, even on Mac/Linux
    git config --global core.autocrlf input
    #Force Windows to convert to CRLF
    # on checkout and to LF on `add`
    git config --global core.autocrlf true
    git config --global color.ui auto
    Alex K. if i've not had autocrlf on for a project and then turn it on, will it cause issues?
    Robert D.   if i am dual booting (mainly using Ubuntu) do these configs effect both boots?
    Alex K. ty
    Ted I've been using git at work with no core.autocrlf setting, what is the default? We are mostly Mac users.
    Ted thanks
    Jason S.    Fun Git Fact: The git repository is determined by looking for the .git folder in the current directory, and then ascending upwards until one is found. The first match will be used.
    Unless otherwise planned, you should keep repositories separate.
    Corrina :)
    Robert D.   when checking out different branches, how do you deal with Untracked files?
    Jason S.    When you switch branches, the current state of changes will remain in place.
    if you have untracked files on the master branch, they will remain there when you switch to your feature branch.
    Robert D.   kk
    thanks
    is there a best practice in how to phrase commit messages?
    Jason S.    The universal best practice is to use the present tense, not past tense.
    Describe what the change is doing, not what the change did.
    Otherwise, organizations, teams, other collections may have their own requirements for how to structure the message for their own purposes.
    Jason S.    Another git Best Practice: Commit Early, Commit Often
    Ted I hope you will cover in depth the meanings of "reset", "HEAD", etc. Linus T. apparently said the "index" is the crux and power of git. Love to know why...
    Cool! Never used add -p before.
    Jason S.    reset can be used to traverse the entire history of git, it will come into further use in the future. For now, we've only used it to unstage a file so that it will not be committed.
    Alex K. that's great! never knew that
    Jason S.    The explanation of HEAD and the index at large is imminent :).
    Jason S.    If you do work more than you anticipated, you can use git add -p to easily group all the work into a number of commits. Again: Commit Early, Commit Often™
    Robert D.   I missed the part about 'git add -p'. sorry, could you quickly recap?
    Jessica Wouldn't mind a recap as well about git add -p
    Ted +1
    Robert D.   i have a deleted file how do i remove it? git -rm r clear?
    Jason S.    Robert, git records changes. This is perhaps confusing, but if you delete a file, you *add* the change.
    Robert D.   thanks
    Jason S.    Git provides a "git rm" helper. Which will delete the file literally, and automatically add that change.
    Ted git diff --word-diff is a cool alt way to view diffs
    Jason S.    If you've removed the file manually, use "git add" with the filename in order to tell git to see the change.
    This will be expanded on later as well.
    Jason S.    You can use '?' at any time within git add -p to explain what the 8 options will do.
    Robert D.   how do i untrack files?
    cool
    Jason S.    4.5 hours left to present, the pieces of the puzzle all come together! :)
    There are two methods to untrack a file, they both serve their own purposes. You can either ignore the file via .gitignore, or remove it from the repository outright.
    If you still need the file contents, .gitignore is the better option, and we will address that later.
    If you no longer need the file's contents, git rm is the better option.
    Jason S.    We're at break, re-convening in ~10 minutes (approximately 10:40AM mountain).
    Jason S.    Any general questions I can address before we get back into the presentation?
    Robert D.   i had a deleted file showing up on git status and tried adding and committing then re ran git status and it was still there. only when i ran 'git commit -a' did i get a clean working directory
    Jason S.    Robert, that's my mistake. I don't recall if the behavior changed or if I just remembered incorrectly, but "git add"ing a deleted file doesn't actually work.
    If you delete a file manually, then you should still run "git rm file" in order to tell git that you want to commit a deletion.
    Robert D.   ah k.
    Jason S.    As we covered just before break, git commit -a worked because it added all tracked file changes. In this case, a delete.
    matthewmccullough   git --no-pager log -$1 --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s' --abbrev-commit --date=relative
    Ted Does git reset --hard also trash untracked files?
    I guess I could experiment myself
    Jason S.    No git command will operate on untracked files except git add :).
    Ted is there a way to change my working dir stat to previous commits safely? And then back again?
    matthewmccullough   git clean -fd
    does the untracked files
    Jason S.    Ah, that one too. add and clean :). But reset will not alter untracked riles.
    files*
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    Joe W.  seems to be taking a while to fork, anyone else having this problem?
    Jason S.    Can you refresh the page and see if it shows up?
    The fork happens in the background, and sometimes the automatic redirection doesn't happen in browser.
    Joe W.  View paste 
    This repository is temporarily unavailable.
    The backend storage is temporarily offline. Usually this means the storage server is undergoing maintenance. Please contact support if the problem persists.
    thats the error im now getting after a refresh
    Corrina View paste 
    This repository is temporarily unavailable.
    The backend storage is temporarily offline. Usually this means the storage server is undergoing maintenance. Please contact support if the problem persists.
    Check our status site for updates
    I am good now :)
    Joe W.  same, thanks
    Jason S.    Perfect
    matthewmccullough   https://github.com/githubteacher/hellogitworld/pulls
    Jason S.    A GitHub-specific tip: After a pull request is merged, it *cannot* be reopened with additional commits. A new pull request would be necessary to add additional changes.
    Another GitHub-specific tip: GitHub displays GitHub user names where possible, and it does so via the e-mail address. When you signed up for GitHub, you provided an e-mail address. If you specified the same address when running "git config user.email your@email.address", GitHub will display your GitHub username, linked, instead of your real name.
    Ted But you can add additional commit to pull requests for consideration (tuning), right?
    Jason S.    As mentioned via voice. Any number of commits can be added onto an existing pull request.
    Heath C.    will we be getting into proper commit messages and how to format them for other developers as well as merging commits?
    Jason S.    It is common practice within GitHub that we will create a pull request as soon as we have started work that will be accepted. This gives us the ability to have a permanent record of discussion while code work is on-going.
    Once everyone's comments have been addressed, we merge.
    Heath,
    whoops, itchy enter finger :)
    Heath C.    j/w thank you, no problem lol
    Jason S.    Heath, that's slightly outside of the scope of this session because it's dependent on the particular group. A notable example is the Linux Kernel group mandates that all messages be no more than 80 characters wide per line.
    Ted Perhaps you will cover later with rebasing and fixing commits, but love to know how to remove a file's changes I made accidentally to a former commit without doing a complex and time consuming split.
    Jason S.    One common convention is to have a first "subject" line no more than 50 characters, but we have no specific practice with the description. As much or as little information as necessary can fill up the description.
    Commit messages are often treated like e-mails. Concise subject, thorough body message.
    Jason S.    Ted, absolutely. Stay tuned ;).
    matthewmccullough   git clone https://github.com/githubstudent/hellogitworld.git hgwstudentfromcli
    Jason S.    If you only specify the URL to git clone, the directory will be named the same as the repository name, without .git
    Specifying a name afterwards will change the resulting directory name.
    Nick B. any usefull options available in the gui that are not via cli?
    Jason S.    Matthew is specifying a directory name that includes "student" in order to make the student's work separate from the teacher's.
    Nick: One time saving feature of the GUI is that it collapses pull/push into a single operation: sync
    Sync'ing will automatically push any committed changes, and pull any new changes made by other individuals.
    Corrina what if your clone is taking forever?
    It is stalled at 9%?
    Jason S.    That's related to the problems you had with the fork in the first place :
    :(
    You will probably need to use Ctrl-c to abort it and retry.
    Heath C.    at work keep getting taken away sorry
    Nick B. any good options for a gui in linux?
    Jason S.    http://stackoverflow.com/questions/1516720/git-gui-client-for-linux has a number of answers for a number of environments.
    matthewmccullough   teach.github.com/presentations/git-foundations.html

## Command Line History - Day Two

    git branch
    git branch matthewfeature1
    git checkout matthewfeature1 
    git branch
    vim firstreduxredux.txt
    git commit -a -m "A small change on the feature branch"
    git checkout master
    git checkout matthewfeature1 
    cp firstreduxredux.txt second.txt
    git status
    git add .
    git commit -m "A copy of a file"
    git checkout master
    git checkout matthewfeature1 
    git checkout -
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git add .
    git commit -m"Nine thousand and one"
    cd ..
    git checkout -
    cd ..
    ls
    cd hgwstudentfromcli
    clear
    git log -1
    pwd
    git remote -v
    git pull
    git branch
    git log -1
    git branch matthewfeature1
    git checkout matthewfeature1
    vim matthewfeature1.txt
    git add matthewfeature1.txt
    git commit -m "Feature file"
    git branch
    pwd
    clear
    cd ..
    cd hgwstudentfromcli
    git graphlive 25
    git graphlive 20
    git branch -vvv
    git push -u origin matthewfeature1 
    cat .git/config
    git pull
    git branch -a
    git branch
    git remote add official https://github.com/githubteacher/hellogitworld.git
    git fetch official
    ls
    git checkout master
    git branch -vv
    git merge official/master
    git push 
    git fetch official 
    git merge official/master
    git push
    git branch -a
    git checkout origin/feature_image
    git checkout master
    git diff origin/master official/master
    git diff origin/master master
    git diff offical/master master
    git diff official/master master
    git log official/master...master
    git log official/master...master --oneline
    gitk --all&
    clear
    git status
    git remote -v
    echo STUFF >> thegithubstudent.txt
    git commit -a -m"Stuff"
    git reset --hard origin/master
    git reflog
    git reset --hard e57cead
    git reflog
    git reset --hard bb35234
    git log -1
    git reset --hard e57cead
    git log -1
    git branch -r
    git branch -r --no-merged
    git branch -r --merged
    git branch -r --no-merged
    git merge origin/fbaddfiles -m "Merging in thing 1"
    git branch -r --no-merged
    git merge official/bisect
    git status
    cat pom.xml| more
    vim pom.xml
    git add pom.xml
    git status
    cat .gitignore
    git mergetool -t opendiff
    git status
    git commit 
    git status
    echo ran my tests
    git reflog
    git reset --hard e57cead
    git log -2
    git merge --abort
    git reflog
    git reset --hard 5af1e7a
    clear
    echo CHANGE >> conflict.txt
    git status
    git clean -fd
    echo CHANGE >> conflict2.txt
    git status
    git commit -a -m "Changes"
    git commit --amend -m"Changes that make it all better"
    echo CHANGES2 >> other.txt
    git add .
    git commit --amend -m"Changes that make it all better"
    git rm other.txt
    git commit --amend -m"Changes that make it all better"
    git checkout HEAD~1 -- other.txt
    git add other.txt
    git commit --amend -m"Changes that make it all better"
    git tag
    git tag JASON_GOOD_POINT
    git tag JASON_GOOD_POINT2 5af1e7a
    git rev-parse JASON_GOOD_POINT2
    git rev-parse origin/master
    git tag
    git tag -a JASON_WITH_COMMENT
    git tag
    git show JASON_GOOD_POINT
    git show JASON_WITH_COMMENT 
    git tag -s JASON_WITH_SIGN
    git config user.name
    git config --global user.name "Matthew McCullough"
    git tag -s JASON_WITH_SIGN
    git config user.email
    git checkout master
    git reset --hard origin/master
    gitk --all &
    git show e59e39b655de
    git cherry-pick e59e39b655de
    git log --format=raw -1
    git reset --hard HEAD~1
    git cherry-pick -x e59e39b655de
    git log --format=raw -1
    git help revert
    git help reset
    git status
    git reset --hard origin/master
    vim other.txt
    vim other2.txt
    git add .
    git stash
    git status
    git stash --list
    git stash list
    git stash pop
    git add other
    git add other.txt
    git stash
    git stash pop
    git stash
    vim other.txt
    git commit -a -m"End"
    git stash pop
    cat other.txt
    git help stash
    git stash clear
    git status
    git stash -- other.txt
    git stash -p
    git stash list
    git stash apply stash@{1}
    git graphlive 4
    git reset --hard origin/master
    git branch featurerebase
    git stash clear
    git tag -d JASON_*
    git tag -d JASON_GOOD_POINT 
    git tag -d JASON_GOOD_POINT2 
    git tag -d JASON_WITH_COMMENT 
    clear
    generaterandomchanges 3 bugfixonmaster txt
    git graphlive 10
    git checkout featurerebase 
    generaterandomchanges 3 featurework txt
    gitk --all
    git rebase master
    git checkout master
    git merge featurerebase 
    cd ..
    ls
    clear
    svn co https://github.com/githubstudent/hellogitworld.git/trunk
    clear
    git svn clone https://github.com/githubstudent/hellogitworld.git/trunk trunk2

## Chat History - Day Two

    Class notes are started at: http://teach.github.com/classnotes/2013-04-25-online-foundations-class.html
    Updates being pushed at break and at the end of class.
    Doing some formatting to the console output
    matthewmccullough   That URL is the critical one to copy and save after class.
    matthewmccullough   Just was saying that class notes are started at http://teach.github.com/classnotes/2013-04-25-online-foundations-class.html
    Ted Hi Matthew & Jason, I have specific questions which are probably better asked today... If you don't have time for them, can I send you email after class or is there another way to request help?
    John Z. Thanks
    matthewmccullough   Ted: Fire away in class and we'll do as much as possible there.
    matthewmccullough   And then, for after class, that Q&A URL on screen
    matthewmccullough   or the office hours sessions are perfect for big ones
    matthewmccullough   http://teach.github.com/classnotes/2013-04-25-online-foundations-class.html
    Ted Matthew, your bottom-left autohistory window isn't updating btw.
    jasonsalaz  He'll get it going when this point wraps up :).
    jasonsalaz  Reminder: This is the project1 repository that we started with yesterday. Not the hellogitworld that we forked.
    Robert D.   thanks
    jasonsalaz  Good Morning :)
    Jessica Using -vv seems to do the same as -vvv
    jasonsalaz  Per the man page, it does indeed only go up to two v's. Subsequent v's are not detrimental, but also won't change anything :).
    Robert D.   my push won't authenticate. i've tried resetting my password
    Ted Just wondered if there is any way to describe a branch, i.e., give it a description? Kind of like when saving a stash. I've got 10's of branches for work, and other than naming the branch itself to hint at its purpose, it would be nice to have a longer description associated.
    Also, I assume that after you merge a pull request, you can't "undo" it--assume you have to submit a new pull request to undo previous code mods.
    jasonsalaz  Robert: Does your remote have your username within it?
    Robert D.   https://github.com/RobertDabin/hellogitworld.get
    i realised i'm getting the error: src refspec robsfeature1 does not match any.
    jasonsalaz  Robert: I believe that means that you specified robsfeature1 as the remote. Did you run: git push -u origin robsfeature1 ?
    Robert D.   hi sorry
    spelling error on my side
    jasonsalaz  No worries, glad you were able to resolve it.
    Robert D.   was i meant to make a pull request once i have pushed my branch to my repo?
    Ted You can push without the -u... which doesn't create that remote link locally. What's the use case for -u link?
    jasonsalaz  You are still welcome to make a pull request. The exercise was pointing out that you can send it to anyone in the network. You can send it to my fork ( VxJasonxV ) on the pull request page.
    Robert D.   cool thanks
    jasonsalaz  The -u sets the default upstream. After running "git push -u origin yourbranch", pushes on that branch will go to that default remote by simply running "git push"
    Ted ah thanks
    jasonsalaz  Note that a single -u will set it and work for both git push and git pull.
    matthewmccullough   git remote add official https://github.com/githubteacher/hellogitworld.git
    John Z. Can you explain the difference between git pull and git fetch?
    jasonsalaz  "git pull" will retrieve the sources and then run git merge in a single step.
    "git fetch" will retrieve sources, but make no other changes.
    John Z. thanks
    jasonsalaz  There's a lot of helper shortcuts like this in git, but we take the long road, at least initially, in order to explain what's going on.
    Ted You haven't gotten to rebase yet, but I'm still racking my brain about when and why to use each.
    Ted yes, thanks...
    Robert D.   so if you start a feature and leave it for ages you might want to rebase it if you start using it again?
    jasonsalaz  If it's completely separate, new files only, that is a common occasion when you would rebase, yes.
    Jessica Detached head - sounds like Ichabod Crane.
    Anthony B.  lol
    Alex K. wow
    Ted but you can checkout a remote into a new branch, right?
    jasonsalaz  absolutely
    Ted Cherry-picking? Submodules? Or not enough time?
    Cool...
    Corrina What is the difference b/w HTTPS and SSH push/pulls, I had to just listen because my push/pulls do not work through my company's network configuration. So I will give a try on another network maybe that allows https or is there some configuration I am missing. Thanks...
    jasonsalaz  Corrina,
    there's that itchy enter finger again.
    jasonsalaz  Corrina, the difference between HTTPS and SSH is mostly historic. Originally, git was SSH only when it comes to pushing sources. GitHub was one of the first git code hosts to offer communication via the HTTP protocol. HTTPS in this case as GitHub uses SSL everywhere.
    HTTPS is less often filtered than SSH, and was another reason why we developed support for it.
    There are some other considerations to make when it comes to managing servers, the fact that git via SSH always uses the same user account (the 'git' user), and HTTPS can use your own distinct authentication.
    John Z. Is there any way to do an example of a merge with a conflict?
    Thanks
    Ted how's this different than git checkout <commit>?
    John Z. What does the --hard flag do? What would reset's functionality be without it
    matthewmccullough   git branch -r --no-merged
    git merge origin/fbaddfiles -m "Merging in thing 1"
    matthewmccullough   git merge official/bisect
    Ted How do you restore those lost commits?
    I'd love to know how to remove one file changes from a previous commit. Not sure if now's a good time, assuming there were several other valid files in that commit.
    jasonsalaz  I could have also used "git filter-branch" instead of moving the timeline back and re-committing the work I did want.
    https://help.github.com/articles/remove-sensiti...
    Ted Cool, but what if I want to keep the file "other.txt" but just remove the changes I made to that file in the last commit?
    matthewmccullough   View paste 
     git checkout HEAD~1 -- other.txt
    $ git add other.txt
    $ git commit --amend -m"Changes that make it all better"
    jasonsalaz  Ted, have we sufficiently addressed the "restoring lost commits after reset --hard" question?
    Ted yes
    jasonsalaz  Excellent
    Ted I have used rebase (split) several times now, but always wonder if there's an easier way to remove changes from older commits than the last commit.
    jasonsalaz  Multiple commits back is much more difficult. I think you most likely want is to use "git reset --mixed" to the oldest cleanest commit. Your content in the directory will be left alone, and you can remove just the bits you do not want, then "git add" and "git commit" them.
    Again, if these contents have already been pushed, you will have to "git push -f" (force push), and anyone else who had those commits will have to re-clone their repository.
    matthewmccullough   e59e39b655de
    matthewmccullough   git log --format=raw -1
    Ted Neat. Is there any more granular version of revert? Like patches?
    Robert D.   are git stash pop and apply the same?
    Jessica is there an expiration on git stash files?
    Ted Can you configure the expiry on reflog/orphaned commits beyond 30 days?
    jasonsalaz  git config gc.reflogExpire [time in days]
    Ted thx
    jasonsalaz  orphaned commits are handled by gc.pruneExpire
    Ted Is there some loss of commit history/comments with merge?
    jasonsalaz  never
    jasonsalaz  View paste 
    $ svn co https://github.com/VxJasonxV/hellogitworld.git/trunk
    A    trunk/.gitattributes
    A    trunk/.gitignore
    A    trunk/.travis.yml
    A    trunk/README.txt
    A    trunk/build.gradle
    A    trunk/fix.txt
    A    trunk/nickbalescommit
    A    trunk/nickfeature1
    [...]
    A    trunk/src/test/java
    A    trunk/src/test/java/com
    A    trunk/src/test/java/com/ambientideas
    A    trunk/src/test/java/com/ambientideas/AppTest.java
    Checked out revision 69.
    matthewmccullough   http://teach.github.com/classnotes/2013-04-25-online-foundations-class.html
    Alex K. Thanks!
    Ted YOu guys were great. Thanks a ton!
    John Z. Thanks
    Jessica thank you!
    Joe W.  thanks
    Robert D.   thanks guys
    matthewmccullough   Thanks all!
    Andreas K.  Thanks :)
    Heath C.    thanks guys, have a great weekend
    Søren E.    Thanks for a great course!
    matthewmccullough   Hope you feel like you learned a lot.
    matthewmccullough   Søren: You bet!
    Anna P. Thanks!
    John Z. I have a quick question on workflow
    matthewmccullough   Our pleasure.
    matthewmccullough   Sure.
    jasonsalaz  Thanks for everything, the questions, the contributions, and so forth.
    matthewmccullough   WHat's that John Zimmerman?
    jasonsalaz  It was a fun first time training.
    Ted Are there any URL's from previous advanced courses I can view?
    John Z. Do teams generally have their developers fork repos to work on them, and then submit pull requests to the main code base?
    matthewmccullough   Definitely some resources there. Let me grab you a few.
    matthewmccullough   http://teach.github.com is the top level
    John Z. We're a small team and just give everyone write access, but it would be nice to use GitHub and pull requests to do code reviews
    matthewmccullough   (all CC-By licensed)
    http://teach.github.com/articles/git-advanced-course-v2/
    http://teach.github.com/presentations/git-advanced.html
    jasonsalaz  John, the answer differs heavily from company to company, team to team. I have seen a number of occasions where there is one master, gatekeeper-controlled repository, and all developers either have their own forks, or a fork made to another organization (when using GitHub specifically).
    We, at GitHub, all use the same repository, and do all the work on branches we create.
    Pushing the branch instantly allows other individuals to pull (or fetch) as needed and help out.
    John Z. Cool. Thanks.
    matthewmccullough   John Zimmerman: I'll supplement Jason with some "trained companies" observations. For most of our customers, that falls along skill lines. Less-trusted programmers are put on forks. More trusted ones are left to do branches in the core.
    John Zimmerman: Some require developers to "earn" their way in to the core repo through say, a few weeks of good contributions
    jasonsalaz  Contractors are another frequent occasion where a fork is used as well.
    John Z. That makes sense
    matthewmccullough   Note though that Pull Requests can still be used from within a single repo to that same repo, thus, as long as the contributors are nicely playing by the "Thou shalt use pull requests"
    more of the developers can be given direct access.
    Then, if they seem to break the rule and commit directly to master, they can be shifted back to having to use a fork
    John Z. Oh okay, I didn't realize they could be used within the repo.
    Thanks for the input and great class
    matthewmccullough   Happy to have been able to teach you all
    jasonsalaz  Happy to have been able to help.
    Thanks again everyone!
    matthewmccullough   jasonsalaz: Great to have had your Enterprise team stories
    Grounds the examples
    matthewmccullough   turned off guest access
