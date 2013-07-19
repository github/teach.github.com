---
layout: bare
title: STLJUG Get Up and Running with GitHub
description: STLJUG classnotes
tags: [notes, jug, public]
path: classnotes/2013-07-11-stljug-github-intro.md
eventdate: 2013-07-11
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [GitHub for Windows Client and Command Line](http://windows.github.com)
    * [GitHub for Mac (Also includes Command Line tools)](http://mac.github.com)
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
* [Foundations Presentation Slides](http://teach.github.com/presentations/git-foundations.html/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Outline
* Outline slide:
  * Project we worked on locally. Let's share this with the world.
    * Intro commands for local
        * git init
        * git add
        * git commit
    * Then finally the push
        * git push (to what)
        * git remote -v
        * git fetch?
  * Project we've found that we want to contribute to, maybe we found it from following
    another developer on GitHub
    * New stars page?
    * Explore page for Java? https://github.com/languages/Java

### Have a project, want to share it / show it off
* setup / config
* init
* add / commit
* push (http!)

* OK, now we have it up there. Let's talk about what this opens up for us now
  * people can discover our things
  * we can point people to a URL (always be accessible)
  * URLs are human readable and permanent. We love stable URLs. It is how the web works.

* We should probably also make things easy to get up and running.
  * README.md is key.
    * How the Windows client shows it even before you clone the repo by using the API
    * How it shows up in the web UI, rendered
  * CONTRIBUTING.md
    * How does this affect the UI during a pull request?
    * Show a repo that has one of these wired in with the hyperlink showing during the PR process
  * LICENSE.md


### Project on GitHub I want to contribute to
There's lots of projects out there. Some of them have sadly not been getting
much love lately. There's a few ways we can get to work with these projects: 
We can either attempt to revive them by filing an issue for something that's missing
or we can ship code.

* Go to ratpack/ratpack
* Fork then clone
  * What is a fork? Why?
* Look at logs with log / diff?
  * Possibly just look at this stuff on the UI
* Branch (because why not)
* Push your branch to your fork
* Send pull request (there's about five ways, which is best?)
  * Look at pulse page, find out who's best to maybe /CC?
  * Maybe CC someone who's not the top contributor
* Have a conversation with the maintainer if applicable
  * Show my doorkeeper conversations
  * https://github.com/applicake/doorkeeper-provider-app/pull/7
* Update your fork


One thing we should fix is documentation. Point people to some docs? I dunno.

* Does it have a README/LICENSE/CONTRIBUTING like we listed above?
* Is it missing tests?
  * Maybe we don't know how to write the tests or set them up but we can file an Issue

### Extras
* Issues
* Milestones
* Inline comments
* Things that should go into your project (contributing.md, license.md)
* GFM
* Explore

## Command Line History

    cd stljug_welcome/
    ls
    groovy ratpack.groovy 
    git config --global user.name
    git config --global user.email
    git config --global core.autocrlf
    git config --global core.autocrlf true
    git config --global core.autocrlf
    git config --global core.autocrlf input
    git config --global color.ui
    ls
    git status
    git init
    tree .git
    git status
    git status -u
    git add .
    git status
    git commit -m "initial commit"
    git status
    vim ratpack.groovy 
    groovy ratpack.groovy 
    git status
    git checkout ratpack.groovy
    git status
    git remote add stljug https://github.com/brntbeer/stljug_welcome.git
    git remove -v
    git remote -v
    git remote -v
    git push -u stljug master
    git config --global credential.helper
    git status
    git branch
    git fetch
    git checkout stljug/readme-rewrite 
    git status
    git checkout -b stljug/readme-rewrite 
    git status
    vim README.md 
    git status
    git add .
    git commit -m "updated locally readme"
    git push stljug readme-rewrite
    git push -u stljug HEAD
    git checkout master
    cd ..
    git clone https://github.com/brntbeer/socket
    cd socket/
    s
    ls
    git checkout -b better-readme
    vim README.md 
    git status
    git commit -am
    git commit -a
    git remote -v
    git push -u origin better-readme 
    cd ..
    cd stljug_welcome/
    git status
    git checkout -b css-fix
    vim templates/index.html 
    git status
    git add 
    git add templates/
    git status
    git commit -m "more helpful info"
    irb
    cd ..
    git clone brntbeer/yelpme
    cd yelpme/
    git checkout -b july-search
    ls
    vim README.md 
    git status
    git commit -am "this is towards issue #3"
    git push -u origin HEAD
    cd
    cp ~/Desktop/clone_it.sh ~/code/
    cd code/
    git init clone-scripts-fun
    cd clone-scripts-fun/
    cp ../clone_it.sh  .
    ls
    git status
    git add .
    git commit -am "first silly bash script"
    git remote add origin https://github.com/brntbeer/clone-scripts-fun.git
    git push -u origin master
    gs
    gc -m"push things"
    git log --oneline --decorate --all --graph 
    cd ~/scratch/git/
    git lol
    git lol --no-merge
    git lol --no-merges
    git lol --author=peff
