---
layout: bare
title: In Person Foundations Class
description: In Person Foundations Class Class Notes
tags: [notes,private]
path: classnotes/2013-04-03-online-foundations-class.md
eventdate: 2013-04-23
---

## Teacher
* Peter Bell ([Twitter](http://twitter.com/peterbell), [GitHub](https://github.com/peterbell))

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
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)
* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false


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

## Command Line History
    git --version
    git status
    mkdir tm
    cd tm
    git status
    touch index.html
    touch index.css
    touch about_us.html
    git add in*
    git commit -m "Home page with layout"
    git add .
    git commit -m "About us page"
    subl .git
    clear
    git config --list
    git config --list --global
    subl .git
    git config --local user.email "fred@time.com"
    git config --local user.name "Fred"
    subl ~/.gitconfig
    git status
    git branch
    git branch cart
    git branch
    git checkout cart
    git branch
    touch cart.html
    touch cart.css
    git add .
    git commit -m "First cut of shopping cart"
    subl cart.css
    git status
    git commit -am "Changed logo styling for shopping cart"
    git status
    git log --oneline --graph --decorate -6
    git branch
    git checkout master
    git branch
    git merge cart
    git log --oneline --decorate --graph -5
    git branch
    git branch -d cart
    git branch
    git log --oneline --decorate --graph -5
    git branch
    git status
    git checkout contact_us
    git checkout -b contact_us
    git branch
    touch contact_us.html
    touch contact_us.css
    touch contact_us.php
    git add .
    git status
    git commit -m "First cut of contact form and processor"
    subl contact_us.php
    git status
    git commit -am "Added more validation for the contact us form"
    git log --oneline --decorate -5
    git checkout master
    git branch
    git status
    ls
    subl index.html
    git status
    git commit -am "Added phone number to home page so people can easily contact us"
    git status
    git checkout contact_us
    ls
    cat index.html
    git checkout master
    git merge contact_us
    git log --oneline --decorate --graph -6
    subl ~/.gitconfig
    git branch
    git config --global alias.lg "log --oneline"
    git lg
    subl ~/.gitconfig
    git config --global alias.lg "log --oneline --decorate --graph -10"
    git lg
    subl index.html
    git add .
    git commit -m "Adding more content to the home page"
    git status
    subl index.html
    git add -p
    git status
    git commit -m "Changing topbar"
    git add .
    git status
    git diff --staged
    git commit -m "Added copyright image"
    git status
    ls
    subl index.html
    subl cart.html
    git add index.html
    git status
    git diff
    git diff --staged
    git diff HEAD
    git status
    git reset --hard
    git status
    touch newfile.html
    git status
    git reset --hard
    git status
    git add .
    git reset --hard
    git status
    git status
    git branch
    git branch --merged
    git branch -d contact_us
    git branch
    git checkout -b about_us
    ls
    touch about_us.css
    touch about_us.php
    git add .
    git commit -m "Added style and back end functionality to about us page"
    git status
    git branch
    git checkout master
    git merge about_us --no-ff
    git lg
    git branch
    git branch -d about_us
    git lg
    clear
    git branch
    git status
    git checkout -b redesign
    subl index.html
    git add .
    git commit -m "Redesigning the home page"
    git status
    git status
    git add .
    git status
    git commit --amend
    git lg
    git show aeb9f1c
    git show
    git checkout master
    subl index.html
    git status
    git commit -am "Changed phone number"
    git lg
    git log --oneline --all --graph --decorate -5
    subl ~/.gitconfig
    git branch
    git status
    git branch --merged
    git merge redesign
    subl index.html
    git status
    git add .
    git status
    git commit -m "Merged in redesign"
    git lg
    git status
    subl ~/.gitconfig
    git config --global rerere.enabled true
    git branch
    git checkout -b store_locator
    touch store_locator.html
    touch store_locator.css
    git add .
    git commit -m "Created first cut of store locator"
    subl index.html
    git commit -am "Added link from home page to store locator"
    git branch
    git checkout master
    subl index.html
    git commit -am "Removed topbar header from home page"
    git merge store_locator
    subl index.html
    git status
    git add index.html
    git status
    git reset
    git status
    git add index.html
    git status
    git commit -m "Finished merge"
    git status
    git lg
    git reset HEAD^
    git lg
    git status
    git branch
    git branch --merged
    git checkout store_locator
    git stash
    git status
    git checkout store_locator
    git add .
    git stash
    git status
    git checkout store_locator
    ls
    git status
    git lg
    git show 9376b5c
    git lg
    git show 9376b5c
    git status
    git checkout master
    git lg
    git reset HEAD~3
    git status
    cat index.html
    ls
    git lg
    git log --oneline --decorate --graph -6
    git status
    git reset --hard
    git branch
    git checkout -b rerere
    subl index.html
    git add .
    git commit -m "Simplified home page"
    git checkout master
    subl index.html
    git status
    git add .
    git commit -m "Updated phone numbers"
    git branch
    git status
    git merge rerere
    subl index.html
    git status
    git add .
    git status
    git commit
    git commit -m "Merged in rerere changes"
    git status
    git branch --merged
    git reset HEAD^
    git status
    git lg
    git reset --hard
    git status
    git lg
    git merge rerere
    subl index.html
    git status
    git add .
    git status
    git commit -m "Merged in home page redesign changes"
    git status
    git lg
    clear
    git branch
    git branch --merged
    git branch -d rerere
    git branch -d redesign
    git branch -D redesign
    git branch -D store_locator
    git branch
    git checkout -b test
    touch test.html
    git add .
    git commit -m "Test file"
    git status
    ls
    git branch -d test
    git checkout master
    git branch -d test
    git branch -D test
    git lg
    git reflog -10
    git show a7b8c18
    git checkout -b new_test a7b8c18
    git lg
    git branch
    git checkout master
    git merge new_test
    git lg
    git stash list
    git stash pop
    git status
    git reset --hard
    git stash
    git stash list
    git stash pop
    git status
    git reset --hard
    git status
    git lg
    git status
    git stash list
    git stash drop
    git stash list
    clear
    git status
    git branch
    git branch -d new_test
    git branch
    git checkout -b new_design
    git status
    git add .
    git commit -m "New logo"
    git checkout master
    git status
    git add .
    git commit -m "Here's a cool logo for us"
    git lg
    git checkout master
    git merge new_design
    git checkout --theirs --logo.png
    git checkout --theirs logo.png
    git status
    git add .
    git status
    git commit
    git lg
    git status
    git branch
    git branch --merged
    git branch -d new_design
    git branch
    touch new.html
    ls
    subl  index.html
    subl test.html
    git status
    touch new2.html
    git status
    git add index.html
    git diff
    git diff --staged
    git diff HEAD
    git status
    git branch
    git checkout -b surprise
    git status
    git add .
    git status
    git commit -m "Added stuff to the new branch"
    git status
    git branch
    ls
    subl cart.css
    git status
    git checkout master
    git status
    git diff
    git branch
    git add .
    git commit -m "Added to cart styles"
    git checkout surprise
    subl cart.css
    git status
    git checkout master
    git checkout -f master
    git status
    git branch
    git merge surprise
    git lg
    git branch -d surprise
    git branch
    git status
    touch small_change.html
    git add .
    git status
    git stash
    ls
    subl index.html
    git status
    git commit -am "Added legal discliamer"
    git commit --amend -m "Added legal disclaimer"
    git lg
    git stash list
    git stash pop
    git stash list
    git status
    subl small_change.html
    git status
    git add .
    git status
    git commit -m "Implemented small change"
    git branch
    git checkout -b cart
    git checkout master
    git branch
    git status
    subl index.html
    git status
    git stash
    git status
    subl index.html
    subl index.html
    git status
    git commit -am "Removed phone number from website"
    git stash apply
    subl index.html
    git status
    git add .
    git status
    subl index.html
    git lg
    git stash
    git stash list
    git branch
    git checkout cart
    git stash apply
    git add .
    git commit -m "Changed home page for cart branch"
    git status
    git stash
    git stash list
    git stash drop
    git branch
    git checkout master
    git status
    git merge car
    git merge cart
    subl index.html
    git add .
    git status
    git commit
    git status
    git branch -d cart
    git branch
    git status
    ls
    touch locations.html
    git add .
    git commit -m "Added list of locations"
    touch locations.css
    git add .
    git commit -m "Added styling for locations"
    touch locations.php
    git add .
    git commit -m "Added server side script for location list"
    git status
    git branch
    git lg
    git reset HEAD^
    git status
    git lg
    git add .
    git commit -m "Added server side code"
    git lg
    git reset HEAD~1
    git lg
    git status
    git add .
    git commit -m "Added server side code"
    git lg
    git reset --soft HEAD~2
    git status
    git commit -m "added styling and server side code"
    git lg
    git reset HEAD~2
    git status
    git add .
    git status
    git commit -m "Added location functionality"
    git lg
    git branch
    git branch my_account
    git checkout my_account
    touch my_account.html
    git add .
    git commit -m "My account page"
    touch my_account.css
    git add .
    git commit -m "Added styling to my account"
    ls
    git branch
    git checkout master
    subl index.html
    git commit -am "Added phone number back on home page"
    git lg
    git branch
    git checkout my_account
    git rebase master
    git lg
    git show eb245
    ls
    git lg
    git revert eb2459b
    ls
    git lg
    git reset --hard HEAD^
    ls
    git status
    git lg
    subl my_account.html
    git add .
    git commit -m "Added my account content"
    git lg
    git status
    git revert eb2459b
    git status
    git add .
    git status
    git rm my_account.html
    git status
    git add .
    git status
    git lg
    git commit
    git status
    ls
    git lg
    git help revert