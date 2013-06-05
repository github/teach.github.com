---
layout: bare
title: Sandia Online Git Training
description: 
tags: [notes, private, online, class]
path: classnotes/2012-11-12-sandia-online-class.md
eventdate: 2012-11-12
---

Held on November 12, 2012

* Taught by Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.10, but can have issues with HTTPS credential prompting.
* Best is 1.8.X or higher

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

## Tools, Tips, Shortcuts

* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

## Resources

* SSL Certificates
    * [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
    * Disabling SSL Certificate Checks for Git:
            git config --global http.sslVerify false
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

## Git Foundations

* Git's Three Stage Thinking
* Versioning Files in Git
* Differences
* Viewing History in Git
* Understanding Git's Content Tracking
* Moving and copying files
* Branching and Merging in Git
* Rebase and interactive rebase
* Establishing upstream repositories
* RefLog as a safety net
* Stash for work-in-progress
* Reset modalities

## GitHub Power Tools Outline

* Push, pull, and fetch
* Collaboration through Pull Requests
* Code review features of GitHub
* People, teams, and organizations
    * Question: process in Enterprise for repo transfer between owners?
* Issues
* Project Sites
* The GitHub API
    * Question: rate limits in Enterprise?
    * https://developer.github.com/v3/
    * If there's no Internet (air gap), can Enterprise users map Gravatar requests to some other resource?
    * We have a large LDAP auth network here, we want to limit access to our enterprise github to just our teams.  there is a LDAP group that describes us, but we haven't found a way to limit access to enterprise to just our group.
* Server-side event hooks



## Command Line History

    git config user.name
    git config user.email
    git config
    git config --list
    git config --system --list
    git config --global --list
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.coM"
    git config --global user.email "tlberglund@github.com"
    git config user.name
    git config user.email
    git config --global user.name
    git config --local user.name
    pwd
    git init newproject
    ls
    cd newproject
    ls
    ls -la 
    cd ..
    ll
    git init newproject
    rm -rf newproject
    git init newproject
    git status
    cd newproject
    ls -la
    tree .git 
    tr.git
    cd new
    pwd
    cd scratch/newproject
    while; do; clear; tree .git; sleep 1; done
    vi caesar.txt 
    ls
    git status
    git config --global color.ui auto 
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    git status
    ls
    cat caesar.txt
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "The noblest man"
    ls
    git status
    git diff 
    vi caesar.txt
    git dif
    git diff
    git add caesar.txt
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff --staged
    git diff
    git diff --color-words
    git diff --color-words > diff.txt
    cat diff.txt
    vi diff.txt
    rm diff.txt
    git diff --word-diff
    git diff HEAD 
    git diff --word-diff HEAD 
    git help diff
    git status
    git diff HEAD
    git diff --staged
    git commit -m "Costly blood"
    git status
    git diff
    git add caesar.txt
    git status
    git commit -m "Fixed an accent so the fourth line would scan properly"
    git diff HEAD 
    git status
    vi caesar.txt
    git diff
    vi caesar.txt
    git diff
    git diff -w
    vi caesar.txt
    git diff 
    git log
    git log --stat
    git log --patch 
    git log -p
    history
    git log -p -1
    git log -p -2
    git log --pretty=full
    git log --pretty=email
    git log --pretty=email --patch
    git log --pretty=raw
    git log --pretty=raw -1
    git log --pretty=raw -2
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline --abbrev-commit --graph
    git lg
    history
    git help config 
    ls
    generaterandomfiles 5 junk txt
    ls
    cat junk
    cat junk1.txt
    git status
    git add . 
    git status
    git commit -m "Added five files prepared for destruction"
    git log --stat -1
    git log --stat -2
    git rm junk1.txt
    ls
    git status
    rm junk2.txt
    ls
    git status
    git rm junk2.txt
    git status
    open .
    git status
    git add -u . 
    git status
    git commit -m "Cleaned up a bunch of cruft"
    history
    git --versin
    git --version
    ls
    generaterandomfiles 5 file.txt
    generaterandomfiles 5 file txt
    ls
    git status
    ls -l ~ > listing.txt
    git status
    cat listing.txt
    git status
    git add .
    git commit -m "Set up some files to move"
    ls
    ls -l
    mkdir files
    ls -l
    git status 
    git log --pretty=raw
    git log --pretty=raw -1
    git ls-tree 46cee1779e1ea6e00334f7af40acdc5106fa357d
    git cat-file -p e1852c1d20b0643b606f240b81c7c44c34e44382
    git cat-file -p feba4
    tree .git/objects
    tree
    git mv file1.txt files/
    git status
    mv file2.txt files/
    git status
    git rm file2.txt
    git add files/file2.txt
    git status
    git add -A .
    git status
    git commit -m "Did a major refactoring"
    git log --stat
    git log --stat -M
    tree
    vi listing.txt
    git status
    git mv listing.txt files/
    git status
    git add .
    git status
    git commit -m "Moved and altered a file"
    git log --stat 
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M85
    git log --stat -1 -M81
    history
    vi files/listing.txt
    git add .
    git commit -m "Changed the listing, looking for trouble"
    git log --stat -3
    git log -- listing.txt
    pwd
    git help log
    git log --follow -- listing.txt
    git log --follow -- files/listing.txt
    git log --stat --follow -- files/listing.txt
    git log --stat -- files/listing.txt
    history
    git log --graph --pretty=oneline --abbrev-commit
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    git lol
    git lg
    git config alias.lg 
    git config --list --global | grep alias
    tr.git
    cd scratch/newproject
    git loglive
    cat ~/scripts/git-loglive
    git lg
    ll .git
    tree .git/refs
    git status
    cat .git/refs/heads/master
    cat .git/HEAD
    git lg
    git branch
    git branch feature
    git branch
    git checkout feature
    ls
    git status
    git branch
    cat .git/HEAD
    tree .git/refs
    vi caesar.txt
    vi beowulf.txt
    git status
    git add .
    git status
    git commit -m "Assorted changes in the feature branch"
    git lg
    git checkout master
    l
    ls
    cat caesar.txt
    vi caesar.txt
    vi chesterton.txt
    git status
    git branch
    git status
    git lg
    git status
    git add .
    git status
    git commit -m "MOAR Shakespeare, plus Chesterton"
    git lg
    git branch
    git merge feature -m "Merged the feature branch"
    git lg
    git lol
    git lg
    git branch
    git branch -d feature 
    git branch feature2 
    git lg
    git branch
    vi caesar.txt
    git commit -a -m "Domestic fury"
    git checkout feature2
    vi caesar.txt
    vi chesterton.txt
    git status
    git add .
    git commit -m "Defective Shakespeare, more Chesterton"
    git lg
    git status
    git checkout master
    git merge feature2
    git status
    cat chesterton.txt
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit 
    mate
    git config --global core.editor emacs 
    vi chesterton.txt
    git commit -am "Curly hair"
    cat chesterton.txt
    git reset --hard HEAD^
    vi chesterton.txt
    git add .
    git commit
    fg
    git commit
    git log
    git config core.editor
    git config --global --unset core.editor 
    git log
    history
    tr.git
    cd scratch
    cd newproject
    export PS1="$ "
    tr.git
    cd scratch
    git loglive -20
    cd newproject
    git loglive -20
    git lg
    git status
    git lg
    git branch -d feature2
    git lg
    history
    git branch feature3
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git checkout feature3
    vi beowulf.txt
    vi chesterton.txt
    git status
    git add .
    git commit -m "More content out here in the feature branch"
    git lg
    git branch
    git rebase master
    git checkout master
    git merge feature3 -m "Merged feature branch after rebasing"
    git branch -d feature3
    git lg
    git checkout -b feature4 
    git branch
    tree
    cd files
    generaterandomchanges 10 random txt
    git lg
    git loglive -15
    git rev-parse HEAD
    git lg -10
    git rev-parse HEAD
    git rev-parse HEAD^
    git rev-parse HEAD~5
    git rev-parse master
    git rev-parse feature
    git rev-parse feature4
    git branch
    git rebase -i HEAD~10
    ls
    vi random10.txt
    git status
    git add .
    git status
    git rebase --continue 
    git lg
    ls
    cat random10.txt
    git lg
    git rebase -i HEAD~7
    git lg
    git log --stat -1
    tree
    git checkout master
    git merge feature4
    git branch -d feature4
    git lg
    git remote add origin https://github.com/githubtrainer/poetry.git
    git remote
    git remote -v
    pwd
    cd ..
    cat .git/config
    git push -u origin master
    tr.git
    cd scratch
    git clone https://github.com/githubtrainer/poetry.git
    rm -rf poetry
    git clone http://github.com/githubtrainer/poetry.git
    git help config
    git help clone
    git help config
    tree newproject/.git/objects
    ls
    cd poetry
    ll
    git remote -v
    ll -a
    git status
    ll
    git remote -v
    git lg
    git remote -v
    git branch 
    git branch -a
    git lg
    history
    git branch
    git config user.anem
    git config user.name
    git config user.email
    git config --local user.name "GitHub Student"
    git config user.email "training+githubstudent@github.com"
    git branch
    git checkout -b student_changes
    git branch
    ll
    vi caesar.txt
    git commit -a -m "Smiley mothers"
    vi caesar.txt
    git commit -am "Choked pity"
    git lg
    git ranch
    git branch
    git push -u origin student_changes
    git remote -v
    git pull
    git branch -a
    git fetch
    git branch -a
    git push -u origin student_changes
    git pull origin student_changes
    git push -u origin student_changes
    git remote -v
    ll
    git branch
    git checkout -b feature
    vi caesar.txt
    git branch
    git status
    git stash
    git status
    cat caesar.txt
    git branch
    git stash list
    git checkout master
    ls
    vi beowulf.txt
    git add .
    git commit -m "Sheild Sheafson"
    git checkout feature
    git lg
    git lg -10
    git branch
    cat caesar.txt
    git stash pop 
    git stash list
    vi caesar.txt
    git status
    vi ozymandias.txt
    git status
    git branch
    git checkout master
    git status
    cat caesar.txt
    git status
    git add .
    git commit -m "Smiley mothers and legs of stone"
    git branch -d feature
    git branch feature 23754bb
    cat caesar.txt
    git checkout feature
    vi caesar.txt
    git checkout master
    git status
    git diff
    git status
    git checkout HEAD -- caesar.txt  
    git status
    git checkout master
    git branch -d feature
    tree .git/refs
    ll
    cat beowulf.txt
    git tag BEOWULF_COMPLETE
    git lg -10
    tree .git/refs
    cat .git/refs/tags/BEOWULF_COMPLETE
    git show BEOWULF_COMPLETE
    ll
    vi ozymandias.txt
    git commit -am "Shattered visage"
    git lg -10
    tree .git/objects
    git tag -a SHATTERED_VISAGE
    git lg -10
    tree .git/refs
    tree .git/objects
    git show SHATTERED_VISAGE
    vi caesar.txt
    git add .
    git commit -m "Finished up Caesar"
    git status
    git lg -10
    git reset --hard a06a55b
    git lg -10
    vi caesar.txt
    git add .
    git commit -m "Choked pity"
    git reflog
    git reset --hard HEAD@{2} 
    cat caesar.txt
    git reflog
    git reset --hard HEAD@{1}
    cat caesar.txt

    git help diff
    git diff SHATTERED_VISAGE BEOWULF_COMPLETE
    git diff BEOWULF_COMPLETE SHATTERED_VISAGE
    git status
    git branch
    git branch -a
    git remote -v
    ll
    echo junk > junk.txt
    git status
    git add .
    git status
    git reset HEAD junk.txt
    git status
    ls
    cat junk.txt
    git add .
    git status
    git reset
    git status
    git add .
    git status
    vi ozymandias.txt
    git add .
    git status
    git reset HEAD junk.txt
    git status
    git help clean
    git clean
    git clean -f 
    ls
    git status
    git commit -m "Frown and wrinkled lip"
    history 100
    history
    tree
    ll ~ > console.log
    mkdir target
    echo "CAFEBABE" > JavaCode.class
    tree
    echo "CAFEBABE" > target/JavaCode.class
    rm JavaCode.class
    tree
    git status
    git status -u
    touch .gitignore
    vi .gitignore
    git status
    git add .
    git status
    git commit -m "Added a .gitignore file, finally"
    mkdir -p src/main/resources
    tree
    vi src/main/resources/important-part-of-build.log
    git status
    vi .gitignore
    vi src/main/resources/.gitignore
    git status
    git status -u
    vi .gitignore
    git status -u
    mkdir -p src/test/java
    tree 
    touch src/test/java/.gitignore 
    git status -u
    git add .
    git status
    git commit -m "Some more sophisticated .gitignore examples"
    git remote -v
    git help remote 
    git remote set-url origin git@github.com:githubtrainer/poetry.git
    git remote -v 
    git push
    git push https://github.com/githubtrainer/poetry.git master 
    ll ~/.ssh
    chmod 400 ~/.ssh/id_rsa
    ll ~/.ssh
    git push
    cat .git/config
    git status
    history
    cd ..
    ll
    rm -rf poetry
    git clone git@github.com:githubtrainer/poetry.git
    cd poetry
    git remote -v
    git config user.name
    git config user.email
    history
    cd ..
    ls
    cd poetry
    git remote -
    git remote -v
    cat ~/.ssh/id_rsa.pub
    git branch -a
    tree .refs
    tree .git/refs
    git checkout -b student_changes
    git lg
    ll
    git branch
    git checkout master
    git checkout student_changes
    ll
    vi caesar.txt
    git add .
    git commit -m "Cry Havoc"
    git branch
    git push -u origin student_changes 
    history
    git checkout master
    git branch -a
    cat .git/config
    git branch -a
    git fetch 
    git branch -a
    git fetch
    git branch -a
    git remote
    git remote -v
    git checkout bryanolivas_changes
    git branch -a
    ll
    vi caesar.txt
    git diff master
    git status
    git add .
    git commit -m "Final two lines of the soliloquy"
    git status
    git push
    git pull
    git diff HEAD&
    git diff HEAD^
    history
    vi caesar.txt
    git commit -am "Cleaned up Caesar a little bit"
    git push
    git status
    git push
    git fetch
    git push
    git status
    git pull
    git status
    vi caesar.txt
    git add .
    git status
    git commit 
    history
    git lg
    git checkout master
    gitfetch
    git fetch
    git status
    git lg
    git pull
    git lg
    git branch
    git branch -a
    git merge bryanolivas_changes
    git merge origin/theckla_changes
    vi caesar.txt
    git commit
    git add .
    git commit
    git branch -a
    git merge origin/lr1100_changes
    vi beowulf.txt
    git status
    vi beowulf.txt
    git merge --abort
    history
    git branch
    git branch -a
    history
    git status
    git push
    git lg
    git merge origin/theckla_changes
    git branch -a
    git merge student_changes
    vi caesar.txt
    git status
    git add caesar.txt
    git commit
    git push
    git pull
    git push
    git branch -a
    git push origin :student_changes
    git branch -d student_changes
    history
    git lg
    git log
    git fetch
    git show 803cfcebc21c11fa73e1c9fed6cb34cd74c1e8ab
    git diff HEAD 803cfcebc21c11fa73e1c9fed6cb34cd74c1e8ab
    git diff HEAD 803cfc
    git branch -a
    git branch
    git branch -d bryanolivas_changes
    git merge bryanolivas_changes
    git checkout bryanolivas_changes
    git pull
    git merge origin/bryanolivas_changes
    git checkout master
    git merge bryanolivas_changes
    git branch -d bryanolivas_changes
    git branch -D bryanolivas_changes
    git help push
    git status
    git push
    git push --prune 
    open .git
    git push --prune
    git fetch --prune
    history
    git help push
    vi README
    git add .
    git commit -m "Added a readme"
    git branch -a
    git push --prune
    git push origin :bryanolivas_changes
    git push origin :cpendle_branch
    git push origin :dac
    git push origin :davidblackledge_changes
    git push origin :debodett
    git push origin :foobar
    git push origin :gha4me_branch
    git push origin :jabroo
    git push origin :jlromin_changes
    git push origin :jmgries_changes
    git push origin :jmlineb_changes
    git push origin :jshaddi
    git push origin :kmodglin_changes
    git push origin :kpendle_changes
    git push origin :lr1100_changes
    git push origin :mak_branch
    git push origin :master
    git push origin :mnc_changes
    git push origin :mtjenki_changes
    git push origin :rstrong_features
    git push origin :sjorgen_changes
    git push origin :srlinds2_changes
    git push origin :srlinds_changes
    git push origin :student_changes_ghbb
    git push origin :student_jlromin
    git push origin :theckla_changes
    git push origin :tienbui_changes
    git branch -v
    git branch -a
    git push
    git pull
    cd ..
    ls
    git clone git@github.com:githubstudent/poetry.git forked-poetry 
    cd forked-poetry
    history
    ls
    ls -l
    git lg
    ll
    vi chesterton.txt
    git add .
    git commit -a "Chieftains of the north"
    git commit -am "Chieftains of the north"
    git push
    history
    cat .git/config
    history
    git config push.default
    git config --global push.default simple
    git remote -v
    git branch
    git pull
    git status
    git ls-remote origin 
    git fetch origin refs/pull/11/head 
    git diff FETCH_HEAD
    git merge FETCH_HEAD 
    git status
    vi chesterton.txt
    git add chesterton.txt
    git status
    git commit
    git status
    git push
    git remote add theckla https://github.com/Theckla/poetry.git
    git remote -v
    git fetch theckla
    git branch -a
    git diff theckla/master
    git merge theckla/master
    vi beowulf.txt
    git add beowulf.txt
    git commit
    git push
    git pull
    git push
    git remote rm theckla
    git fetch https://github.com/githubstudent/poetry.git master
    git merge FETCH_HEAD
    vi chesterton.txt
    git add .
    git commit
    git psuh
    git push
    git pull
    git push
    git remote add trainer https://github.com/githubtrainer/poetry.git
    git remote set-url trainer git://github.com/githubtrainer/poetry.git
    git remote -v
    git fetch trainer
    git branch -a
    git merge trainer/master
    git pull trainer master
    ll
    git push
    history
    git branch -a
    history
    git pull
    git push
    git branch -a
    git remote -v
    git remote add org https://github.com/githuborg/poetry.git
    git remote -v
    git push org master
    git remote -v
    git fetch
    git remote set-url origin git@github.com:githuborg/poetry.git
    git fetch
    git push
    git pull
    git fetch
    ll
    vi chesterton.txt
    vi ozymandias.txt
    git add .
    git commit -m "MOAR about Higgins and that broken statue"
    git push
    git pull
    git push
    git loglive -10
    git loglive -15
    git fetch
    git push
    git pull
    git push
    git loglive -10
    gitk &
    ll
    vi tolkien.txt
    git add .
    git commit
    git push
    git pull
    git push
    history
    git branch -a
    git checkout --orphan gh-pages 
    git log master --pretty=raw
    git branch
    git status
    history
    git status
    git reset 
    ll
    git status
    git rm --cached *
    git status
    rm console.log
    git rm --cached *
    git rm --cached -r *
    git status
    git rm --cached -r *
    rm -rm target
    rm -rf target
    git rm --cached -r *
    git status
    ll
    git clean -fdx 
    git status
    git rm --cached .gitignore
    git clean -f
    git status
    ls
    vi index.html
    git add .
    git commit -m "First commit of gh-pages"
    git checkout master
    git mv README README.md
    git commit -m "Renamed the README"
    git log gh-pages --pretty=raw
    git checkout gh-pages
    git push -u origin gh-pages
    history
    curl https://api.github.com/zen
    man curl
    brew install grcurl
    grcurl
    brew install grc
    grcurl
    grc
    git checkout -b new_feature
    git merge master
    vi README.md
    git commit -am "Changed README"
    git push
    git push -u origin new_feature
    curl https://api.github.com/users/defunkt
    curl https://api.github.com/users/defunkt
    curl -i https://api.github.com/users/defunkt
    curl -u pengwynn -i https://api.github.com/users/defunkt
    curl -n -i https://api.github.com/user
    curl -u defunkt -i http://api.github.dev/authorizations
    curl -u defunkt -i http://api.github.dev/authorizations
    curl -u defunkt -i -d '{"scopes": ["repo"]}' http://api.github.dev/authorizations
    curl "http://api.github.dev/user?access_token=258fb4573a4f8a68c63ef37ac2a01fdf74861f27"
    curl -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/user
    curl -I -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/user
    curl -I -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/repos/defunkt/dotjs
    curl -i -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/repos/defunkt/dotjs
    curl -i -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/user/repos
    curl -i -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/users/defunkt/repos
    curl -i -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/org/githubhelp/repos
    curl -i -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/org/github/repos
    curl -i -H 'Authorization: token 258fb4573a4f8a68c63ef37ac2a01fdf74861f27' http://api.github.dev/orgs/github/repos
    curl -i http://api.github.dev/orgs/github/repos
    curl -i https://api.github.com/orgs/github/repos
    curl -I https://api.github.com/orgs/github/repos
    curl -i https://api.github.com/repos/rails/rails/commits
    curl -I https://api.github.com/repos/rails/rails/commits
    curl -i -u pengwynn -d '{"title": "This is the title", "body": "Yo what is up?", "labels": ["foo"] }' https://api.github.com/repos/githuborg/poetry/issues
    curl -i -u pengwynn -d '{"issue": 16, "head": "new_feature", "base": "master" }' https://api.github.com/repos/githuborg/poetry/pulls
    curl -I https://api.github.com/repos/rails/rails
    curl -i https://api.github.com/repos/rails/rails
    curl -i -H 'If-None-Match: "1428448490de28afb6d3f836fdf8702e"' https://api.github.com/repos/rails/rails
