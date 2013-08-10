---
layout: bare
title: July 2013 Advanced Class
description: July 2013 Advanced Class Class Notes
tags: [notes]
path: classnotes/2013-07-25-july-2013-advanced-class.md
eventdate: 2013-07-25
---

## Teachers
* Tim Berglund ([Twitter](https://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

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
* [Git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
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
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline

* Common Branching Strategies
  * Feature branch pollution
* Building Custom Commands via Aliases
* Commit Data Structure Internals
* Log History Searches
* Commit Data Structure Internals
* Minimizing Repetitive Conflict Resolution (rerere)
* Undoing and Re-doing Almost Anything
* Advanced Interactive Rebase
* filter-branch
* Submodules
* Branch Pull Options
* Refspecs


## Chat History


## Command History

    git remote add origin https://github.com/githubteacher/git  nced.git
    git remote -v
    git config --global credential.helper cache
    git --version
    git commit -m "Bleak December"
    git checkout feature
    git push origin feature
    git checkout monkey
    git checkout david
    git branch
    git help fetch
    git branch -d david
    git branch -d monkey
    git branch -a
    git lol -5
    git config --global --unset alias.lol
    git log --graph --oneline --all --decorate
    git config --global alias.lol "log --graph --oneline --  -decorate"
    git pull
    git config --global alias.sync "\!git pull && git push"
    git alias.sync
    git config alias.sync
    git config --global alias.ls "\!ls -la"
    git ls
    git config alias.ls
    git lg
    export PS1="$ "
    tr.git
    cd scratch/repo
    git config alias.lg
    git-loglive
    cat ~/scripts/git-loglive
    which git-loglive
    ll .git/objects
    tree .git/objects
    ll .git/objects/09/472f6a9939bebf6853286c6eada15f4e3ff5d5
    cat .git/objects/09/472f6a9939bebf6853286c6eada15f4e3ff5d5
    zinflate .  bjects/09/472f6a9939bebf6853286c6eada15f4e3ff5d5
    ll .git/objects/4c/fee61186545c143804770a03c492f2a6f39771
    zinflate .  bjects/4c/fee61186545c143804770a03c492f2a6f39771
    ll .git/objects/e4/f54cb3950cf34b61edc087e83c38d63ad22622
    zinflate .  bjects/e4/f54cb3950cf34b61edc087e83c38d63ad22622
    git cat-file -p # A Soliloquy of Marc Antony
    O pardon me thou bleeding piece of earth
    That I am meek and gentle with these butchers
    Thou art the ruin of the noblest man
    Who ever livèd in the tide of times
    Woe to the hands that shed this costly blood
    Over thy wounds now do I prophesy
    Which like dumb mouths do ope their Ruby lips
    And beg the voice and utterance of my tongue
    A curse shall light upon the limbs of men
    Domestic fury and fierce civil strife
    Shall cumber all the parts of Italy
    Blood and destruction shall be so in use
    git ls-tree 4cfee61186545c143804770a03c492f2a6f39771
    git cat-file -p e4f54cb3950cf34b61edc087e83c38d63ad22622
    git help write-tree
    git help commit-tree
    git log --grep=limbs
    git log --grep=pentameter
    git log --grep=".*meter"
    git log --grep=README
    git log --grep="utterance"
    git log -S utterance
    git log --patch -S utterance
    git log --patch -F utterance
    git log --patch -F"utterance"
    git log --patch -S "utt.*nce"
    git log
    git log --graph
    git log -- README.md
    git log --stat -- README.md
    git commit -m "Dying ember"
    git commit -m "Eagerly wished"
    git commit -m "Smiley mothers"
    git commit -m "Lost Lenore"
    mkdir raven
    mkdir caesar
    git mv  raven.txt raven/
    git mv caesar.txt caesar/
    git commit -m "Project refactor"
    git help rerere
    git config rerere.enabled true
    git checkout -b feature
    git commit -m "Radiant"
    git checkout master
    git commit -m "Nameless"
    ll .git
    ll .git/rr-cache
    ll .git/rr-cache/7a98018c4b33f05b7e3a37fdd8d9a939b0f405ae
    vi .git/rr-  /7a98018c4b33f05b7e3a37fdd8d9a939b0f405ae/preimage
    git commit -m "No conflict here"
    git reset --hard c6d36bc
    cat raven/raven.txt
    git merge feature
    git commit -m "Conflict fixed"
    git commit -m "Updated README"
    git commit -m "No pity"
    git rebase -i HEAD~2
    git reflog
    git reset --hard 30cf31c
    git revert 974499
    git show e23e
    git show 9744
    cat README.md
    cat caesar/caesar.txt
    git rebase -i HEAD~4
    git help rebase
    git rebase --abort
    ll caesar
    ll raven
    git log --follow -- caesar/caesar.txt
    git log --follow -- raven/raven.txt
    cp -r repo caesar
    cp -r repo raven
    git filter-branch --subdirectory-filter caesar
    git remote -d origin
    git remote
    git branch -D feature
    cd .
    cd raven
    git remote remove origin
    git filter-branch --subdirectory-filter raven
    rm -rf .git/refs/original
    cd repo
    git checkout b907 -- raven.txt
    vi raven
    vi raven.txt
    rm reset raven.txt
    git reset raven.txt
    rm reset HEAD raven.txt
    git checkout -- raven.txt
    git reset HEAD raven.txt
    rm raven
    rm raven.txt
    git init poetry
    git remote add origin https://github.  ithubteacher/poetry.git
    vi README.md
    git commit -m "Start with a README"
    git remote add origin https://github.  ithubteacher/raven.git
    git remote add origin https://github.  ithubteacher/caesar.git
    git push -u origin master
    cd poetry
    git submodule add https://github.com/githubteacher/raven.  
    git submodule add https://github.com/githubteacher/caesar.  
    cd ../raven
    cat .gitmodules
    git commit -m "Added submodules"
    cd ../caesar
    git commit -m "Caesar rage"
    cd ../poetry
    pwd
    git add caesar
    git status
    git commit -m "Updated Caesar"
    git push
    tree
    cd caesar
    git lol
    git checkout d716c
    cat caesar.txt
    git lol
    cd ..
    git status
    git add caesar
    git commit -m "Reverted Caesar"
    git lol
    git loglive
    git loglive -15
    cd ../repo
    ls
    tree
    git branch -d feature
    git push --prune
    git fetch --prune
    vi caesar
    cat ../caesar/caesar.txt
    vi caesar/caesar.txt
    git add .
    git commit -m "Ceasar rage"
    git push
    git pull
    git push
    git pull
    git config branch.master.rebase true
    git pull
    vi caesar
    vi caesar/caesar.txt
    git add .
    git commit -m "Havoc"
    git push
    git pull
    git push
    git sync
    git pull
    git status
    git pull
    git ls-remote origin
    tree .git/refs
    git ls-remote origin
    git rev-parse refs/remotes/origin/feature
    tree .git/refs
    git pull origin refs/pull/4/head
    vi caesar.txt
    git add .
    git rebase --continue
    vi raven/raven.txt
    git rebase --continue
    git add .
    git rebase --continue
    git push
    git pull
    vi caesar/caesar.txt
    git add .
    git commit
    git rebase --continue
    ll
    git status
    git rebase --skip
    git ls-remote origin
    vi .git/config
    git fetch
    git lol
    vi .git/config
    git ls-remote origin
    vi .git/config
    git fetch
    git lol
    cat .git/config
    git help checkout
    git diff -w
    git diff
    git config --global diff.tool p4merg2
    git config --global diff.tool p4merge
    git config --global difftool.prompt false
    git difftool
    history
    crashplan-stop
    git status
    vi caesar/caesar.txt
    git add .
    git rebase --continue
    git status
    git rebase --skip
    vi raven/raven.txt
    git add .
    git status
    git commit
    git rebase --continue
    git status
    git rebase --continue
    git lol
    git push



## Chat History
* `bkummel`: Hi! I read somewhere that there will be a break during the session. At what time will that be?
* `tlberglund`: Around an hour and 20 minutes into the session.
* `tlberglund`: 10:20am my time. (Session starts at 9am my time.)
* `bkummel`: And ho many minutes?
* `bkummel`: I mean, what is the duration of the break?
* `tlberglund`: The break is about ten minutes long.
* `bkummel`: Ah. Should be enough to eat my pizza :-)
* `David Graham`: I'm here for any questions, so fire away!
* `bkummel`: I'm a Java (EE) dev
* `Peter`: I am a PHP developer
* `Mike Holczer`: c#
* `Max Goedjen`: iOS Engineer @ Scopely
* `Andrew W. Hill`: Verilog/C/C++/Flash/Perl
* `John`: hardware guy.
* `Nolan Lau`: sociologist
* `Petr Jirout`: Java and C++ developer
* `David Graham`: I'm a java/Ruby/CoffeeScript developer
* `Ben Snape`: I'm a Ruby dev (formerly Java)
* `Emmanuel Davis`: Java/C#/PHP
* `Vicki Weiner`: t-sql
* `Venkat Prasad`: C/C++
* `Andrew W. Hill`: woo woo
* `Andrew W. Hill`: my life has been destroyed by submodules in the past
* `Venkat Prasad`: 5
* `Max Goedjen`: 5
* `Mike Holczer`: 5
* `Vicki Weiner`: 5
* `Mel Gibson`: 4.3
* `Nolan Lau`: 4
* `Max Goedjen`: +1 andrew
* `David Graham`: I just learned about git yesterday.
* `Ben Snape`: 7-8
* `Peter`: I took the previous course, and have been using for 1 year.  5
* `John`: i told him it was going to happen.
* `Emmanuel Davis`: 7
* `bkummel`: 5.4938582
* `Andrew W. Hill`: +/- 10%
* `bkummel`: :-)
* `Andrew W. Hill`: hardware rule
* `bkummel`: branching strategies! Luckily already on the list!
* `Ben Snape`: changing history ie filter-branch
* `Peter`: I would be interested in if it is possible to use git with mysql
* `Peter`: versionaing schema
* `bkummel`: I'm particularly interested in using feature branches
* `Venkat Prasad`: More on submodules - TIA.
* `bkummel`: And how to prevent pollution from too many feature branches
* `Peter`: also interested in deployment strats - moving from dev to production
* `Max Goedjen`: any advantages to http auth over ssh unless you're on a network that restricts ssh traffic?
* `Ben Snape`: what is the -u  flag for? I use git push <remote> <branch>
* `David Graham`: Max: ssh keys are usually tough to maintain and keep track of.  we typically recommend https.
* `Max Goedjen`: David Graham: gotcha
* `Ben Snape`: oh yeah i see...that's useful because I usually push then set up my local branch to the upstream branch retrospectively
* `Ben Snape`: thanks
* `tlberglund`: https://github.com/githubteacher/git-advanced
* `Mike Holczer`: Ravi and I were tring to do this together in the conference room, we're going to drop off and log back from our desks
* `bkummel`: Our team is working onseveral features at the same time
* `Keith`: if master and your feature branch diverge how do you handle that
* `bkummel`: So over time, we get a lot of feature branches.
* `Ben Snape`: I usually rebase before merging and then do a descriptive merge (--no-ff merge)
* `Max Goedjen`: so we do this strategy for basically any feature/bug; is there an established naming convention that works well for dozens of feature/bug fix branches? we've been doing feature/added-new-things
* `bkummel`: Most colleagues use SourceTree and all those branches pollute the pull down lists
* `bkummel`: How to avoid that?
* `Keith`: i understand rebasing, but can you give an example? 
* `Max Goedjen`: we don't actually call it added-new-things, just an example
* `Max Goedjen`: :P
* `David Graham`: fix-issue-1234 is a good branch name
* `David Graham`: fix-dropdown-menu-items is good too
* `Max Goedjen`: yep, we usually do fix/mi-123
* `Max Goedjen`: thanks
* `Keith`: how about if you are using a dev, stage and prod servers?
* `David Graham`: we delete the branch after it's merged to master
* `David Graham`: we also have a script that deletes feature branches in bulk
* `bkummel`: ;-)
* `Mike Holczer`: I don't see that as pollution, it's good information
* `David Graham`: only if they've been merged, though
* `Max Goedjen`: David Graham: is that script public?
* `bkummel`: We have old ones
* `David Graham`: think it's just an internal script
* `Ben Snape`: David: once you've deleted a merged branch is it still possible to revert that branch down the line? (and even revert the revert later still?)
* `Mike Holczer`: the "branch" is just a pointer the commits remain
* `bkummel`: yes
* `bkummel`: :-D
* `David Graham`: Ben: Yes, you can revert the merge commit when the feature branch was merged into master
* `Ben Snape`: thanks guys :)
* `David Graham`: You don't need the feature branch after it's been merged.
* `bkummel`: makes sense
* `bkummel`: thanks!
* `Keith`: how about pushing local work to a stage server?
* `David Graham`: This is exactly how we use branches at GitHub.
* `David Graham`: Feature branches go into master which is deployed to production.
* `Ben Snape`: might be going slightly off-topic but I read that you guys push feature branches to prod, verify then merge into master? how do you verify that your feature works?
* `David Graham`: Keith: we `git push origin feature-branch-a`, then tell our robot to `/deploy reponame/feature-branch-a to staging`
* `David Graham`: So non-master branches can be deployed to staging or production.
* `David Graham`: Ben: We have a comprehensive test suite that runs on each build. Then we push the feature branch to production.
* `David Graham`: We let it sit in production for at least 15 minutes, watching error logs, and testing.  Then we merge to master.
* `Max Goedjen`: so you guys don't actually use develop? just feature branches?
* `David Graham`: Right, not really a fan of git flow.
* `David Graham`: Too complex.
* `Ben Snape`: excellent, thanks :) the benefits of CD! Do rollbacks happen much?
* `David Graham`: Just feature branches.
* `Max Goedjen`: don't disagree
* `David Graham`: Ben: rollbacks happen all the time
* `David Graham`: We just deploy reponame/master to production.
* `David Graham`: Since master is always shippable.
* `bkummel`: We use something like git flow; our client does only 4 releases a year
* `David Graham`: That branching diagram hurts my brain :).
* `bkummel`: And we have to doe hotfixes on versions that were released a long time ago
* `Ben Snape`: that's really interesting. Rolling back is seen as a bit of a failure of process where I work but we're trying to change that
* `bkummel`: Unfortunately, yes
* `bkummel`: it is
* `Max Goedjen`: how do tags fit into the way github uses branches? just tag on release?
* `David Graham`: Yeah, rollback to master after testing a feature branch in production is no big deal.
* `bkummel`: I see your point
* `David Graham`: Keep in mind, though, that our feature branches are *really* small.
* `bkummel`: Will keep it on my mind for future projects
* `bkummel`: thanks
* `David Graham`: We ship small changes many times per day.
* `Ben Snape`: I see, yeah I'm sure that helps
* `David Graham`: When we blog about a new feature, it's actually been in production for a long time.
* `David Graham`: We just flip a flag to make the feature public.
* `Ben Snape`: do you scale up the deployment of new features too?
* `Ben Snape`: so you don't bring the whole site down or something :)
* `Ben Snape`: thanks Tim I think that answers my question, very interesting!
* `David Graham`: Ben: Yes, we "dark ship" features to let caches fill up before going live.
* `Max Goedjen`: David Graham: do you guys tag at all? when a release happens?
* `David Graham`: and get a feel for performance before launching the feature
* `David Graham`: Max: We don't use tags for hosted software like github.com.  We use tags for software that ships to desktops like GitHub for Mac/Windows.
* `Max Goedjen`: do you guys use the same sort of strategy for your desktop software?
* `Ben Snape`: thanks David, I had no idea you released things internally - great idea though
* `Max Goedjen`: in general
* `David Graham`: There's not really a concept of a "release" for hosted web software.  Just constantly pushing branches into master.
* `tlberglund`: git config --global alias.lol "log --graph --oneline --all --decorate"
* `David Graham`: Max: Yeah, the branching and deployment process is the same for our desktop software.
* `David Graham`: We staff-ship changes to GitHub for Mac to test them internally first, just like we do with github.com.
* `Keith`: can you post that alias> 
* `Peter`: can we have git lg?
* `Max Goedjen`: Peter: https://coderwall.com/p/euwpig
* `tlberglund`: log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit  --all
* `Peter`: thanks
* `Mike Holczer`: what's the "291tree"?
* `Mike Holczer`: Is the blob always the full file contents?
* `Mike Holczer`:  I thought it was storing diffs?
* `bkummel`: What happens if I edit a commit on this level?
* `bkummel`: yes
* `bkummel`: Ok
* `Mike Holczer`: if you fixed all the hashes it would work though
* `bkummel`: Looking forward to that
* `bkummel`: That's basicly rewriting git, isn't it?
* `Keith`: can we move on? dont mean to be an ahole, but this does not seem to be practical information
* `bkummel`: ok by me
* `Keith`: thanks
* `Ben Snape`: can you use a regex in git log -S too? or only a string?
* `Ben Snape`: haha
* `Mike Holczer`: is that line based? So that a commit that edited another part of that line would be found
* `bkummel`: :-)
* `Ben Snape`: thanks
* `bkummel`: Great. It's 18:18 here. Time for pizza!
* `tlberglund`: bkummel: :boom:
* `tlberglund`: :pizza:
* `bkummel`: :-P
* `Peter`: can we add git diff tricks/tips to the agenda?
* `Peter`: learned --stat in foundations, but not too much more
* `Max Goedjen`: woooo xcode project merges
* `Peter`: the screen is lagging behind really badly for me
* `bkummel`: for me too
* `Peter`: I missed that whole last bit
* `Max Goedjen`: yeah seeing it on and off here too
* `Peter`: what was the command to 'continue the rebase'?
* `Peter`: thx
* `David Graham`: It's really difficult to coordinate that too.
* `David Graham`: Getting all forks updated simultaneously.
* `Peter`: so the 'no pity' commit is untouched?
* `Peter`: I like that  :)
* `Mike Holczer`: what will revert do about lines that have been changed between the commit being reverted and now
* `Keith`: can you use ours/theirs in an interactive rebase> 
* `Keith`: no worries thanks
* `David Graham`: I like using rebase while working on a branch locally while other people are merging to master.  I rebase all their changes into my branch and then `git push` up to github.com.
* `David Graham`: After pushing, though, I never rebase.
* `David Graham`: Since it changes history.
* `David Graham`: Venkat: If I understand question 2 correctly, you're looking for a feature called sparse checkouts.
* `David Graham`: You clone the entire repo, then configure it to only contain the one file or directory you really want.
* `David Graham`: http://blog.quilitz.de/2010/03/checkout-sub-directories-in-git-sparse-checkouts/
* `David Graham`: that's a good summary of the steps
* `David Graham`: Venkat: Can you elaborate on question 1? Not sure I understand what you're looking for there.
* `Ben Snape`: David: does that cause problems if you want to commit and push upstream? 
* `Ben Snape`: from that sparse checkout
* `David Graham`: Ben: I'm not sure.  I've never actually needed to use it.
* `Ben Snape`: Tim, is it possible to filter between a range of commits?
* `Venkat Prasad`: Question 1. How to clone an empty repo and later pull required dirs or files? if not is their any alternatives
* `David Graham`: Venkat: You would use a sparse checkout there too.
* `David Graham`: git really wants you to clone the entire repository, though, so it has all the history.
* `Peter`: git filter-branch --tree-filter 'rm -f <filenamepattern>' <branch>  could be used to remove a config file from a branch?
* `Venkat Prasad`: Ok. our repo is over 5g so couple my colleagues asking if there is an option to clone a required directory(dir size is 1g) to make changes.
* `Venkat Prasad`: yes
* `Venkat Prasad`: Ok thank-you. we also use p4 for few projects. same question from p4 users if there is path mappings. any ways, i got it.
* `Peter`: that was a good one!
* `Mike Holczer`: this is sounding like it is a solution to Venkat's question
* `Venkat Prasad`: Thanks Mike. Yes, sounds interesting.
* `Ben Snape`: submodules must be a pointer to a single commit right? We have problems with submodules when someone updates the pointer to a commit on a different branch which breaks some other dependency
* `Mike Holczer`: is pulling while in the parent repo going to always update the submodules to their respective origin/head?
* `Ben Snape`: specifically we use it with vagrant and a puppet submodule (which has branches for various OS's)
* `Max Goedjen`: can you go into what is needed when cloning a project with submodules? it seems like that's where it starts getting nasty. `submodule update --init --recursive` and all that
* `Venkat Prasad`: Q1 Is there any way we can make read -only submodules? Q2 making read-only submodules can we avoid commits on main repo?
* `Max Goedjen`:  /any other common submodule pitfalls
* `Ben Snape`: thanks Tim! we use a CI build to defend against it and tag a successful build
* `Ben Snape`: is that better than 'git submodule update'?
* `Ben Snape`: :)
* `tlberglund`: https://github.com/githubteacher/git-advanced
* `tlberglund`: https://github.com/githubteacher/git-advanced.git
* `Max Goedjen`: push directly to your repo, not our fork, right?
* `tlberglund`: git config branch.master.rebase true
* `tlberglund`: git config --global branch.autosetuprebase always
* `Mike Holczer`: i get Cannot pull with rebase: You have unstaged changes.
* `Mike Holczer`: ya, I'm in idiot
* `Max Goedjen`: tlberglund: why setup new branches to track instead of using git config --global branch.master.rebase true
* `Max Goedjen`: ?
* `Max Goedjen`: I think I've done it before and it works
* `Max Goedjen`: ahhh because it's just master, got it
* `Mike Holczer`: can anyone create their own refspec namespace?
* `David Graham`: Thanks everyone!  Great questions.
* `Mike Holczer`: do those refspec namespace get pushed to origin?
* `Max Goedjen`: kinda touching on earlier, is there any way to make all of my existing clones use rebase besides running that config command on every one of them?
* `Peter`: thank you
* `bkummel`: Thank YOU!
* `Vicki Weiner`: Thank you
* `Venkat Prasad`: thank-you
* `Mike Holczer`: what were you going to suggest for "Reusing Small Pieces of Code"?
* `tlberglund`: git checkout --patch <commit> -- filename
* `Mike Holczer`: ok
* `Ben Snape`: I was wondering a little more about how you deploy to production in terms of feature branches. What happens once you've verified a change, it's been pushed to master but a new feature is ready to be deployed - do you rebase off the new master? (with bots?)
* `Mike Holczer`: what were you slides built in?
* `David Graham`: Ben: we don't use rebase
* `tlberglund`: https://github.com/jordanmccullough/HydeSlides
* `Ben Snape`: sorry I think I worded it a little incorrectly
* `David Graham`: We say `git merge origin/master` into the feature branch
* `David Graham`: then deploy the feature branch to production
* `Ben Snape`: I was thinking more along the lines of a race condition when deploying features to production
* `David Graham`: our robot does that merge for us on deployment so we know production is always the most stable master plus one feature branch
* `bkummel`: And what text editor were you using?
* `tlberglund`: Sublime
* `tlberglund`: 2
* `bkummel`: Ok. Thanks
* `Peter`: Will we get the chat and notes emailed to us?
* `Ben Snape`: I see, okay thanks!
* `bkummel`: I saw you do a nifty thing adding a * to many lines
* `Peter`: super
* `bkummel`: Cool
* `bkummel`: Thanks again
* `Peter`: sublime is really a great tool
* `Peter`: any quick diff tips?
* `Max Goedjen`: kaleidescope is a pretty great diff tool, that's what i use for mergetool fwiw
* `Max Goedjen`: yeah kaleidescope does it for you, i think default on mac is filemerge?
* `Ben Snape`: what do you recommend instead of submodules? I suppose dependency management using binaries/rpms?
* `Peter`: thank you
* `Ben Snape`: Ruby + Scala
* `tlberglund`: [questions answered in audio channel]
* `Ben Snape`: and its all done inside vagrant and provisioned using puppet, it gets interesting
* `Ben Snape`: thanks :)
* `Max Goedjen`: how smart is rerere? 
* `Max Goedjen`: so xcode projects are xml-like
* `tlberglund`: Max: *Pretty smart
* `tlberglund`: *
* `Max Goedjen`: and usually i'm just deleting the merge markers
* `Max Goedjen`: thanks!
* `bkummel`: Thanks again!
* `Ben Snape`: thanks! :)
* `tlberglund`: Thank YOU!
* `tlberglund`: Have a great day. :smile:
* `Ben Snape`: you too
