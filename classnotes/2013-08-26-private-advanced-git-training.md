---
layout: bare
title: Private Advanced Git Training
description: Private Advanced Git Training Class Notes
tags: [notes]
path: classnotes/2013-08-26-private-advanced-git-training.md
eventdate: 2013-08-26
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
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

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline

* Review of the Basics
  * Adding and committing
  * Pushing, Pulling, Fetching
  * Remote branch
  * Diffmania (aka, What even is the staging area?)
* Blobs
* GitHub Enterprise
* Refspecs
* Tagging
  * Reference, annotated, and signed
  * Tagging and rebasing
* Branching Strategies
  * Local feature
  * Merge to master and "ship"
  * Branch for release (a few times a year)
  * Merge release branch when it ships
  * Tag released commit
* Building Custom Commands via Aliases
* Undoing and Re-doing Almost Anything (revert, reset, reflog)
* Modifying Existing History (interactive rebase)
* Minimizing Repetitive Conflict Resolution (rerere)
* Branch Pull Options (rebase or not rebase?)
* Reusing Small Pieces of Code (cherry picking)
* Avoid merge commits
* GitHub Features
  * Issues
  * Pull Requests
  * Service Hooks
  * Forking
  * Diffing/Comparing
* Log History Searches
* Commit Data Structure Internals
* Cleaning things up
  * --prune
  * clean
  * Brute force


## Command History

    git --version
    git init gopro
    tree .git | less
    pwd
    cd gopro
    git stauts
    git commit -m "Initial commit"
    git diff -- raven.txt
    git diff --stat
    git diff -- raven.*
    git diff
    git diff HEAD
    git diff HEAD --word-diff
    git commit -m "Eagerly wished"
    git remote add origin https://github.com/githubteacher/poetry.git
    git push -u origin master
    git log --decorate
    git log --decorate --all
    git diff origin/master
    git log --decorate --all --graph
    git merge origin/master
    git commit -m "Lost Lenore"
    ls .git/hooks
    mkdir hooks
    rmdir hooks
    git tag LENORE
    git commit -m "Radiant"
    git show LENORE
    git push --tags
    git show refs/tags/LENORE
    git help gitrevisions
    git -a WISHED cd7b882
    git tag -a WISHED cd7b882
    git show WISHED
    git push origin WISHED
    git help tag
    git push --delete origin LENORE
    git tag -d LENORE
    open .git
    git help push
    git config --list
    git config --list --local
    vi .git/config
    git config --list --global
    vi ~/.gitconfig
    git config --global alias.lol "log --graph --decorate --oneline --all"
    git config --global alias.sync "\!git pull && git push"
    git sync
    git lol -2
    git lol --stat
    git branch feature
    tree .git/refs
    cat .git/refs/heads/feature
    git commit -m "Namless"
    git reset --hard 4889
    git reset --hard HEAD
    git reset --hard ae810eb
    git reset --soft 73b3d36
    git diff --staged
    git stash
    git rebase master
    git stash pop
    git commit -m "Title"
    git checkout feature
    git commit -m "Silky sad"
    git commit -m "Scared"
    mkdir files
    cd files
    generaterandomchanges 10 random txt
    git loglive -12
    git commit -m 'Weak'
    git rebase -i HEAD~13
    git loglive
    git show a9f1014 --stat
    git rebase -i HEAD~4
    ls files
    git reflog
    git merge feature
    git branch -d feature
    git revert 263c206
    git blame raven.txt
    cat README.md
    git revert HEAD
    git reset --hard HEAD^^
    cat raven.txt
    git config rerere.enabled
    git help config
    git config --global rerere.enabled true
    git branch feature2
    git commit -m "Fantastic terrors"
    git checkout feature2
    git commit -m "Still beating"
    git checkout master
    git commit
    git reset --hard 77ad7
    git merge feature2
    git add raven.txt
    git commit
    ll .git
    export PS1="$ "
    tr.git
    cd scratch/gopro
    cd ..
    git clone
    git clone https://github.com/githubteacher/poetry
    cd poetry
    vi ozymandias.txt
    git commit -m "Ozymandias"
    git loglive -6
    git config branch.master.rebase true
    git commit -m "Curious"
    git loglive -15
    git config --global branch.autosetuprebase always
    git config --unset --global push.default
    git config --global push.default simple
    git cherry-pick 2f092c1
    git cherry-pick -x f53469d
    git show HEAD
    git commit --amend
    git push
    ls
    git checkout -b tlberlund
    git push -u origin tlberglund
    ll
    vi raven.txt
    git add .
    git commit -m "Late visitor"
    git pull
    git branch
    git help branch
    git branch -m tlberlund tlberglund
    git push -u origin tlberglund
    git loglive -10
    git loglive -8
    git lol
    git log
    git log -S Lenore
    git help log
    git log --patch -S Lenore
    git log -1
    git log -1 --format=raw
    git ls-tree 6796d57183c0d6456274e75734ca97b88a9e2844
    git cat-file -p ab311ef4c81a0cf62f54a4b96cbec7b2f2323de1
    git fetch --prune
    ll ~ > dump.log
    ll /etc > perf.log
    git status
    git clean -f
    git clean -fd
    git clean -fdx
    open .
    git branch -a
    git fetch
    git gc
    git show 72fc02e0c6aa77f4801100a1bf5624446656d0c6
    git fsck


## Chat History
* `brntbeer`: Good morning! 
* `john chen`: how about "diff-ing" options?
* `john chen`: such as diff between 2 tags
* `john chen`: diff before files are "add"ed.
* `brntbeer`: definitely! I can't imagine Tim could get through this without showing good diffs, i'll make sure he shows those as well
* `Michael Ramirez`: One thing also is maybe to go over cool git Aliases
* `Jack`: git --version
* `brntbeer`: Michael Ramirez: if we dont get through that today, we do have a really nice set to share from a coworkers gitconfig that includes a lot of nice aliases!
* `brntbeer`: so, if we dont talk about it, definitely in the material.
* `Michael Ramirez`: cool. thx
* `brntbeer`: also, if anyone wants to turn off the sound, it's in the upper righthand corner of the web
* `brntbeer`: Pro Tip™: If you make a change, add the file to the staging area, and then EDIT the file again, it'll appear in both the working directory and staging area.
* `brntbeer`: the reason for this is because you're adding that diff (or patch) to the staging area, so when you re-edit, there's a difference between what's in the staging area and working directory
* `brntbeer`: this becomes more obvious as we play with this more and more
* `Michael Ramirez`: what was the word diff command again?
* `brntbeer`: git diff --word-diff
* `brntbeer`: and git diff --color-words
* `brntbeer`: also, reminder for people to turn off their sound so things aren't as distracting for other students =)
* `Anh`: what is HEAD ?
* `brntbeer`: HEAD is just a special file in some of git's internals (it's really easy to find. it's in your current directory under .git/HEAD). it points to the most recent commit on your branch
* `brntbeer`: so in this case, the previous commit we just made
* `Boone`: any reason to use another label besides "origin"?
* `brntbeer`: Well, in some situations of class, we go through a certain forking model that would promote the idea of multiple remotes. It's just URL end points that we can send data too
* `brntbeer`: if this was for deployment. we may have a remote called production and one called staging.
* `john chen`: what is the difference between "remote branch" and "Upstream branch"?
* `brntbeer`: so, when we refer to remote branches here, we mean a "waiting area"
* `Anh`: what is the difference between fetch and pull
* `brntbeer`: it's a special "read only" namespace in our repo. things like origin/master or origin/feature1 origin/feature2. they're all just local branches with a special namespace
* `brntbeer`: where as upstream is the branch that physically lives on github.com. the remote branch works as a bridge between a LOCAL branch and UPSTREAM branch
* `Josh Sun`: how to remove remote origin. I accidentally added another's remote origin.
* `Josh Sun`: I want to add remote origin of the repository I created.
* `brntbeer`: so, the difference between pull and fetch is that updating of the remote tracking branch.
* `brntbeer`: fetch JUST updates it
* `brntbeer`: pull does a fetch and merge. so 1) Update that remote tracking branch, and 2) merge that remote tracking branch into the local branch it's a bridge for
* `brntbeer`: as tim is kind of showing now
* `brntbeer`: Josh Sun: we would need an end point on github.com for that to go to. did you also create a repository on github.con?
* `Josh Sun`: yes
* `Josh Sun`: I did.
* `Josh Sun`: I linked Tim's first, but I want to add remote origin of mine instead
* `brntbeer`: ah cool. so on that github repository page, it probably has some instructions for you to add a remote for an existing repository
* `brntbeer`: ah, so you can do this: git remote set-url origin <YOUR_REPOSITORY_URL>
* `brntbeer`: where YOUR_REPOSITORY_URL is...well you're repository url on github.com =)
* `brntbeer`: instead of Tim's
* `Josh Sun`: great! thx a lot.
* `brntbeer`: np!
* `apao`: what is the command tim uses in his script to get the stuff displayed in the right window?
* `brntbeer`: so he has a script running called "loglive"
* `brntbeer`: https://gist.github.com/tlberglund/3714970
* `Ryan Lim`: when we do clone of the repo, the local master branch is set to track the origin/master by default?
* `Jack`: To clone the repo, I did: git clone https://github.com/githubteacher/poetry.git
* `brntbeer`: primarily, we're just looking at something equivalent to "git log --graph --all --decorate --oneline "should do the trick
* `brntbeer`: Ryan Lim: yep. we're not looking to clone Tim's repo just yet, because we won't have a place to push anything to yet (for permissions). but it's certainly ok to pull just for practice!
* `brntbeer`: Jack: yep, that should work on the clone. it did dint it?
* `Josh Sun`: I got an error:
* `Josh Sun`: why is taht
* `Jack`: Sure, it worked fine.  My comment was just FYI for everyone :>)
* `Josh Sun`: what is the error about?
* `john chen`: so on our repo, I see:
* `john chen`: this means that we have "branches" on origin?
* `brntbeer`: Josh Sun: can you type "git config user.email" for me? 
* `brntbeer`: john chen: what that means is that we have 3 remote tracking branches that are these bridges to a local branch to an upstream branch
* `john chen`: can you have more than 1 origin?  like is it possible to have a remotes/origin1/master?
* `brntbeer`: Josh Sun: basically GitHub is wondering if you are who you say you are
* `john chen`: and in that case, when I do git pull, which origin (or origin1) do I come from?
* `john chen`: do I pull from?
* `brntbeer`: john chen: yeah, the name is just a helper for your readability
* `Josh Sun`: the email from git config is exactly the same one I used to log onto github.com
* `brntbeer`: john chen: by default, "git pull" looks to pull from "origin" (just based on convention). if you want to pull form a different location, you'd just say "git pull origin1"
* `brntbeer`: Josh Sun: it looks like you initialized the repo with a readme. is there different things locally on your laptop than just the README?
* `Josh Sun`: yes. I inited a README.
* `john chen`: got it.  thanks brntbeer
* `Josh Sun`: just readme
* `Josh Sun`: one file raven.txt (similar to Tim's) not checked-in/synced with remote origin yet
* `brntbeer`: ah, so you created the repository on github.com, and then you said "git clone https://github.com/ysun-gpfw/poetry.git" right? then inside of the repository you created a file, commited it, and then attempted to push and it failed?
* `brntbeer`: just wanting to make sure we did things in that order.
* `Josh Sun`: when I created git hub repository, I created a readme as it has this option
* `brntbeer`: yep. and you then cloned it locally. just making sure you didn't create the repo on github.com and then attempted to create it locally at the same time. =)
* `Josh Sun`: I did not create other files in the github.com repository
* `Josh Sun`: how to resolve this then?
* `brntbeer`: also, one last thing: "git config credential.helper"
* `Josh Sun`: could I just delete readme file in github.com
* `brntbeer`: nah, the problem is with authentication. it thinks you're another user
* `brntbeer`: is the same error i get, because i dont have access to push to your repository
* `Josh Sun`: yes, I guess the same
* `brntbeer`: and what does a "git config credential.helper" return?
* `brntbeer`: your credentials may be saved as something other than your github username and login
* `brntbeer`: er user.name and user.email that you'd expect
* `Josh Sun`: nothing to be returned
* `brntbeer`: ok good
* `brntbeer`: and what is git config user.email set to right now? i know this sounds funny but it may be one of your two emails that we need to try here
* `Josh Sun`: exactly the same email ysun@gopro.com
* `brntbeer`: let me hop over to your laptop for a quick second
* `Boone`: if we remove the binary blobs from the repository and add it over to S3, why does the entire history have to change along with the hashes.  Wouldn't this just be another change that could be pulled?
* `brntbeer`: Boone: only because the history of that file still exists. we'd have to purge it from history
* `brntbeer`: because without removing the history of that file, you could always jump back to a point in time where that file exists.
* `Boone`: following that logic, the binary would then have to be in the history, and therefore not solving the problem ...ok
* `Michael Posadas`: You don't necessarily need it in the history, but rather just a reference of which commit is associated with a binary on S3
* `brntbeer`: Boone: ya, i was just thinking if you had checked in the binary to the repository, sorry
* `Anh`: can you repeat the differences of tag and annotate tag again?
* `brntbeer`: annotated tags generally have special messages attached to them (maybe what's changed between this tag and the last one)
* `Rajat Gujral`: when i try to commit or create a tag a vi editor comes up. Now when i add details it still says the commit message is empty
* `brntbeer`: Rajat Gujral: that's because you're not including a commit message with -m 
* `brntbeer`: on tags or commits
* `brntbeer`: if you exclude that, your core editor will pop up, to which it is set to vim. you could write something, save and quit, and it'll write that message
* `john chen`: so if I want to diff between 2 tags, I can just do:
* `john chen`: git diff TAG1..TAG2?
* `brntbeer`: yep
* `john chen`: since they are just correlate to the hash anyways, right?
* `john chen`: i c.
* `brntbeer`: so, i typically use "..." vs ".."
* `brntbeer`: the way i read the 3 dots is "what is on TAG2 that isn't on TAG1?"
* `brntbeer`: vs the 2 dots: "show me the full difference between these two things"
* `john chen`: can I do diff of tags on github.com?
* `john chen`: so, can i see difference between 2 tags from the website?
* `john chen`: sorry, didn't quite fully understand the difference between ... vs. ..
* `brntbeer`: https://github.com/brntbeer/poetry/compare/2.0...1.1
* `brntbeer`: so, this compare view (which we'll show later for sure)
* `john chen`: ok.
* `brntbeer`: says "compare 2.0 tag to 1.1"
* `brntbeer`: "what does 1.1 have that 2.0 doesnt have
* `brntbeer`: compare the work that has been done on the second tag that hasnt been done on the first tag
* `brntbeer`: and if we change that url to the other way around: https://github.com/brntbeer/poetry/compare/1.1...2.0
* `john chen`: ah, i c.
* `brntbeer`: we can see what work has been done under the tag of 2.0 that hasn't been under 1.1
* `john chen`: ah, cool. you've gotta show us how to do that on the website.
* `brntbeer`: it took me some time to remember the direction of the compare syntax, and to be honest i had to look it up
* `Michael Posadas`: My biggest issue is not having an intuitive front-end for git.  Being able to utilize github.com for many things is useful.  But if we can also cover some of the other front-ends (other than the ugly gitk)...
* `brntbeer`: ah, so you want to go over how to do more things on github.com or are you speaking to GitHub for Mac and GitHub for Windows ?
* `brntbeer`: both?
* `Chandra Javvadi`: Is there any way we can put valid bug numbers in the commits?
* `brntbeer`: yep! so one thing that i'll make tim show in the afternoon is commits referencing issues through github. there's also ways to make that work with something like pivotal bug tracker as well
* `Chandra Javvadi`: That way it does not allow anyone to commit until you have a valid issue to make the change in the code
* `brntbeer`: oh
* `brntbeer`: oh validate that a commit has an issue in it, yeah a bit! 
* `Chandra Javvadi`: ?
* `Ojas Gandhi`: I used git stash a lot and some time would like to diff the changes with commit branch before I apply my changes to avoid conflicts. How do I go about this
* `brntbeer`: Ojas Gandhi: you could do "git stash list"
* `brntbeer`: to see which stash you want to look at
* `brntbeer`: then git stash show stash@{0} -p 
* `brntbeer`: without the -p we wont see the patch
* `brntbeer`: --patch works as well
* `Ojas Gandhi`: thanks but for diff which command should i use?
* `brntbeer`: oh
* `brntbeer`: sorry
* `brntbeer`: git diff stash@{0}
* `Ojas Gandhi`: so this will diff my stash and staging or history?
* `brntbeer`: staging
* `brntbeer`: actually. sorry. i mispoke
* `brntbeer`: if you just say "git diff stashed@{0}"
* `brntbeer`: after having something changed, either in the working directory or staging area, saying "git diff stash@{0}" will compare the change that is in the stash to what is on your current branch
* `brntbeer`: i don't really like the phrasing of "diff stash and staging" stashing should be something that's really short, lasting maybe 15 minutes as most
* `brntbeer`: so, just seeing what is in the stash (with a git show stash@{0} -p) is kind of the proper way to think about stashing and viewing changes before re-applying them
* `apao`: In my attempt at the rebase, I had a conflict between the feature branch and master.  What would be the order of commands to resolve this?
* `brntbeer`: well, that rebase is going to raise that merge conflict in just the same way the merge will later. you jiust have to resolve the conflict like you would regularly
* `john chen`: so that ae810eb checkin is on the "feature" branch.
* `john chen`: the latest checkin is 4889 on the master branch.
* `john chen`: and we are "merging" ae81 into master branch, right?
* `john chen`: that's why when we rebased it got a new hash
* `brntbeer`: ah, yeah so the rebase was in a sense of "lets get this branch ready for a good easy merge"
* `brntbeer`: and similarly "lets get this branch ready for a merge without a merge commit"
* `brntbeer`: rebasing is something we do before a merge
* `brntbeer`: to ensure we dont have merge commits
* `brntbeer`: so, because we took ae810 and applied it ONTOP of 4889 instead of ontop of 73b3d, we got a new hash
* `brntbeer`: because one of the parts of calculating that hash is the parent
* `john chen`: so the new rebased change c713 is not yet pushed, so the origin/master will not have anything until you push.
* `brntbeer`: and we got a new parent
* `brntbeer`: right
* `brntbeer`: exactly
* `john chen`: ok. i c.  new parent...
* `brntbeer`: i can't easily see the screen, hold on, think tim is explaining things
* `john chen`: also, Tim is right now on the "feature" branch, right?
* `brntbeer`: yep. wherever HEAD is
* `john chen`: so the history on the right hand side, is the "feature" branch log
* `brntbeer`: its the entire log, due to his alias having a "--all" on it
* `brntbeer`: john chen: i'll make him kind of go back over what happened with the rebasing and restructuring of the graph, it took me a really long time to really understand this
* `Anh`: What are some of scenario that can create 'merge commit' situation?
* `brntbeer`: in a real scenario: you're on your feature branch, and you keep typing "git pull" and master keeps being updated by other people
* `brntbeer`: so, since you branched off for your feature, master is continue to get updated
* `brntbeer`: so when you try to merge feature into master, they'll have divergent histories
* `brntbeer`: so they need a special commit that brings those timelines together
* `Anh`: is branching different from forking?
* `john chen`: can we git commit --amend something that is already pushed to remote?
* `john chen`: like something that is already pushed to github?
* `brntbeer`: john chen: that'd do the same thing as rebase. because the hash of the commit is recalculated when you add files or a message or anything to it
* `brntbeer`: so, best not to ammend after a push
* `brntbeer`: Anh: definitely, we'll be doing more github stuff in a bit!
* `brntbeer`: forking is the idea of taking a book (repository) off the shelf in a library (GitHub) and taking it over to the copy machine and copying all of the history and contents to your own version
* `brntbeer`: branching is the idea of trying some experimental thing off to the side of that book
* `brntbeer`: and if it doesnt work out, it doesnt have to be in the new published copy of the book for everyone else to see in the wild
* `brntbeer`: https://github.com/githubteacher/poetry
* `brntbeer`: for where we're going to with github.com
* `apratim.mukherjee@aricent.com`: You've reached the maximum number of login attempts. Please try again later. If you feel that you're receiving this in error, contact us.
* `apratim.mukherjee@aricent.com`: I am getting this an error
* `apratim.mukherjee@aricent.com`: You've reached the maximum number of login attempts. Please try again later. If you feel that you're receiving this in error, contact us.
* `Chandra Javvadi`: I think you are logged in a different browser
* `Chandra Javvadi`: I had the same issue on IE and I checked on firefox and its working
* `apratim.mukherjee@aricent.com`: amukherjee-ari
* `Vishwanatha Bhat`: Vishwanatha Bhat
* `apratim.mukherjee@aricent.com`: I got this error: amukherjee-ari
* `Vishwanatha Bhat`: vbhat@gopro.com - I got this error
* `Anh`: aduong@gopro.com
* `brntbeer`: Chandra Javvadi: yeah, it's IP based. which is hilarious
* `brntbeer`: Anh: can you try again?
* `brntbeer`: Vishwanatha Bhat: can you try again?
* `brntbeer`: anh Vishwanatha Bhat did it work?
* `Anh`: good for me
* `brntbeer`: good
* `brntbeer`: apratim.mukherjee@aricent.com: try to sign in again, let me know if it works
* `brntbeer`: again the url to fork is https://github.com/githubteacher/poetry
* `apratim.mukherjee@aricent.com`: done thanks works for me
* `brntbeer`: and then click the "fork" button in the upper right hand corner
* `brntbeer`: awesome!
* `apratim.mukherjee@aricent.com`: can I use reset to goto any commit in the history of my master branch and create a new branch from there for e.g. commit-21-Dec->Old Customer-Fixes but at the same time not disturb my current branch master
* `brntbeer`: apratim.mukherjee@aricent.com: the best way is to create a branch from a given point in time
* `brntbeer`: er
* `brntbeer`: yeah. so the command would be like
* `brntbeer`: "git branch new-feature-branch 0waenent"
* `brntbeer`: where "0waenent" is the commit, or point in time, you want to create your branch from
* `apratim.mukherjee@aricent.com`: great thanks
* `brntbeer`: np!
* `Ying Chen`: when I want to fetch, it seems that I can only do "git fetch https://github.com/ychen-gpfw/poetry.git", right?
* `Ojas Gandhi`: git clone is the only way to download the repo?
* `brntbeer`: yep! git clone is the command to get the repository on your laptop
* `brntbeer`: Ying Chen: that would update your already cloned local repository
* `Ying Chen`: why I cannot use something like git fetch poetry?
* `brntbeer`: because fetch only works if you already have that cloned
* `brntbeer`: if you tried to use it, it'd complain that you're not in a git repository
* `brntbeer`: Ying Chen: we're not actually going to be working with that repository
* `brntbeer`: we're going to be working with git clone https://github.com/githubteacher/poetry/
* `brntbeer`: also, it appears you typed the repository name wrong when attempting to fetch, you typed "Poetry" instead of "poetry"
* `john chen`: same error looks like
* `brntbeer`: john chen: whats your username?
* `brntbeer`: may have not been added to the collaborators list
* `john chen`: jchen-gpfw
* `brntbeer`: kk, adding you
* `brntbeer`: sorry for missing it
* `brntbeer`: oh, hm, you're already added
* `brntbeer`: john chen: can you type "git remote -v" for me as well? and send it to me
* `Rajat Gujral`: i am seeing below error
* `brntbeer`: Rajat Gujral: what's your usename?
* `Rajat Gujral`: but i am able to clone the repro
* `brntbeer`: Rajat Gujral: ya, cloning is a read opperation, so it always works
* `Rajat Gujral`: rgujral-ari
* `john chen`: ok.  i think I got mine to work brntbeer.  thanks.
* `brntbeer`: ah ok! good
* `brntbeer`: Rajat Gujral: may just be password being typed wrong
* `apratim.mukherjee@aricent.com`: it is not working for me
* `brntbeer`: apratim.mukherjee@aricent.com: i'll be right over
* `john chen`: guess too many ppl pushing...
* `brntbeer`: also if anyone is on a git version that isnt at least 1.8.x or higher, update after class =)
* `john chen`: ah, i see.  i have 1.7.4
* `john chen`: that's what comes with Linux (when I do sudo apt-get install git
* `john chen`: )
* `john chen`: er, that's what comes Ubuntu 10.04
* `brntbeer`: ah, ya
* `brntbeer`: which, at this point is about 2 or 3 years old
* `brntbeer`: john chen: if you want, i could come over to ensure that the remote url is set correctly
* `brntbeer`: basically the remote url we have is for http protocol to send data
* `brntbeer`: http got great support in about 1.7.8
* `brntbeer`: its a lot easier to manage and use as well
* `brntbeer`: there was also credential caching added in 1.7.6 or 1.7.8 so you dont have to always type your password
* `john chen`: well, i guess I will need to download the latest git... 
* `brntbeer`: not right now though
* `john chen`: ok.  thanks.
* `Ryan Lim`: I have a question on autosetuprebase=always
* `brntbeer`: sure Ryan Lim! whats up
* `Ryan Lim`: will it try to rebase when I checkout to a remote tracking branch?
* `Ryan Lim`: since it's always?
* `brntbeer`: when you say "checkout to a remote tracking branch" what do you mean? want to ensure o understand correctly
* `Ryan Lim`: say i have a master branch and a remote branch. they diverged
* `Ryan Lim`: git checkout --track origin/<remote branch name>
* `Ryan Lim`: git checkout master
* `Ryan Lim`: so now, if I do git checkout --track origin/<remote branch name>, will it try to rebase from the master branch?
* `Ryan Lim`: We have been told not to use git rebase for remote branch, right?
* `brntbeer`: I may hae missed all of the setup tim did in class
* `brntbeer`: oneeee second
* `Ryan Lim`: let's talk offline after the class
* `brntbeer`: yeah definitely
* `brntbeer`: this will be really useful setting to focus on first, haha
* `Ying Chen`: why I cannot see files other people pushed?
* `Chandra Javvadi`: I am getting a pathspec error
* `brntbeer`: because they're still on their own branches
* `brntbeer`: and you're probably on your own branch still
* `brntbeer`: or at least not on theres
* `brntbeer`: Chandra Javvadi: mind copy'ing me the error ?
* `Chandra Javvadi`: ok figured out
* `Chandra Javvadi`: forgot -m
* `brntbeer`: oh ok!
* `brntbeer`: whoops =) awesome to hear it worked out
* `john chen`: have you seen this before?
* `brntbeer`: git clone
* `brntbeer`: john chen: type: git clone git@github.com:githubteacher/poetry.git
* `john chen`: ah ok.
* `john chen`: i wonder why https does not work.  weird.
* `brntbeer`: because your git version is too old
* `john chen`: I just updated:
* `brntbeer`: you should be good to go then 
* `Ying Chen`: I cannot see my created files after push
* `brntbeer`: Ying Chen: mind me coming over to double check it?
* `Ying Chen`: please, thanks!
* `brntbeer`: raise your hand?
* `brntbeer`: https://github.com/github/github-services is the list of the service hooks too
* `Josh Sun`: brent
* `Josh Sun`: I got error:
* `brntbeer`: no space between the -S and "lenore" i think
* `brntbeer`: so: git log --patch -S"Lenore"
* `Josh Sun`: --patch does not work:
* `Josh Sun`: without --patch, it works
* `brntbeer`: old version of git
* `brntbeer`: 1.7.0 is probably around 5 years old
* `brntbeer`: ok maybe 3 years
* `Josh Sun`: thx
* `brntbeer`: yeah, 2010 =\
* `Josh Sun`: I will update to the latest then. thx alot.
* `brntbeer`: no problem!
* `brntbeer`: i'd never be more than a dot release behind git
* `brntbeer`: security fixes, etc etc
* `brntbeer`: Thanks guys!
