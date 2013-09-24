---
layout: bare
title: Private Git Foundations Training
description: Private Git Foundations Training Class Notes
tags: [notes]
path: classnotes/2013-09-05-private-git-foundations-class.md
eventdate: 2013-09-05
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Windows origin Remote Replacement Bug
A question was asked about "detaching" a repository from, say, a GitHub.com repo and storing it on a GitHub Enterprise server.  We attempted for sake of variety to do this on Windows, but encountered some hiccups in the removal of the `origin` remote.

It turns out that after consultation with the GitHub for Windows team that this is a known bug in the msysGit distribution of Git. The `origin` remote cannot be removed, but it can be set to a new URL as Brent suggested.  The workaround is to use the `git remote set-url origin <newurl>` instead of removing and re-adding the remote.  There was some discussion around how this could potentially be fixed in the [upstream](https://github.com/msysgit/msysgit/issues) project in due course. For now, `set-url` is the solution. Thanks for the patience on this facet of class.

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
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)


## Day One Command line history

    git --version
    git init project1
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git config --list --global
    git config --list --local
    git config --list --system
    git commit -m "Brought first.txt into the world"
    git show
    git show HEAD
    git show HEAD^
    git show HEAD~3
    git add first.txt
    git diff
    git diff HEAD
    git diff --staged --color-words
    git diff --staged
    git diff --staged --word-diff
    git diff --staged --stat
    git commit -m "Changes to all the lines"
    git add -p first.txt
    git commit -m "Part of the changes"
    git commit -a -m "The rest of the changes"
    git log
    git log --stat
    git log --patch --color-words
    git log -2
    cd project1
    git log --graph --oneline
    git graphlive 5
    vim first.txt
    git commit -a -m"Another line"
    git log --patch
    z git_git
    git log -S 1st
    git log -S 1st --patch --color-words
    cd -
    mkdir folder1
    mv first.txt folder1/uno.txt
    git status -u
    vim folder1/uno.txt
    git add -A .
    git commit -m "Renamed and added content"
    git log --follow -- folder1/uno.txt
    git log --follow --stat -- folder1/uno.txt
    git clone https://github.com/githubstudent/project2.git
    ls -al
    cd project2
    git graphlive 2
    git graphlive 10
    git commit -a -m"Another change"
    git branch bugfix1
    git checkout bugfix1 
    git checkout -b bugfix2
    github
    git push -u origin bugfix2
    cd Scratch
    git clone https://github.com/githubstudent/example-basic.git
    git remote add teacher https://github.com/githubteacher/example-basic.git
    git fetch teacher
    git merge -m "Stuff from others" teacher/master
    git branch -vv
    git remote -v 
    vim file.txt
    git commit -a -m "Fixes #2"
    git commit -a -m"Blue"
    git push 
    git pull
    git merge origin/conflict 
    cat README.md
    git add .
    git commit 
    git push

## Day Two Command Line History
    git branch 
    git branch -a
    git branch
    git merge remotes/teacher/master
    git merge remotes/origin/conflict
    git merge remotes/origin/bugfix3
    git branch testmerge
    ls
    git commit -a -m"Hot fix on master"
    git checkout testmerge 
    git commit -a -m"Feature work on testmerge branch"
    open .git
    git rev-parse ORIG_HEAD
    cd ..
    cd example-basic
    git graphlive 20
    git reset --hard ORIG_HEAD
    git reset --hard 8dfb9c
    git merge testmerge -m "Merged these things"
    git remote -v
    git reflog
    git branch testffmerge
    git checkout testffmerge 
    generaterandomchanges 3 sample txt
    git merge testffmerge 
    git branch testconflict2
    git commit -am "Red thing"
    git checkout testconflict2 
    vim README.md
    git commit -a -m "Conflicting blue decision"
    get merge testconflict2
    git mergetool 
    git status
    git commit
    git help mergetool
    opendiff
    git reset --hard ORIG_HEAD 
    git merge testconflict2
    git merge --abort
    git checkout master
    clear
    generaterandomchanges 8 sample txt
    git rebase -i HEAD~8
    git log --stat -3
    
    cd bootstrap
    git remote remove origin
    git remote add https://github.com/githubteacher/ourtwitterbootstrap.git
    git remote add originhttps://github.com/githubteacher/ourtwitterbootstrap.git
    git remote add origin https://github.com/githubteacher/ourtwitterbootstrap.git
    git push -u origin master
    
    echo Make it a commit, then regret it
    vim README.md
    git commit -a -m"Junk"
    github
    git reset --hard HEAD~1
    git reflog
    git reset --hard 9dbac83
    git reflog
    git reset --hard 315d4a1
    git reflog
    git show 2ca7e18
    git ls-files 2ca7e18
    git diff master..2ca7e18
    git help config
    git status
    git remote -v
    git push 
    hub browse
    clear
    git status
    git checkout -b feature9
    cd ..
    ls
    git clone https://github.com/githubteacher/hellogitworld.git
    cd hellogitworld
    git checkout -b feature9
    vim AppTest.java
    git commit -a -m"Test failure success"
    git push -u origin feature9 
    hub browse
    git checkout feature_subtraction
    git merge master
    
    cd /Users/mccm06/Documents/Scratch/hellogitworld
    ls
    git merge master
    git status
    git checkout --theirs .gitignore
    git add .gitignore
    git mergetool
    git status
    git commit 
    git push 
    git ls-remote origin
    github
    vim README.txt
    git commit -a -m"More"
    git reset --hard origin/master
    git reset --hard remotes/origin/master
    git remote -v
    git branch -a
    git reflog
    git reset --hard b1cec0d
    head README.txt
    ls
    ./runme.sh
    vim src/main/java/com/ambientideas/App.java
    ./runme.sh
    gradle build
    git stash
    git status
    gradle build
    git stash pop
    vim src/main/java/com/ambientideas/App.java
    gradle build
    git add .
    git commit -m"Works"
    git stash show
    vim src/main/java/com/ambientideas/App.java
    git stash 
    git stash show
    git stash show -p
    git stash list
    git stash apply
    git stash list
    echo git stash pop removes it from the stack
    echo git stash apply leaves it on the stack
    git status
    git stash 
    git checkout master
    git stash pop
    git status
    git mergetool
    git status
    git stash
    echo cherry-pick
    git status
    git checkout -b feature10
    vim src/main/java/com/ambientideas/App.java
    git commit -a -m"Red"
    echo two more months
    generaterandomchanges 5 sample txt
    git checkout master
    git config --local user.name "Brent Matthew Beer"
    git cherry-pick 16fc8ba
    git log --format=raw -1
    git reset --hard HEAD~1
    git cherry-pick -x 16fc8ba
    git log --format=raw -1
    git push 
    git checkout feature10
    git push -u origin feature10 
    z git_git
    git branch -a 
    cd -
    git merge feature10
    git status
    git checkout master
    git merge feature10
    git push 
    cd ..
    git clone https://github.com/githubteacher/example-submodule.git
    cd example-submodule
    ls
    git submodule add https://github.com/githubteacher/example-basic
    ls
    ls -al
    cat .gitmodules
    git status
    git commit -m"Adding a plugin"
    git push 
    cd ~/.dotfiles
    ls
    git status
    cd oh-my-zsh
    git pull
    cd .
    cd ..
    git status
    git add .
    git status
    pwd
    git commit -a -m"Updated oh-my-zsh to latest"
    git push
    git tag -a END_OF_SUMMER_RELEASE
    git push origin END_OF_SUMMER_RELEASE 
    z Scratch
    ls
    cd example-
    cd example-b
    cd example-basic
    clear
    git tag -s SIGNED
    git tag
    git tag -v SIGNED 
    git log --format=raw SIGNED -1
    git log --pretty=raw SIGNED -1
    git show --patch --pretty=raw SIGNED -1


## Day One Chat History

matthewmccullough   Good morning all!  
sreeni  Good morning all :)  
brntbeer    good morning!  
Sadiya  Is the UI version of GitHub required for the class? I have OSX 10.6 and GitHub requires 10.7  
Nathan V.   morning all!  
  
brntbeer    good morning!  
I'll primarily be in the background today in the chatroom  
Sadiya  Is the UI version of GitHub required for the class? I have OSX 10.6 and GitHub requires 10.7.  
brntbeer    feel free to ask any questions here!  
brntbeer    Sadiya: we're largely going to be using git in terminal  
Sadiya  Thanks!  
Joe D.  I'm still on Ubuntu 10.04 and the package manager seems like it is capped at version 1.7.0.4. Is that going to be a problem? The docs seem indicate 1.7.9 is in minimum.  
brntbeer    we'll ve covering versions needed there soon  
yep, 1.7.8 or 1.8.0+ is what we want  
Aref A. View paste   
We cannot join this session with iPad, can we?  
  
brntbeer    some commands won't work in git 1.7.0. we had sent out a document that specified some pre-reqs, but not to fret! we'll figure things out. a lot of that stuff is more important for tomorrow  
so, Joe Downs, before class tomorrow, lets make sure we upgrade your version of Git  
Aref Alazzani (SFDC): it's just an audio call. you don't need a computer but this is a hands on class  
so, i stress having a computer. but if you wanted to, you could just listen in  
Agathish V. My git --version doesnt show up hub version.. how do i install it (mac os lion)  
brntbeer    Hub is ok, it's just something we have installed to help us with github stuff. we'll link it in the notes after class  
not to worry  
  
Agathish V. Ok. Thanks, Brent.  
brntbeer    np!  

    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"  
  
Agathish V. How do i un set a field if i mis typed it?  
brntbeer    Agathish Varadharajan: if you want to just re-set something, you can just re-type it  
Agathish V. I typed it wrongly.. can i remove it from config?  
brntbeer    View paste   
git config --global user.name  
will return the value of the config  

    git config --global user.name "Brent2"

has re-set my config  

    git config --global user.name "Brent3"

will also set it to something again  
if you want to erase that it's even set:  
Agathish V. i set git config --global user.nome somename and i want to remove that config  

    git config --global --unset user.name

Agathish Varadharajan: why not just set it to the name you want it to actually be  
Agathish V. Gotcha, Thanks  
brntbeer    instead of trying to unset it, just reset it to the value you'd like =)  
Agathish V. its not the value that i mistyped but the config name :)  
brntbeer    oh!  
haha. i didnt even notice!  
  
brntbeer    similarly. the configs are just...nonsense. you can make up your own. git wont actually care  
Agathish V. :)  
brntbeer    because it's just a file  
lian    regarding staging  
Agathish V. ah ok  
lian    does all commits history keeps when pushing to remote  
say i committed 3 times on a same file  
brntbeer    lian: i think this will become a bit more obvious as we start using and commiting with Git, but when we push things to a remote server, it's going to keep the history the same as what you have locally. in fact that's the only way you can update your remote server is by telling it "hey, there's some more stuff that you dont have that you need to keep up to date with me"  
similarly. (as we'll see tomorrow), if you want to push, but there's things already on the remote server that you dont have  
you need to pull those commits down first  
because if a colleague has pushed something to the same branch (we'll explain this more in time, don't stress =) )that we're on, we need to get those commits, then push our commits to the server  
so that everyone has the same history  
lian    thanks  
  
matthewmccullough   View paste

    git add first.txt  
    git commit -m "My first commit"

Mike B. Hello  

I like using the analogy of taking photo shots.   
- You decide who will be taken a photo.  
- You put them into a photo taking stage.  
- You take the photo and remove them from the stage.  
  
brntbeer    Aref Alazzani (SFDC): nice!  
lian    snapshot  
  
lian    why does it choose to use add every time  
even for previously added file. i  
Joe D.  Don't think of it as "add to source control", instead it is "add to staged changes"  
brntbeer    it's because when we add it to the staging area, we are putting it in this shopping cart area. but, if when shopping we realize we actually needed 2 cans of soup instead of 1, we still have changes we need to put in the shopping cart  
lian    for other version control tool  
  
lian    i feel it's comparing local file with depot, then decide if it's changed  
why git prefer additional "add" command  
thanks  
Parth V.    i get this Can't locate Git.pm when i run git add -p first.txt  
brntbeer    lian: not sure i completely understand the question. because we have the staging area, we can decide we want to stage files at a given point in their changes.  
Agathish V. I get this error when i do -p add  

    agathishvar-ltm:project1 agathish.varadharaja$ git add -p first.txt   
    Can't locate Git.pm in @INC (@INC contains: /usr/local/lib/perl5/site_perl /Library/Perl/5.12/darwin-thread-multi-2level /Library/Perl/5.12 /Network/Library/Perl/5.12/darwin-thread-multi-2level /Network/Library/Perl/5.12 /Library/Perl/Updates/5.12.3 /System/Library/Perl/5.12/darwin-thread-multi-2level /System/Library/Perl/5.12 /System/Library/Perl/Extras/5.12/darwin-thread-multi-2level /System/Library/Perl/Extras/5.12 .) at /usr/local/libexec/git-core/git-add--interactive line 7.  
    BEGIN failed--compilation aborted at /usr/local/libexec/git-core/git-add--interactive line 7.  

lian    thanks, why not automatically "add" changed file to staging?  
brntbeer    lian: because git wants to give us the complete control of how we want to add thigns  
  
lian    k, thx  
brntbeer    because if we automatically add files to the staging area, we could have commits that include files we dont want  
if im working on some css files and accidentally change a .rb file  
i dont want that .rb file in my commit because it's not quite ready to go  
but if it was automatically added to the staging area, then it would be in my commit  
  
sreeni  brntbeer - question about git add -p  

    git add -p  first.txt  
    diff --git a/project1/first.txt b/project1/first.txt  
    index 0352a38..277c126 100644  
    --- a/project1/first.txt  
    +++ b/project1/first.txt  

where is that a/ and b/ directories coming from  
is that some temporary dir used by git for processing  
brntbeer    it's basically looking at the two different versions of the files  
basically, yes =)  
sreeni  ok  
thanks  
  
pavan   Is there a way to not show the author,date and commit info every-time in the log, diff etc commands. Its a repeat info and makes a lot of text obscure for a human ?  
matthewmccullough   http://git-scm.com/docs/git-log  
pavan   may be a silent mode or something similar .. @brntbeer  
brntbeer    pavan: yep! there's tons of types of formatting we can do on log. we can do "git log --oneline" to just show a short hash for the commit, and just the first line of the commit message  
for one example  
  
brntbeer    or "git log --format=full" or "git log --format=fuller" or "git log --format=raw"  
for that graphlive command:  
https://github.com/matthewmccullough/scripts/bl...  
dont worry too much about doing it now, but for after class maybe =)  
  
pavan   thnx  
Nara    what if string has spaces ? should i add quotes ?  
is there a way to access the powerpoint slides that you used ?  
brntbeer    Nara: yep, we'll be sharing those as well after class  
also, yes, if you want to include spaces, you can do so with quotes  
pavan   whats the terminal-split app being used in the class for demo..its pretty cool ?  
  
  
Mike B. Matthew mentioned briefly the core.autocrlf setting. We have a team of people with some on Mac, some on Windows. What's the recommended setting for this so that text files show up "correctly" on each developer desktop?  
brntbeer    Mike Blubaugh: on Mac:  
lian    could we talk github  

    git config --global core.autocrlf input

lian    earlier  
brntbeer    and on windows:

    git config --global core.autocrlf true  
  
brntbeer    lian: yep, we'll get ot more github stuff after we go over some more basic stuff. we want to make sure we fully understand some of these topics before moving over to github  
Mike B. Thanks. At this point in our project, some of the text files in the repo have a mix of line endings. Should we try to rationalize them, or just leave them alone?  
pavan   thnx !  
  
brntbeer    Mike Blubaugh: the best thing to do is to just deal with it going forward  
Mike B. ok thx  
brntbeer    never really run into this problem before. so as you make new edits to a file, git may detect the line endings as changes. once it's commited to the new line ending way it should be okay.  
let me know otherwise  
Parth V.    if u move a file to a new place, does it lose its revision history?  
  
brntbeer    nope!  
you can always see the history of a file, sometimes you'll have to tell it to "--follow" to keep track of the renames  

    git log --follow -- folder1/uno.txt --stat  

    git log --follow --stat -- folder1/uno.txt

Nathan V.   Is there an option to follow a set of files...like a changelist in perforce?  
  
brntbeer    Nathan Veeraraghavan: nope, it's only on one path at a time  
  
matthewmccullough   https://github.com/githubteacher/example-basic
  
Joe P.  Feel free to ignore this if we're about to cover it. How do you keep a forked copy in sync with the original repo?  
brntbeer    definitely something we'll work on!  
Joe P.  ++ty  
brntbeer    git has a way of saying to "push my changes here, now push these changes over here as well"  
Aref A. fork sounds like creating a SFDC sandbox before deploying changes upstream (production)  
Joe P.  Yes, the q I've run into is if the codebase is changing rapidly for the (production) source, how to keep my forked copy relevant.  
while not losing my work and changes to the forked copy  
brntbeer    can't really comment on that, but a sandbox is a similar idea. It's still only in the web though. Forking is a GitHub feature for sure  
Joe Pasko: definitely a common workflow  
  
matthewmccullough   https://github.com/githubteacher/example-basic/...
  
Agathish V. What do we do, if the pull request is not auto 'mergable'  
brntbeer    in that case, you can click the link that mentions how to resolve it locally. that's generally because of a merge conflict (something we'll cover shortly!)  
  
J.C. P. If I fork a repo, I see how to contribute back, but how would I retrieve any changes to the master that have happened since the fork?  
Agathish V. Ok. Thanks, Brent !  
brntbeer    J.C. Polanycia: something we definitely want to show! we'll get to it for sure  
J.C. P. great. Thanks!  
  
Mike B. is there a command-line shortcut to create a branch and check it out in one step?  
Agathish V. git checkout -b branchname (iirc)  
brntbeer    boom  
you guys are doing my job for me! haha  
Agathish V. :)  
brntbeer    well, thankfully so. glad to see people working together, obviously

git clone https://github.com/githubstudent/example-basic.git  
cd example-basic  
git branch -a  
git remote add teacher https://github.com/githubteacher/example-basic.git  
git fetch teacher  
git merge -m "Stuff from others" teacher/master  
  
Mike B. can i choose to only merge certain files or directories?  
brntbeer    kind of. it's very complicated and i'd argue that it would be a bad workflow  
care to explain a bit why you would want to? I've seen people do it before, but just for your use case  
Mike B. Question was collected from a colleague before I came to this class. I think his concern was around the fact that merging everything was causing headaches, and he felt that he could keep working faster if he just merged certain desired folders/files.  
  
brntbeer    i think through pull requests can actually solve this. you could see that someone has checked in files that they shouldnt have  
and if there are merge conflicts in the PR, then those will be shown as well  
Joe P.  Can we be sure to get to merge conflicts between local and remote repos?  
and how to resolve them...  
brntbeer    Joe Downs: yep, we should be able to cover them here, but we'd definitely talk on them in the very beginning of tomorrow's class  
Joe P.  no worries as long as we cover it by end of class  
  
brntbeer    hope that was a nice little look Joe Pasko !  
Mike B. will you be covering how to revert a "bad merge" - where one developer blew away the other developer's changes accidentally?  
sreeni  Thank you  
Sadiya  Are the slides etc available so we can go through things before tomorrow  
matthewmccullough   Sadiya: Sure thing.  
We send a wrap-up email tomorrow, but happy to link you to them now  
http://teach.github.com/presentations/  
And specifically, http://teach.github.com/presentations/git-found...  
Sadiya  Thanks!  
lian    i got meeting 10:30 tomorrow  
matthewmccullough   lian: Oh. Sorry to hear that. Will you rejoin after?  
lian    is it possible to look at video  
12:05 brntbeer    lian: unfortunately we won't be recording these sessions. :(  
matthewmccullough   But we do have videos embedded in the slide deck  
we just linked Sadiya to  
For most of the topics!  
  
  
## Day Two Chat History  
  
matthewmccullough   Morning all!  
matthewmccullough   Glad to have you back with us for day 2!  
matthewmccullough   Some of the topics asked for include:  
  
- Recommendations for commercial tooling, especially with respect to merge & conflict resolution.
- Best practices for repository creation: we use maven to resolve dependencies, so we're wondering does it make sense to split our repo into multiple repos, one for each maven artifact?
- How to undo a "bad merge"?  We've had team members who did a merge that accidentally blew away code from a previous commit, and then when we try to re-merge it in, git says it's already up to date.
- Best practices for branching strategies with respect to software releases.

brntbeer    So, with these merges, it looks through the graph of the branch coming in (the thing we say to merge) to find a common ancestor. to check that it doesnt need to merge anything else is because it can trace all of the commits from where we're at right now  
or that green circle that matthew was at.  
basically just says "yeah, i have all of these commits in this branch now, i dont need to merge anything!"

    git branch testmerge  
    vim README.md  
    git commit -a -m"Hot fix on master"  
    git checkout testmerge  
  
brntbeer    I'll be repasting what matthew pasted in just one second

    git branch testmerge  
    vim README.md  
    git commit -a -m"Hot fix on master"  
    git checkout testmerge

agathishvar-ltm:example-basic agathish.varadharaja

    $ git checkout master  
    Switched to branch 'master'  
    Your branch is ahead of 'origin/master' by 16 commits.  
      (use "git push" to publish your local commits)  
    agathishvar-ltm:example-basic agathish.varadharaja$ git merge remotes/origin/conflict  
    fatal: remotes/origin/conflict - not something we can merge  

how do i merge conflict?  
Joe P.  Nice! Like to see this get sorted.  
but can wait  

brntbeer    Agathish Varadharajan: if you could just go ahead and type "git merge origin/master"  
Agathish Varadharajan: and then "git fetch" to ensure origin/conflict is up to date  
brntbeer    let me know when you get to that point =)

    agathishvar-ltm:example-basic agathish.varadharaja$ git merge origin/master  
    Already up-to-date.  
    agathishvar-ltm:example-basic agathish.varadharaja$ git fetch  
    From https://github.com/githubteacher/example-basic  
       a2a2f8f..93b2216  master     -> origin/master

brntbeer    so do another "git merge origin/master" again  
and then try to do: "git merge origin/conflict"

    agathishvar-ltm:example-basic agathish.varadharaja$ git merge origin/master  
    Already up-to-date.

brntbeer    cool.

    agathishvar-ltm:example-basic agathish.varadharaja$ git merge origin/conflict  
    fatal: origin/conflict - not something we can merge  

Mike B. what was the command to show the tree again?  
brntbeer    hmm.  
sreeni  bntbeer i get this:

    git merge testmerge -m "Merge these things"  
    Auto-merging README.md  
    CONFLICT (content): Merge conflict in README.md  
    Automatic merge failed; fix conflicts and then commit the result.

brntbeer    Mike Blubaugh: the graph on the far right?  
Joe P.  vorpal_blade? -> $nerdpoints++  
Mike B. yes - the log with the branches in colors  
  
brntbeer    Mike Blubaugh: that's matthew's special script, called graphlive, it's essentially a wrapper for "git log --graph --all --decorate --oneline"  
it'll be linked in the notes after class  
Joe P.  https://github.com/matthewmccullough/scripts/bl...  
brntbeer    sreeni: you could resolve the conflict locally like we did yesterday, and then "git add README.md" then "git commit"  
sreeni  ok  
brntbeer    Agathish Varadharajan: can you type "git branch -a" and paste results here?  
Aref A. When we merge do we permanently lose the branch that we merged?

    agathishvar-ltm:example-basic agathish.varadharaja$ git branch -a  
    * master  
      testmerge  
      remotes/origin/HEAD -> origin/master  
      remotes/origin/master

brntbeer    Agathish Varadharajan: and "git remote -v" ?

    agathishvar-ltm:example-basic agathish.varadharaja$ git remote -v  
    origin  https://github.com/githubteacher/example-basic (fetch)  
    origin  https://github.com/githubteacher/example-basic (push)

Sadiya  Is ORIG_HARD created only on merges? or is it created on other operations as well to be able to undo?  
John B. I got myself into a state where I had a merge conflict. I tried to resolve conflict but now git status gives "both modified: README.md".  
Mike B. is there a comparable way to deal with this on github?  
(to remove the bad merge after it's been pushed)  
  
brntbeer    Agathish Varadharajan: you don't have a branch called "conflict" like matthew did because he's working on a githubstudent repo. for this example we really should just create a new branch called "testmerge", checkout to that branch, make some changes to the README.md, and then checkout back to master and make more changes to README.md that isnt in the same place as the other change to the README.md  
and then merge testmerge into master. Let me know if you want me to help you with some more of this  
Agathish V. Brent, I have the testmerge created and change made..
  
    agathishvar-ltm:example-basic agathish.varadharaja$ git branch -a  
    master  
    testmerge  
    remotes/origin/HEAD -> origin/master  
    remotes/origin/master

brntbeer    Agathish Varadharajan: cool! perfect. So now, we're just wanting to say: 'git merge testmerge -m "merging in testmerge" ' or some commit message

    agathishvar-ltm:example-basic agathish.varadharaja$ git merge testmerge -m "mergeing test testmerge"  
    Auto-merging README.md  
    CONFLICT (content): Merge conflict in README.md  
    Automatic merge failed; fix conflicts and then commit the result.  

maybe you can help me during break..  
brntbeer    Agathish Varadharajan: so in this situation, you can just make sure you remove those merge markers (<<<<HEAD, ======, and >>>>>> testmerge)  
and decide how you want things to look. in this case, you most likely want to just remove those markers and save the file  
  
brntbeer    back on terminal you'd just type "git add README.md" to add the change to the staging area, and then "git commit -m 'mergeing test testmerge' "  
there was just a problem because on HEAD (or master currently) didnt have a newline at the end of the file, so it didnt know how to correctly handle the merge

    agathishvar-ltm:example-basic agathish.varadharaja$ git commit -m 'mergint testmerge'  
    U   README.md  
    error: 'commit' is not possible because you have unmerged files.  
    hint: Fix them up in the work tree,  
    hint: and then use 'git add/rm <file>' as  
    hint: appropriate to mark resolution and make a commit,  
    hint: or use 'git commit -a'.  
    fatal: Exiting because of an unresolved conflict.

brntbeer    Agathish Varadharajan: you have to manually edit the file  
Agathish V. file im trying to commit  
brntbeer    to remove those markers

brntbeer    after you remove those markers,  
including those ===== marks  
Filtering `git log` with `--author` option  
Agathish V. ok
brntbeer    you dont want that ===== sign there  
then save the file, then type "git add ."  
and then the commit  
to finish and resolve the merge, we have to add the file to the staging area  
Agathish V. thanks that worked  
brntbeer    np!  

brntbeer    so to sum up: fixing merge conflicts means we just open the files in our text editor to look for those merge conflict markers. we then decide between the markers what parts we want to keep. or what we want the file to look like after everything is done

    git reset --hard ORIG_HEAD  
    View paste   
    git merge --abort  
    View paste   
    git mergetool  
    View paste   
    git mergetool -t TOOL  
    View paste   
    git help mergetool  

Agathish V. how do i configure which mergetool to use?  
  
brntbeer    once you have one of those tools installed. you point the mergetool to the binary of that file  
so if my mergetool was /usr/bin/p4merge  
i coould say git mergetool -t /usr/bin/p4merge  
this is why i dont particularly like mergetools  
just extra overhead  
but i guess once you're done with it you're fine  
Agathish V. Gotcha  
  
Agathish V. does rebasing do a 'merge'?  
brntbeer    nope!  
prep's for it though =)  
Sadiya  so rebase in other words will move the changes that happened in master since our branch started to our branch, not the other way around that is move the changes to the master  
okay got it, changes in master came into my branch not the other way around  
Nathan V.   So is rebase equivalent to a fast forward without the push?  
Agathish V. so we lose the changes in the master branch?  
brntbeer    Agathish Varadharajan: nope. master isn't effected at all.  
Agathish Varadharajan: all that happens is you put your branch off to the side, and re-create your branch at the most recent node of master  
Sadiya: nope, master isn't touched at all. it's our branch that's bothered  
  
Agathish V. somehow feels it is not practical.. how can it work without merge?  
brntbeer    you just have to merge laster. it's a preperation before our merge  
Agathish V. so it will make it a little easier to merge?  
brntbeer    it would make the merge less complicated looking  
instead of the recursive merge, you have a fastforward merge every time  
it makes the commit history easier to follow  
Agathish V. Ok  
brntbeer    the alternative is to constantly merge master INTO your feature branch  
to get the updates from master  
  
Agathish V. gotcha  
Tarundeep B.    will we be covering the same thing using GUI github tool ?  
thanks  
brntbeer    np!  
Shahid K.   If I always use git --amend, do I need to do rebase -i?  
  
brntbeer    amend only applies changes in the staging area to the last commit. where as rebase -i allows us to redo work from an arbitrary point and do some work to them  
Shahid K.   ok thanks  
brntbeer    np!  
  
J.C. P. Need to drop off for a conflicting meeting. Great class so far.  
  
brntbeer    J.C. Polanycia: glad to have you!  
  
Joe P.  View paste   
Questions  
1. How to fork an open source github project to an internal github project  
2. How to pull changes from public into your local github fork  
  
brntbeer    Joe Pasko: not sure i quite understand #1. to fork an open source github project, you'd click the "fork" button as we did yesterday. That'd of course make it open source under your username  
Joe P.  Ok, we have an internal github repo  
we would like to pull a copy of the public repo into this internal github repo  
brntbeer    and for #2, we also kind of went over this yesterday. we had cloned our fork of example-basic, and then we sent a Pull Request back to githubteacher. well to get changes in OUR fork from the githubteacher repo, we needed to add another remote  
Joe P.  and keep it current with the public repo as we make changes to the internal repo  
brntbeer    so, on the command line, we said "git remote add teacher http://github.com/githubteacher/example-basic.g...;  
then "git fetch teacher", "git merge teacher/master" into OUR master  
and then "git push origin master" to push our master back to our fork  
Joe P.  ++  
makes sense  
thank you  
brntbeer    and this would be the same way to fork a public repo on github.com  
and push it to our enterprise install  
  
brntbeer    we just set that remote to some different url  
  
Mike B. could there be a windows file lock on something?  
Joe P.  <insert windows bashing here>  
brntbeer    exactly  
Mike B. sadly some of us still need to be on windows  
Joe P.  Can you give a clean recap of the process?  
brntbeer    another way matthew could have done is "git remote set-url origin http://github.com/githubteacher/ourtwitterboots...;  
  
brntbeer    Joe Pasko: that was all we did, we cloned it through GHfW. we changed the origin url with "git remote set-url origin https://github.com/githubteacher/ourtwitterboot...;  
and then pushed1  
Joe P.  ++  
it seemed straightforward until it got all windowsy  
brntbeer    well even windowsy, we just thought we could remove the URL first  
just couldnt  
Agathish V. if we reset it.. do the changes come to staged or get lost for ever?  
brntbeer    Agathish Varadharajan: depends on the level of reset  
if we reset --soft  
they sit in the staging area  
if we reset --mixed (or no flag at all) they go to the working directory  
and the --hard is "gone forever"  
  
brntbeer    but REFLOG is always going to record those things  
for up to 90 days  
Agathish V. Ok.. awesome ! thanks  
brntbeer    keeps them from garbage collection..but then it lets them go  
Agathish V. can change the 90 day limit?  
cool.. thanks  
brntbeer    =) no problem!  
  
matthewmccullough   https://github.com/githubteacher/hellogitworld/...  
View paste   
https://github.com/githubteacher/hellogitworld/commit/7c0ffa9d88616972bb84befbec40a2212478149e  
  
Mike B. i'm a bit lost - what's the goal of these steps that Matthew is doing?  
brntbeer    to show merging a pull request locally  
since there's a conflict between these branches, we can't merge on the web  
  
Mike B. is there a summary of this workflow? kind of soup-to-nuts description of (1) bug discovered (2) developer fix (3) pull request (4) CI & merge -- or whatever the recommended flow is  
brntbeer    http://scottchacon.com/2011/08/31/github-flow.html is a good start  
Mike B. thx  
brntbeer    the images are a little out of date, but the ideas are all there  
  
brntbeer    work on a feature branch, do some work, push them often and start that pull request quickly to get some feedback right away  
when you'e gotten some s  
you can merge into master  
and depending on your system, auto deploy, or deploy manually  
matthewmccullough   git reset --hard origin/master  
  
Agathish V. will stashing be covered today?  
brntbeer    we should definitely talk about it!  
Agathish V. cool  
  
brntbeer    boom ;)  
stash!  
Agathish V. :)  
Mike B. how do i configure my windows "git bash" to use p4merge?  
  
brntbeer    same way that we would on mac, by setting the config to: "git config --global merge.tool p4merge" and "git config --global mergetool.p4merge.cmd <ETC>" http://stackoverflow.com/a/436040/636111  
as shown in that SO article  
seems to be the best starting point!  
Mike B. thx  
brntbeer    np!  
Mike B. does cherry-pick take any changes prior to the chosen commit?  
or only the "surgical" changes in that delta?  
brntbeer    nope, it just grabs the exact commit change  
definitely the delta  
  
  
Mike B. is there a way to "tag" the commit in the submodule using the maven release version for that component (rather than the SHA-1)?  
  
Agathish V. Is there a way to auto-sync your fork with master... or do it command line, without sending a pull request?  
brntbeer    im not sure i understand the question. auto-sync your fork with a different repository you mean? master is just a branch  
Agathish V. auto-sync with the original repo  
Joe P.  I think you'll need the pull  
but certainly might be wrong  
brntbeer    well, you could have a "git sync" alias that would do a "git fetch upstream && git merge upstream/master && git push origin master"  
so any time you want to make sure your fork is up to date with upstream  
Joe P.  +++love the alias idea  
brntbeer    you could just run "git sync"  
that'd of course involve making sure you're not doing anything on your local master though  
Agathish V. ah.. think that is what im looking for.. thanks !  
brntbeer    https://github.com/matthewmccullough/dotfiles/b...  
for more aliases  
  
brntbeer    so the pattern is something similar to 'git config --global alias.sync "!git fetch upstream && git merge upstream/master && git push origin master" '  
Agathish V. can we override gitignore occasionally?  
brntbeer    absolutely Agathish Varadharajan  
you can overwrite it with lower level .gitignores  
and you can have special cases inside that overwrite earlier thing in the file  
Agathish V. what if i git add a file that has been gitignored?  
brntbeer    you'd have to add it as a special case in the ignore so that git would even detect it  
then you could commit it  
Nathan V.   This may have been covered yest (I remember seeing something about this). But where can we find the slides with the videos in it?  
brntbeer    there will definitely be a link to it in the note  
s  
Mike B. BTW, for windows, looks like you need:

    git config --global merge.tool p4merge  
    git config --global mergetool.p4merge.cmd 'p4merge $BASE $LOCAL $REMOTE $MERGED'

brntbeer    ah  
Mike B. (doesn't work with the escaped double-quotes  
thanks for a great class!!  
brntbeer    thank you!  
sreeni  Thanks Brent & Matt.  
12:00 matthewmccullough   Our pleasure!  
So glad to have all of you in class.  
Agathish V. Thank you Brent and Matthew, I learnt the potential of git and looking forward to applying it at work :) #gitcovert  
Agathish V. #gitconvert even  
brntbeer    woot!  
Matt M. Thanks guys  
Sadiya  Thanks guys  
matthewmccullough   Agathish Varadharajan: Makes us smile to hear that. SO much to absorb on it, but you have such a powerful tool in your hands.  
Agathish V. yes ! i went from a grumbling-perforce-user-forced-to-use-git to a git-enthusiast :)  
brntbeer    dannng!  
awesome to hear  
Agathish V. i guess git has a big learning curve.. but totally worth the effort  
12:05 brntbeer    i tend to view it as a "nothing great should ever be easy" type of thing  
not to say i view git as hard. but often you shouldnt have to worry about knowing EVERYTHING to get any work done  
baby steps to adoption  
Agathish V. haha true  
btw, brent is upstream a keyword?  
brntbeer    kind of.  
i mean, when i hear "upstream" i think of the upstream server  
Agathish V. git fetch upstream && git merge upstream/master && git push origin master  
brntbeer    i only say upstream and not "remote" as to not confuse people  
they would be used interchangably  
Agathish V. im trying this out

    fatal: 'upstream' does not appear to be a git repository  
    fatal: Could not read from remote repository.  
  
Please make sure you have the correct access rights  
and the repository exists.  
brntbeer    ah, keyword  
no, i mean as if we did "git remote add upstream https://github.com/githubteacher/example-basic....;  
just like we add a new remote  
calling it upstream  
i misunderstood what you meant by keyword  
Agathish V. ok  
brntbeer    Cool! headed to lunch now. Bye guys!

    agathishvar-ltm:example-basic agathish.varadharaja$ git remote add upstream https://github.com/githubteacher/example-basic  
    agathishvar-ltm:example-basic agathish.varadharaja$ git fetch upstream  
    From https://github.com/githubteacher/example-basic  
     * [new branch]      master     -> upstream/master  
    agathishvar-ltm:example-basic agathish.varadharaja$ ls  
    Parth.txt   agathish.txt    file.txt    matthewmcc.txt  peterw.txt  sadiya.txt  zuck  
    README.md   css     index.html  mblubaugh.txt   pull        tarun.txt  
    agathishvar-ltm:example-basic agathish.varadharaja$ git merge upstream/master  
    Already up-to-date.  
    agathishvar-ltm:example-basic agathish.varadharaja$ git push origin master  
    Username for 'https://github.com': agathish  
    Password for 'https://agathish@github.com':   
    remote: Permission to githubteacher/example-basic.git denied to agathish.  
    fatal: unable to access 'https://github.com/githubteacher/example-basic/': The requested URL returned error: 403

ah.. cya  
i ll send you a mail.. im still not getting it right  
matthewmccullough   Agathish Varadharajan: Totally willing to help. Even better, drop in those pastes over to https://github.com/githubtraining/feedback/issues  
and we can all send you help (all four trainers)  
Agathish V. Ok. Thanks Matt !  
12:15 matthewmccullough   Bye all. Have a great reset of your day!  
And great rest of your day even!  
ETOOMUCHGIT!  
