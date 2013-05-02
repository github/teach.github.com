---
layout: bare
title: Fly By Pull Requests
description: Fly By Pull Requests Class Notes
tags: [notes]
path: classnotes/2013-04-30-fly-by-pull-requests.md
eventdate: 2013-04-30
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
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
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command History
    git clone https://github.com/githubstudent/build_better_email.git
    ls build_better_email/
    cd build_better_email/
    git config --local user.name "GitHub Student"
    git config --local user.email "training+student@github.com"
    git status
    ls
    git branch add-readme
    git branch
    git checkout add-readme
    git branch
    vim README.md
    git status
    git add README.md
    git status
    git commit -m "added much needed readme"
    git status
    git remote -v
    git push -u origin add-readme
    git config --unset-all credential.helper
    git push -u origin add-readme
    git config --list
    git config --unset credential.helper
    git push -u origin add-readme
    vim /Users/brntbeer/.gitconfig 
    git push -u origin add-readme
    vim README.md 
    git status
    git commit -am "fixed markdown"
    git push origin add-readme 
    git checkout master
    git checkout -b remove-erb-tags
    vim better_email_template.html 
    git status
    git commit -am "begin removing erb tags"
    git push -u origin remove-erb-tags 
    mkdir css
    touch css/stylesheet.css
    git status
    git status -u
    git add css/stylesheet.css
    git commit -m "add blank stylesheet for future work"
    git push origin remove-erb-tags 
    git checkout master
    git remote -v
    git remote add teacher https://github.com/githubteacher/build_better_email.git
    git remote -v
    git fetch
    git fetch teacher
    git fetch teacher
    git branch -r
    git status
    git branch -a
    git merge teacher/master
    ls
    git status
    git push origin master
    git status
    git log -1
    git remote -v
    git remote -v
    git remote add brntbeer https://github.com/brntbeer/build_better_email.git
    git remote -v
    git fetch teacher
    git branch -a
    git merge teacher/master