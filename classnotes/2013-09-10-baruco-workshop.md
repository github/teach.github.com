---
layout: bare
title: BaRuCo Git and GitHub Foundations
description: Git and GitHub workshop at BaRuCo
tags: [notes]
path: classnotes/2013-09-10-baruco-workshop.md
eventdate: 2013-09-10
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Mike Skalnik ([Twitter](http://twitter.com/skalnik), [GitHub](https://github.com/skalnik))

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

## Command History

    vim README.md 
    git status
    git add .
    git status
    git commit -m "added author info"
    git status
    vim css/default.css 
    git status
    git diff
    git status
    git add .
    git status
    git diff
    git diff --staged
    git status
    vim index.html 
    git status
    git status
    git diff
    git diff --staged
    git diff HEAD
    git diff HEAD
    git diff HEAD
    git add index.html
    git status
    git status
    git commit -m "change p tag for better readability"
    git log
    git log
    git commit --amend
    git log
    git log --stat
    git log --patch
    git log -3
    git log -1 --stat
    git log -1 --stat -p
    git log -1 -p --color-words
    git log -S baruco
    git log -S BaRuCo
    git log -S BaRuCo -p
    git status
    git push origin master
    git config --global user.email "training+githubstudent@github.com"
    ls
    ls css/
    vim css/headers.css
    git status
    git add css/
    git status
    git commit -m"started adding headers"
    git status
    git log -1 -p
    git rm css/headers.css
    git status
    git commit -m "file was not actually css"
    touch .env
    vim .env 
    git status
    git add .
    git status
    git commit -m "need to use environment variables"
    git status
    git rm --cached -- .env
    git status
    git status
    git commit -m "stop tracking .env"
    git status
    vim .gitignore
    git status
    git add .
    git commit -m "ignore things we should not check in"
    git status
    vim .env 
    git status
    git status
    ls
    mkdir views
    mkdir views/stylesheets
    git mv css/default.css views/stylesheets/
    git status
    git status
    ls
    rm -rf css/
    git status
    git status
    git commit -m "put things under a standard file structure"
    git help add
    git status
    ls
    touch views/javascript/application.js
    mkdir views/javascript
    touch views/javascript/application.js
    git status
    git status -u
    git status -u
    git add .
    git commit -m "added javascript"
    git status
    ls views/
    rm views/javascript/application.js 
    git status
    git add .
    git status
    git status
    git add -u views/
    git status
    git commit -m "js isnt needed yet"
    git status
    touch views/javascript/editor.js
    git add .
    git status
    git commit -m "start of the editor"
    mv views/javascript/editor.js views/javascript/text_editor.js
    git status
    vim views/javascript/text_editor.js 
    git status
    git add -A .
    git status
    vim views/javascript/text_editor.js 
    git status
    git commit -m "moved file and radically changed"
    git status
    mv views/javascript/text_editor.js views/javascript/editor.js
    git status
    mv views/javascript/text_editor.js views/javascript/app.js
    mv views/javascript/editor.js views/javascript/app.js
    git status
    vim views/javascript/app.js 
    git status
    git add -A .
    git status
    git commit -m "rename file and content change"
    git log -M30 -1
    
    git log -M20 -1 --stat
    git log -M5 -1
    git log -M2 -1 --stat
    git log -M1 -1 --stat
    git log -3 --stat
    git log -5 --stat
    git log --stat
    git log -C --stat
    git branch
    git branch -a
    git branch feature1
    git branch
    git checkout -b ruby-feature
    git branch
    git lol -5
    git config --global alias.lol
    git log graph
    git log --graph
    git lol
    vim app.rb
    vim app.rb
    vim Gemfile
    git status
    cat app.rb 
    vim app.rb 
    gem install bundler
    git status
    mvim Gemfile 
    git status
    git add .
    git status
    bundle install
    git status
    git add .
    git status
    git commit -m "start of ruby project"
    ruby app.rb 
    ruby app.rb 
    clear
    git status
    git diff
    git commit -a -m "we're using all of sinatra,not just base"
    git lol -5
    git lol
    git checkout master
    git lol -5
    git checkout --
    git checkout --
    git checkout -
    git checkout -
    git lol
    git branch -m feature1 css-feature
    git lol -5
    git branch -m ruby-feature sinatra-feature
    git lol -5
    git branch -d css-feature 
    vim .
    git status
    git status
    git commit -m "this is becoming a ruby example"
    git commit -am "this is becoming a ruby example"
    git lol
    git checkout master
    git merge sinatra-feature -m"completed start of sinatra example"
    git lol -10
    cd ../git/
    git lol -10
    git lol
    git lol --no-merges
    cd ../example-basic/
    git status
    git lol -10
    ls
    ls
    git branch -d sinatra-feature 
    git lol -10
    git log --format=raw -3
    git log -1 -p
    git status
    git lol -5
    git branch config-for-rackup
    git checkout config-for-rackup 
    git branch -m using-variables
    git branch
    git status
    mv index.html index.erb
    git status
    git status
    ruby app.rb 
    mv index.erb views/
    git status
    ruby app.rb 
    git status
    git add -A .
    git status
    git commit -m "show dynamic time change"
    git log -1 --stat
    git log -1 --stat -M
    git log -1 --stat -M90
    git lol -10
    git checkout master
    git merge using-variables 
    git lol -10
    git log -1 -p
    git log -1 -p --color-words
    git log -1 -p --color-words -M
    git status
    git lol -10
    git branch -d using-variables 
    git lol -10
    git checkout -b merge-ruby-conflict
    git status
    git add .
    git commit -m "hello to entire city"
    git checkout master
    git status
    git add .
    git commit -m "hello to entire nation"
    git status
    git lol -5
    git merge merge-ruby-conflict 
    git status
    git status
    git add .
    git status
    git commit
    git status
    git lol -5
    git lol -5
    git lol -10
    git branch -d merge-ruby-conflict 
    git checkout -b html-conflict
    git status
    git add .
    git commit -m "I am Lost. where am i"
    git checkout -
    git lol -5
    ls
    git status
    git commit -am "just training"
    git status
    git lol -5
    git merge html-conflict 
    git status
    git lol -5
    git reset --hard HEAD~1
    git lol-5
    git lol -5
    git commit -am "In this city"
    git merge html-conflict 
    git reset --hard HEAD~1
    git checkout html-conflict 
    git log -1 -p
    ls
    rm index.erb 
    git status
    git add -A .
    git status
    git diff --staged
    git commit -m "in this city"
    git checkout master
    git log -1 -p
    git merge html-conflict 
    git diff
    git diff --color-words
    git merge --abort
    git status
    git status
    git push origin master
    git config --local user.email
    git config user.email
    git config --global user.email "training+githubstudents@github.com"
    cd ../html5-boilerplate/
    ls
    vim robots.txt 
    cd ..
    git clone https://github.com/githubstudent/example-branches
    cd example-branches/
    git branch
    git branch -a
    git checkout -b brent-feature
    vim brntbeer.md
    git status
    git add .
    git commit -m "welcoming message from Brent"
    git push origin brent-feature 
    git branch -a
    git fetch
    git status
    git branch --set-upstream origin/brent-feature
    git help push
    git help push
    git push -u origin brent-feature 
    git status
    git branch --set-upstream-to=origin/brent-feature
    git status
    git merge origin/brent-feature
    git status
    git remote add teacher https://github.com/githubteacher/example-branches
    git remote
    git remote -v
    git fetch teacher
    git branch -r
    git status
    git checkout master
    git diff master...teacher/master
    git diff master...origin/master
    git merge teacher/master
    git status
    git diff master...origin/master
    git diff origin/master...master
    git status
    git push origin master
    git remote -v
    git branch
    git checkout -b rebase-branches
    generaterandomchanges 4 rebaseme md
    ls
    git checkout master
    generaterandomchanges 2 master txt
    git lol
    git checkout rebase-branches 
    git rebase master
    git lol
    git checkout master
    git merge rebase-branches 
    git lol -10
    git branch rebase-branches 
    git branch -d rebase-branches 
    git checkout -b rebase-interactive
    generaterandomchanges 15 interactive md
    git lol -20
    git rebase -i master
    git status
    git status
    vim .
    git status
    git commit --amend
    git rebase --continue
    git status
    git diff in
    git diff interactive5.md
    git add .
    git commit --amend
    git status
    git rebase --continue
    git lol -15
    git status
    git checkout master
    git lol -10
    git branch rebase-interactive 
    git branch -d rebase-interactive 
    git branch -D rebase-interactive 
    vim .
    git status
    git add .
    git status
    git reset --mixed HEAD
    git add .
    git reset --mixed HEAD
    git status
    git add .
    git commit -m "change location"
    git lol -5
    vim .
    git status
    git add .
    git commit -m "change skalnik location"
    git lol -5
    git reset HEAD~1
    git status
    git reset HEAD
    git status
    git lol -5
    git lol -5
    git reset b98cf32
    git status
    git lol -5
    git status
    git add brntbeer.md
    git add skalnik.md
    git status
    git commit -m "change personal location in files"
    git lol -5
    git reset --soft HEAD~1
    git status
    git commit -m "Recommiting for fun"
    git lol -5
    git reset --hard HEAD~1
    git status
    git reflog
    git branch rebase-relive f6744bb
    git lol -20
    git reflog
    git reflog -10
    git reset --hard 4047a40
    git lol -20
    git push -u origin master
    git lol -10
    git reset --hard 99cfdef
    git status
    git reset --hard origin/master
    git lol -5
    git lol -20
    git reset --hard a651456
    git lol -20
    git reset --hard origin/master
    git log -1 -p
    git revert a651456
    git status
    git lol -10
    git revert 4047a40
    git log -2 -p
    git status
    git push origin master
    git log -20
    git lol-20
    git lol -20
    git revert b942694
    git status
    git log -1 -p
    git push origin master
    git reflog -10
    cd ..
    cd example-basic/
    git status
    ls
    vim app.rb 
    git status
    git stash "location route"
    git stash save "location route"
    git stash list
    git stash list
    git show stash@{0}
    git lol -2
    git lol
    git help stash
    git status
    git checkout -b new-routes
    git stash apply
    git stash list
    git checkout -- app.rb
    git status
    git stash pop
    git lol -15
    git help stash
    git status
    git stash
    git stash list
    git status
    git stash list
    git show stash@{0}
    git show stash@{0}
    git stash --stat
    git stash list --stat


