---
layout: bare
title: Git Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private]
path: classnotes/2013-05-28-2-private-custom-class.md
eventdate: 2013-05-28
---

## Teacher
* Peter Bell ([Twitter](http://twitter.com/peterbell), [GitHub](https://github.com/peterbell))

## Resources

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
    * [The GitHub for Mac Client](http://mac.github.com)

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
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Useful Advanced Git Commands

* Visual Diff Tool
    * Many tools supported including:
        * Araxis DiffTool
        * Perforce P4Merge
    * Config Steps:
        * `git config diff.tool "myaraxis"`
        * `git config difftool.myaraxis.cmd araxisgitdiff ONE $LOCAL THREE FOUR $REMOTE`
        * `git config difftool.prompt false`

* Alternate Editor
    * When VI default is not preferred
    * `git config --global core.editor <editor-on-path>`

## Command Line History

### Day 1

    git --version
    git config --global user.name
    git config --global user.name "Daffy Duck"
    git config --global user.name
    git config --global user.name "Peter Bell"
    git config --global user.name
    git config --global user.email
    git config --global user.email "pbell@github.com"
    git config --global user.email
    git config --global user.email "peter@pbell.com"
    git config --global user.email
    subl ~/.gitconfig
    git config --global user.name
    clear
    git status
    mkdir yahoo
    cd yahoo
    touch index.html
    ls
    touch index.css
    touch about_us.html
    git status
    git init
    ls
    ls -a
    git status
    git config --local user.email "jim@jane.com"
    git config --local user.email
    subl .git/config
    git config --local user.email
    git config --global user.email
    clear
    git status
    git add ind*
    git status
    git commit -m "Created index page with css"
    git status
    git add .
    git status
    git commit -m "Added about us page to the site"
    git status
    subl index.html
    git status
    git add .
    git status
    git commit -m "Added some new copy to the index page"
    git status
    ls
    touch about_us.css
    git status
    git commit -am "Added css for about us page"
    git status
    git add .
    git status
    git commit -m "Added css for about us page"
    git status
    git log
    git show b343
    git log
    git lg
    git config --global alias.lg
    git config --global alias.lg "log"
    git lg
    git config --global alias.lg "log --oneline"
    git lg
    git config --global alias.lg "log --oneline --decorate --graph --all -30"
    git lg
    clear
    git status
    ls
    git mv index.html home.htm
    git status
    git commit -m "Renamed index.html to home.htm to conform to corporate standards"
    git status
    ls
    subl index.css
    git status
    git commit -am "Added some styling to the home page css"
    git status
    ls
    git status
    git add .
    git status
    git add .
    git status
    git add -A
    git status
    git commit -m "Renamed index.css to home.css to be consistent with corporte naming policy"
    ls
    git status
    subl about.html
    git add .
    git status
    git add -A
    git status
    subl about.html
    git add .
    git status
    rm index.css
    git status
    git reset
    git status
    git add .
    git add -A
    git status
    git commit -m "Renamed about us html page"
    ls
    git mv about_us.css about.css
    git status
    git commit -m "Renamed about us css file"
    git status
    git lg
    git branch
    git branch cart
    git branch
    git checkout cart
    git branch
    touch cart.htm
    touch cart.css
    git status
    git add .
    git commit -m "First cut of shopping cart"
    git status
    git lg
    ls
    git checkout master
    ls
    subl home.htm
    git status
    git add .
    git commit -m "Added phone number to home page"
    git status
    git checkout cart
    git branch
    ls
    subl home.htm
    git lg
    git branch
    git status
    subl cart.htm
    git status
    git commit -am "Added finishing touches to the shopping cart"
    git status
    git lg
    git status
    git checkout master
    git merge cart
    git lg
    git branch
    git branch -d cart
    git lg
    git branch contact
    git checkout contact
    git branch
    git branch -d contact
    git checkout master
    git branch -d contact
    git branch
    git checkout contact_us
    git checkout -b contact_us
    git branch
    touch contact_us.htm
    touch contact_us.css
    git add .
    git commit -m "First cut of contact us form"
    subl contact_us.htm
    git status
    git add .
    git status
    git commit -m "Finished up the contact form"
    git lg
    git checkout master
    git merge contact_us
    git lg
    git branch
    git branch -d contact_us
    git branch
    git status
    git checkout -b store_locator
    git branch
    touch store_locator.htm
    touch store_locator.css
    git add .
    git commit -m "Added first cut of store locator"
    subl store_locator.htm
    git status
    git commit -am "Finished up the store locator"
    git status
    git lg
    git checkout master
    ls
    git checkout store_locator
    ls
    git lg
    git checkout master
    git merge store_locator --no-ff
    git lg
    git branch
    git branch -d store_locator
    git branch
    git branch test_branch
    git branch
    git branch -d test_branch
    git checkout -b bad_branch
    git branch
    touch bad_file.htm
    touch bad_file.css
    git add .
    git commit -m "Added bad html and css"
    git status
    git checkout master
    git branch -d bad_branch
    git branch -D bad_branch
    git lg
    clear
    git config --global alias.lg
    git config --global alias.lg "log --oneline --decorate --graph --all -30"
    git lg
    git status
    git branch
    subl home.htm
    git status
    git add .
    git commit
    git lg
    git show 10f2ecd
    git status
    subl home.htm
    subl home.css
    git add home.htm
    touch new_file.htm
    git status
    git diff
    git diff --staged
    git diff HEAD
    git add .
    git commit -m "Changes showing how to diff"
    git status
    subl home.htm
    git add .
    git status
    git commit -m "Adding long copy to home page"
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git status
    git reset --hard
    git status
    touch test_me.htm
    subl home.htm
    git status
    git reset --hard
    git status
    git add .
    git status
    git reset --hard
    git status
    touch test1.log
    touch test2.log
    git status
    subl home.htm
    git status
    subl .gitignore
    git status
    subl .git/config
    git add .gitignore
    git status
    git commit
    git status
    git reset --hard
    git status
    touch special.log
    git status
    subl .gitignore
    git status
    git add .gitignore
    git commit -m "Changed the .gitignore file to exclude the special.log that we *do* want to sha
    git status
    git add .
    git commit -m "Added special log file for us to review"
    git status
    git lg
    subl ~/.gitconfig
    git config --global core.excludesfile "~/.gitconfig2"
    git config --global core.excludesfile
    subl ~/.gitconfig
    subl ~/.gitignore
    subl .gitignore
    git commit -am "Added DS_store to gitignore so nobody on the team will commit those files by a
    git status
    clear
    git status
    ls
    git checkout -b history
    touch history.htm
    touch history.css
    git add .
    git commit -m "First cut of history"
    subl history.htm
    git status
    git commit -am "Finished up changes to the history file"
    subl home.htm
    git status
    git commit -am "Added link on home page to the history file"
    git lg
    git checkout master
    subl home.htm
    git status
    git commit -am "Added a home page link to the about us page"
    git lg
    git branch
    git merge history
    git status
    subl home.htm
    git status
    git add .
    git status
    git commit
    git status
    git lg
    clear
    git branch
    git branch -d history
    git branch
    pwd
    git status
    cd ..
    pwd
    git status
    git clone https://github.com/githubteacher/poetry.git
    ls
    cd poetry
    ls
    git lg
    cd ..
    git status
    pwd
    ls
    rm -rf poetry
    ls
    git clone git@github.com:githubteacher/poetry.git
    cd ~
    cd .ssh
    cd ~/.ssh
    ls
    subl id_rsa.pub
    ssh-keygen -t rsa -C "test@test.com"
    ls
    subl test_me.pub
    ls
    rm test_me
    rm test_me.pub
    ls
    cd ~/Dropbox/code/github
    ls
    rm -rf poetry
    ls
    git clone git@github.com:githubteacher/poetry.git
    git port
    cd poetry
    clear
    git status
    git lg
    touch newfile.txt
    git add .
    git commit -m "My new addition to the poetry"
    git lg
    cd ..
    ls
    cd yahoo
    git status
    git lg
    git remote add origin git@github.com:PeterBell/yahoo.git
    git push -u origin master
    subl .git/config
    git pull
    git push
    subl .git/config
    clear
    git status
    git checkout -b faq
    touch faq.htm
    touch faq.css
    git add .
    git commit -m "Added first cut of FAQ's section"
    subl faq.htm
    git status
    git commit -am "Added final touches to the FAQ's section"
    git branch
    git status
    git checkout master
    git merge faq --no-ff
    git status
    git lg
    git branch -d faq
    git branch
    git status
    git push
    git pull


### Day 2

    git status
    git init yahoo2
    cd yahoo2
    ls -a
    touch index.html
    touch index.css
    touch about_us.html
    touch about_us.css
    git add in*
    git status
    git commit -m "Created index/home page for website"
    git status
    git commit -am "Added about us page"
    git status
    git add about_us.css
    git add about_us.html
    git status
    git reset
    git status
    git add .
    git status
    git commit -m "Created about us page for the site"
    git status
    git branch
    git branch cart
    git brancg
    git branch
    git checkout cart
    git branch
    git branch -d cart
    git checkout master
    git branch -d cart
    git branch
    git checkout cart
    git checkout -b cart
    git branch
    touch cart.html
    touch cart.css
    git add .
    git status
    git commit -m "First cut of shopping cart"
    touch cart.js
    git status
    git add .
    git commit
    git status
    git config --global alias.lg2 "log --oneline --decorate --all --graph -30"
    git lg2
    git checkout master
    subl index.html
    git status
    git commit -am "Added phone number to the home page"
    git lg2
    git checkout cart
    subl cart.html
    git status
    git commit -am "Finished up the shopping cart by adding final requested business rules"
    git status
    git checkout master
    git merge cart
    git lg2
    git branch
    git branch -d cart
    git branch
    git checkout -b contact
    git branch
    touch contact.html
    git add ,
    git add .
    git commit -m "Added first cut of contact form"
    touch contact.js
    git add .
    git commit -m "Added javascript to validate the contact us form"
    git branch
    git checkout -b contact_coffee
    git mv contact.js contact.coffee.js
    git status
    git commit -m "Renamed javascript to coffeescript"
    subl contact.coffee.js
    git add .
    git commit -m "Implemented coffeescript version of contact form"
    git lg2
    git branch
    git checkout contact
    git branch -d contact_coffee
    git merge contact_coffee
    git branch -d contact_coffee
    git branch
    git lg2
    git checkout master
    git remote add origin git@github.com:PeterBell/yahoo2.git
    subl .git/config
    git push -u origin master
    git checkout contact
    ls
    git branch
    git branch -a
    git pull
    git checkout master
    git branch
    git pull
    git lg2
    git pull
    git push
    git status
    git pull
    git push
    git config --global push.default simple
    git push
    clear
    touch index.html
    subl index.html
    git add .
    git commit -m "Added our fax number to the home page"
    git pull
    git push
    git status
    subl index.html
    git status
    git reset --hard
    git status
    subl index.css
    subl about_us.css
    git status
    git checkout -- index.html
    git status
    git diff
    git commit -am "Cleaned up css for new layout"
    git status
    git lg2
    git show 45a6fcd
    ls
    git checkout 45a6
    ls
    cat index.html
    git checkout master
    git lg
    git branch
    git lg2
    git branch
    clear
    git merge contact
    git lg2
    git branch -d contact
    subl .git/config
    git remote -v
    cd ..
    git init yahoo3
    touch test.html
    git add .
    cd yahoo3
    touch test.html
    git add .
    git branch
    git status
    git commit -m "Saved first file"
    git branch
    git status
    git remote add origin git@github.com:PeterBell/yahoo3.git
    git push -u origin master
    git pull
    git push
    cd ..
    cd yahoo2
    subl .git/config
    git branch
    git checkout -b test
    touch test.html
    git add .
    git commit -m "Test file"
    touch test.css
    git add .
    git commit -m "Added styling for the test page"
    git lg
    git checkout master
    git ls
    git lg
    git merge test --no-ff
    git lg
    git branch -d test
    git branch
    git lg2
    git show cb632fc
    git lg2
    git checkout -b test2
    subl index.html
    git add .
    git commit -m "Added home page link to test 2"
    git checkout master
    subl index.html
    git add .
    git commit -m "Added home page link to contact us form"
    git lg
    git branch
    git merge test2
    subl index.html
    git difftool --tool-help
    git help difftool
    git status
    git mergetool -t opendiff
    git mergetool -t vimdiff
    git status
    git difftool -t vimdiff
    git status
    subl index.html
    git add .
    git commit
    git status
    git lg
    clear
    git status
    git branch
    git branch -d test2
    git branch
    git branch -a
    git push
    git lg
    git branch
    git branch -r
    git branch -a
    cd ..
    mkdir student
    cd student
    git clone https://github.com/PeterBell/yahoo2.git
    cd yahoo2
    git lg
    touch myfile.txt
    git add .
    git commit -m "My new file"
    git lg
    cd ..
    git status
    pwd
    git clone https://github.com/githubteacher/yahoo3.git
    cd yahoo
    cd yahoo3
    git status
    cd ../../yahoo3
    touch peter5143.txt
    subl peter5143.txt
    git add .
    git commit -m "Peter's commit to the yahoo3 project"
    git push
    subl .git/config
    cd ../student/yahoo3
    git remote add peter git@github.com:PeterBell/yahoo3.git
    git pull peter master
    ls
    git push
    git remote add rbloom git@github.com:RBloom71/yahoo3.git
    git pull rbloom master
    pwd
    cd ./../yahoo2
    git status
    git push
    clear
    git lg
    git stash list
    subl index.html
    git status
    git stash
    git status
    subl index.css
    git status
    git commit -am "Fixed IE6 styling bug"
    git push
    git stash list
    git stash pop
    git status
    git add .
    git commit -m "Added our address to the home page"
    subl index.html
    git stash list
    git stash
    subl contact.coffee.js
    git stash
    git stash list
    git stash pop
    git stash list
    git stash apply
    subl index.html
    git diff
    git stash list
    git branch
    git checkout -b test3
    git status
    git stash pop
    git stash list
    git reset --hard
    git status
    git stash pop
    git stash list
    git commit -am "Made a change to the home page"
    subl contact.html
    git stash
    git stash list
    git stash apply
    git commit -m "Added new field to the contact form"
    git checkout master
    git sttus
    git status
    git branch
    git checkout test3
    git lg
    git stash list
    git reset --hard
    git status
    git stash apply
    git commit -am "Added field to contact form"
    git status
    git checkout master
    git stash pop
    git diff
    git commit -m "Added new field to contact us form"
    git commit -am "Added new field to contact us form"
    git status
    git lg
    git stash list
    clear
    git status
    touch users.txt
    git add .
    git commit -m "List of usersss"
    git lg
    git commit --amend
    git status
    git lg
    ls
    touch store.html
    subl index.html
    git status
    git commit -am "Added new store locator and a link from the home page"
    git status
    git add .
    git status
    git commit --amend
    git status
    git lg
    git show b07056a
    git lg
    ls
    git lg
    touch store.css
    touch store.js
    git add .
    git commit -m "Added styling and js to store locator"
    git lg
    git reset HEAD~2
    git lg
    ls
    git status
    git add .
    git commit -m "Added store locator with link to home page"
    git lg
    git show 8582397
    git reset --soft HEAD~1
    git lg
    git status
    git commit -m "Added store locator and link"
    git reset --hard HEAD~1
    git status
    ls
    subl index.html
    git status
    git reset --hard
    git status
    git lg
    git show ace4bef
    rm users.txt
    git status
    git add -A
    git status
    git reset --hard
    git status
    ls
    git lg
    git revert ace4bef
    git lg
    ls
    git lg
    git reflog
    git branch
    git checkout -b bad_code
    touch bad_code.html
    touch bad_code.css
    git add .
    git status
    git commit -m "First cut of bad code"
    git checkout master
    git branch
    git branch -d bad_code
    git branch -D bad_code
    git reflog
    git show bd94ec1
    git checkout -b good_code bd94ec1
    ls
    git reflog
    subl index.html
    git status
    git reset --hard
    git reflog
