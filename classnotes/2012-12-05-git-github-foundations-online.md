---
layout: bare
title: Git and GitHub Foundations Online
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2012-12-05-git-github-foundations-online.md
eventdate: 2012-12-05
---

on 2012-12-05 through 2012-12-06

Teachers:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Setting Move Detection As Default

    git config diff.renames true #Turn on move detection (-M)
    git config diff.renames copy #Turn on copy detection (-C)

This code was found by:

    git grep -A3 diff.renames

* [Peff commenting on move detection config](http://git.661346.n2.nabble.com/git-show-doesn-t-respect-config-diff-renames-copies-td675625.html)
* [Stack Overflow Move Detection](http://stackoverflow.com/questions/1043388/record-file-copy-operation-with-git)
* [Git config command](http://git-scm.com/docs/git-config)



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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix)
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


## Day 1 Q&A Transcript
    Q: Matthew, so why the first push didn't work when your crendential cache is on?
    A: He had a different set of credentials cached! whoops.
    Q: will blame -C give us weird answers for very common lines such as "int i;" or "#include "attr.h""?
    A: If we tune the -C with an integer like "-C9" or "-C80" we can fine tune to watch for those copies a bit harder or softer
    Q: How can I see what branches are available?  git status shows current branch, how do I know what other branches there are?
    A: great question! a way to see this would be: `git branch`. if you want to see all branches (even remotes that your repository knows about) you can use: `git branch -a` to see all of them.
    Q: So it's possible to have multiple remote repo locations per local repo? Not sure if that's the right terminology..
    A: Perfect terminology. I have some projects that actually have 3 remote repos. Depending if i have a "fork" of a repository (fork's are something we'll chat on later for sure), i could have two origins that even live on github: origin for my fork, and the project my fork came from. Lastly, if i want to update to heroku.com, i can set a remote to there as well. This should all become more and more clear as we interact with github more often! Let me know if you want me to continue to clerify.
    Q: If you accidently commit a sensitive file is there a way to remove both file and history to ensure it can't be brought back?
    A: This can be a tricky situation! **If we havn't pushed to our remote** we can reset this commit. If in this situation we added the passwords/sensative information in our last commit, we can use `git reset`. With git reset, we can actually say "ok ok, undo those commits and pretend they never happened" and we actually undo those commits from history. The command to actually do this (with the previous commit) is: `git reset --hard HEAD^`. The "HEAD^" part just says "the most recent commit". we can scoot back a number of commits with the "HEAD~4" where 4 is the number of commits to jump back. Let me know if i can specify this further, but we'll definitely be touching on this in this class!
    Q: Is there a CLI for pull requests?
    A: You can then "hub pull-request" on a branch
    A: The one I use is "hub"
    Q: So what if you cherry pick in a change will git recognize the history in blame
    A: Yep, cherry-pick will result in the same thing.
    Q: Can you please confirm that "origin" means destination on the server?
    A: Yep! It's essentially just a keyword or bookmark for a specific url. We can confirm this with: `git remote -v`  and see that it's really a shorthand for the url to github.com
    Q: Is forking on the cli preferred?
    A: all about preferences! I personally use github.com, matthew uses a hub gem to do his forking and pull request. Details about which can be found here: https://github.com/defunkt/hub

## Day 1 Command History

    git --version
    mkdir githubfoundations
    cd githubfoundations
    git init project1
    open .
    mv first.txt project1
    cd project1
    git config user.name
    git config user.email
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git commit -m "My first commit"
    git remote add origin https://github.com/githubstudent/project1.git
    git cc-off
    git push -u origin master
    mate first.txt
    git reset HEAD first.txt
    git add -p first.txt
    gitx
    git diff
    git diff HEAD
    mate build.log
    mate .gitignore
    git diff --staged
    git commit -m "Part one of changes"
    git add first.txt
    git commit -m "The remainder of the changes"
    git add .gitignore
    git commit -m "Ignoring build log files"
    echo JUNK > build2.log
    echo JUNKCHANGES >> build.log
    echo JUNKCHANGES >> anything.log
    git log
    history
    cp first.txt second.txt
    cp first.txt third.txt
    git commit -m "Copied files"
    git rm second.txt
    git rm third.txt
    git checkout -- second.txt
    git checkout HEAD -- second.txt
    git checkout HEAD -- third.txt
    git commit -m "Renaming the file"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -M
    git log --stat -C
    git log --stat -C -C
    cp uno.txt fourth.txt
    mate fourth.txt
    git commit -m"Copied with slight modifications"
    git log -1 --stat -C
    git log -1 --stat -C -C
    z git_git
    git blame rerere.c
    git blame -C rerere.c
    cd -
    git branch feature
    git commit -a -m "Bug fix"
    git checkout feature
    cat uno.txt
    mate uno.txt
    mv uno.txt redesigned.txt
    git add -A .
    git status
    git commit -m "Feature work"
    git checkout master
    git merge feature
    cat redesigned.txt
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git commit -m "Over NINE THOUSAND new files"
    git branch 
    pwd
    git clone https://github.com/github/gitignore.git
    cd gitignore
    git remote -v
    git fetch
    git fetch -v
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    ls
    mate matthewmcc.txt
    git add .
    git commit -m"Matthew added some brilliant codez"
    git push


## Day 2 Q&A Transcript
    Q: why would you want this?  i get a "clean" graph, but doesn't it confuse the 'history'
    A: essentially it can just allow a cleaner history. this can be useful when we want to undo some commits. as matthew is showing with that graph, we can easily undo commits and understand the order at which things have come into the repo.
    Q: So, do you have any recommendation or best practice in terms of when to use merge and when to use rebase
    A: Just really depends on what you're looking for: clean history with the ability to more easily go back to a safer point…or see where commits/branches were merged into a branch (like master). Each has pros and cons and is basically up to you =)
    Q: For those planning to use  GIT in a corporate environment (non-public repos with 24/7  connectivity),   how best would one use the combination of Branching AND Cloning to support parallel development, integraton, and software release?  In other words, is there a better model other than having a single Cannonical (archive) repo and individual "sandbox" repos? 
    A: Personally, i've just had my own separate branches depending on what im working on, and send those pull requests into the same repo. If we pretend for just a moment that our "contention" repository is private and we're all on a software team… as i create some feature, i'd call it "brentbeer-feature134" and create some changes. I could then send a pull request from "githubtrainer/master" from "githubtrainer/brentbeer-feature134". and we have an internal pull request from branch-to-branch within the same [private] repo. Hope that makes sense!
    Q: Can you show us an example of a merge conflict, and the best practice for resolving it?
    A: A reminder that when the pull-request is not automatically mergable, there's an (i) that can show you how to merge it locally and update it!
    Q: Can "remote" be seen as the place where "staging" (from yesterday) happens, in the most recent picture that was shown
    A: It's more of a local "browser" cache from the upstream
    Q: does [rebasing] mitigate the contention problem or just make for a simpler graph?
    A: Hopefully allows you to save yourself later if a problem were to arrive. it's easier to reset and fix a problem after a rebase was done….It also makes for a nice easy to follow graph.
    Q: is the ability to automatically merge strictly checking if a merge is a fast forward, or if it's not a fast forward is a test merge performed somewhere?
    Q: i.e., does "cannot be automatically merge" necessarily imply conflict?
    A: Nope. The reason it doesn't merge is because of the conflict Matthew just demonstrated. the Fast-Forward vs non-fast-forward has no effect on if a pull request can be automatically merged from the interface. Because of multiple "merge strategies", github.com will act like the command line will.
    A: Yep, it does.
    Q: I thought your previous revert example was a surgical removal of that point, rather than reverting TO that point...
    A: Revert is simply a reversal of a previous commit. So if we noticed an entire commit was wrong, we could create a new commit to completely reverse it and record that we reversed it
    Q: we all make mistakes. Can you show us some ways to undo blunders (git force notwithstanding!) ... or perhaps suggest some exercises to avoid future problems?
    A: git revert! It's a super great way to undo some commits while maintaining that you've actaully undone it. Reset removes it from history.
    Q: how would we do the pull request from our command line?
    A: also, https://github.com/defunkt/hub if you want to read more about it.
    Q: for development / integration / deployment, branches seem to be an obvious architecture. Could you speak to other possibilities you find yourself using, such as separate repositories?
    A: Branches are absolutely great for forming your different changes/features/etc in a project in a structured way. Separate repositories can actually be used inside of a current repository, these are often called "submodules" and are quite a tricket subject!
    Q: to be clear, is it true that a rebase never resolves confllicts?
    A: The idea, to me, is that rebase may save you from some contention down the line, but it won't solve the conflicts for you.
    Q: how to remove 'official' after giving bad URL?
    A: git remote remove official
    Q: what is the tool [for merging]?
    A: just called "mergetool". you can look at this command with: `git help mergetool`
    Q: So this provides a cleaner commit history... but doesn't reduce contentions, right?  I still get "tip of your current branch is behind" when trying to push.
    A: it really adds the ability to mitigate contentions if they happened. If there had been a bad commit that we merged in instead of rebasing…it may be harder to reset.
    Q: can we view this on git hub itself?
    A: Absolutely! https://github.com/githubtrainer/contention/network shows these commits from different authors.
    Q: how can we see the graph ?
    A: we can fire up "gitk &" as well to view locally.
    Q: is there a git hook to refuse these merges on main repo
    A: This stack overflow link may tie you to more of what you're wanting: http://stackoverflow.com/questions/5488442/pre-receive-hook-on-server-side-that-refuse-any-push-to-master-which-has-any-non



## Day 2 Command History

    git help log
    cd -
    git checkout -b feature1
    generaterandomchanges 2 changes txt
    git push -u origin feature1
    hub browse
    vim build.gradle
    git commit -a -m"Broke it"
    git revert HEAD~1
    git reset --hard
    git revert HEAD
    git remote add official https://github.com/githubtrainer/hellogitworld.git
    git ls-remote official
    git help remote
    git fetch official
    git branch -r
    git remote -v
    git merge official/master
    git diff origin/master --stat
    git diff origin/master..HEAD --stat
    git push origin master
    git branch feature3
    git checkout feature3
    git push -u origin feature3
    hub pull-request
    hub 
    hub help pull-request
    hub pull-request -b githubtrainer:master -h githubstudent:feature3
    to.scratch
    git clone https://github.com/githubtrainer/hellogitworld.git hgwtrainer
    cd hgwtrainer
    generaterandomchanges 2 sample txt
    git checkout -b githubstudent-feature3 master
    git pull https://github.com/githubstudent/hellogitworld.git feature3
    cat sample1.txt
    git checkout --ours -- sample1.txt
    git mergetool -- sample2.txt
    git commit
    git merge githubstudent-feature3
    git help mergetool
    mate ~/.gitconfig
    git init contention
    echo HI > matthewwashere.txt
    git remote add origin https://github.com/githubtrainer/contention.git
    git push -u origin master
    git commit -m"Contention"
    git push -u origin master:master
    rm -rf contention
    git clone https://github.com/githubtrainer/contention.git
    git add .
    git commit -m"Matthew was here"
    gitx
    gitk &
    mate matthewmcc.txt
    git commit -a -m "Matthews change"
    git revert 205faf
    mate  brntbeer.txt
    git commit -a -m"Matthew changing brents file"
    git pull --rebase
    cat brntbeer.txt
    git mergetool
    git rebase --continue
    git log -2
    git show '5ef6$'
    git show HEAD^
    git show HEAD^^
    git show HEAD^^^
    git show HEAD^^^^
    git show master~5
    git show master~10
    git show HEAD^^^^^^^^^^^^^^^^^^^^^^
    git show HEAD^^^^^^^^^^^^^^^^^^^^^
    cp -r contention brokeit
    cd brokeit
    git rev-parse HEAD
    vim .git/objects/3a/e83e7d7a4a9cba388a5ab192cc213e55c0aea8
    c d..
    cd contention
    cat .git/refs/heads/master
    vim .git/refs/heads/handcrafted
    git branch
    git checkout handcrafted
    touch newfile
    git add newfile
    git commit -m"New file"
    git tag GOODPOINT1 9da2414a068866023cfa867fd399ab50d2b31a96
    git tag -a GOODPOINT2 9da2414a068866023cfa867fd399ab50d2b31a96
    git show GOODPOINT1
    git show GOODPOINT2
    git pull 
    git checkout master
    git pull
    git push
    git push --tags
    git push origin GOODPOINT1
    git tag -d GOODPOINT
    git tag -d GOODPOINT1
    git tag -d GOODPOINT2
    git fetch -p
    git fetch
    git remote -p origin
    git fetch -p origin
    git svn clone --stdlayout http://ambientideas.unfuddle.com/svn/ambientideas_sample11-svnscm hgwsub
    cd hgwsub
    git log
    ls
    git commit -a -m"Transaction 1"
    echo STUFF >> newfile2.txt 
    git commit -a -m"Transaction 2"
    git svn dcommit
    cd githubfoundations
    svn co https://github.com/githubtrainer/contention.git/trunk consub
    cd consub
    cd ..
    cd hellogitworld
    git reset --hard HEAD^^
    git reset --soft HEAD~5
    git status

