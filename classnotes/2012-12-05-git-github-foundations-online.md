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

* Lead by Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Supported by Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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


## Day 2 Q&A Transcript (Pending)

## Day 2 Command History (Pending)
