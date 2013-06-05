---
layout: bare
title: Athlone Git Training Class
description: Athlone Git Training Class Notes
tags: [notes,private]
path: classnotes/2013-05-21-athlone-git-class.md
eventdate: 2013-05-21
---

# Git Training in Athlone, Ireland
with Matthew McCullough  
2013-05-21 through 2013-05-23

## Teacher
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Topics

* Repository Structure
* Working with a Repo
* Remotes
* Branching and Merging
* Re-doing history
* Git's unique features
* Eclipse (eGit)
* Undo changes (Reset)

# Core Resources

Slides at:

* [Git Foundations](http://teach.github.com/presentations/git-foundations.html)
* [Git Advanced](http://teach.github.com/presentations/git-advanced.html)

Videos at:

* [All GitHub YouTube Videos](http://youtube.com/github)
* [GitHub YouTube Training Series](http://www.youtube.com/playlist?list=PL0lo9MOBetEHhfG9vJzVCTiDYcbhAiEqL)

Proxy server:

    git config --global http.proxy "www-proxy.ericsson.se:8080"

Sample Repo:
https://github.com/githubteacher/hellogitworld

# More Resources
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
* [Git Submodules - ProGit Book Chapter](http://git-scm.com/book/en/Git-Tools-Submodules)
* [Matthew's Dot Files](https://github.com/matthewmccullough/dotfiles)

# Day 1, Part 1 Command Line History

    git --version
    git config user.name
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git config user.email
    git config -e --global
    git init project1
    cd project1
    git status
    vim first.txt
    git status
    git add .
    git status
    git commit -m "My first commit"
    git status
    cd ..
    git clone https://github.com/githubteacher/hellogitworld
    cd hellogitworld
    vim pom.xml
    git status
    git add .
    git commit -m "Adding Athlone to the code"
    git push
    vim pom.xml
    git add .
    git commit -m "Adding Athlone to the code"
    git push
    git pull
    open pom.xml
    vim matthewmccullough.txt
    git status
    git add .
    git status
    git commit -m "Matthew was here"
    git status
    git push
    git fetch
    git status
    git branch -a
    git diff master origin/master
    git log master...origin/master
    git merge origin/master
    git log
    git log origin/master --patch
    git remote -v
    git remote add other https://github.com/githubteacher/hellogitworld
    git fetch other
    git remote add gerard git://10.156.92.65/reposforclass
    git remote add mine https://github.com/githubstudent/hellogitworld
    git push mine master:master
    git remote -v
    cd .. 
    cd hellogitworld
    git branch feature1
    git checkout feature1
    touch onthebranch.txt
    touch zonthebranch.txt
    git add .
    git commit -m "New files on the branch"
    git checkout master
    git checkout feature1
    git checkout master
    git branch
    git status
    git checkout -
    git checkout master
    git merge feature1
    git remote -v
    git checkout feature1
    vim pom.xml
    git status
    git stash
    git status
    git stash pop
    git stash
    echo JUNK >> matthewmccullough.txt
    git stash
    git stash list
    git stash pop
    git stash save "Give it a name"
    git checkout master
    git branch
    git branch feature2
    vim pom.xml
    git add pom.xml
    git commit -m "Bug fix on master"
    git checkout feature2
    git add -A .
    git status
    git commit -m "Renamed with changes"
    git checkout master
    cat pom.xml
    git merge feature2
    cd buildtool
    more build.xml
    git log
    cd ..
    git checkout master~10 -- pom.xml
    git checkout master~5 -- pom.xml
    cat pom.xml
    git checkout master~7 -- pom.xml
    cat pom.xml
    z git_git
    git log --author=Junio
    git log --author=Junio -S test
    git log --author=Junio -S test --since=1.year.ago
    git log --author=Junio -S test --since=1.year.ago --committer=Juion
    git log --author=Junio -S test --since=1.year.ago --committer=Junio
    cd ..

# Day 1, Part 2 Command Line History

    git --version
    git config user.name
    git config --global user.name "Matthew McCullough"
    git config user.name
    git config --global user.email "matthew@github.com"
    git config user.email
    git config --global color.ui auto
    git help config
    git init project1
    open project1/.git
    cd project1
    ls -al
    pwd
    git status
    vim first.txt
    git status
    git add first.txt
    git add .
    git status
    git commit -m "My first commit"
    git rev-parse ae4e
    echo junk > junk.txt
    git status
    echo MOD >> first.txt
    git status
    git commit -a -m "My second change"
    cd ..
    clear
    pwd
    git clone https://github.com/githubteacher/hellogitworld
    ls
    cd hellogitworld
    git log
    git log --since=1.year.ago
    git log --author=Alm
    git branch -a
    git checkout gh-pages
    treelive
    treelive 2
    git checkout master
    git checkout gh-pages
    git branch feature1
    git branch -a
    git log
    git branch bugfix e59e39b655ded123d638802dd0324144b670a12d
    git branch -d bugfix
    git tag RELEASE_5.0
    git branch bugfix2 RELEASE_5.0 
    git checkout master
    git branch feature2
    vim pom.xml
    git commit -a -m"Athlone fix on master
    git commit -a -m"Athlone fix on master"
    open .
    git checkout feature2
    git reset --hard
    ls
    git status
    rm -rf build
    rm -rf buildscripts
    git status
    git add -A .
    git status
    git commit -m"Refactoring"
    git checkout master
    git merge feature2 -m "Feature work"
    git mergtool --toolhelp
    git mergtool --tool-help
    git difftool --tool-help
    git log -M 
    git log -M --stat
    git status
    git remote add myfork https://github.com/githubstudent/hellogitworld
    git remote -v
    git fetch myfork
    gt status
    git status
    git push myfork master:master
    git config alias.serverhere
    git config alias.servehere
    clear
    git branch matthewsfeature
    git checkout matthewsfeature 
    echo RANDOM >> runme.sh
    git commit -a -m "Matthew changes"
    git push -u origin matthewsfeature 
    git fetch origin
    git checkout master
    git merge origin/master
    git push origin
    git pull
    git push origin
    git merge matthewsfeature 
    git push
    git pull
    git push
    git pull -p
    gitk --all
    echo CHANGE >> martin
    git commit -a -m"Stuff"
    gitk --all&
    gitcd ..
    cd ..
    cd project1
    git status
    git log -1
    cd ..
    cd hellogitworld
    tig
    git log -1
    clear
    git commit --amend
    git log 
    git reflog
    git reset --hard 5091b00
    git log
    git reflog
    git reset --hard c7d9c7a
    git reset --hard 5091b00
    git reflog
    git log 
    git reset --soft d9706703dfb2e3949bda9492a8b97fd218b8a8ec
    git status
    git reset --hard
    echo changes >> resources
    echo changes >> README.txt
    git status
    git stash
    git status
    git stash pop
    git stash
    git stash pop
    git stash list
    git stash
    git stash list
    git log -- README.txt
    git log -p -- README.txt
    git checkout master
    git checkout paulsbranch 
    ls
    git rm README.txt
    git status
    git commit -m "Deleting no longer needed file"
    git checkout master~1 -- README.txt
    ls
    git status
    git commit -m "Restored the file"

---------------------

### Three Hour Workshop with ENIQ – Covering GIT basics
* Notes
    * Help students strategize their migration to Git this year
    * Will bring laptops
* Plans
    * Curriculum would include Git initialization of repos, committing, branching, and merging.

### Half Day Workshop with OSS – Covering GIT basics
* Plans
    * Students will be familiar with the basics of Git and able to look up to others for expert on-site help if needed.

### Half Day Workshop with TOR
* Notes
    * Focus on "development in Git"
    * Also provide "best practices" suggestions since TOR team has some Git exposure.
    * This class should offer more depth than the two introductory workshops.
    * TOR team has already been using Git for a while
    * Representative from each of the TOR teams would make for 10-15 students (which I think is the right number for a more intimate and slightly more advanced class.

####  Git Intermediate Plans

* Robert: GUIs
* Daniel: Merging. IntelliJ.
* Paras: Merging. Renaming. Losing history?
* Fergus: Acceptance testing. Merging. Story branches.
* Shane: Merging and branches. Variable names.
* Nina: Merging and rebasing. Why? When? When not to? Two types.
* Menoj: Useful tips.
* James: Merging. Redoing. Unwinding. Better way to use it. Conflicts. Take it back to a good point.
* Paula: Multiple branches. Octopus. Sequentially.
* Deepa: Just started with Tor and Git.
* Paul: On Deepa's team. New to TOR and Git. Branching strategy. Daily code changes. Continous Integration saved you from breaking the build. Do you put in unfinished code? Story branches?
* Thomas: New to TOR and Git. Branching strategy. Checking in to master.
* Ron: Using Git for a while. Checking in and out of `master`. How to use branches.

https://github.com/githubteacher/hellogitworld

* .gitignore as prop
* Diff before and after pull
* Change committer
* Local git
* Squash the result?
* Product in master branch


## Intermediate Topics

* commits
* branching
* merging
* rebasing (traditional and interactive)
* git notes
* stash
* tags
* push options
* refspecs


### Half Day Workshop with CI

* Coln: TOR. 6 months.
* Sonesh: TOR. 3 years of Git usage.
* Gerald: TOR. Test Automation. 2 months usage.
* Avoril: Training Engineer.
* Tariq: CI Execution. Rebasing topics
* Mark: Cloud team.
* Karthik: Cloud dev. Clearcase using previously. Files in different branches.
* Lizhou: New to Git. CI. Clearcase.
* Denise: Scrum Master. TOR teams that branch that don't integrated for a long time.
* John: CI Execution team. 13 years of Clearcase. Git.
* Darreh: TOR Execution team. 6-8 months. Drop back.

#### Student Topic Requests

* Garbage Collection
* Reset to 2 commits
* Graphical merge tools
* Hooks
* Reset and GC
* File and directory permissions
* bisect


#### Discussion Points
* Clean history or accurate history?
* [Feature Branching - Atlassian](http://blogs.atlassian.com/2012/07/feature-branching-continuous-integrationgit-bamboo/)
* Version numbering system
* Branching model
* git-flow
* Story branching
* [Branch by abstraction](http://martinfowler.com/bliki/BranchByAbstraction.html)
* [Feature toggles](http://martinfowler.com/bliki/FeatureToggle.html)
* Permissions for junior, senior developers
* Rigor of code review?
* [git-flow](http://nvie.com/posts/a-successful-git-branching-model/)
* [Git Worklows by Yan](http://documentup.com/skwp/git-workflows-book)
* Geography of teams
* Frequency of branching?
* How long do branches live?
* How long is a release cycle?
* How long do you maintain a branch for a customer?
* Scale of branching?
* Branching naming conventions?
* Tags for releases?
* Frequncy of releases?
* Rebasing?
* Locking branches after release?
* Who cuts releases?
* What is the team-member scale?

### Half Day Workshop with Advanced Git
* Notes
    * Removal of unwanted files (filter-branching)
    * Rebase deep dive (interactive, onto, autosquash, fixup)
    * Disallow merge commits on master / only allow fast forward
    * Branching Strategy & our current WoW
    * Tags & branching Best Practices
* Plans
    * There would be a strong pre-requisite knowledge to this class, with users needing to have used Git for several months on the job to get the most from teaching only to the advanced level.
    * Class would be intense but very useful, going from example to hands-on example for each of the filter-branch, rebase, tag, and merging topics.
    * Class would be guided discussion with very open Q&A of the best practices I've seen for branching in other similar businesses. We could white-board out what we collectively arrive at as a best branching pattern for the company.

### One Hour Primetime Slot
* Notes
    * Open to all employees on campus
    * Explain "What is Git?"
    * Showcase the "Business value of Git?"
    * 45m to 1h briefing in lecture hall
    * 200 seat lecture hall
* Plans
    * Hybrid of technical and non-technical presentation
    * Show off the "best" features that wow newcomers to Git.
    * Explain what Git enables from a business and technical perspective.
    * Showcase why it is worth the risk of "changing something that works"
    * Three parts of 15m each with questions interspersed and 15m of open Q&A at the end to take us to a full hour session.

### 30 to 45 Minute Management Briefing on Git
* Notes
    * 30 minute session
    * Management Seminar / Keynote (Managers Only)
    * "How will Git help the organisation?"
    " Help remove hesitancy with regard to migration from Clearcase
* Plans
    * Three parts to the presentation of 10m each.
    * Primary focus is a compelling set of arguments of "How it helps"
    * Dispel hesitancy for change from Clearcase through digrams that showcase what's possible with Git.
    * Discuss and show how Git is an enabler for CI
    * Showcase success of other Ericsson teams that have migrated.
    * Point out pitfalls, but how they can be avoided.
    * Share pointers from companies that have been more successful with CI and CD due to Git.


## Day Two - Intermediate and CI Class

    git clone https://github.com/githubteacher/hellogitworld
    vim .git/config
    git commit -a -m"Matthew in Athlone"
    to.scratch
    cp -r hellogitworld hellogitworld2
    cd hellogitworld2
    git commit -a -m"Second person"
    git commit -a -m "Change"
    git push origin :feature_division_polished
    git fetch -p
    git branch 
    git branch -a --merged
    git branch -a --no-merged
    git branch -a -vv
    git branch -vv
    open .git
    git ls-remote origin
    git help fetch
    git reset --hard a913b91
    git reset --hard e6bb3a3
    git merge --no-commit origin/feature_image
    git merge --abort
    git merge --no-ff --no-commit origin/feature_image
    git commit
    git branch -a --no-merge
    git merge --no-ff --no-commit origin/feature_division origin/feature_subtraction
    cat src/Main.groovy
    git mergetool -t opendiff
    vim .gitignore
    git commit 
    cat .git/config
    git commit -a -m"Stuff fixed"
    git reest --hard b10f86a
    git reset --hard b10f86a
    git cherry-pick --no-commit b10f86a
    git reset --soft b10f86a
    git show b10f86a
    echo FIX >> fix.txt
    git commit -a -m"I faxed it up real gud"
    touch file1.txt
    git add file1.txt
    git commit -m"Solves #76"
    git add file2.txt
    git commit -m"Really fixes #76"
    git reset --hard 4d1d9af
    touch file2.txt
    touch file3.txt
    git branch featurerebase
    vim pom.xml
    git commit -m"Hot fix on master branch"
    git checkout feautrerebase
    git checkout featurerebase
    echo CHANGE1 >> fix.txt; git commit -a -m"Fix 1"
    echo CHANGE2 >> fix.txt; git commit -a -m"Fix 2"
    echo CHANGE3 >> fix.txt; git commit -a -m"Fix 3"
    echo CHANGE4 >> fix.txt; git commit -a -m"Fix 4"
    echo CHANGE5 >> fix.txt; git commit -a -m"Fix 5"
    git rebase -i e6bb3a3
    echo OTHERFIX >> README.txt
    cat fix.txt
    git rebase --continue
    git reflog
    git rebase master
    git merge featurerebase 
    gitk --all &
    history
    git tag FEATURE_REBASE_ORIG featurerebase 
    git branch -d featurerebase 
    git checkout FEATURE_REBASE_ORIG 
    git pull
    git commit -a -m"Fix"
    git fetch
    git log master..origin/master
    mkdir empty
    cd empty
    touch .gitignore
    git add .gitignore
    git commit -m"Props open the directory"
    git clone /Users/mccm06/Documents/Scratch/hellogitworld hgw1
    git clone file:///Users/mccm06/Documents/Scratch/hellogitworld hgw2
    cd hgw2
    git remote add gerrit http://gerrit.ericsson.com
    git remote rm origin
    git config --local user.name "James"
    git config --local user.email "james@ericsson.com"
    git log -1
    git log --pretty=raw -1
    git cat-file -p HEAD
    git cat-file -p b713466f31cccdad07939ed3b83590e2e25477ee
    mv pom.xml pomrenamed.xml
    git log -- pomrenamed.xml
    git commit -m "Renamed the darn thing"
    git log --follow -- pomrenamed.xml
    cd ..
    cd hellogitworld
    echo PERSON1 >> feature1.txt
    git commit -m "Feature 1 person 1"; git push
    echo FEATURE2 >> feature2.txt 
    git commit -m"Feature 2 person 2"
    git push
    jenkins-start
    git remote -v
    git reset --hard origin/master
    git branch featurewrm
    git branch featurewrm2
    vim feature2.txt
    git commit -m"Feature 2"
    rm -rf hgw1
    rm -rf hgw2
    vim fix.txt
    git commit -m"Fix on master"
    vim feature1.txt
    git commit -m"Feature 1"
    git checkout featurewrm2 
    git merge master
    git merge featurewrm
    git merge featurewrm2
    git revert 9bde
    git revert 481a
    git log --patch 
    git log --pretty=raw 
    echo MISSINGFILE.txt >> missingfile.txt
    git commit --amend
    git rebase -i c2bf
    git rebase --abort
    generaterandomchanges 10 sample txt
    git rebase -i master~5
    git rebase -i master~3
    git checkout featurewrm 
    git tag FEATUREWRM featurewrm
    git checkout master 
    git branch -d featurewrm
    git branch feature1.rebased FEATUREWRM 
    git checkout feature1.rebased 
    git tag RELEASE_6.0 master~3
    git checkout RELEASE_6.0
    touch shellscript.sh
    git add .
    git commit -m"Adding shell script"
    git tag -d RELEASE_6.0
    git tag RELEASE_6.0 4bf0e51
    echo STUFF >> fix.txt
    git stash save "This is the name"
    git stash list
    git stash branch thisshouldhavebeenabranch
    clear
    echo test1 >> test.txt
    git clean 
    git clean -n
    git --version
    git clean -nf
    git checkout bisect
    git log --graph --abbrev-commit --decorate --all --pretty=oneline
    mvn test
    git log --graph --abbrev-commit --decorate --pretty=oneline
    git bisect good 1f4b39b
    git bisect bad e8070d2
    git bisect run mvn test
    git bisect log
    git bisect visualize 
    git bisect start
    git bisect reset
    git show d247
    pwd
    generaterandomchanges 100 sample txt
    git gc
    git help filter-branch
    gitk --all&
    git tag RELEASE_7.0 amster
    git tag RELEASE_7.0 master
    git rev-parse master
    git rev-parse RELEASE_7.0
    git reset --soft 2727
    git tag RELEASE_8.0 2727
    git reset --soft RELEASE_8.0 
    git reset -p 
    git add . -p
    git add -p sample100.txt
    echo FIX >> sample22.txt
    git add -p .
    git reset dfde
    git clean -fd
    git reset --hard
    git checkout 78f4 -- fix.txt
    git status
    git commit -m "Repairing this from"
    git diff master origin/master
    git diff origin/bisect origin/master
    git diff --word-diff=A origin/bisect origin/master
    git log --word-diff=A origin/bisect origin/master
    git log --diff-filter=A origin/bisect origin/master
    git log --diff-filter=A --stat origin/bisect origin/master
    git log --diff-filter=D --stat origin/bisect origin/master
    git log --diff-filter=D --stat -M origin/bisect origin/master
    git log --diff-filter=D --stat -C origin/bisect origin/master
    git log --stat -C origin/bisect origin/master
    mv sample22.txt other.txt
    git add -A .
    git commit -m"Renamed"
    git log -M --stat
    git log -- other.txt
    git log --follow -- other.txt
    git log --stat --follow -- other.txt
    it
    git checkout master
    git branch --merged
    git branch --no-merged
    git help branch
    z git_git
    git log --author=James
    git log --author=James --since=1.year.ago
    git log --author=James --since=2.year.ago
    git log --author=James --since=3.year.ago
    git show f5549afd5d6c5492176b6fa21769c59bfe8e1d70
    git help log
    git log -S Memoize
    git blame rerere.c
    git blame -C rerere.c
    git difftool -t myarxis origin/bisect origin/master
    git difftool -t araxis origin/bisect origin/master
    git difftool --tool-help
    git difftool -t opendiff bisect origin/master
    git branch -a
    cd -
    git difftool -t opendiff origin/bisect origin/master
    subl ~/.gitconfig
    git difftool -t myaraxis origin/bisect origin/master
    cd .git/hooks
    
------------------------

# Day Three Advanced

## Times
* Day 3: May 23rd, 9:30-1600
    * 9:30-12:30, Advanced Git Workshop
    * 12:30-13:30, Lunch
    * 13:30-14:45, Advanced Git Workshop (cont.)
    * 15:00-16:00, Prime Time Slot: "The journey to full Git implementation”
    
## Resources
* http://teach.github.com/articles/git-advanced-course/
* http://teach.github.com/presentations/git-advanced.html

## Goals

* Large Files
    * Filter branch this away
    * What to do about this
    * Post receive hooks for block size
* Hooks
    * Prevent push to master
    * Code reviews on branch
    * Put anomalies onto commit
    * "Anomaly"
* Comment on a commit
    * Update the comment when it isn't the last one
* Aliases
    * Traditional
    * Shell
    * Parameterized
* Rebase --onto
* Diff options
    * --word-diff
    * --color-words
* Filter-branch
    * index-filter
    * tree-filter
    * subdirectory-filter
* Cherry Picking
* Tag Types
* Push options
    * `git config --global push.default nothing`
* Refspecs
    * insteadOf
    
            [url "<REALURL>"]
                insteadOf = shorturl
                insteadOf = work:
                pushInsteadOf = <other url base>
            
    * Note retrieval: `fetch = +refs/notes/*:refs/notes/*`
    * Fetch a group of remotes:

            $ git config remotes.default 'origin dev staging'
            $ git remote update
            # fetches remotes "origin", "dev", and "staging"
            # or
            $ git config remotes.mygroup 'remote1 remote2 ...'
            $ git fetch mygroup
* Blobspec
    * `git show RELEASE10:src/main/java/Main.java`
    * rev-parse
* Pull versus Pull with Rebase
    * `git pull --rebase`
    * `git config autosetuprebase always`
* Rerere
    * `git config --global rerere.enabled true`
* Rebase Crumbs
    * Fixup
    * Autosquash
* Bundle
    * `git bundle create my.bundle master`
* Orphan Branches
    * `git checkout --orphan <branchname>`
* Listing Special Files
    * `git ls-files . --exclude-standard --others`
* Finding commits
    * `git cherry`

### Day Three Command Line History

    git init project2
    echo TEST >> test1.txt ; git add ; git commit -m"Test 1"
    echo TEST >> test1.txt ; git add .; git commit -m"Test 1"
    echo TEST >> test2.txt ; git add .; git commit -m"Test 2"
    echo TEST >> test3.txt ; git add .; git commit -m"Test 3"
    echo TEST >> test4.txt ; git add .; git commit -m"Test 4"
    echo TEST >> test5.txt ; git add .; git commit -m"Test 5"
    git log 
    git log --pretty=oneline
    git rebase -i master~4
    git cat-file -t master
    git cat-file -p master
    echo TEST >> test6.txt ; git add .; git commit -m"fixup! Test 2"
    git log --stat
    git log --oneline
    echo TEST >> test7.txt ; git add .; git commit -m"squash! Test 4"
    git rebase -i --autosquash master~5
    git wtf
    git orphanl
    git l2
    git notes add 72b127167e9aaa29916ced089afa61c34661a710
    open .git
    git remote add origin https://github.com/matthewmccullough/project2.git
    git push -u origin master
    git pushnotes 
    git pushnotes origin
    git ls-remote origin
    git fetch

    z teach.github.com
    open hooks
    git release 
    git release RELEASE_1.0
    git release RELEASE_2.0
    git branch feature3
    git branch feature4
    echo bugfix >> test1.txt; - git commit -am "Master fix"
    echo bugfix >> test1.txt; git commit -am "Master fix"
    echo feature3 >> feature3.txt; git commit -am "Feature 3"
    echo feature4 >> feature4.txt; git add .;git commit -am "Feature 4"
    git cherry-pick 64f1209
    git show 521b
    gitk --all&
    git checkout feature4
    git config --local user.name "Other Person"
    git cherry-pick -x f8e8
    git blame feature3.txt
    git blame -C feature3.txt
    git log -1 --raw bd98348a
    git log -1 --pretty=raw bd98348a
    git blame -C -v feature3.txt
    git help cherry-pick
    git reset --hard 64f1209
    git cherry-pick -x -n f8e8
    git reset -p HEAD
    git commit
    echo reference
    echo annotated
    echo signed 
    git tag
    git tag -v
    git tag RELEASE_3.0
    git tag -a RELEASE_4.0
    git cat-file -t RELEASE_3.0
    git cat-file -t RELEASE_4.0
    git show RELEASE_3.0
    git show RELEASE_4.0 
    git push origin RELEASE_4.0
    git tag -s RELEASE_5.0
    git show RELEASE_5.0
    git tag -v RELEASE_5.0 
    generaterandomchanges 5 sample txt
    subl 
    subl ~/.gitconfig
    git clone ghg://matthewmccullough/hellogitworld hg4
    git clone ghg://githubteacher/hellogitworld hg4
    cd hg4
    pwd
    git remote set-url --push "thing://originplace"
    git remote set-url --push origin "thing://originplace"
    git config --local remote.origin.pushurl "thing://otherway"
    
    z teach.github.com
    cd script
    cd examples
    cd filter-branch
    cp -r * ~/Documents/Scratch
    cd project2
    git branch -a
    vim .git/config
    git push -u origin feature4:featurefour
    git show 8a852bc877d75d87819004398d86aae3ae5a2c82
    git show 8a852bc877d75d87819004398d86aae3ae5a2c82:sample3.txt 
    git show 8a852bc877d75d87819004398d86aae3ae5a2c82:sample3.txt | subl
    git show master@{7}:sample3.txt | subl
    git reflog
    git log --pretty=raw
    git branch --no-merged
    git merge feature3
    git add feature3.txt
    git commit -m"Keeing the markers"
    git log -1 --pretty=raw
    git show master^2~1
    git show master^1~1
    git show master^0~1
    git rev-parse master:/fix
    git rev-parse master:/test
    git rev-parse master:/Test
    git log
    git rev-parse master:/A
    git rev-parse 'master:/A'
    mkdir subfolder
    mv test*.txt subfolder
    git add -A .
    git commit -m"Moved"
    cd subfolder
    git log -- test1.txt
    git log --follow -- test1.txt
    git log --follow -M20 -- test1.txt
    git log --follow -M100 -- test1.txt
    git log --follow -M1 -- test1.txt
    git cherry
    gt status
    git checkout master
    git status
    git cherry -v
    git cherry -v feature4
    git cherry -v feature3
    git checkout feature3
    git cherry -v master
    git show-branch
    git config --local rerere.enabled true
    git branch conflict1
    git branch conflict2
    git checkout conflict1 
    git commit -am"Red"
    git checkout conflict2
    git commit -am"Blue"
    vim feature3.txt
    git commit -a -m "Solved"
    git reest --hard HEAD~1
    git reset --hard HEAD~1
    git merge conflict1
    cat feature3.txt
    cat .git/config
    cat test-filter-branch.sh

    