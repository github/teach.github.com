---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-03-online-foundations-class.md
eventdate: 2013-04-03
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
    git --version
    git init cgi
    cd cgi/
    ls
    ls -a
    touch home.html
    ls
    git config --list
    git config user.name
    git config --system --list
    git config --global --list
    git config --local --list
    git config --local user.name "Joe Blow"
    git config --local --list
    subl .
    subl .git
    git config --local --list
    git config --global user.name "Peter Bell"
    git config --global user.email "peter@pbell.com"
    git config --global user.name "Peter Bell"
    git config --global user.email "peter@pbell.com"
    cd ..
    rm -rf cgi/
    ls
    git init cgi
    ls
    cd cgi/
    ls
    touch home.html
    ls
    git status
    cd ..
    git status
    cd cgi
    git status
    git add .
    git status
    git commit -m "Initial commit - home.html"
    git status
    git config --global color.ui auto
    git config --global core.autocrlf input
    subl ~/.gitconfig
    cd ..
    ls
    mkdir cgi2
    cd cgi2
    touch test1.txt
    touch test2.txt
    touch test3.txt
    mkdir test
    cd test
    touch another_test.txt
    cd ..
    ls
    pwd
    git init
    git status
    git add .
    git status
    git commit -m "Initial commit"
    git status
    cd ..
    cd cgi
    ls
    cd ..
    git status
    cd cgi
    git status
    git config --global --list
    git config --global user.name "Donald Duck"
    git config --global user.name
    git config --global user.name
    git status
    ls
    touch home.css
    git status
    git add home.css 
    git status
    touch about_us.html
    touch about_us.css
    git status
    git commit -m "Adding css to the home page"
    git status
    git add .
    git status
    git commit -m "Added about us section to the website"
    ls
    touch contact.html
    touch contact.css
    git status
    subl home.html 
    subl about_us.html
    git status
    git commit -m "What will this save"
    git status
    git add home.html 
    git commit -m "Added phone number to our home page"
    git status
    git add contact.*
    git status
    git commit -m "Added a new contact form"
    git status
    git add about_us.html 
    git commit -m "Added executive bio to about us section"
    git sttaus
    git status
    touch test.log
    git status
    touch cart.html
    touch test2.log
    git status
    git add cart.html
    git cmmit -m "Added shopping cart"
    git status
    git commit -m "Added shopping cart"
    git status
    subl .gitignore
    git status
    git add .gitignore 
    git status
    git commit -m "Added .gitignore to ignore log files"
    git status
    ls
    git rm contact.html 
    git rm contact.css
    git status
    git commit -m "Removed the contact us form"
    git status
    ls
    rm cart.html
    git status
    git add -A
    git status
    git status
    git commit -m "Removed shopping cart"
    git status
    ls
    subl home.html 
    git status
    git commit -am "Adding new home page content"
    git status
    git mv home.html home.htm
    git status
    ls
    git commit -m "Renamed home.html to home.htm to follow new corporate standard"
    git status
    mv home.htm home.html
    git status
    git add -A
    git status
    git commit -m "Renamed home page back to home.html"
    git status
    ls
    touch store_locator.html
    touch store_locator.css
    subl store_locator.html 
    git status
    git diff
    git add .
    git status
    git diff --staged
    git commit -m "Added a store locator"
    git status
    ls
    subl store_locator.css 
    git status
    git diff
    git add .
    git status
    git diff
    git diff
    git diff --staged
    subl store_locator.html 
    git status
    git add store_locator.html 
    git status
    git diff --staged
    git reset HEAD store_locator.css 
    git status
    git commit -m "Added our first location"
    git status
    git reset --hard HEAD
    git status
    subl store_locator.css 
    git branch
    ls
    git branch
    git branch cart
    git branch
    git checkout cart
    touch cart.html
    touch cart.css
    git status
    git checkout master
    git status
    git checkout cart
    git status
    git add .
    git status
    git commit -m "First cut of shopping cart"
    git status
    ls
    git checkout master
    ls
    subl home.html 
    git status
    git add .
    git commit -m "Fixed phone number"
    git status
    git checkout cart
    ls
    subl home.html 
    subl cart.html 
    git status
    git add cart.html 
    git commit -m "Finished up shopping cart"
    git checkout master
    git branch
    git merge cart
    gitx
    git log --oneline --decorate --all
    subl .git
    git branch
    git branch -d cart
    git branch
    git branch check_out
    git checkout check_out
    touch checkout.html
    touch checkout.css
    git add .
    git commit -m "First cut of checkout functionality"
    git status
    git branch -d check_out
    git checkout master
    git branch -d check_out
    git branch -D check_out
    git branch
    git checkout newsletter
    git checkout -b newsletter
    git branch
    touch newsletter.html
    git add .
    git commit -m "Added newsletter functionality"
    git checkout master
    clear
    git log --oneline --decorate --all -8
    clear
    git log --oneline --decorate --all --graph  -8
    git merge newsletter
    git log --oneline --decorate --all --graph  -8
    git checkout -b newsletter2
    touch newsletter2.html
    git add .
    git commit -m "Added newsletter 2 html file"
    touch newsletter2.css
    git add .
    git commit -m "Added styling for newsletter2"
    git status
    git checkout master
    git merge newsletter2 --no-ff
    git log --oneline --decorate --all --graph  -8
    git branch
    git branch -d newsletter
    git branch -d newsletter2
    git branch
    git checkout -b newsite
    subl home.html 
    git status
    git add /
    git add .
    git commit -m "Created new version of home page"
    git checkout master
    subl home.html 
    git add .
    git commit -m "Fixed customer service phone number and added urgent text changes"
    git status
    git branch
    git checkout newsite
    subl home.html 
    ls
    subl about_us.html 
    git add .
    git commit -m "Added new site content to about_us page"
    git checkout master
    git merge newsite
    subl home.html 
    git status
    git add home.html 
    git status
    git commit -m "Merged newsite into site"
    git status
    git log --oneline --decorate --all --graph  -8
    git log -3
    git log --stat  -2
    clear
    git log --stat -5
    clear
    git log --stat --patch  -3
    git log --oneline --decorate --all --graph  -8
    git log --patch --color-words -4


    2
    cd ~/Dropbox/code/github/
    ls
    git status
    mkdir cginew
    cd cginew
    ls
    touch home.html
    touch home.css
    ls
    git status
    git init
    git status
    touch about_us.html
    touch about_us.css
    git status
    git add home.*
    git status
    git commit -m "Added home page to website"
    git status
    git add .
    git status
    git commit -m "Added about us page to the site"
    git status
    subl .gitignore
    git status
    touch test.log
    touch special.log
    ls
    git status
    git status
    touch test2.log
    git status
    git status
    git status
    git status
    git add .gitignore
    git status
    git commit -m "Added gitignore to ignore all log files except for special.log"
    git status
    git add .
    git status
    git commit -m "Added special log file for rest of team to view"
    git status
    git log -5
    subl README
    subl README
    git status
    git add .
    git commit -m "Added readme file to describe the project and how to set it up for other develo
    git status
    git log -1
    git remote add origin git@github.com:PeterBell/cginew.git
    git push -u origin master
    cd ~/.ssh
    ls
    pbcopy < ~/.ssh/id_rsa.pub
    pbcopy < ~/.ssh/id_rsa.pub
    cd ~/Dropbox/code/github/cginew/
    pwd
    ls
    git status
    cd ..
    git status
    ls
    git clone https://github.com/PeterBell/cginew2.git
    cd cginew2
    ls
    ls -a
    subl README.md
    cd ../cginew
    git remote
    git remote -v
    subl .git/config
    git remote rm origin
    git remote -v
    git remote add origin https://github.com/PeterBell/cginew.git
    git remote -v
    git push -u origin master
    git push -u origin master
    git pull
    git push
    git log -3
    ls
    git branch
    git checkout -b cart
    git branch
    touch cart.html
    git add .
    git commit -m "Added first cut of html for the shopping cart"
    touch cart.css
    git add .
    git commit -m "Added styling to the cart"
    git status
    git checkout master
    subl home.html
    git status
    git branch
    git add .
    git commit -m "Added phone number to home page"
    git status
    git pull
    git push
    git branch -r
    git branch -a
    cd ..
    ls
    mkdir test
    cd test
    git status
    git clone https://github.com/PeterBell/cginew.git
    subl .git/config
    cd cginew/
    subl .git/config
    git status
    ls
    touch contact_us.html
    touch contact_us.css
    git add .
    git commit -m "Added contact us form"
    git status
    git pull
    git push
    cd ..
    ls
    pwd
    cd ..
    mkdir githubstudent
    cd githubstudent/
    git status
    cd ..
    mkdir peterbell
    ls
    cd peterbell
    git status
    git clone https://github.com/githubstudent/cginew.git
    ls
    cd cginew/
    ls
    git log -2
    touch githubstudent.txt
    subl githubstudent.txt
    git status
    git add .
    git commit -m "Adding a message from github student"
    git push
    git push
    githubstudent
    git push
    cd ~/Dropbox/code/github/cginew
    git pull
    git fetch origin
    git branch
    git branch -a
    clear
    git log
    ls
    touch cart.html
    touch cart.css
    git add .
    git commit -m "Added shopping cart"
    git branch
    git branch -d cart
    git branch -D cart
    git branch
    git branch
    ls
    touch history.html
    git add .
    git commit -m "Adding simple history page"
    git status
    touch history.css
    git add .
    git commit -m "Added styleing for css"
    git commit --amend
    git log -1
    touch history2.css
    git add .
    git commit --amend
    git log -1
    git show 4e1365
    ls
    touch checkout.html
    git add .
    git commit -m "First cut of checkout"
    subl checkout.html
    touch checkout.css
    git status
    git commit -am "Finished up checkout"
    git status
    git add .
    git status
    git commit --amend
    git log -1
    git show 664e27
    git status
    touch bad_idea.html
    touch bad_idea.css
    git add .
    git status
    git reset --hard HEAD
    ls
    git status
    subl checkout.html
    git status
    git rm special.log
    git status
    git reset --hard HEAD
    git status
    ls
    subl checkout.html
    subl checkout.html
    git status
    git add .
    git status
    git reset --mixed
    git status
    git add .
    git status
    subl checkout.html
    git status
    cat checkout.html
    git reset --mixed
    cat checkout.html
    git status
    git log --oneline -6
    git reset --soft 4e1365d
    git status
    git add .
    git commit -m "Grouping all checkouts together"
    git status
    git log --oneline -6
    subl checkout.html
    git add .
    git commit -m "Added new text"
    git status
    git status
    git add .
    git status
    git commit --amend
    git status
    git log --oneline -4
    git show 8540a2b
    git log --oneline -4
    git reset --soft 4e1365d
    git status
    git commit -m "Implemented checkout"
    git log --oneline -4
    ls
    subl home.css
    git status
    git add .
    git status
    git commit -m "Added css to home page to improve styling"
    git status
    git add .
    git commit -m "Bad commit here"
    git log --oneline -4
    git revert 137d7e6
    git status
    subl home.css
    git status
    git add .
    git status
    git commit -m "Fixed up css"
    git status
    git log --oneline -4
    git branch
    git checkout -b css_fix
    git branch
    git checkout master
    git branch -d css_fix
    git branch
    git log --oneline -4
    git checkout -b css_fix 137d7e6
    ls
    git branch
    git checkout master
    git branch -d css_fix
    git branch
    git tag
    git tag v1.1.1
    git tag
    git rev-parse 5306c79
    git rev-parse HEAD
    git rev-parse v1.1.1
    git tag -a v1.2
    git rev-parse v1.2
    git show v1.2
    git log --oneline --decorate -6
