---
layout: bare
title: TriJUG Get Up and Running with GitHub
description: TriJUG classnotes
tags: [notes, jug, public]
path: classnotes/2013-08-20-trijug-github-intro.md
eventdate: 2013-08-20
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://youtube.com/githubguides)
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
    * [GitHub plugin for Eclipse](http://eclipse.github.com)
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
We're going to talk about two ways to start interacting with GitHub right away. One
is a project without version control on our local machines now. We're going to put
them under version control, make some changes, then share those changes with GitHub.
The second way is through exploring on GitHub. We want to find some projects, big or
small that we can contribute to. The things these projects may be missing are
insignificant, but it gets us out there discovering and making connections with
people and projects that interest us.

### Type 1: Project that needs version control

* Project (github.com/brntbeer/issues-burndown) that should show a list of issues
  when run.
  * Run `rackup` and it doesn't show any issues!
  * Common problem with late night refactoring, you may have lost your work and can't
    get it back
* Setup and Config
  * before we get coding we need to tell Git our Name and Email
    * lets others know who we are when we make changes
* Intro commands
  * init
  * add / commit
  * status
  * diff
* Now that it's under version control, we can make our change to pull in issues
  * add in Octokit.rb, consume issues list from brntbeer/trijug_welcome repo.
* Sharing on GitHub
  * Go to GitHub.com and make a new repo by clicking the "new repo" button in the
    upper right.
  * Make sure it's a blank repo, copy instructions on how to connect "existing" repo
    to this.
    * `git remote add origin https://github.com/brntbeer/issues-burndown.git`
    * `git push -u origin master`
* Any additional changes we now make, can be sent up to GitHub with
  `git push origin master` and any changes that we would make through the web UI
  would need to be pulled down with `git pull origin master`.

### Type 2: Exploring on GitHub for easy contributions and collaboration

* Time to explore trending!
  * find projects recently trending
    * what are they missing? do they list issues already that we can fix?
  * make connections with people, follow them
  * Search!
    * We can search for projects that were recently created, by a language and make
      contributions to them to help someone new out.
    * https://github.com/slepkin/PhotoBingo or
    * https://github.com/search?l=Ruby&p=19&q=stars%3A%3E1+created%3A%3E2013-07-30&ref=advsearch&type=Repositories
* Why do i want to star things?
  * stars page! http://github.com/stars/brntbeer
    * also, take a look at followers under the language breakdown. This is why
      it could be important to follow people. See what your friends are interested
      in, and what they've been staring.

## Command Line History

    cd issues-burndown/
    rackup
    git config --global user.name "Brent Beer"
    git config --global user.name
    git config --global user.email "brent@github.com"
    git config --global user.email
    git status
    git init
    ls .git/
    tree .git/
    git status
    git add .
    git status
    git commit -m "initial commit for trijug"
    git status
    git diff
    bundle install
    git status
    git add Gemfile*
    git status
    git commit -m "work with octokit for api issues"
    git status
    git add .
    git status
    git commit -m "start showing issue titles"
    rackup
    irb
    rackup
    git status
    git diff issues.rb
    git status
    git checkout -- issues.rb
    git status
    git commit -am "i is not an instance"
    rackup
    git remote add origin https://github.com/brntbeer/issues-burndown.git
    git remote add private https://github.com/brntbeer/issues-burndown.git
    git remote -v
    git status
    git push origin master
    git status
    git status
    git fetch origin
    git status
    git push -u origin master
    git status
    git branch --set-upstream master
    git help branch
    git branch --set-upstream-to origin/master
    git status
    git merge origin/master
    git status
    cd ..
    git clone https://github.com/brntbeer/PhotoBingo
    cd pho
    cd PhotoBingo/
    git status
    git branch readme-fixup
    git checkout readme-fixup
    git status
    mvim .
    git status
    git diff
    git diff --color-words
    git add README.md
    git commit -m "broke readme up for readability"
    git remote -v
    git push -u origin master
    git status
    git push -u origin readme-fixup
    git push
    cd ../issues-burndown/
    git pull
    rackup
    git gui

