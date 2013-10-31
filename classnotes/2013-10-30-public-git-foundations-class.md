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

teach.github.com/presentations/git-foundations.html#/

How do I make sure I'm in a scratch directory, and not about to mess up something real?

I already have git installed and have used it a couple times

Chip: You can create a new folder and work within that. That's what Matthew is doing.

If you're on a Mac/Linux, you can do "mkdir Scratch" and then "cd Scratch". Then you'll be in a Scratch folder (which is just a little throw away folder). :)

Create a new directory - yes that what I'm asking - Ah 'mkdir'!... got it... thanks

pretty clear to me...

Very good!

only question is I just did a clean install of git on ubuntu, but version is only 1.7.10.4

there is a ppa to get the 1.8 versions

http://ppa.launchpad.net/git-core

: You should be good because it's > 1.7.9 which we need. Likely the package system is a bit behind...

gotcha ok thanks

how do I find the git version in Eclipse egit?

Simon: I'm not really familiar with Eclipse egit unfortunately. Perhaps Matthew knows... I'm trying to find an answer for you.

We had another question about the difference between fetch and pull. I imagine Matthew will go into that a bit more.

awesome-sauce

or linux? :) btw what is the most popular standalone git client for ubuntu? smartgit? cola? any recommendations?

: I'm asking some GitHubbers their recommendations. We don't have a GitHub for Linux at the moment though (I'm a Mac user myself).

There you go Eric!

https://github.com/githubstudent/introcpp

What is the difference between fetch and pull?

Lukas: Matthew will cover that a little bit later.

cheers

I could not clone: git error error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify failed

git config http.sslVerify "false"

let's see here....fetch puts it into the remotes...

is remotes/origin/HEAD is just the shortcut to remotes/origin/master?

yes...but the last few topics sort of threw me.

what did "diff" do?

does diff do anything to local?

gotcha...

informal poll: is anyone here on Windows? :)

can the github client connect to a different remot, e.g. corporate git repo

Mac here

Mark P.

Sadly, I'm on Windows

I'm Windows :-P

Windows

if I delete the introcpp folder from terminal/file structure...

I'm windows. using cygwin though.

does it remove any history or change you've made on your local machine?

agree with MS efforts to create a more developer environment.

You would lose any changes you've made or committed before pushing to the upstream/remote.

is the directory and its' files completely removed from my local?

does git hold anything in the "remotes"

Because of the ".git" folder within the introcpp folder, if you delete the introcpp folder it removes the files and the Git repository from your computer. The remote will still hold anything you've pushed to it though.

Deleting your local folder won't delete the "remote" on GitHub (if that makes sense).

yes...makes perfect sense

Chip M.

What is the URL to install the windows gui again, please? (apparently I can't go back in time beyond about 8:25 - here in the chat)

can you move git (gotten) folders?

Yup! You can move the introcpp folder wherever you want.

Chip: http://windows.github.com/

Right on

Mark P.

Works for me

hip hop the hibby the hibby dibby...

good for me

ooohhh... bitching or braggin?

https://github.com/githubteacher/hellogitworld

Cloning into 'hellogitworld'...

fatal: unable to access 'https://github.com/Scooter88/hellogitworld/': Failed co

nnect to github.com:443; No error

: Can you try running this command?

git config http.sslVerify "false"

Chip M.

failed to clone the repository...

Chip M.

Please check your internet connection.



View paste 

C:\Users\eberryma\Documents\GitHub> git clone https://github.com/Scooter88/hello

gitworld

might be going through our proxy server

Looks like missing .git



git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080

I got it

git config --global http.proxy "www-proxy.company.se:8080"



I can clone now. thanks!

Everyone else good cloning?

Chip M.

I'm trying to clone via the windows gui - asking me to check my internet connection???

I assume 1.8.3.4 on a mac is fine?

yup! Should be good.

View paste 

git push :( "error: The requested URL returned error: 403 Forbidden while accessing https://github.com/githubteacher/hellogitworld.git/info/refs

fatal: HTTP request failed"

Chip: Hmm. Are you behind a proxy or any sort of odd firewall issues?

Matthew: Yup!

Michael

fatal: unable to access 'https://github.com/githubstudent/hellogitworld....;: The requested URL returned error: 403

Chip M.

who knows - corporate network?? is there a way to tell?

Michael and Eric: You need to fork that repository.

 Screen Shot 2013-10-29…

https://github.com/githubteacher/hellogitworld

Click FORK on the far right. That makes a copy for you that you can then push to. It's your own copy.

Chip: Do you have the ability to try via the command line or do you only have the Windows GUI?

Chip M.

I can try - but I'm shaky on all this...

https://github.com/githubteacher/hellogitworld/network

Chip: We'll get you through this! I'm not entirely sure why the Windows app isn't working for you right now.

Michael

Awesome, thanks, it works.

Michael:  Awesome!

what's the command to remove a directory?

on a mac?

Michael

rm -rf

Be careful! But it's rm -rf

thanks

if I go offline...then you'll know I wasn't careful

Chip M.

tried it fromte hcommand line - got error: SSL certificate problem, verify that the CA cert is OK...

I lost you guys on the fork...

Chip: Can you run this command on the command line?

https://github.com/githubteacher/hellogitworld/pull/15

git config http.sslVerify "false"

Chip: Then make sure you update your CA certificates later and remove that. It makes it a bit insecure.

Are you good? Need some help getting your own fork?

Lukas: Masterful . 

Chip M.

What command? I tried 'git clone https://github.com...&#39;

Chip: Run this on your command line:

git config http.sslVerify "false"

^^^ That right there.



So I would have to fork again in order for that to get into my copy so I could fetch jim's change?

Why does JimGitUser7 show a merge icon? Did I do something wrong?

: Great question. I'll let Matthew answer that. (Also, Matthew, had a question for "when should I fork".)

Chip M.

I typed that phrase - got 'error: could not lock config file .git/config: No such file or directory'

Chip: Can you move into the directory of the repository? "cd path/to/your/repository"

: Sorry, not sure I understand! What's up?

Chip M.

I'm not sure where the 'directory of the repository' is - the clone failed - do I have one yet?

On the URL: https://github.com/githubteacher/hellogitworld/pulls it shows a merge icon for GitUser7

What about copying the pull request to the local store in order to run the code or run tests before approving the pull request?

I'm clearly lost...

:)

: Yup! That's just showing that that it's a PR. When you click into it and scroll down, you should see the merge icon.

Do you need to be caught up? Happy to help!

I do...I've issued...git clone http://....

I add a file to the local

I do a git add...

Hal: This is a quick guide to show you how to checkout PRs. 

https://help.github.com/articles/checking-out-pull-requests-locally

I do a git commit -m "word"

then?

git push

Then you can go to your repository on GitHub and issue a pull request.

Hal: You can also check out the branch/fork in total (which is what I do). Matthew will likely show a bit more about that in a bit.

What is your GitHub username?

ville

https://github.com/wallville/hellogitworld

I have that...

Let me know once you "git push". Then you should be able to go to that URL and click to create a PR.

PR is Pull Request

what's the commandline for git push

For everyone following along. 

Simple! git push

Or, potentially: git push origin master

I git rejected

Push my changes to "origin" (which is GitHub) on the master branch.

Ah, ok! You have changes on GitHub that you don't have locally. Try doing "git pull" first to make sure you and GitHub have the same set of changes.

Chip M.

OK, I was able to CD to my "Temp" dir - I think that is the repository that I created. The sslVerify seems to work - no error anyway.

Do we get a copy of this chat too at the end of the course?

Chip: Great! Can you try cloning now?

Lukas: Yup!

Chip M.

But hte clone still doesn't work - slightly different error: SSL Certificate problem: unable to get local issuer certification.

Also why do we fork? If we just clone the project, is it not the same?

Lukas: So, if you merely clone down you may not have permissions to push code back to the repository. You'd have to be given "push" permissions.

Lukas: By forking first, you're saying "I want my own copy that I can push code up to" and you're not stuck waiting for someone else to grant you permission. Make sense?

Chip: Hmm. I might have to have Matthew help out with this one. Not sure why your local CA certificates aren't working correctly.

oh i understank thanks

When I created the Pull Request, I had to EDIT the branches. You told us what branches to set, but how would I know otherwise? Why those branches?

Also is HEAD and master the same?

Lukas: Matthew will cover this in more detail but HEAD acts like a pointer.

So, currently because we're always working on master, yes, it's the same (for now).

: So, we use something we call the GitHub Flow. We create branches off of master for features and then do pull requests from that `feature-branch` to `master`. It depends on the workflow you use where you work.

Okay...thanks

In our example it's been master to master

Okay

That was me...oops!

Totally agree!

I'm a little confused as to the difference between branching and forking

Rob: Forking is like taking a carbon copy of an entire repository.

Within a repository (which could have been forked), you can create a branch to segment your changes into their own collection. So you Fork a Repository but you create a Branch *within* your Repository.

Anyone else hearing that weird audio issue with Matthew?

Suggestion for future classes: commit (to the githelloworld project) the scripts used in the class, such as generaterandomfiles.

so git internals knows how to recreate the files, based upon the branches/objects folders?

Thomas: It's open source! https://github.com/matthewmccullough/scripts

how do you maintain multiple working copies or checkouts with only one repository?

Simon: So, for Git, a checkout only...

For a checkout, you are only changing the pointer of your repository to display a particular branch/tag. Matthew is gonna show you how you can access any branch while in any other branch.

I want to see multiple projects in my IDE :)

...but are there any browser-based IDE's that just integrate as directly as that edit button?

https://www.pythonanywhere.com/ ?

https://c9.io/

tom.preston-werner.com/2010/08/23/readme-driven-development.html

Thanks, !

Im actually a little lost on this read me advice. There's only one readme file, right? So you mean pull request that immediately and then keep updating it as you develop?

The idea of README driven development is less about building a single README file and more about describing the changes you intend to make in text first as it forces you to describe what you're trying to do.

but for a large project, that readme could become a tome or maybe Im taking it too literally

Totally! On github.com's repository, we have a pretty small README.md but then have a bigger docs/ folder that holds information.

ah gotcha

The idea of README Driven Development is sort of saying "write your documentation to make sure you understand it and help other people understand it". That writing may not *actually* end up in the README or docs folder. 

got it. thanks for elaborating

No problem! Happy to answer questions after too if you come up with more.

what is fast foward?

Fast forward means that we can "rewind" back to where the remote is and then replay our changes on top of it cleanly.

It means you can "fast forward" without conflict or trouble to where the remote is. Matthew I'm sure will elaborate. 

what about undoing commits and pushes?

yeyy! brilliant! :)

`git stash` and `git stash pop` are probably two of my favorite and most used commands. 

Friends don't let friends double stash.


Thanks everyone! Any other questions before we wrap up today? Tomorrow: we go to the !

does git reset --hard reverts comitted changes or not comitted?


in the way of feedback: 50-60% over my head. I know it would bore most folks to death, but I wouldnt mind seeing us go through *simulating* working on an open source project.

Lukas: it only reverts uncommitted changes and completely removes the changes you made.


like step by step: A pulls, B branches, C commits, A sends pull request, C merges, etc., etc.


something like that :)

: That's a great input. I can potentially do that, but can you tell me if a video that my colleague recently recorded also hits the spot?


A question for tomorrow - how do I 'git diff' 2 different projects?

It's pretty short and I'm super keen to get feedback on if it is useful for you AND others...

URL forthcomign...


Thomas: Remotes will help with that I believe which we're covering tomorrow. 

: That one is a webcast that we did about how to contribute to open source

https://www.youtube.com/githubguides is the main entry point, but I wanted to link you to that specific video.

Could we go through git reset a little more tomorrow?

Lukas: We sure will!

Lukas Maciulis: Definitely. It's on the game plan just like Kyle said!

Today was just a taste!

I love that analogy.

;)

So as a recap, what did we cover today (we even went beyond this list):

```
Create a git repo, locally (on the web), in a GUI
Commits
Clone
Make changes
Add, commit
Clone from the GUIs
See some of the .git structure
List branches (cached copy of work in progress from the server)
Git fetch, pull
Git init on the web (central place for your team to retrieve)
Parallel branches of work in progress
Web editor
Forks (GitHub)
Git push
View paste 
And then:
Collaborating
Forks
Pull Requests
Continuous Integration
Resetting
Branching
Merging
Aborting a merge
Web editing a file
Web creating a repo
Web creating a branch
```

Alright y'all. We'll see you at the same time, same URLs tomorrow.

Thanks for asking the questions and thanks  for an awesome set of inputs, help and clarifications.

It really helps to have someone like you that is doing core dev work at GitHub on the call for all these questions.

 No problem! See ya'll tomorrow.

Used 'git clone git://github.com/<username>/hellogitworld.git&#39; and it finally worked... from the command line - still can't figure it under the windows gui


will the transcript for yesterday’s and today’s classes be available for download? Lots of good links and explanations here.

Yup! At GitHub, I work on a team that has people in the UK, San Francisco, South Dakota, South Carolina... the folks in Berlin are always up earliest. I'm on the East Coast.


@: Yesterday I asked for recommendations for graphical git clients for Ubuntu - I think you said you would ask githubbers? Wondering if you got any responses?

: The only response I got back was gitg and Giggle. Sorry if that's not too helpful!

na thats cool - just asking around. tx

Had a question if github can be hosted on private company server: Gitlab? Github Enterprise?

Anyone else finding the audio to be somewhat quiet?


Madhvi: Yup! GitHub offers GitHub Enterprise https://enterprise.github.com/

I like it!


what is the url for hellogitworld?

https://github.com/githubteacher/hellogitworld/

https://github.com/githubteacher/hellogitworld

I know we covered this briefly yesterday, when working on multiple branches, which state should the changes be in before you switch branches? For example if you don't want the changes to follow you?

: If you don't want them to follow you, you can do "git reset --hard HEAD" which says "discard the changes I made and make it look like the last commit I've made".

You may also remember `git stash` which will "stash" the changes which you can do `git stash pop` later.

but it wont be comitted right?

: Correct. Reset doesn't commit it just sort of "rewinds" back to HEAD (the last commit). Stash merely puts it into a stash area.

with git stash and git stash pop, its very easy to over-write the stash, so i thought it wouldn't be good?

so we can collapse history make a single commit

Stash acts like a stack. So each time you stash you'll add to the stack. `git stash pop` takes the last thing off the stack.

then how do we get the data back after doing git reset --hard HEAD

Kir

oh i see that makes sense

thanks Kyle

: Normally, you wouldn't use `git reset --hard` if you intend to use those changes later.

How do you "clean up" accidentally committing something? Like a private or sensitive file.

One thing that happens regularly is you start working on BranchA but then realize you need to do that on BranchB. You'd do:

git stash

git checkout BranchB

git stash pop

Simon: So, I think I'll let Matthew cover that in a bit since there will be a mistakes section. There are two situations to worry about: just doing it locally and trying to fix it after *pushing* up to your remote. The second one is a bit more complicated. 

Great thanks Kyle, when you have a stash list of say 5, how do you call the third stack?

: Let me make a Gist for you real quick.

what does the --soft mean?

Thanks Kyle, I face this issue a lot ...

can we go back to the amended state with having to amend again?

*without

: --soft means you should just unstage the changes but don't get rid of them.

David

so is the amend changing the actual history, or just a view of it? can I always go back and look at the original history, mistakes and all?



Can I use git reflog on the server-side... To check if remotes are in sync for example.

thanks

so the difference between git log and git reflog is a more granular view of the history?



yeah. but I'm thinking within a script that runs on the server/remotes.

Does the reflog also store stash history?



yeah. I'm the sysadmin. :)

: Here is a quick example of how you could pick things out of stash "out of order". I don't particularly recommend it but sometimes this can help!

View paste 

```
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

```

oh i understand

brilliant thanks

why you call it Merge Recursive ?

what is recursive about it?

maybe a good time to ask a related (?) question I was wondering this morning: If you OWN a project on GitHub, do you still fork it to your own personal account, create a branch, push to your fork and then send a pull-request *to yourself basically* to merge, or do you just work in master locally?

Bill R.

+ why you call it Merge Recursive ?

sorry to step on Lukas' question there - but to extend my question, sounds like what you want is just Merge Fast Forward?

: People do this multiple ways. I don't tend to have my own Fork unless I don't have "contributor" rights to the original repository.

Some people feel it's useful to have their own fork though and only send code changes down through PRs.

ok thanks - and note I think I might have distracted folks from Lukas' question there...

: You are right though. If there aren't any changes on `master` when you merge in it will do a fast forward merge.

no worries Eric

Bill R.

if only we could've branched Eric's question :]

lol

Bill: 

Claudette

git log --format=raw -1

Bill M.

will you be showing a rebase conflict example?

so featuremerge... branch now has changes that were made in master?

Isn't there a chance there could be a conflict with the rebase? If the changes that happened to master conflict with your branch changes?

I'll just admit that I'm completely lost, but don't want to derail the group's momentum :)

What does "diverge" mean? I rebased then merged but received a message stating: "Your branch and 'origin/master' have diverged"?

what is the benefit of doing rebase vs recursive merge?

(Oops, sorry, my internet got wonky.)

could you quickly just compare merge recursive vs rebase. I think I missed something when you covered merge recursive.

Stephan W.

what about rebasing changes that have already been pushed?

whats the difference between master and upstream?

: Sometimes it's helpful to listen, be confused, and then when you have the problem in real life come back to the class materials.

teach.github.com/presentations/git-foundations-diagrams.html#/9

Yep - yeah I will totally revisit the excellent materials and try other tutorials, etc. Just wanted to share that I'm lost in case anyone else is afraid to admit to the same :)

: So, this is dealing with a local repository. `master` is a branch on your local repository. When you *push* to upstream, it's taking the changes on your local repository and pushing them up to the remote upstream version.

: Yeah, rebase can get a little tricky for sure.

Thanks for that. I did get the rebase bit...mainly my question was regarding the graph on merge recursive.

ah ok

ok i understand

thanks

what if accidentally we have these characters as a part of a file, i mean ' =========='

just curious

Git won't choke though so you'll want to double check them.

but Git wont be confused?

Bill M.

so you'll get one conflict at a time as it replays the history?

perfect. thanks for the example

I have three more generic git questions (not about this last section): best to ask now during break or later?

should we pull from origin before rebasing?

: Go ahead and drop them in and I can answer during the break. 

ok

Pallavi: I generally do, yup.

I have quite a tricky question, not related to covered material.

View paste 

Can we have temporary change set in the working branch that we can bring back before commit. e.g.: 

say that I have a certain tags on a feature just for my benefit and I don't want to commit these tags, but if I make any changes to the feature I would want this to be committed is there a way to achieve this?

Let me know if this not clear

Pallavi: Yeah, what Matthew is saying:

git checkout master

git pull

git checkout featureBranch

git rebase master

great. thnx

Kyle - one last question on stashing, you know you mentioned you wouldn't recommend stashing, what you you recommend? without loosing any changes... these changes will be used later on in time

Lukas: If I understand correctly, you could create a tag and simply not push it up to origin/upstream.

: I wouldn't recommend stashing more than *once*. So, you stash, change branch/create branch/whatever you need to do, and then stash pop.

I *definitely* recommend stash... just not keeping multiple "stashes" in your stash stack.

Tongue twister. 

View paste 

More generic questions for Kyle during break, or for Matthew to warm up after break, or even just sometime before class ends :)

1) Can you recommend a blog post or video or checklist of best practices for open sourcing something on GitHub?  Beyond just the readme and license.  Pages?  “Fork me on GitHub” buttons?  Cultivating a community?  Managing pull requests?  Or alternatively, is there a “best practices” project out there on github you find yourself frequently pointing to as “the right way to do it”?

1b) GitHub is free for Open Source.  WHen I Open Source my pet project and completely foobar everything on my fist merge :), any chance you provide consulting services to open source codebase managers?   Or where do I turn?  :)

2) What about creating user accounts to contain projects?   For instance, https://github.com/rails “Joined on Apr 01, 2008” But https://github.com/rails/rails is the actual project.  Is a phony account to hold projects really a recommended practice?

3) @Kyle: could you elaborate on comment you made yesterday something along the lines of “the first thing I do, even before I’ve done any work, is send a Pull Request - just to get a conversation started.”  

...

oh didnt realize i got cut off. The end of 3) there is: Why? Wouldn’t this annoy whomever is maintaining a repo?

: I mean if its possible to have set of changes (lets call them temporary changes, for development purposes) on same branch, that can be reset before committing, but leaving the other changes I made. Sorry its kind a complicated, but I had this issue few days ago

Lukas: Yup, as long as your other changes were committed, you can reset to get rid of the temporary changes (or stash them if you need them), and then push the rest up!

Thanks Kyle, when you are working on multiple features/ branches and you need to stash more than once, is it better to commit then undo- the commit as and when needed

Trace N.

: Yup, generally speaking I don't leave anything in stash. My stash lives for a few minutes at most. If I need the change, I can commit it.

Scott Chacon is my hero.

ok bill :-)

forking private repos on github, is there an additional monetary cost since you would want your fork to be private as well?

great answers - appreciate the discussion!

Juan: Collaborators may fork any private repository you’ve added them to without their own paid plan. Their forks do not count against your private repository quota.

cool thnx

No problem! 

does -S accept wildcard?

David

just an aside: The left window is just a prompt, the bottom one is a tail, but what is generating the content on the right side? ie: how would I duplicate it?

https://github.com/matthewmccullough/scripts

```
#!/bin/bash

while :

do

    clear

    git --no-pager log -$1 --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s' --abbrev-commit --date=relative

    sleep 2

done
```

great. thanks!

How do we undo the last commit? or push?

so why does it say Closed? :)

its on master branch

ah right ok

if it was on any other one it wouldn't do anything, so you would need to create a pull request - i think!

I guess what yo udid was basically same as using the editor to directly modify a file?

git reset --hard HEAD~1

git reset --soft HEAD~1

what does the ~1 mean, is that the last commit? So we could undo the last 3 commits by ~3?

will cover keeping forked repos insync. For example the original repo's master and it branches change and your forked repo is now out of date.

: Yup! That's right.

Juan: Here is a link to help explain that a bit. https://help.github.com/articles/fork-a-repo#pu...

https://github.com/githubstudent/hellogitworld/commit/7c0ffa9d88616972bb84befbec40a2212478149e

How would the revert work? so to undo a push, what would be the whole command?

that was great Matt - thanks

git remote -v

btw, one of my fav tools for browsing history on the console: http://blogs.atlassian.com/2013/05/git-tig/

https://github.com/matthewmccullough/dotfiles

View paste 

https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig#L189-L205

is there any good Git GUI's for Intelli J?

kool

thanks

Can we give a friendly name to a hash i.e. other than HEAD

Or tags 

Ok thanks

git svn clone https://github.com/matthewmccullough/dotfiles/trunk

svn co https://github.com/matthewmccullough/dotfiles/t...

Great class, thank you!

Great job, guys!

thanks Matthew and Kyle, very good class

thanks guys! this was a great class :)

Thank you!! That was a wonderful class!!!

There was talk about a 'cheat sheet' - are you going to follow up with that?

Awesome thanks

Thanks so much. Great class.

waiting for the email...thanks for the class...

hey...

kd......

Yup?

daigle...

Can we actually come back and retake class or do you just mean...

do you have a log file for this class?

: Come back and take it for free as often as you like

: Matthew will send that along later today!

We're out to educate. Not make money. Crazy. I know.

specifically, I'd like to know when the SAA staff decided to leave this course today.

Extremely helpful. I was never able to make heads or tails of git from the online stuff I've seen; I have a much better idea now.

ditto what Mark said.

The "attendance data" might be more of a Jessica collection thing she can get you via her Training@github.com email, but I'll let her know. And transcript for chat room and my console history, definitely. Sent to everyone

Mark Peel and Wall: Kyle and I are humbled by that. Really makes the day of a teacher.

This was a great course -- just what I needed. I knew next to nothing about GIT coming in, and now I feel that I have a comfortable enough overview to work from. THANKS!

David Baker: That's perfect. That's our aim!

I am interested in Github Enterprise. Is there a resource where I can get more info?

You bet. http://enterprise.github.com and there's a trial request

right on there and a salesperson sends you some keys to unlock the image.

Great thanks.

Takes about 15m to get it set up the first time after download. Super easy.

Is this widely used as an option or something new

Great! Thanks. I liked the ease of use and functions on GitHub.

Excellent!

I'm going to head out now. Thanks everyone! Feel free to send any questions you have to training@github.com 


