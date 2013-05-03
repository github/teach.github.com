---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-25-online-foundations-class.md
eventdate: 2013-04-25
---

## Teachers
* Jordan McCullough
* David Graham

## Resources
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)
* [SSH Keys & GitHub](https://help.github.com/articles/generating-ssh-keys)
* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:
        git config --global http.sslVerify false

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.8.0 or higher

## Suggested Books, Articles, Videos
* [GitHub YouTube Channel](http://www.youtube.com/github)
* [Free ProGit Book](http://git-scm.com/book)
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## GUI Tools
* [GitHub for Windows](http://window.github.com)
* [GitHub for Mac](http://mac.github.com)

## CLI

### Day 1
  	git --version
		git config --global user.name "GitHub Teacher"
		git config --global user.email "training@github.com"
		git config --global --list
		git config --global user.name "Teacher"
		git config --global --list
		git config --global color.ui auto
		git config --global --list
		git config --global core.autocrlf input
		clear
		git config --global --list
		pwd
		ls
		cd jordan
		vi index.html
		pwd
		git init
		ls -al
		git status
		git add index.html
		git status
		git commit -m'First addition of home page file'
		git status
		pwd
		clear
		ls 
		vi form.php
		vi styles.css
		ls
		git status
		git add form.php
		git add styles.css
		git status
		git commit -m'Adding remaining files'
		git status
		vi index.html
		git status
		cat index.html
		git add index.html
		git status
		git commit -m'Added title tag set'
		clear
		ls
		vi styles.css
		vi index.html
		git status
		git add index.html
		git status
		git commit -m'Added page title header and trainers'
		git status
		git add styles.css
		git status
		git commit -m'Added header styling blue'
		git status
		ls
		vi styles.css
		git status
		git diff
		git add styles.css
		git status
		git diff
		git diff --staged
		vi styles.css
		git diff
		git status
		git diff --staged
		git add styles.css
		git status
		git commit -m'Styled h1,h2,h3 colors'
		git status
		clear
		git status
		vi styles.css
		git status
		clear
		git diff
		git add styles.css
		git status
		git diff --staged
		vi styles.css
		git diff
		git status
		git diff --staged
		clear
		git status
		git diff --color-words
		git diff --word-diff
		git diff --staged --color-words
		git diff --stat
		clear
		cat styles.css
		git diff --color-words HEAD
		clear
		git status
		git add styles.css
		git status
		git diff --staged
		git commit -m'Adjusted fonts'
		clear
		git log
		git log --stat
		git log --patch
		git log --patch --color-words
		clear
		git log --patch --color-words -1
		git log --patch --color-words -4
		git log --format=oneline
		git log --format=oneline --abbrev-commit
		git log --oneline
		git help log
		git log --format=raw
		clear
		git status
		generaterandomfiles 5 sample-one txt
		clear
		git status
		git add .
		git status
		git commit -m'Add sample files'
		clear
		git log --oneline -7
		git status
		ls
		git rm sample-one1.txt
		git status
		ls -a
		ls -l
		git commit -m'Remove sample-one1 file'
		ls -l
		git status
		pwd
		clear
		pwd
		ls -l
		rm sample-one2.txt
		ls -l
		clear
		git status
		git add sample-one2.txt
		git status
		git add -u sample-one2.txt
		git status
		git commit -m'Delete sample-one2.txt file'
		git status
		clear
		open .
		git status
		rm .DS_Store
		clear
		git status
		git add sample-one3.txt
		git status
		git add -u sample-one3.txt
		git add -u sample-one4.txt
		clear
		git status
		git commit -m'Delete one3 and one4 files'
		ls
		git rm sample-one5.txt
		git status
		git commit -m'Removing sample one5'
		git status
		clear
		generaterandomchanges 5 more txt
		clear
		git status
		ls -l
		open .
		git rm more*.txt
		git status
		git commit -m'Remove more files'
		git status
		clear
		ls -l
		git log --oneline
		vi Proj-Notes.md
		git status
		git add .
		git commit -m'Add new files and stuff'
		git status
		clear
		ls -l
		git rm --cached Proj-Notes.md
		git status
		git commit -m'Remove accidental incl. of Notes'
		git status
		cat Proj-Notes.md
		git log --oneline
		clear
		ls -l
		mkdir css
		ls -l
		open .
		git status
		rm Proj-Notes.md
		clear
		git status
		ls -l
		git mv styles.css css/styles.css
		git status
		git commit -m'Organized css into sub-dir'
		ls -l
		clear
		ls -l
		ls css
		ls -al ~ > directory.txt
		git status
		cat directory.txt
		clear
		git status
		generaterandomchanges 5 move-me txt
		clear
		git status
		git log --oneline --stat -9
		ls -al
		mkdir temp
		git mv move-me1.txt temp/move-me1.txt
		git status
		open .
		git commit -m'Relocate move-me1 to temp'
		git status
		git add -u move-me*.txt
		git add -u .
		git status
		git add temp/
		git status
		git commit -m'Move all move-me to temp dir'
		git status
		git add directory.txt
		git status
		git commit -m'Add directory listing file'
		git status
		clear
		ls -l
		git mv directory.txt temp/directory.txt
		git status
		vi temp/directory.txt
		git status
		git add temp/directory.txt
		git status
		git commit -m'Moved and tweaked dir listing'
		git log --oneline --stat
		git log --oneline --stat -3
		clear
		git log --oneline --stat -3 -M
		git log --oneline --stat -3 -M90
		git log --oneline --stat -3 -M97
		ls -l
		ls temp
		git log -- temp/directory.txt
		git log --oneline -5 --stat --follow -M -- temp/directory.txt
		git status
		clear
		ls -l
		ls -al
		git status
		clear
		vi .gitignore
		ls -al
		git status
		git add .gitignore
		git status
		git commit -m'Add ignore file'
		git status
		vi build.log
		git status
		vi .gitignore
		git status
		git add .
		git commit -m'Ignore log file patterns'
		git status
		clear
		pwd
		clear
		git-graphlive 15
		clear
		pwd
		cd ~/scratch
		cd jordan
		clear
		git-graphlive 15
		clear
		git log --oneline --decorate --graph -20
		git reset --soft 02c04df
		git status
		cat .gitignore
		git log --oneline --decorate --graph -20
		git commit -m'Add ignore pattern for logs'
		git log --oneline --decorate --graph -20
		git reset --soft b34388c
		clear
		git status
		cat .gitignore
		git commit -m'Add log file with two patterns'
		git log --oneline --decorate --graph -20
		clear
		git status
		git reset --mixed b34388c
		git status
		cat .gitignore
		vi .gitignore
		git status
		git diff
		git add .gitignore
		git commit -m'Add ignore for 3 file patterns'
		git log --oneline --decorate --graph -20
		generaterandomchanges 5 extra txt
		clear
		git log --oneline --decorate --graph -20
		ls -l
		clear
		ls
		git reset --hard ea449b4
		ls 
		git log --oneline --decorate --graph -20
		vi newfile.txt
		git add .
		git status
		git commit -m'New file'
		clear
		git log --oneline --decorate --graph -20
		git commit --amend
		git status
		git log --oneline --decorate --graph -20
		clear
		git config --global alias.lol "log --oneline --graph --decorate --all"
		git config --global --list
		clear
		git lol
		git config --global alias.s "status -s -u"
		git s
		touch newfile.txt
		git s

### Day 2
		git status
		git lol -10
		git reset --hard HEAD^
		echo "Welcome to Foundations Class for 05/03/2013"
		git log --oneline --all --graph --abbrev-commit --patch
		git config --global --list
		git status
		ls
		vi index.html
		git s
		git add index.html
		git s
		git commit -m'Added event date'
		git s
		clear
		vi index.html
		git status
		git s
		git add .
		git s
		git status
		git reset HEAD index.html
		git s
		git add .
		git s
		git reset HEAD index.html
		clear
		git-graphlive 20
		git s
		git add .
		git s
		git commit -m'Add event date in header'
		git reset --hard fca85ff
		clear
		git branch
		git status
		ls
		git branch class-outlines
		git status
		git checkout class-outlines
		git status
		ls
		vi outlines.html
		git status
		git add .
		git status
		git commit -m'Add first copy of class outlines rough draft'
		vi outlines.html
		git s
		git diff
		git diff --color-words
		git commit -m'First three class titles added'
		git s
		git add .
		git commit -m'First three class titles added'
		clear
		ls
		git checkout master
		ls
		git branch
		git branch contact-information
		git branch
		git checkout contact-information
		ls
		vi contact-us.html
		git s
		git add .
		git status
		commit -m'First changes to contact page'
		git status
		git commit -m'First commit of contact page'
		git branch
		git checkout master
		git branch
		git merge contact-information
		git branch
		ls
		clear
		git branch
		git branch -d contact-information
		git branch
		git merge class-outlines
		l
		clear
		ls
		cd ~/.ssh
		ls -al
		git remote add origin https://github.com/githubteacher/jordan.git
		git remote
		git remote -v
		git push origin master
		cd ~/scratch
		mkdir student
		cd student
		git clone https://github.com/githubteacher/jordan.git
		ls
		cd jordan
		pwd
		git config --local user.name "GitHub Student"
		git branch
		git lol
		git branch outlines-improvements
		git checkout outlines-improvements
		ls
		vi outlines.html
		git status
		git add .
		git status
		git commit -m'Added info for Foundations course'
		git status
		clear
		git lol
		git remote -v
		git push -u origin outlines-improvements
		pwd
		clear
		git fetch origin
		git branch
		clear
		git branch -a
		git checkout outlines-improvements
		git branch
		git log --oneline -4
		git log -1
		ls
		vi outlines.html
		git status
		git add .
		git commit -m'Built out Advanced bullet points'
		git status
		git push -u origin outlines-improvements
		vi outlines.html
		git status
		git add .
		git commit -m'More advanced outline bullets'
		git push
		git fetch origin
		git branch -a
		clear
		git branch
		git checkout master
		git pull
		git pull origin master
		ls
		cat outlines.html
		clear
		git remote
		git remote show origin
		clear
		cd ..
		ls
		rm -rf jordan
		ls
		clear
		git clone https://github.com/githubstudent/jordan.git
		ls
		cd jordan
		pwd
		git branch -a
		git checkout -b contact-us-improvements
		ls
		vi contact-us.html
		git status
		git add .
		git s
		git commit -m'Added phone number'
		git lol -5
		git remote -v
		git push origin contact-us-improvements
		vi contact-us.html
		git status
		git add .
		git commit -m'Fixed phone number area code'
		git status
		git push origin contact-us-improvements 
		clear
		git checkout master
		ls
		cat contact-us.html
		git pull origin master
		git remote add teacher https://github.com/githubteacher/jordan.git
		git remote -v
		cat contact-us.html
		git pull teacher master
		git status
		pwd
		ls
		git branch
		git branch home-v1
		git branch home-v2
		git checkout home-v1
		ls
		vi index.html
		git status
		git add .
		git diff --staged
		git commit -m'Title to "Git course"'
		git status
		git checkout master
		git checkout home-v2
		vi index.html
		git status
		git add .
		git commit -m'Unexpected title for page'
		git checkout master
		git merge home-v1
		git merge home-v2
		clear
		git status
		vi index.html
		git status
		git add index.html
		git commit -m'Merged home-v2, fixed conflict'
		git push origin master
		clear
		git log --graph --all --decorate --oneline -15
		git pull origin master
		git-graphlive 15
		git push origin master
		clear
		git-graphlive 10
		git branch
		git branch -d home-v1
		git branch -d home-v2
		git branch
		git branch -d class-outlines
		git status
		git branch
		git branch -d outlines-improvements 
		git branch
		git checkout -b feature1
		generaterandomchanges 5 feature-one txt
		clear
		git status
		git reset --hard 344ecd0
		git reflog -15
		clear
		git reset --hard HEAD@{1}
		ls
		git checkout master
		git branch
		git merge feature1
		clear
		git reflog -5
		git reset --hard HEAD@{1}
		git branch
		git branch feature2
		clear
		ls
		vi chris.html
		vi css/styles.css
		git status
		clear
		git s
		git branch
		git stash
		git status
		vi index.html
		git add .
		git status
		git commit -m'Fixed home page title'
		git stash --list
		git stash list
		git branch
		git checkout feature2
		git stash pop
		git diff
		git add chris.html
		git commit -m'Added greeting message'
		git add .
		git status
		git commit -m'Font titles now green'
		git staus
		git status
		clear
		git branch
		generaterandomchanges 5 feature md
		clear
		git reset --soft HEAD~3
		git status
		git commit -m'Last three feature files'
		git push origin feature2
		git fetch origin
