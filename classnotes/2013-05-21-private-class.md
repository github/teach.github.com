---
layout: bare
title: Private Online Class
description: Private Class Notes
tags: [notes]
path: classnotes/2013-05-21-private.md
eventdate: 2013-05-21
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [GitHub Training Videos](http://youtube.com/github)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)
* [Git - Apply Patches](https://ariejan.net/2009/10/26/how-to-create-and-apply-a-patch-with-git/)
* [Git - Diff Tools](http://gitguru.com/2009/02/22/integrating-git-with-a-visual-merge-tool/)
* [Git - Setting Aliases](http://davidwalsh.name/git-aliases)
* [Git - Alias list](https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig#L41)

## Command History

    git --version
    git config --global user.name
    git config --global user.name "Brent Beer"
    git config --global user.name "Brent Training"
    git config --global user.name
    git config --global user.name "Brent Beer"
    git config --global user.email
    git config --local --list
    git config --global --list
    git config --global color.ui auto
    git init newproject
    cd newproject/
    ls 
    cd ..
    rm -rf newproject/
    git init newproject
    cd newproject/
    ls
    ls .git/
    git config --local --list
    git config --local user.name "GitHub Student"
    git config --local user.email "training+student@github.com"
    vim first.txt
    git status
    git add first.txt
    git status
    git commit -m "initial commit"
    vim .git/
    vim .git/
    vim first.txt 
    git status
    git add first.txt
    git status
    git commit -m "updated text to be consistent"
    vim first.txt 
    git diff
    git status
    git diff
    git diff -- first.txt
    git status
    git status
    git add first.txt
    git status
    git diff
    git diff --staged
    vim .git/
    git diff HEAD
    git status
    git status
    vim first.txt 
    git status
    git diff
    git diff --staged
    git diff HEAD
    git status
    git diff --staged
    git commit -m "only add third line"
    git status
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git diff
    git status 
    git add .
    git commit -m "really add a last line"
    git status
    git log
    git log --stat
    git log --stat
    git log --patch
    git log --format=full
    git log --format=fuller
    git log 
    git log --format=raw
    git log
    git log -1
    git log -1
    git log -1 --stat
    git log -1 --patch
    git log --graph
    git log --graph --decorate --oneline --all
    git log -1 --patch
    git log -S really
    git log --patch -S really
    git log --patch -S last
    git log --patch -S last
    git log --patch --grep="last"
    git log --patch --grep="initial"
    git status
    vim crud.txt
    git status
    git add crud.txt
    git commit -m "commiting crud for worthlessness"
    git status
    git rm crud.txt
    git status
    ls
    git reset HEAD crud.txt
    git status
    git checkout -- crud.txt
    ls
    git status
    rm crud.txt 
    git status
    git rm crud.txt
    git status
    git commit -m "no need for the crud"
    ls
    vim keep_me_uncommited.txt
    git status
    git add keep_me_uncommited.txt
    git commit -m "keep this file around"
    git status
    git rm --cached -- keep_me_uncommited.txt
    git status
    ls
    git commit -m "untrack file, but keep it"
    git status
    rm keep_me_uncommited.txt 
    git status
    vim keep_me.txt
    git status
    git add keep_me.txt
    git commit -m "get ready for removal"
    rm keep_me.txt 
    git status
    git help add
    git add -u keep_me.txt
    git status
    git commit -m "didnt really need the keep_me file"
    git help add
    ls
    mkdir documents
    vim documents/build.log
    git status
    git status -u
    git add documents/
    git commit -m"put log files in documents"
    git status
    ls
    mkdir logs
    git mv documents/build.log logs/
    git status
    git commit -m "move logs to logs"
    git status
    ls
    mv logs/build.log documents/
    git status
    git status -u
    git add -A .
    git status
    git commit -m "changed my mind, keep in documents"
    git status
    ls
    ls logs/
    ls ~ > logs/home_dir_listing.txt
    ls logs/
    git status
    git status -u
    git add .
    git status
    git commit -m "home directory listing"
    mv logs/home_dir_listing.txt documents/
    git status
    vim documents/home_dir_listing.txt 
    git status
    git add -A .
    git status
    git commit -m "move to docs, also content changed"
    git log -M72 -1
    git log -M72 -1 --stat
    git log -M71 -1 --stat
    git log -- documents/home_dir_listing.txt
    git log --follow -- documents/home_dir_listing.txt
    git status
    git status
    vim .gitignore
    git status
    touch logs/product.log
    git status
    git status -u
    touch logs/production.log
    git status
    git status -u
    ls logs/
    git add -A .
    git status
    git commit -m "ignore production logs"
    vim logs/production.log 
    git status
    vim .gitignore 
    git status
    ls logs/
    vim logs/product
    vim logs/product.log 
    git status
    git rm --cached logs/product.log
    git status
    git diff .gitignore
    ls logs/
    git status
    git add ,
    git add .
    git status
    git commit -m "no longer tracking product"
    vim documents/.gitignore
    git status
    ls documents/
    ls -la ~ > documents/home_dir_listing2.txt
    git status
    ls
    ls -la ~ > logs/home_dir_listing2.txt
    git status -i
    git status -u
    git status -u
    git add .
    git status
    git commit -m "ignore only docs/home files"
    vim .gitignore 
    ls
    rm logs/home_dir_listing2.txt 
    git status
    git add .
    git status
    git checkout -- logs/home_dir_listing2.txt
    git status
    git config --global --list
    git log --oneline --decorate -5
    git checkout 7a7b503
    ls documents/
    ls -a documents/
    git log --oneline --decorate -5 --graph --al
    git log --oneline --decorate -5 --graph --all
    git checkout master
    git log --oneline --decorate -5 --graph --all
    git branch
    git branch feature1
    git branch test1
    git branch throwaway
    git branch
    git log --oneline --decorate -5 --graph --all
    git checkout feature1
    git log --oneline --decorate -5 --graph --all
    vim second.txt
    git status
    git add .
    git commit -m "added second file"
    git status
    git log --oneline --decorate -5 --graph --all
    vim .
    git checkout test1
    mkdir test
    vim test/test.rb
    git status
    git status -u
    git add .
    git commit -m "start testing"
    git log --oneline --decorate -5 --graph --all
    git checkout feature1
    git log --oneline --decorate -5 --graph --all
    git checkout test1
    git log -2 --format=raw
    git checkout feature1
    git log -2 --format=raw
    git checkout master
    git log --oneline --decorate -5 --graph --all
    git checkout d81903a
    git log --oneline --decorate -5 --graph --all
    cat .git/HEAD 
    ls
    touch throwaway.txt
    git status
    git add throwaway.txt
    git status
    git commit -m "throwaway for throwing away"
    git log -1 --format=raw
    git log --oneline --decorate -5 --graph --all
    git checkout master
    git log --oneline --decorate -5 --graph --all
    git branch new_branch_name 42a19c7d0aa3405145765a18368310e9a5fb733c
    git log --oneline --decorate -5 --graph --all
    git help gc
    git checkout master
    git log --oneline --decorate -10 --graph --all
    git branch -d new_branch_name
    git branch -D new_branch_name 
    git log --oneline --decorate -10 --graph --all
    git branch -m test1 ruby-tests
    git log --oneline --decorate -10 --graph --all
    git branch -d throwaway 
    git log --oneline --decorate -10 --graph --all
    git help branch
    git checkout 1d83058
    git checkout -b logs_logs_logs
    git log --oneline --decorate -10 --graph --all
    git checkout master
    git log feature1 --stat
    git log feature1...master --stat
    git log --oneline --decorate -10 --graph --all
    git branch
    git merge feature1
    git log --oneline --decorate -10 --graph --all
    git log feature1...master --stat
    git log --oneline --decorate -10 --graph --all
    git branch -d feature1
    git status
    ls
    git log -2
    git log --oneline --decorate -10 --graph --all
    git diff fcbd170..b270ce1
    git diff fcbd170...b270ce1
    git diff fcbd170..b270ce1
    git diff b270ce1..fcbd170
    git diff HEAD~2..ruby-tests
    git diff HEAD~2..ruby-tests
    git diff HEAD~2...ruby-tests
    git log HEAD~1..ruby-tests 
    git log HEAD~1..ruby-tests -p
    git log --oneline --decorate -10 --graph --all
    git diff HEAD~1
    git log --oneline --decorate -10 --graph --all
    git diff ruby-tests 
    git diff master..ruby-tests 
    git diff master...ruby-tests 
    git merge ruby-tests 
    git log -2
    git log -3
    git log -3
    git log -1 --format=raw
    git status
    git log --oneline --decorate -10 --graph --all
    git branch more-tests
    git branch new-tests
    git checkout new-tests 
    vim test/controller.rb
    cat .git/refs/heads/ruby-tests 
    git branch -d ruby-tests 
    git log --oneline --decorate -10 --graph --all
    git log --oneline --decorate -10 --graph --all
    ls
    git status
    git checkout master
    git status
    git add .
    git commit -m "needed controller tests"
    git log --oneline --decorate -10 --graph --all
    git checkout new-tests 
    git merge master
    git log --oneline --decorate -10 --graph --all
    git branch
    git branch -d master
    git log --oneline --decorate -10 --graph --all
    git branch -d new-tests 
    git branch master
    git status
    vim test/integration.rb
    git add .
    git status
    git commit -m "integration start"
    git checkout more-tests 
    vim test/
    git status
    git diff test/
    git commit -am "begin testing"
    git status
    git checkout master
    git log --oneline --decorate -10 --graph --all
    git status
    ls
    vim config.yml
    git status
    git add config.yml
    git commit -m "added config.yml"
    git status
    git log --oneline --decorate -10 --graph --all
    git merge more-tests new-tests 
    git help merge
    git help merge
    git status
    vim config.yml 
    git status
    git commit -am "use minitest"
    git log --oneline --decorate -10 --graph --all
    git branch confict
    git branch -m confict conflict
    git checkout conflict 
    vim .
    git commit -am "really use rspec"
    git checkout master
    vim config.yml 
    git status
    git diff
    git commit -am "use test unit"
    git log --oneline --decorate -10 --graph --all
    git merge conflict 
    git status
    vim config.yml 
    git status
    git diff
    git add config.yml
    git status
    git commit
    git status
    git branch conflict1
    vim config.yml 
    git commit -am "testing to false"
    git checkout conflict
    git checkout conflict1 
    vim config.yml 
    git commit -am "null tests"
    git log --oneline --decorate -5 --graph --all
    git checkout master
    git merge conflict1
    git status
    git merge --abort
    git status
    git log --oneline --decorate -5 --graph --all
    git help merge

## Command Line History Day 2

    git log --oneline --decorate -5 --graph --all
    git log --oneline --decorate -10 --graph --all
    git log --oneline --decorate -10
    git log -4 -p
    git branch
    git log --oneline --decorate -10 --graph --all
    git branch -D conflict1 
    git branch -D conflict
    git branch -D new-tests 
    git branch -D more-tests 
    git log --oneline --decorate -10 --graph --all
    vim .
    git branch rakefile
    git checkout rakefile 
    vim Rakefile
    git status
    git add .
    git commit -m "begin work on cleanup task"
    git status
    vim Rakefile
    git status
    git commit -am "run tests by default"
    git status
    git checkout master
    ls
    vim test/
    git commit -am "continued work on rspec tests"
    git status
    git log --oneline --decorate -10 --graph --all
    git branch
    git rebase rakefile
    git log --oneline --decorate -10 --graph --all
    git checkout rakefile
    vim Rakefile 
    git commit -am "run tests properly"
    git log --oneline --decorate -10 --graph --all
    git checkout master
    vim .
    ls
    git status
    git commit -am "ignore js tests"
    git status
    git log --oneline --decorate -10 --graph --all
    git checkout rakefile 
    git log --oneline --decorate -5 --graph --all
    git rebase master
    git log --oneline --decorate -5 --graph --all
    git checkout master
    git merge rakefile 
    git log --oneline --decorate -5 --graph --all
    git log --oneline --decorate -10 --graph --all
    git log --oneline --decorate -15 --graph --all
    cd ../git/
    git log --oneline --decorate -15 --graph --all
    git log --oneline --decorate -50 --graph --all
    cd ../newproject/
    git log --oneline --decorate -50 --graph --all
    git log --oneline --decorate -10 --graph --all
    git status
    git branch fix-first
    git checkout fix-first 
    vim first.txt 
    git commit -am "keep newline"
    git checkout master
    vim second.txt 
    git status
    git commit -am "additional greeting from second"
    git log --oneline --decorate -5 --graph --all
    git checkout fix-first 
    git rebase master
    git log --oneline --decorate -5 --graph --all
    vim first.txt 
    git status
    git commit -am "re-add newline maybe"
    git log --oneline --decorate -5 --graph --all
    git checkout master
    git merge fix-first 
    git log --oneline --decorate -10 --graph --all
    git branch
    git branch -d fix-first 
    git branch -D rakefile 
    git branch rakefile1
    git checkout rakefile1 
    generaterandomchanges 
    generaterandomchanges 5 ruby_sample rb
    git log --oneline --decorate -10 --graph --all
    git checkout master
    generaterandomchanges 5 master_files txt
    git log --oneline --decorate -10 --graph --all
    git log --oneline --decorate -15 --graph --all
    git log --oneline --decorate -15 --graph --all
    git checkout rakefile1 
    git rebase -i master
    git status
    vim .
    git status
    git add ruby_sample5.rb
    git status
    git commit --amend
    git rebase --continue
    git log --oneline --decorate -15 --graph --all
    git log --format=medium -5
    git log --oneline --decorate -15 --graph --all
    git checkout master
    git merge rakefile1 
    git log --oneline --decorate -15 --graph --all
    git help commit
    git branch
    git branch -d rakefile1 
    ls
    vim master_files5.txt 
    git status
    git add .
    git status
    git commit --amend
    git log --oneline --decorate -5 --graph --all
    git help commit
    git status
    git log --oneline --decorate -5 --graph --all
    git reset --soft HEAD
    git status
    git reset --hard HEAD
    git status
    git reset --soft HEAD~1
    git status
    git log --oneline --decorate -5 --graph --all
    vim master_files5.txt 
    git status
    git add master_files5.txt
    git status
    git diff --staged
    git commit -m "random change plus non random"
    git log --oneline --decorate -5 --graph --all
    git log -1 -p
    git log --oneline --decorate -5 --graph --all
    git log -2 -p
    git reset --soft HEAD~2
    git status
    git commit -m "re-commiting changes"
    git log --oneline --decorate -5 --graph --all
    git reset HEAD~2
    git status
    git log --oneline --decorate -5 --graph --all
    git help reset
    git help reset
    git help reset
    git status
    rm ruby_sample2.rb 
    git status
    rm ruby_sample3.rb 
    git add .
    git status
    git commit -m "removed 2 and 3 after a reset, sorry guys"
    git log --oneline --decorate -5 --graph --all
    git log --oneline --decorate -5 --graph --all
    git reset --hard HEAD~1
    git status
    git remote add origin https://github.com/githubstudent/newproject.git
    git push -u origin master
    git branch
    git branch -r
    git branch -a
    git branch -r
    git status
    ls
    vim first.txt 
    git commit -am "removed last line"
    git status
    git push origin
    git config --local user.name training+githubstudents@github.com
    git config --local --list
    git config --local user.name "GitHub Student"
    git config --local user.email "training+githubstudents@github.com
    git config --local user.email "training+githubstudents@github.com"
    git config --local --list
    git status
    git fetch
    git status
    git merge origin/master
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git
    rm -rf hellogitworld/
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld/
    git log -5 --oneline
    git log -5
    git remote -v
    git branch
    git branch student-feature
    git checkout student-feature 
    vim student.txt
    ls
    git status
    git add .
    git commit -m "added student greeting file"
    git status
    git push -u origin student-feature
    git branch -r
    git config --local user.name "GitHub Student"
    git config --local user.email "training+githubstudents@github.com"
    git status
    vim student.txt 
    git mv student.txt github-student.txt
    git status
    git commit -m "fixed file naming"
    git status
    git push origin student-feature
    git remote add teacher https://github.com/githubteacher/hellogitworld.git
    git remote -v
    git fetch origin
    git fetch teacher
    git branch
    git checkout master
    git branch -r
    git branch
    git merge teacher/master
    git status
    git push origin master
    cd ..
    git clone https://github.com/githubteacher/hellogitworld.git teacher-hellogitworld
    ls
    cd teacher-hellogitworld/
    git branch greetings-directory
    git checkout greetings-directory 
    mkdir greetings
    ls
    git config --local user.name "GitHub Student"
    git config --local user.email "training+githubstudents@github.com"
    git status
    git mv github-student.txt greetings/
    git status
    git commit -m "move my greeting to the greetings directory"
    git status
    git push -u origin greetings-directory
    git checkout master
    git status
    git fetch
    git remote -v
    git fetch
    git log --5
    git log -5
    git status
    git log origin/master -f
    git log origin/master -5
    git status
    git merge origin/master
    git log -2
    git show 32803919e
    git revert 32803919e
    git status
    git push origin master
    git reflog
    git branch feature-destroy-all-changes
    git checkout feature-destroy-all-changes 
    generaterandomchanges 10 fake-file txt
    git log --oneline --decorate -20 --graph --all
    git reset --hard master
    git log --oneline --decorate -20 --graph --all
    git log --oneline --decorate -10 --graph --all
    git reflog
    git reset --hard HEAD@{1}
    git log --oneline --decorate -10 --graph --all
    git log --oneline --decorate -12 --graph --all
    git reflog
    git reset --hard HEAD@{1}
    git reset --hard HEAD@{1}
    git reset --hard HEAD@{1}
    git reset --hard HEAD@{1}
    git reset --hard HEAD@{1}
    git reset --hard HEAD@{1}
    git reset --hard HEAD@{18}
    git reset --hard bc4b4e9
    ls
    git status
    git log --oneline --decorate -12 --graph --all
    git reflog -10
    git reflog -15
    git reset --hard 2ce3800
    git log --oneline --decorate -12 --graph --all
    git push -u origin feature-destroy-all-changes 
    git reset --hard HEAD~3
    git status
    git reset --hard origin/feature-destroy-all-changes
