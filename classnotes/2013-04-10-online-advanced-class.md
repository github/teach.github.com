---
layout: bare
title: Online Advanced Class
description: Online Advanced Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-10-online-advanced-class.md
eventdate: 2013-04-10
---

## Teachers
* Peter Bell ([Twitter](http://twitter.com/peterbell), [GitHub](https://github.com/peterbell))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

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

### Day 1

     git status
     git init cgi
     cd cgi/
     ls -a
     touch home.html
     touch home.css
     touch about_us.html
     touch about_us.css
     ls
     git add hom*
     git status
     git commit -m "Added home page with styling"
     git status
     touch test.log
     touch test2.log
     git status
     subl .gitignore
     subl .gitignore
     git status
     git add .gitignore
     git status
     git commit -m "Ignoring all log files using a .gitignore"
     git status
     git add .
     git status
     git commit -m "Adding about us section to the site"
     subl home.html
     git status
     git commit -am "Added welcome text to the home page"
     git status
     subl home.html
     touch home.js
     git status
     git commit -am "Added new form including javascript"
     git status
     git add .
     git status
     git commit --amend
     git status
     git log -3
     git log --oneline
     git log --oneline --stat
     clear
     git status
     ls
     git rm home.js
     ls
     subl home.html
     git status
     git add .
     git status
     git commit -m "Removed cool new form from home page"
     git log --oneline
     ls
     rm about_us.html
     rm about_us.css
     git status
     git add .
     git reset --hard HEAD
     ls
     git status
     git status
     git add .
     git status
     git add -u
     git status
     touch test.html
     git status
     git add -u
     git status
     git add -A
     git status
     git reset --hard HEAD
     git status
     rm about_us.html
     rm about_us.css
     git status
     git add -A
     git status
     git commit -m "Got rid  of the about us functionality in the site"
     git status
     subl about_us.css
     git status
     git add .
     git commit -m "Added some css for about us"
     git status
     git status
     git add -A
     git status
     git commit -m "Moved about_us css into a separate css directory"
     git status
     ls
     subl home.html
     rm home.html
     git status
     subl index.htm
     git status
     git add -A
     git status
     git commit -m "Renamed the home page and called it index.htm"
     git status
     ls
     subl index.htm
     git add .
     git commit -m "Adding lots of text to the home page"
     git status
     subl index.htm
     git status
     git add -p
     git status
     git diff --staged
     git commit -m "Added title and updated a big paragraph"
     git status
     git add .
     git status
     git reset HEAD
     git status
     git add .
     git status
     git reset HEAD
     git status
     git add -p
     git status
     git commit -m "Other changes to the home page"
     git status
     clear
     git branch
     git branch prototype
     git branch
     git checkout prototype
     git branch
     touch prototype.html
     touch prototype.css
     git add .
     git commit -m "Added first cut of prototype"
     git branch
     git checkout master
     git merge prototype
     git branch
     git checkout -b new_feature
     git branch
     touch new_feature.html
     touch new_feature.css
     touch new_feature.js
     git add .
     git status
     git commit -m "Added new feature"
     git branch
     git branch -d new_feature
     git checkout master
     git branch
     git branch -d new_feature
     git branch -D new_feature
     git branch
     git branch -d prototype
     git branch
     git log --oneline
     git checkout -b cart
     git branch
     touch cart.html
     git add .
     git commit -m "Adding cart"
     subl cart.html
     git add .
     git commit -m "Refined the car"
     git commit --amend
     git log --oneline -3
     git branch
     git checkout -b cartspike
     subl cart.html
     git add .
     git status
     git commit -m "This was a bad idea"
     git branch
     git checkout cart
     git branch
     git branch -d cartspike
     git branch -D cartspike
     git checkout cart_with_logo
     git checkout -b cart_with_logo
     git branch
     subl cart.html
     git add .
     git commit -m "Added logo to cart"
     git checkout cart
     git merge cart_with_logo
     git branch
     git branch -d cart_with_logo
     git branch
     git checkout master
     ls
     git tag 1.0
     git tag
     git checkout -b version1
     git branch
     touch newfile.html
     git add .
     git commit -m "Added new files"
     git log --oneline
     git log --oneline --decorate
     git branch hotfix 6dabd53
     ls
     git branch
     git checkout hotfix
     ls
     git branch
     subl index.htm
     git add .
     git commit -m
     git commit -m "Fixed the code"
     git status
     git checkout master
     git branch
     clear
     git status
     git log --oneline --decorate
     git checkout 1.0
     ls
     subl index.htm
     git add .
     git status
     git checkout -b hotfix_to_10
     git status
     git commit -m "Fixed the reported bug in the home page"
     git branch
     git checkout master
     git branch
     git checkout -b plugins-and-submodules
     touch plugin.js
     git add .
     git commit -m "Here's a first cut of a possible plugin js"
     touch plugin-ideas.txt
     git add .
     git commit -m "Adding some text describing what we might be able to do with plugins - this isn
     git branch
     git branch --merged
     git checkout master
     git branch --merged
     git branch --no-merge
     git branch
     git branch --no-merged
     git checkout cart
     ls
     run tests :)
     git checkout master
     git merge cart
     git branch --merged
     git branch --no-merged
     git log --oneline --decorate
     git branch --contains 226e814
     git log --oneline --decorate --all
     git branch --contains 95e7d19
     git branch
     git remote add origin https://github.com/PeterBell/cgi.git
     git push -u origin master
     git branch
     git branch --merged
     git branch -d cart
     git branch
     git branch -D hotfix
     git branch -D hotfix_to_10
     git branch
     git checkout plugins-and-submodules
     ls
     git config --global credential-helper cache
     git config --global credential.helper cache
     git branch
     git push -u origin plugins-and-submodules
     subl plugin-ideas.txt
     git branch
     git add .
     git commit -m "Adding a really good idea"
     git push
     git checkout master
     git branch
     git checkout store-locator
     git checkout -b store-locator
     git branch
     touch store-locator.html
     touch store-locator.css
     git add .
     git commit -m "First cut of store locator"
     git checkout master
     git checkout store-locator
     git branch
     git push -u origin store-locator
     subl store-locator.html
     git status
     git commit -am "Finished up store locator"
     git push
     subl store-locator.html
     git add .
     git commit -m "Added copyright to the store locator"
     git push
     git branch
     git checkout master
     git status
     ls
     git pull
     ls
     cat store-locator.html
     cd ..
     ls
     git status
     git init cgi2
     cd cgi2
     touch home.html
     git status
     git add .
     git commit -m "Added home page"
     git remote add origin https://github.com/PeterBell/cgi2.git
     git push -u origin master
     git status
     cd ..
     mkdir ghstudent
     cd ghstudent/
     git clone https://github.com/PeterBell/cgi2.git
     touch about-us.html
     git add .
     ls
     rm about-us.html
     cd cgi2/
     pwd
     touch about-us.html
     git add .
     git commit -m "Added about us page"
     git push
     cd ..
     rm -rf cgi2
     clear
     pwd
     git clone https://github.com/githubstudent/cgi2.git
     cd cgi2/
     git checkout -b contact-us
     touch contact-us.html
     touch contact-us.css
     git add .
     git commit -m "Added first cut of the contact us page"
     git status
     git push
     git push -u origin contact-us
     git push -u origin contact-us
     git push -u origin contact-us
     subl ~/.gitconfig
     subl contact-us.html
     git status
     git commit -am "Adding phone number to the contact us form"
     git push
     pwd
     cd ../../cgi2
     git status
     ls
     git pull
     git pull
     git status
     ls
     cat contact-us.html
     pwd
     git checkout -b privacy
     touch privacy.html
     touch privacy.css
     git add .
     git commit -m "Privacy policy"
     git branch
     git push -u origin privacy
     git status
     git branch
     git checkout master
     git branch
     clear
     git fetch git@github.com:jordanmccullough/cgi2.git product-list
     git fetch https://github.com/jordanmccullough/cgi2.git ;2Cproduct-list
     git fetch https://github.com/jordanmccullough/cgi2.git product-list
     git diff master FETCH_HEAD
     git branch
     git merge FETCH_HEAD
     git log -3
     git log --oneline -3
     git push
     cd ..
     ghstudent/
     ls
     cd ghstudent/
     ls
     cd cgi2/
     git status
     ls
     git remote -v
     git remote add peterbell https://github.com/PeterBell/cgi2.git
     git remote -v
     git branch
     git checkout master
     git branch
     git log --oneline -3
     git pull peterbell
     git pull peterbell master
     git log --oneline -3
     git log --oneline -8
     git branch --no-merged
     git branch --merged
     git branch -d contact-us
     git branch --merged
     git branch
     subl .git/config
     mate ~/.gitconfig

### Day 2

     ls
     git status
     git init simple
     cd simple/
     pwd
     git status
     subl .git
     git config --local user.name "Donald Duck"
     subl ~/.gitconfig
     echo "hello world" > index.html
     git status
     git add .
     git cat-ls -t 3b18e
     git cat-file -t 3b18e
     git cat-file -p 3b18e
     git status
     git commit -m "My initial commit"
     git cat-file -p 341b
     git cat-file -t 341b
     git cat-file -t ff46
     git cat-file -p ff46
     ls
     mkdir js
     touch js/file1.js
     touch js/file2.js
     git reset --hard HEAD
     git log --oneline
     git status
     rm -rf js/
     git status
     ls
     git mv index.html home.html
     git status
     git commit -m "Renamed the home page"
     git status
     git cat-file -t  341b
     git cat-file -t  3442
     git cat-file -t  3b18
     git cat-file -p  3b18
     git cat-file -p  d2a2
     git cat-file -p  ff46
     git cat-file -t  ff46
     clear
     git branch
     git checkout -b crt
     git checkout master
     git branch -d crt
     git checkout -b cart
     touch cart.html
     touch cart.css
     git add .
     git commit -m "First cut of shopping cart"
     subl cart.html
     git commit -am "Made revisions to the cart"
     git log --oneline
     git checkout master
     subl home.html
     git status
     git commit -am "Fixed a bug on the home page"
     git log --graph --all --oneline --decorat
     git log --graph --all --oneline --decorate
     gitk
     gitk
     gitk --all
     git log --graph --all --oneline --decorate
     clear
     git log --graph --all --oneline --decorate
     git branch
     git checkout cart
     git rebase master
     git log --graph --all --oneline --decorate
     git branch
     git checkout master
     git merge cart
     git log --graph --all --oneline --decorate
     git branch
     git branch -d cart
     git log --graph --all --oneline --decorate
     clear
     git checkout -b change_db
     subl home.html
     git commit -am "Changed home page"
     git checkout master
     subl home.html
     git add .
     git commit -m "Added bug fix and new phone number to home page"
     git checkout changed_db
     git checkout change_db
     git branch
     git log --oneline --graph --decorate
     git log --oneline --graph --decorate --all
     git rebase master
     subl home.html
     git add .
     git status
     git rebase --continue
     git log --oneline --graph --decorate --all
     git branch
     git checkout master
     git merge change_db
     git branch -d change_db
     git branch
     git status
     git checkout -b restyling
     ls
     subl cart.css
     git status
     git add .
     git commit -m "Added new styling to the shopping cart"
     git checkout master
     subl cart.css
     git commit -am "Fixed IE6 bug in styling for the shopping cart"
     git log --oneline --decorate --all --graph
     git config --global rerere.enabled true
     git branch
     git merge restyling
     subl cart.css
     git status
     git add .
     git status
     git commit -m "Resolving style merge conflicts"
     subl .git
     git log --graph --all --decorate --oneline
     git reset --hard HEAD~1
     git log --graph --all --decorate --oneline
     git branch
     subl cart.css
     git checkout restyling
     subl cart.css
     git checkout master
     git merge restyling
     subl cart.css
     git status
     git add .
     git status
     git commit -m "Merged new style into website"
     git log --graph --all --decorate --oneline
     git branch
     git branch -d restyling
     git branch
     git checkout -b jordan
     touch products.html
     git add .
     git commit -m "Added first cut of products"
     touch products.css
     git add .
     git commit -m "Adding styling to products"
     touch contacts.html
     git add .
     git commit -m "Added first cut of contacts page"
     touch contacts.css
     git add .
     git commit -m "Added styling to contacts page"
     touch contacts.js
     git add .
     git commit -m "Added js to make contact us form dynamic"
     subl contacts.js
     git add .
     git commit -m "Fixed bug in contacts js"
     git log --oneline
     git rebase -i 7090e25
     git log -6
     git log --oneline --decorate --all
     git rebase --interactive 7090e25
     git log --oneline --decorate --all
     touch newfile.html
     git add .
     git commit
     git log --oneline --decorate --all
     git rebase -i --autosquash 7090e25
     git log --oneline --decorate --all
     git log --oneline --decorate --graph --all
     git config --global alias.gl "git log"
     git gl
     gl
     subl ~/.gitconfig
     git config --global
     git config --global --list
     git gl
     git gl
     clear
     git gl
     git s
     touch test.html
     git add .
     git s
     ls
     subl cart.css
     git s
     git config --global alias.s "status -s"
     git s
     clear
     ls
     subl home.html
     git status
     git reset --hard HEAD
     git status
     git log -Sfuture
     git log -Sfuture --patch
     clear
     git log --oneline
     clear
     git log --grep=IE6
     git grep -Ffuture
     git grep
     git help grep
     git help grep
     git grep future
     git branch
     cat ~/.gitignore
     cat ~/.gitconfig
     git lg
     git config --global --list
     clear
     git lg
     git branch --merged
     git checkout master
     git branch -d jordan
     git checkout master
     git merge jordan
     git branch
     git branch -b jordan
     git branch -d jordan
     git branch
     clear
     git lg
     git checkout -b release1
     git checkout master
     git branch release2
     touch newfile.html
     git add .
     git commit -m "Added new functionality for release 3"
     git branch release3
     git lg
     git branch
     git status
     ls
     subl contacts.html
     git add .
     git commit -m "Added functionality that should be on a feature branch"
     subl contacts.css
     git add .
     git commit -m "Added styles to contacts"
     git s
     git status
     git log -5 --oneline
     git reset --mixed HEAD~2
     git status
     git log --oneline -3
     git branch
     git branch -d release1
     git branch -d release2
     git branch -d release3
     git branch
     git status
     git checkout -b contacts_improvements
     git status
     git add .
     git commit -m "Working on improvements to the contacts form"
     git status
     git lg
     git checkout master
     subl home.html
     subl contacts.html
     git status
     git add .
     git status
     git stash
     git status
     subl contacts.html
     git add .
     git commit -m "Fixing urgent bug"
     git lg
     git stash list
     git stash pop
     git stash list
     subl home.html
     subl home.html
     git status
     git add .
     git commit -m "A bug fix for the home page"
     git branch
     git branch -b contact_improvements
     git branch -d contact_improvements
     git branch -d contacts_improvements
     git branch
     git merge contacts_improvements
     subl contacts.html
     git status
     git add .
     git status
     git commit -m "Merged in the contacts improvements"
     clear
     git lg
     git branch -d contacts_improvements
     git branch
     git checkout -b longrunning
     subl home.html
     git status
     git stash
     git status
     git checkout master
     git stash apply
     git add .
     git commit -m "Added something to home page"
     git stash
     git stash list
     git checkout longrunning
     git stash apply
     git add .
     git commit -m "Added change to the site"
     git branch
     ls
     subl contacts.js
     subl contacts.js
     git status
     git add .
     git commit -m "Really useful change to js"
     git branch
     git checkout master
     git lg
     git branch
     git help cherry-pick
     git cherry-pick cb9640b
     git lg
     clear
     git lg
     clear
     git status
     git checkout -b jordan
     touch jordan.js
     git add .
     git commit -m "First cut of jordan javascript"
     touch peter.js
     git add .
     git commit -m "Added peter's js"
     git statsu
     git status
     git checkout master
     clear
     git branch
     git lg -5
     git cherry-pick 36975af
     git lg -4
     ls
     git checkout jrodan
     git checkout jordan
     git cherry master
     git cherry -v  master
     clear
     git reflog
     git reset --hard 1f9be07
     git lg -4
     clear
     git reflog
     touch file_to_kill.txt
     git add .
     git status
     git reset --hard HEAD
     git reflog
     clear
     pwd
     git remote add origin https://github.com/githubstudent/simple.git
     git push -u origin master
     subl .git/config
     git remote show origin
     git ls remote
     git ls -remote
     git ls-remote
     git fetch origin
     git branch
     git branch -a
     git checkout featuree1
     git branch
     git remote show origin
     git branch -D featuree1
     git checkout master
     git branch -D featuree1
     git branch
     git push  --prune
     git branch
     git branch -a
     git push origin :featuree1
     git --version
     cat ~/.gitconfig
     git config --local alias.gl git log --oneline
     git config --local alias.gl "git log --oneline"
    
