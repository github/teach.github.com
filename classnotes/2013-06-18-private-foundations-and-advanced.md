---
layout: bare
title: Private In Person Foundations and Advanced/Consulting
description: Private In Person Foundations and Advanced/Consulting Class Notes
tags: [notes,in-person,private]
path: classnotes/2013-06-18-private-foundations-and-advanced.md
eventdate: 2013-06-18
---

## Teachers

* Peter Bell ([Twitter](http://twitter.com/peterbell), [GitHub](https://github.com/peterbell))

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Jenkins Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation

* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
    * [The GitHub for Mac Client and Command Line](http://mac.github.com)
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
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command History

### Day 1

    git --version
    mkdir mweb
    cd mweb
    cd ..
    cd mweb
    pwd
    git --version
    touch index.html
    ls
    touch index.css
    touch index.js
    touch about.html
    touch about.css
    git init
    subl .git
    pwd
    git status
    git config --global user.name
    git config --global user.name "Daffy Duck"
    git config --global user.name
    git config --global user.email
    git config --global user.email "daffy@duck.com"
    git config --global user.email
    git config --local user.email "silly@email.com"
    subl .git/config
    git config --local user.email ""
    subl .git/config
    git config --local user.email "peter@pbell.com"
    subl ~/.gitconfig
    pwd
    git status
    git add index.html
    git status
    git add ind*
    git status
    git commit -m "Created home page"
    git status
    git add .
    git status
    git commit -m "Added about us page"
    git status
    subl index.html
    git status
    git add .
    git status
    git commit -m "Fixed bug on home page"
    git status
    touch test.log
    git status
    subl .gitignore
    git status
    git add .
    gi status
    git status
    git commit -m "Added gitignore to ignore project log files"
    git status
    ls
    git mv index.html home.htm
    git status
    git commit -m "Renamed home page to follow new corporate guidelines"
    git status
    ls
    mv index.css home.css
    git status
    git add .
    git status
    git add -A
    git status
    git commit -m "Renamed css file to follow corporate conventions"
    subl test.txt
    git status
    git add .
    git commit -m "Test file"
    ls
    subl test.txt
    rm test.txt
    git status
    subl test1.txt
    git status
    git add -A
    git status
    git commit -m "Renamed test file"
    git status
    touch test2.txt
    git add .
    git status
    git reset
    git status
    git add .
    git status
    git reset --hard
    git status
    ls
    subl index.js
    git status
    git commit -am "Added new javascript to the home page"
    git status
    mv index.js home.js
    ls
    git status
    subl home.js
    git add -A
    git status
    subl home.js
    git reset --hard
    git mv index.js home.js
    git status
    git commit -m "Renamed home page javascript file"
    subl home.js
    git commit -am "Changed javascript for the home page"
    git status
    ls
    rm home.js
    git status
    git add .
    git status
    git add -A
    git status
    git commit -m "We don't need no stinkin' js"
    git status
    ls
    git rm home.css
    git status
    ls
    git reset --hard
    git status
    ls
    clear
    git status
    ls
    pwd
    cd ..
    git status
    cd mweb
    git status
    touch bad_file.txt
    git status
    subl home.htm
    git status
    git reset --hard
    git status
    git add .
    git status
    git reset --hard
    git status
    ls
    subl home.htm
    git add .
    git status
    subl home.css
    git add .
    git status
    git reset home.htm
    git status
    git reset
    git status
    git diff
    git add home.htm
    git status
    git diff --staged
    git diff HEAD
    subl home.htm
    git add .
    git commit -m "Adding more text"
    subl home.htm
    git diff HEAD
    git diff --word-diff HEAD
    subl home.htm
    git diff --word-diff HEAD
    git diff --color-words HEAD
    git diff --stat HEAD
    git status
    git reset --hard
    git status
    git log
    subl ~/.gitconfig
    git log --oneline
    git log --oneline --decorate
    git log --oneline --decorate --all
    git log --oneline --decorate --all --graph
    git log --oneline --decorate --all --graph -3
    git config --global alias.lg "log --oneline --decorate --all --graph -30"
    git lg
    git branch
    git branch cart
    git branch
    git checkout cart
    git branch
    touch cart.html
    touch cart.css
    git status
    git commit -am "This isn't gonna work"
    git lg
    git add .
    git commit -m "Added first cut of shopping cart"
    subl cart.html
    git status
    git commit -am "Added a refinement to the shopping cart"
    git lg
    git checkout master
    ls
    git checkout cart
    ls
    git checkout master
    git status
    git branch
    ls
    git merge cart
    git lg
    git branch -d cart
    ls
    git lg
    git checkout my_account
    git checkout -b my_account
    touch my_account.html
    git add .
    git commit -m "My account html"
    touch my_account.css
    git add .
    git commit -m "Styling the my account page"
    git lg
    git checkout master
    git branch
    git merge my_account --no-ff
    git status
    git lg
    git show e267
    git branch
    git branch -d my_account
    git branch
    git checkout -b contact_us
    touch contact.html
    git add .
    git commit -m "Added markup for the contact page"
    touch contact.css
    git add .
    git commit -m "Added styling for the contact us page"
    git status
    git lg
    git checkout master
    ls
    subl home.htm
    git status
    git commit -am "Added phone number to the home page"
    git lg
    git checkout contact_us
    subl contact.html
    git status
    git commit -am "Finished up the contact us form"
    git checkout master
    git merge contact_us
    git status
    git lg
    git branch -d contact_us
    git branch
    git lg
    git status
    ls
    subl home.htm
    git status
    git add .
    git status
    subl home.htm
    git status
    git diff
    git diff --word-diff
    git diff --color-words
    git diff --word-diff
    git diff --staged --word-diff
    git diff HEAD --word-diff
    git status
    git commit -m "Added fax number"
    git status
    git diff HEAD --word-diff
    git status
    git diff --staged
    git add .
    git diff --staged
    git diff --staged --word-diff
    subl about.html
    git add .
    git status
    git commit -m "Added copyright notice to website"
    git lg
    git branch
    git checkout -b store
    git branch
    touch store.html
    git add .
    git commit -m "Markup for store"
    touch store .css
    git add .
    git status
    git reset --hard
    git status
    touch store.css
    git add .
    git commit -m "Added styling for the store"
    git status
    git lg
    subl home.htm
    git add .
    git commit -m "Added home page link to the store locator"
    git checkout master
    subl home.htm
    git commit -am "Added link to contact us form to the home page"
    git checkout store
    touch store.js
    git add .
    git commit -m "Added js to make store interactive"
    git checkout master
    git merge store
    subl home.htm
    git status
    git add .
    git status
    git commit -m "Merged store locator branch"
    git status
    git lg
    git checkout -b new_skin
    subl home.css
    git add .
    git commit -m "Restyled home page"
    pwd
    git status
    git add .
    git commit -m "Added logo to the site"
    git checkout master
    ls
    git status
    git add .
    git commit -m "Added google logo for linking to search results"
    git branch
    git checkout master
    git merge new_skin
    git status
    git lg
    git checkout --their logo.jpg
    git status
    git add .
    git status
    git commit -m "Removed google logo and merged in new style changes for the site"
    git status
    git branch
    git branch -d new_skin
    git branch -d store
    git branch
    git checkout -b directions
    touch directions.html
    git add .
    git commit -m "Added markup for directions page"
    git checkout master
    subl home.htm
    git status
    git commit -am "Added late breaking news to the home page"
    git checkout directions
    git rebase master
    git lg
    git checkout master
    git status
    git merge directions
    git lg
    git branch
    git branch -d directions
    git checkout -b bad_idea
    touch bad_idea.htm
    git add .
    git commit -m "This isn't gonna end well"
    touch bad_idea.css
    git add .
    git commit -m "It's pretty, but it still isn't a good thing to do"
    git lg
    git delete -b bad_idea
    git branch -d bad_idea
    git checkout master
    git branch -d bad_idea
    git lg
    git branch -D bad_idea
    git lg
    git reflog
    git checkout -b good_idea e117
    ls
    git checkout master
    git merge good_idea
    ls
    git lg
    git checkout 71be
    git checkout HEAD
    git checkout master
    git lg
    git branch
    git branch -d good_idea
    git checkout -b specials
    git branch -m specials really_specials
    git branch -m really_specials specials
    touch specials.html
    git add .
    git commit -m "Added markup for displaying special offers on the website"
    git checkout -b coffeescript
    touch specials.js.coffee
    git add .
    git commit -m "First cut ofd coffeescript based code for special offer carousel"
    git lg
    git checkout specials
    git merge coffeescript
    git branch -d coffeescript
    git lg
    git checkout -b experiment
    touch experiment.html
    git add.
    git commit -m "Added experimental code"
    git add .
    git commit -m "Added experimental code"
    git lg
    git checkout master
    git checkout -b new
    touch new.html
    git add .
    git commit -m "New html"
    git lg
    git branch
    git lg
    git checkout master
    gut merge new
    git merge new
    git branch -b new
    git branch -d new
    git branch
    git lg
    git checkout specials
    git merge experiment
    git branch -d experiment
    git lg
    git checkout master
    git merge specials
    git status
    git branch -d specials
    git lg
    ls
    subl home.htm
    git status
    git commit -am "Added a list of specials to the home pageeeeeeee"
    git status
    git commit --amend
    ls
    touch new_products.html
    subl home.htm
    git status
    git commit -am "Added new products page and link"
    git status
    git add .
    git commit --amend
    git status
    git lg
    git show 6d58
    git lg
    ls
    touch deals.html
    git add .
    git commit -m "Added markup for a deals page"
    touch deals.css
    git add .
    git commit -m "Added marup for the deals"
    subl home.htm
    git add .
    git commit -m "Added home page link to the new deals page"
    git lg
    git reset HEAD~3
    git lg
    ls
    git status
    git reset HEAD~3git add .
    git add .
    git status
    git commit -m "Added deals section and a link from the home page"
    git status
    git lg
    git reset --soft HEAD
    git status
    git reset --soft HEAD~1
    git status
    git commit -m "Added deals page with home page link"
    git lg
    git show 40e1
    git revert 40e1
    git status
    ls
    cat home.htm
    git lg
    git branch
    git status
    ls
    mkdir js
    touch js/index.js
    git status
    subl home.htm
    git status
    subl home.css
    git add home.css
    git status
    touch new3.html
    git add new3.html
    git sttus
    git status
    git checkout -b new_branch
    git status
    git checkout master
    git status
    git add .
    git status
    git commit -m "All the stuff I did since the last commit"
    git branch
    git checkout new_branch
    git lg
    git rebase master
    git lg
    cd ..
    git status
    git clone https://github.com/githubtraining/hellogitworld.git
    cd hellogitworld
    git branch
    git status
    ls
    subl README.txt
    git status
    git add .
    git commit -m "Even I can change the readme file"
    git status
    git push
    cd ..
    git status
    git clone git@github.com:PeterBell/reflog-metrics-article.git
    cd reflog-metrics-article
    git status
    ls
    subl README.md
    git add .
    git commit -m "Added my name - because I could"
    git push
    git remote add matthews git@github.com:githubtraining/reflog-metrics-article.git
    git remote
    git pull matthews master
    subl .git/config
    cd ..
    mkdir test
    cd test
    ls
    cd ..
    mkdir test
    cd test
    git clone git@github.com:githubtraining/reflog-metrics-article.git
    cd reflog-metrics-article
    pwd
    cd ../../reflog-metrics-article/
    git remotes
    git remote
    git remote add localcopy2 /Users/peterbell/Dropbox/code/test/reflog-metrics-article
    git pull localcopy2 master
    cd ~/Dropbox/code/hackny
    ls
    cd ht2
    cd ..
    cd ht2
    git branch
    subl .git/config

### Day 2

    git --version
    mkdir testme
    cd testme
    clear
    git status
    git init
    subl .git
    cd ~/Dropbox/code/hackny/hacker-tracker
    git checkout ht2
    cd ~/Dropbox/code/hackny/ht2
    git remote
    subl .git/config
    git push
    touch testme.txt
    git add .
    git commit -m "Test commit"
    git push
    git checkout master
    git push
    subl hello.txt
    git add .
    git commit -m "Initial commit"
    git rev-parse 10983
    git rev-parse HEAD
    git rev-parse master
    git cat-file -p 1098
    git cat-file -t 1098
    git cat-file -p 70c3
    git cat-file -t 4e70
    git cat-file -p 4e70
    subl goodbye.txt
    subl hello.txt
    git add .
    git commit -m "Second commit"
    git cat-file -p 2513
    git cat-file -p ecb1
    subl hello.txt
    git add .
    git commit -m "Another commit"
    git cat-file -p ecb1
    git cat-file -p 70c3
    git cat-file -p 5fb1
    git cat-file -p 59d0
    git cat-file -p 0cdc
    subl goodbye.txt
    git add .
    git commit -m "Yet another commit"
    git cat-file -p 0d86
    git cat-file -p 74a0
    git checkout -b testme
    subl testme.txt
    git add .
    git commit -m "Added testme file"
    git cat-file -p 42b2
    git cat-file -p aee0
    git cat-file -p b6fc
    cd ..
    pwd
    git init m1
    cd m1
    pwd
    cd ..
    cd m2
    mkdir m2
    cd m2
    git clone /Users/peterbell/Dropbox/code/github/m1
    ls -al
    clear
    cd ..
    ls
    pwd
    cd m2/m1
    cd ..
    rm -rf m1
    rm -rf m2
    mkdir metsci
    cd metsci
    clear
    pwd
    git init --bare network
    ls
    git status
    cd network
    git status
    cd ..
    mkdir laptop
    cd laptop
    git clone /Users/peterbell/Dropbox/code/github/metsci/network/
    cd network
    touch file1.txt
    git add .
    git commit -m "Initial commit"
    subl .git/co
    subl .git/config
    git push
    git checkout -b feature
    touch feature.txt
    git add .
    git commit -m "First cut of feature"
    git lg
    checkout master
    git checkout master
    git push
    git checkout feature
    git push
    git push -u origin feature
    git pull
    git push
    touch feature2.txt
    git add .
    git commit -m "Added another part of feature branch code"
    git push
    cd ..
    ls
    cd ..
    ls
    mkdir remote_access
    cd remote_access
    clear
    cd ..
    ls
    cd laptop
    ls
    cd network
    cd ..
    pwd
    git init bad_idea
    cd bad_idea
    git pull  /Users/peterbell/Dropbox/code/github/metsci/network/
    git branch -a
    git push  /Users/peterbell/Dropbox/code/github/metsci/network/ master
    git lg
    git show dd2
    git lg
    cd ..
    pwd
    cd ..
    ls
    cd ..
    ls
    cp mweb metsci/mweb
    cd mweb
    clear
    git statu
    git status
    git reset --hard
    git status
    git add .
    git reset --hard
    clear
    git status
    git lg
    touch new_file.txt
    git add .
    ls
    subl about.css
    git status
    git stash
    git status
    git branch
    git branch -a
    git lg
    git log --oneline
    git reflog
    git stash list
    subl
    ls
    subl index.html
    git add .
    git commit -m "Whatever"
    git stash pop
    git add .
    git commit -m "Next change"
    touch test33.txt
    git add .
    git reset --hard
    touch ttt23.com
    git reset --hard
    git add .
    git reset --hard
    git stash list
    subl about.css
    git status
    git stash
    git branch
    git checkout contact
    git stash list
    git stash apply
    subl about.css
    git sttus
    git status
    git add .
    git status
    git commit -m "Added new about us css to the contatc branch"
    git stash list
    git checkout master
    git stash pop
    git stash list
    git add .
    git commit -m "New about us css on the master branch"
    git merge contact
    git lg
    subl .git
    git rev-parse 2
    git rev-parse 21
    git rev-parse 21a
    git rev-parse 21a9
    git lg
    git rev-parse 21a9d46
    git show 21a9d46
    git branch
    git branch -d contact
    ls
    cat index.html
    git lg
    git checkout 024f about_us.css
    git checkout 024f -- about_us.css
    git checkout 024f - about_us.css
    git checkout 024f about.css
    git status
    cat about.css
    git commit -am "Went back to original css for about us page"
    git status
    git lg
    l
    ls
    subl about.css
    subl about.html
    subl index.html
    git add .
    git commit -m "Made 3 changes"
    git lg
    git reset HEAD~1
    git status
    git add .
    git commit -m "Same 3 changes"
    git lg
    git reset --soft HEAD~1
    git status
    git commit -m "Another change"
    git lg
    git revert ccfc
    git lg
    git show ccfc
    git show ccfc -s
    git show ccfc -stat
    git show ccfc -stats
    git show ccfc
    clear
    git lg
    cat index.html
    git checkout ccfc index.html
    cat index.html
    git add .
    git commit -m "First change"
    git checkout about.css ccfc
    git checkout ccfc about.css
    git checkout ccfc about.html
    git diff HEAD
    git commit -am "Second atomic commit"
    git lg
    subl index.html
    git commit -am "Adding some more text to the home page"
    git checkout -b newbranch
    touch newfile.txt
    git add .
    git commit -m "New file"
    git chekcout master
    git checkout master
    touch patch_file.txt
    subl patch_file.txt
    git add .
    git commit -m "A patch"
    clear
    git status
    git lg
    git checkout contact.
    git branch
    git checkout new
    git checkout newbranch
    git cherry-pick  92c4c
    git lg
    git reset HEAD~1
    git lg
    git branch
    git cherry-pick 92c4ce2
    git status
    git add .
    git reset --hard
    git status
    git cherry-pick 92c4ce2
    git lg
    git tag v1.0
    git lg
    git tag v0.2 c49cac8
    git tag v1.0QA -m "I approve of this message and this build - let's ship it"
    git show 1c92c8d2b3a3ae05be3a24bafce409dea05a3062
    git revert 1c92c8d2b3a3ae05be3a24bafce409dea05a3062
    git show 1c92c8d2b3a3ae05be3a24bafce409dea05a3062
    git lg
    subl index.html
    git status
    git add -p
    git add --patch
    gitx
    pwd
    git status
    git reset --hard
    git status
    git checkout master
    git status
    git bundle create metron.bundle master
    git status
    mv metron.bundle ../
    cd ..
    ls
    cd mweb
    git tag bundle1 -m "I approve of this bundle"
    git tag list
    git tag
    cd ..
    ls
    mkdir new_laptop
    mv metron.bundle new_laptop
    cd new_laptop
    ls
    git clone metron.bundle
    cd ..
    cd new_laptop
    git clone metron.bundle master
    git clone metron.bundle -b master
    ls
    rm -rf metron
    git status
    git clone metron.bundle -b master
    ls
    cd metron
    git status
    git lg
    subl .git/config
    cd ~/Dropbox/code/github
    ls
    cd mweb
    git lg
    touch this.txt
    git add .
    git -m "this"
    git commit -m "this"
    touch that.txt
    git add .
    git commit -m "That"
    git lg
    git bundle create bundle2.bundle bundle1
    ls
    mv bundle2.bundle ../new_laptop
    cd ../new_laptop
    git status
    ls
    git fetch bundle2.bundle
    cd metron
    git lg
    git fetch ../bundle2.bundle
    git fetch ../bundle2.bundle master:testmaster
    ls
    git status
    cd ../metron
    clear
    ls
    git lg
    pwd
    cd ../../metron
    git status
    ls
    pwd
    cd ..
    ls
    cd mweb
    ls
    cd ..
    ls
    pwd
    mkdir test
    cd test
    git init repo1
    cd repo1
    touch file1.txt
    git add .
    git commit -m "initial commit"
    git bundle create test.bundle master
    git status
    mv test.bundle ../
    cd ..
    ls
    mkdir laptop
    cp test.bundle laptop
    cd laptop
    ls
    git clone test.bundle -b master
    ls
    mv test.bundle test2.bundle
    git clone test2.bundle -b master
    ls
    cd test
    git lg
    cd ..
    ls
    pwd
    cd ..
    rm -rf new_laptop
    pwd
    ls
    pwd
    cd test
    ls
    cd repo1
    git lg
    touch file2.txt
    git add .
    git commit -m "Second file"
    ls
    git lg
    git tag master_bundle_1 59146
    git tag list
    git tag
    git bundle create bundle2.bundle master ^master_bundle_1
    ls
    git bundle create bundle3.bundle master_bundle_1..master
    ls
    git ls-remote bundle3.bundle
    git lg
    git ls-remote bundle2.bundle
    cp bundle2.bundle ../laptop
    cp bundle3.bundle ../laptop
    ls ../
    git fetch ../bundle3.bundle master:local_copy
    git fetch ../bundle2.bundle master:local_copy_2
    git lg
    git bundle verify ../bundle3.bundle
    git bundle verify ../bundle2.bundle
    git branch
    git branch -d local_copy_2
    git branch -D local_copy_2
    git branch
    git checkout local_copy
    git log
    git checkout master
    git merge local_copy
    git branch -d local_copy
    touch file3.txt
    git add .
    git commit -m "File 3 here"
    git reset HEAD~1
    ls
    rm bundle2.bundle
    rm bundle3.bundle
    git status
    git add .
    git commit -m "Third file"
    git lg
    git bundle create bundle4.bundle list..master
    git bundle create bundle5.bundle list..HEAD
    git bundle create bundle6.bundle list
    rm bundle5.bundle
    rm bundle6.bundle
    cp bundle4.bundle ../laptop
    ls ../
    touch whatever,txt
    git add .
    git commit -m "Whatever"
    ls ../
    git fetch ../bundle4.bundle master:testme
    git checkout testme
    git log
    git lg
    git diff master testme
    git checkout master
    subl .git/config
    git checkout testme
    git checkout master
    git status
    git merge testme
    git status
    git lg
    git reset --hard HEAD~1
    git lg
    git status
    git rebase testme
    git lg
    git bundle create send_back.bundle HEAD~1..HEAD
    git status
    mv send_back.bundle ../../
    ls ../
    git fetch ../send_back.bundle master:debbie
    git lg
    git bundle create -1 send_back2.bundle master
    git bundle create send_back2.bundle -1 master
    pwd
    cp send_back2.bundle ../../
    ls ../
    git fetch ../send_back2.bundle master:debbie
    git checkout debbie
    git lg
    git checkout master
    git rebase debbie
    git lg
    git branch -d debbie
    git status
    rm bundle4.bundle
    git status
    git add -p
    sudo ln -s /Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2
    git add -p
    sudo ln -s /Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2
    git add -p
    git --version
    git add -p
    which git
    brew update
    brew install git
    brew doctor
    mate ~/.bash_profile
    brew doctor
    brew unlink ossp-uuid
    brew doctor
    cd ~/Dropbox/code/github
    ls
    cd metron
    cd ..
    cd mweb
    git status
    which git
    brew doctor
    subl ~/etc/paths
    subl /etc/paths
    brew doctor
    subl ~/.bash_profile
    which git
    git --version
    git add -p
    cd ~/Dropbox/code/github/mweb
    git add -p
    brew install git
    brew unlink git
    bre installl git
    brew installl git
    brew install git
    brew link git
    brew link --overwrite git
    which git
    git --version
    git add -p
    ls
    subl about.html
    git add -p
    git commit -m "WHatever"
    subl about.css
    subl about.html
    git add -p
    git status
    gitx
    git commit -m "One change"
    git add .
    git commit -m "And another"
    git status
    git lg
