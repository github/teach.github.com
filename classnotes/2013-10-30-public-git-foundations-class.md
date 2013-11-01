---
layout: bare
title: Public Git Foundations Training
description: Public Git Foundations Training Class Notes
tags: [notes]
path: classnotes/2013-10-30-public-git-foundations-class.md
eventdate: 2013-10-30
---

## Teacher
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Course Materials, Links
* [Course Slides](http://teach.github.com/presentations/)
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

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


## Console History

    git --version
    git init project1
    cd project1
    mate first.txt
    git status
    git add first.txt
    git status
    git commit -m "My first commit"
    git status
    cd ..
    cd projectfromgui
    git status
    vim first.txt
    git status
    cd ..
    git clone https://github.com/githubstudent/introcpp.git
    cd introcpp
    git fetch
    cd introcpp
    cat introcpp.cpp
    git branch -a
    git show remotes/origin/master
    git diff master remotes/origin/master
    git pull
    cat introcpp.cpp
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    ls
    mate matthewmcconhisfork.txt
    git status
    git add matthewmcconhisfork.txt
    git commit -m "Matthews file change"
    z teach.github.com
    ack proxy
    cd classnotes
    ack proxy
    git push
    pwd
    clear
    pwd
    cd ..
    cd hellogitworld
    git graphlive 25
    ungit
    git graphlive 25
    git branch feature1matthew
    git checkout feature1matthew 
    treelive 10
    touch FEATURECODEDONTHEBRANCH.txt
    git add .
    git commit -m "Feature file"
    git checkout master
    git checkout feature1matthew 
    mkdir dozen
    cd dozen
    generaterandomfiles 12 sample txt
    git add .
    git commit -m "One non-bakers dozen"
    git checkout master
    cd ..
    pwd
    clear
    git checkout feature1matthew 
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git add .
    git commit -m "Over nine thousand"
    git checkout master
    cd ..
    git checkout feature1matthew 
    clear
    git status
    git branch
    github
    git checkout master
    git diff master feature1matthew 
    git show feature1matthew:thousands/sample999.txt | mate
    cd ..
    ls
    git clone https://github.com/githubstudent/myfirstwebproject.git
    cd myfirstwebproject
    git branch -a
    git checkout acrazyidea
    cd ..
    cd hellogitworld
    ls
    mvn test
    git pull
    git status
    git merge --no-ff --no-commit breakthetest
    git merge --no-ff --no-commit origin/breakthetest
    mvn test
    git merge --abort
    git status
    clear
    ls
    vim fix.txt
    git status
    git stash
    git status
    git checkout master
    git stash pop
    git status
    git stash 
    git stash list
    vim pom.xml
    git stash 
    git stash list
    git stash pop
    git reset --hard
    git status
    git stash pop
    git commit -a -m "Changes"
    ls
    vim src/Division.groovy
    git stash
    vim src/Division.groovy
    git commit -a -m"Explicit return"
    git stash pop
    git status
    git diff
    git reset --hard
    git status
    git s
    git diff
    # day two
    cd hellogitworld
    git status
    git checkout master
    clear
    cd hellogitworld
    git graphlive 25
    touch file1.txt
    git add .
    touch file2.txt
    git add .
    historytailzsh 5 10
    touch file3.txt
    git status
    git commit -m "All three of the files that belong to this feature"
    git add file3.txt
    git commit --amend 
    git reflog
    git reset --soft f29c6be
    git status
    git reflog
    git reset --hard 81d2569
    git status
    git branch featuremergerecursive
    mate masterfile.txt
    git status
    git add .
    git commit -m "Master branch changes"
    git checkout featuremergerecursive 
    mate featurefile.txt
    git add .
    git commit -m"Feature work"
    git checkout master
    git merge featuremergerecursive 
    git log --format=raw -1
    git reflog
    git reset --hard 920e632
    git checkout featuremergerecursive 
    git rebase master
    git checkout master
    git merge featuremergerecursive 
    clear
    git status
    git branch rebasewithconflict
    ls
    vim build.gradle
    git commit -a -m"Hotfix junit to 4.8.3"
    git checkout rebasewithconflict 
    vim build.gradle
    git commit -a -m"Upgrade JUnit to 5"
    ls
    vim src/Square.groovy
    git commit -a -m"Tune up the return"
    git rebase master
    vim build.gradle
    git rebase --continue
    git add build.gradle
    git rebase --continue
    git checkout master
    git merge rebasewithconflict 
    clear
    git log 
    git log --all
    git log --all --graph
    git log --all --graph --oneline
    z git_git
    git log --author=Kyle
    git log --author=Kyle --committer=Junio
    git log --author=Kyle --committer=Junio -S fix
    git log --diff-filter=M --stat
    git log --diff-filter=D --stat
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    cd -
    git fetch
    git remote -v
    git reset --hard origin/master
    vim build.gradle
    git commit -a -m "Fixes #2 by bumping up the Gradle version to .333"
    git push
    git revert fdc333c
    git push
    git log --oneline -6
    git tag -a RELEASE_5.0 78f4771
    git push origin RELEASE_5.0 
    git tag -S RELEASE_SIGNED HEAD
    git tag -s RELEASE_SIGNED HEAD
    tig 
    github
    git difftool -t p4merge HEAD..HEAD~3
    git difftool -t opendiff HEAD..HEAD~3
    git difftool -t kdiff HEAD..HEAD~3
    git difftool -t myaraxis HEAD..HEAD~3
    git difftool -t myaraxis HEAD~3 HEAD~5
    clear
    git branch mergeconflict
    vim pom.xml
    git commit -a -m "Four eight one on master"
    git checkout mergeconflict 
    vim pom.xml
    git commit -a -m "Three nine one on feature"
    git checkout master
    git merge mergeconflict 
    git mergetool
    git status
    git merge --abort
    git rev-parse HEAD
    git rev-parse master
    git rev-parse 4873
    git show master^
    git show master^^
    git show master^^^^^
    git show master^^^^^^^^
    git show master~5
    git log -1 --pretty=raw
    git tag REMEMBERTHISPOINTBEFORELUNCHHUNGERSETIN master~3
    git reset --hard origin/master
    open .
    git branch mergeme
    vim build.gradle
    git commit -a -m"Gradle version bump"
    mate src/Division.groovy
    git commit -a -m "Explicit return"
    git checkout mergeme
    git status
    git add -A .
    git status
    git commit -m "Moved all the files"
    git checkout master
    git merge mergeme -m"It just works"
    cat src/groovy/Div.groovy
    which -a svn
    cd ..
    git svn clone https://github.com/matthewmccullough/dotfiles/trunk dotfilestr
    svn co  https://github.com/matthewmccullough/dotfiles/trunk


## Chat History

[GitHub Foundations slides](http://teach.github.com/presentations/git-foundations.html)

https://github.com/githubstudent/introcpp

**What is the URL for hellogitworld?**  
[github.com/githubteacher/hellogitworld](https://github.com/githubteacher/hellogitworld/)

**How do I make sure I'm in a scratch directory, and not about to mess up something real?**  
You can create a new folder and work within that. If you're on a Mac/Linux, you can do 
`mkdir Scratch` and then `cd Scratch`. Then you'll be in a Scratch folder 
(which is just a little throwaway folder). :)

**I just did a clean install of Git on Ubuntu, but the version is only 1.7.10.4**  
You should be good because it's > 1.7.9 which we need. It's likely the package system is a bit behind.

There is a PPA to get the 1.8 versions [ppa.launchpad.net/git-core](http://ppa.launchpad.net/git-core)

**How do I find the Git version in Eclipse EGit?**  
I'm not really familiar with Eclipse EGit unfortunately. Perhaps Matthew knows. I'm trying to find an answer for you.

**What is the most popular standalone Git client for Ubuntu? 
SmartGit? cola? Any recommendations?**  
We don't have a GitHub for Linux at the moment (I'm a Mac user myself).
You can also look at gitg and Giggle.

**What is the difference between fetch and pull?**  
A `git pull` will fetch and then automatically follow it with a `git merge`.

**Is remotes/origin/HEAD just a shortcut to remotes/origin/master?**  

**Does diff do anything to local?**

**If I delete the introcpp folder from terminal/file structure does it remove 
any history or change you've made on your local machine?**  
You would lose any changes you've made or committed before pushing to the upstream/remote.

**Is the directory and its files completely removed from my local? 
Does Git hold anything in the "remotes"?**  
Because of the ".git" folder within the introcpp folder, if you delete the 
introcpp folder it removes the files and the Git repository from your computer. 
The remote will still hold anything you've pushed to it though.
Deleting your local folder won't delete the "remote" on GitHub.

**What is the URL to install the Windows GUI again, please?**  
[windows.github.com](http://windows.github.com/)

**Can you move Git (gotten) folders?**  
Yup! You can move the introcpp folder wherever you want.

**I assume 1.8.3.4 on a Mac is fine?**  
Yup! Should be good.


**I could not clone: git error 
error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify failed**  
Try running this command

    git config http.sslVerify "false"

**When I try to clone I get this error:   
"fatal: unable to access 'https://github.com/Scooter88/hellogitworld/': Failed connect to github.com:443; No error"**  

**How do I clone through a proxy server?**  
Try setting the configuration with

    git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080

**I can clone now. thanks!**  
Everyone else good cloning?

**I'm trying to clone via the Windows GUI. It's asking me to check my 
internet connection**  
You might be behind a proxy or an issue with a firewall.

**Tried to clone from the command line - got error:   
"SSL certificate problem, verify that the CA cert is OK..."**  

Run this on your command line:

    git config http.sslVerify "false"

Then make sure you update your CA certificates later and remove that. 
It makes it a bit insecure.

**I typed that phrase - got 'error: could not lock config file .git/config: No such file or directory'**  
Can you move into the directory of the repository? 

    cd path/to/your/repository

**OK, I was able to cd to my "Temp" dir - I think that is the repository that I created. The sslVerify seems to work - no error anyway.**  
Great! Can you try cloning now?

**I see this error: "SSL Certificate problem: unable to get local 
issuer certification."**  
Hmm. I might have to have Matthew help out with this one. Not sure why your local CA certificates aren't working correctly.

**I get the following: "fatal: unable to access 
'https://github.com/githubstudent/hellogitworld....;: The requested URL returned error: 403"**  
You need to fork that repository.

1. Open [github.com/githubteacher/hellogitworld](https://github.com/githubteacher/hellogitworld)
2. Click FORK on the far right. 

That makes a copy for you that you can then push to. It's your own copy.

[github.com/githubteacher/hellogitworld/network](https://github.com/githubteacher/hellogitworld/network)

**What's the command to remove a directory on a Mac?**  
Be careful! But it's 

    rm -rf

**So I would have to fork again in order for that to get into my copy so I could fetch jim's change?**

**I'm not sure where the 'directory of the repository' is - the clone failed - do I have one yet?**

**On [github.com/githubteacher/hellogitworld/pulls](https://github.com/githubteacher/hellogitworld/pulls) 
it shows a merge icon for GitUser7**  
That's just showing that it's a Pull Request (PR). When you click into it and scroll down, 
you should see the merge icon.

**What about copying the pull request to the local store in order to run the 
code or run tests before approving the pull request?**  
We have [a quick guide](https://help.github.com/articles/checking-out-pull-requests-locally) 
to show you how to checkout PRs. Then you can go to your repository on GitHub 
and issue a pull request.
You can also check out the branch/fork in total (which is what I do).

**I've issued...git clone http://....; Added a file to the local repository; 
Then I did `git add .`; After that, `git commit -m "word"`. What do I do now?**  

    git push

Let me know once you "git push". Then you should be able to go to that URL and click to create a PR.

**Used `git clone git://github.com/<username>/hellogitworld.git` and it finally worked... from the command line - still can't figure it under the Windows GUI**


**What's the commandline for git push?**  
Simple! `git push`  
Or, potentially: `git push origin master`

**I got rejected when pushing my changes to "origin" (which is GitHub) 
on the master branch.**  
Ah, OK! You have changes on GitHub that you don't have locally. 
Try doing "git pull" first to make sure you and GitHub have the same set of changes.

**Why do we fork? If we just clone the project, is it not the same?**  
If you merely clone down you may not have permissions to push code 
back to the repository. You'd have to be given "push" permissions.
By forking first, you're saying "I want my own copy that I can push code up to" 
and you're not stuck waiting for someone else to grant you permission.

**When I created the Pull Request, I had to edit the branches. You told us 
what branches to set, but how would I know otherwise? Why those branches?**  
We use something we call the 
[GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html). 
We create branches off of master for features and then do pull requests from 
that "feature-branch" to "master". It depends on the workflow you use where you work. In our example it's been 
"master" to "master".

**Is HEAD and master the same?**  
HEAD acts like a pointer. So, currently because we're always working on 
master, yes, it's the same (for now).

**I'm a little confused as to the difference between branching and forking**  
Forking is like taking a carbon copy of an entire repository.
Within a repository (which could have been forked), you can create a branch 
to segment your changes into their own collection. So you fork a repository 
but you create a branch *within* your repository.

**Where can we find the scripts used in the class, such as generaterandomfiles?**  
It's open source! [github.com/matthewmccullough/scripts](https://github.com/matthewmccullough/scripts)

**So Git internals knows how to recreate the files, based upon the branches/objects folders?**


**How do you maintain multiple working copies or checkouts with only one repository?**  
For a checkout, you are only changing the pointer of your repository to display a particular branch/tag. 


**Are there any browser-based IDEs that just integrate as directly as that edit button?**  
[PythonAnywhere](https://www.pythonanywhere.com/) and
[Cloud9 IDE](https://c9.io/)

**[Readme Driven Development](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html) - 
I'm actually a little lost on this readme advice. There's only one readme file, right? 
So you mean pull request that immediately and then keep updating it as you develop?
But for a large project, that readme could become a tome or maybe I'm taking it too literally**  
The idea of README Driven Development is less about building a single README file 
and more about describing the changes you intend to make in text first as it forces 
you to describe what you're trying to do.

Sort of saying "write your documentation to make sure you understand it and help 
other people understand it". That writing may not *actually* end up in the README 
or docs folder. 

On github.com's repository, we have a pretty small README.md but then have a bigger 
docs folder that holds information.

**What is fast foward?**  
Fast forward means that we can "rewind" back to where the remote is and then replay 
our changes on top of it cleanly. It means you can "fast forward" without conflict 
or trouble to where the remote is.  

**What about undoing commits and pushes?**

**Does `git reset --hard` revert comitted changes or not comitted?**  
It only reverts uncommitted changes and completely removes the changes you made.


**I wouldn't mind seeing us go through *simulating* working on an open source project.
Like step-by-step: A pulls, B branches, C commits, A sends pull request, C merges, etc.
Something like that.**  
[Drive By Contributions](https://www.youtube.com/watch?v=IeW1Irw45hQ) is a webcast 
we did about how to contribute to open source. 

[youtube.com/githubguides](https://www.youtube.com/githubguides) is the main entry 
point, but I wanted to link you to that specific video.


**How do I `git diff` two different projects?**  

Remotes will help with that I believe which we're covering tomorrow. 

**Can GitHub be hosted on private company server: Gitlab? GitHub Enterprise?**  
Yup! GitHub offers GitHub Enterprise - [enterprise.github.com](https://enterprise.github.com/)

**When working on multiple branches, which state should the changes be in before 
you switch branches? For example, if you don't want the changes to follow you?**  
If you don't want them to follow you, you can do `git reset --hard HEAD` which 
says "discard the changes I made and make it look like the last commit I've made".

You may also remember `git stash` which will "stash" the changes which you can do `git stash pop` later.

**But it wont be comitted right?**  
Correct. Reset doesn't commit, it just sort of "rewinds" back to HEAD (the last commit). 
Stash merely puts it into a stash area.

**With git stash and git stash pop, it's very easy to overwrite the stash, 
so I thought it wouldn't be good?**  
Stash acts like a stack. So each time you stash you'll add to the stack. 
`git stash pop` takes the last thing off the stack.

**So we can collapse history, make a single commit, then how do we get the 
data back after doing `git reset --hard HEAD`?** 
Normally, you wouldn't use `git reset --hard` if you intend to use those changes later.

One thing that happens regularly is you start working on BranchA but then realize 
you need to do that on BranchB. You'd do:

    git stash
    git checkout BranchB
    git stash pop

**How do you "clean up" accidentally committing something? Like a private or sensitive file.**  
There are two situations to worry about: just doing it locally, and trying to fix it 
after *pushing* up to your remote. The second one is a bit more complicated. 

**When you have a stash list of say five, how do you call the third stack?**
Here is a quick example of how you could pick things out of stash "out of order". I don't particularly recommend it but sometimes this can help!

    kyle stash-example » git stash list
    stash@{0}: On master: save This is the second thing I stashed
    stash@{1}: On master: This is the first change
    kyle stash-example » git stash pop stash@{1}
    # On branch master
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #   modified:   file1.txt
    #
    no changes added to commit (use "git add" and/or "git commit -a")
    Dropped stash@{1} (e909379a1b5ef708c95bb2b18bf5d063e3caeb97)
    kyle stash-example »

**Can we go back to the amended state without having to amend again?**  

**Is the amend changing the actual history, or just a view of it? 
Can I always go back and look at the original history, mistakes and all?**  

**Can I use git reflog on the server-side? To check if remotes are in sync 
for example. I'm thinking within a script that runs on the server/remotes.**  

**So the difference between git log and git reflog is a more granular view of the history?**

**Does the reflog also store stash history?**

**Why you call it Merge Recursive? What is recursive about it?**  

**If you own a project on GitHub, do you still fork it to your own personal account, create a branch, push to your fork and then send a pull-request 
*to yourself basically* to merge, or do you just work in master locally?**  
People do this multiple ways. I don't tend to have my own fork unless I don't 
have "contributor" rights to the original repository. Some people feel it's 
useful to have their own fork though and only send code changes up through PRs.


**Will you be showing a rebase conflict example?** 

**Isn't there a chance there could be a conflict with the rebase? 
If the changes that happened to master conflict with your branch changes?**  

**What does "diverge" mean? I rebased then merged but received a message stating: 
"Your branch and 'origin/master' have diverged"?**  
This happens when the history of commits for a local branch do not match up 
with its remote version. Someone else may have committed changes to origin
that your fork does not contain.

**What is the benefit of doing rebase vs recursive merge?**  
[Rebase fast forward slide notes](http://teach.github.com/presentations/git-foundations-diagrams.html#/9)

**What about rebasing changes that have already been pushed?** 

**What's the difference between master and upstream?** 
So, this is dealing with a local repository. "master" is a branch 
on your local repository. When you *push* to upstream, it's taking 
the changes on your local repository and pushing them up to the remote 
upstream version.

**What if accidentally we have these characters `==========`
as a part of a file?**  

###

**Should we pull from origin before rebasing?**  
I generally do, yup. Here's example steps on how that would happen:

    git checkout master
    git pull
    git checkout featureBranch
    git rebase master

**Can we have a temporary change set in the working branch that we can bring back 
before commit? E.g.: Say that I have certain tags on a feature just for my 
benefit and I don't want to commit these tags, but if I make any changes to 
the feature I would want this to be committed. Is there a way to achieve this?**  
You could create a tag and simply not push it up to origin/upstream.

**You mentioned you wouldn't recommend stashing, what do you recommend? 
Without losing any changes, these changes will be used later on in time**  

- I wouldn't recommend stashing more than *once*. So, you stash, 
change branch/create branch/whatever you need to do, and then stash pop.

- I *definitely* recommend stash. Just not keeping multiple "stashes" 
in your stash stack.

**What about creating user accounts to contain projects? 
For instance, https://github.com/rails “Joined on Apr 01, 2008” 
But https://github.com/rails/rails is the actual project. Is a phony 
account to hold projects really a recommended practice?**

In many cases like this, an organization account has been setup. Organizations
differ in some respects to normal user accounts. One being that an organization
can handle multiple owners or admin users. 

You can read more about the differences at
["What's the difference between user and organization accounts?"](https://help.github.com/articles/what-s-the-difference-between-user-and-organization-accounts) 

**Is it possible to have a set of changes (let's call them temporary changes, 
for development purposes) on same branch, that can be reset before committing, 
but leaving the other changes I made?**  
Yup, as long as your other changes were committed, you can reset to get rid 
of the temporary changes (or stash them if you need them), and then push 
the rest up!

**When you are working on multiple features or branches and you need to stash 
more than once, is it better to commit then undo the commit as and when needed?**    
Yup, generally speaking I don't leave anything in stash. My stash lives for a 
few minutes at most. If I need the change, I can commit it.

**Forking private repos on GitHub, is there an additional monetary cost since 
you would want your fork to be private as well?**  
Collaborators may fork any private repository you’ve added them to without 
their own paid plan. Their forks do not count against your private repository quota.

**Does `-S` accept wildcard?**


**The left window is just a prompt, the bottom one is a tail, but what is 
generating the content on the right side? How would I duplicate it?**    
https://github.com/matthewmccullough/scripts

    #!/bin/bash

    while :

    do
      clear
      git --no-pager log -$1 --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s' --abbrev-commit --date=relative
      sleep 2
    done


**How do we undo the last commit? Or push?**

    git reset --hard HEAD~1
    git reset --soft HEAD~1

**What does the `--soft` mean?**  
`--soft` means you should just unstage the changes but don't get rid of them.

**What does the `~1` mean? Is that the last commit? So we could undo the 
last 3 commits by `~3`?**  
Yup! That's right.


**How do you keep forked repos in sync? For example, the original repo's 
master and its branches have change and your forked repo is now out of date.**  
Our article on Fork a Repo contains a section, 
[Pull in upstream changes](https://help.github.com/articles/fork-a-repo#pull-in-upstream-changes), that helps explain it a bit.

**How would the revert work? To undo a push, what would be the whole command?**


**How do I see a list of remotes used by a repo?**  

    git remote -v

BTW, one of my fav tools for browsing history on the console is
[tig](http://blogs.atlassian.com/2013/05/git-tig/).

Here's an example showing 
[GitHub web image diffing](https://github.com/githubstudent/hellogitworld/commit/7c0ffa9d88616972bb84befbec40a2212478149e).

https://github.com/matthewmccullough/dotfiles

https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig#L189-L205

**Can we give a friendly name to a hash, for example, other than HEAD?**  

**There was talk about a 'cheat sheet' - are you going to follow up with that?**

**Can we actually come back and retake the class?**  
Come back and take it for free as often as you like.
We're out to educate. Not make money. Crazy. I know.

**Do you have a log file for this class?**  
[teach.github.com/classnotes/2013-10-30-public-git-foundations-class.html](http://teach.github.com/classnotes/2013-10-30-public-git-foundations-class.html)

**Specifically, I'd like to know when the SAA staff decided to leave this course today.**  
The "attendance data" might be more of a Jessica collection thing. She can get you 
via her training@github.com email, but I'll let her know. 

**Is there a resource where I can get more info on Github Enterprise?**  
You bet. [enterprise.github.com](http://enterprise.github.com) and there's a trial request
right on there and a salesperson sends you some keys to unlock the image.  
Takes about 15 minutes to get it set up the first time after download. Super easy.

**As a recap, what we covered today (we even went beyond this list):**

- Create a git repo, locally (on the web), in a GUI
- Commits
- Clone
- Make changes
- Add, commit
- Clone from the GUIs
- See some of the .git structure
- List branches (cached copy of work in progress from the server)
- Git fetch, pull
- Git init on the web (central place for your team to retrieve)
- Parallel branches of work in progress
- Web editor
- Forks (GitHub)
- Git push
- View paste 

And then:

- Collaborating
- Forks
- Pull Requests
- Continuous Integration
- Resetting
- Branching
- Merging
- Aborting a merge
- Web editing a file
- Web creating a repo
- Web creating a branch

**This was a great course -- just what I needed. I knew next to nothing about 
Git coming in, and now I feel that I have a comfortable enough overview to work from. THANKS!**  
That's perfect. That's our aim!

**Extremely helpful. I was never able to make heads or tails of Git from the online stuff I've seen; I have a much better idea now.**  
Kyle and I are humbled by that. Really makes the day of a teacher.

Thanks everyone! Feel free to send any questions you have to training@github.com