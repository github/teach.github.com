---
layout: bare
title: Oredev Git Secrets
description: Oredev 2013 Git Secrets Class Notes
tags: [notes, conference, workshop]
path: classnotes/2013-11-07-oredev-git-secrets.md
eventdate: 2013-11-07
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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
* Minimum is 1.7.10 but can have issues with HTTPS credential prompting.
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

## Outline

* Advancing the basics
  * `add -p`
  * `commit -p`
* Log
  * `diff-filter`
  * `log release..test` shows what's in test but not yet in release
  * `git log master --not --remotes=origin` shows commits in local origin branch not yet in remote
* Show
  * `git show :/broken` finds most recent commit with "broken" in message
* Checkout
  * `git checkout -` really more of a Unix hack
  * Ever wonder a good use case for the file separator?
    * `git checkout BRANCH -- path/to/file` copies the file at BRANCH without switching branches
* Branch
  * `--contains awdsdv22123` finds a branch containing that commit
  * `--no-merged`
  * `--merged`
* Aliases
  * config: `git config remotes.everything 'remote1 remote2'` typing "git fetch everything" gets both remotes.
* Merge
  * Have a conflict and you know the one coming in is correct? use --theirs
  * `git merge -Xtheirs BRANCH` the graph may change a bit
* Bisect
  * `git bisect start` and `git bisect bad` to let it know things are currently terrible
  * `git bisect good <SHA1-HASH>` to let it know when things were good. With proper tagging this works out pretty well
  * At each new step of the way we run whatever tests we want to see how things are going. If the test passes, we'd say `git bisect good` to say it was good or `git bisect bad` to mark it as bad.
  * When this finishes, we're returned to the SHA1 of the first introduction of this failure. To go back to master: `git bisect reset`
  * We could also automate this: `git bisect start HEAD <good-revision>` followed up with a script: `git bisect run ~/script.sh`
* Cherry Pick
  * Set up for a rebase. Maybe you realize you had some commits you didn't really want.
  * `-x` automatically places the original commit hash in the new commit message.
  * Similar to revert
* Rebase
  * Interactive
  * `--autosquash`: Have some commits with `fixup!` and a similar title to another commit message to `squash!` and fixup to.
  * Edits
  * Rearrange
  * Delete
  * Great for forming good history that allows people to follow your progression
* Reflog
  * Checkout to a point in the middle of a rebase even, but let's go before it. `git log` and look at the SHA1 that was deleted
  * Checkout back to `HEAD@{1}` or the point after the rebase. Checkout to a new branch, cherry-pick it over.
* Notes
  * Notes are an interesting object in Git. They're like messages but I tend to think of them as something we do AFTER commits
  * __Example__: You've decided to go back and add a note onto a merge commit explaining the merge. If you went back to edit the commit message itself (which, we know how to do now), that would alter the commit hash because the message is one input into the SHA1 algorithm for calculating the hash.
  * Shows up on that commit on github.com
* Refspec
  * `git ls-remote`
  * Sometimes you may want to interact with your pull requests on the command line and pull them in advance. Maybe you're about to hop on a flight.
  * `+refs/pull/*/head:refs/remotes/origin/pull/*`
    * Custom refspec GitHub created, allows us to set up these pulls as branches.


## Command Line History
    cd example-basic/
    git status
    vim index.html
    git status
    git diff
    git add -p
    git status
    git diff --staged
    git diff
    git commit -m "adding author info"
    git status
    git diff
    git status
    git checkout -- index.html
    vim index.html
    git commit -p
    git status
    git diff
    git commit -p
    git log -1 -p
    git log
    git log --diff-filter=M --stat
    git log --diff-filter=A
    git log --diff-filter=A -p
    git branch
    git branch -r
    git status
    git log origin/master..test1 --oneline --decorate
    git log origin/master...test1 --oneline --decorate
    git status
    git lol -5
    git lol -10
    git lol -11
    git log master...test1
    git log master...test1 --oneline --decorate
    git log master --not --remote=origin
    git help log
    git log --branches --not --remotes=origin
    git show HEAD
    git show HEAD~
    git show HEAD~1
    git show :/initial
    git log -S "initial"
    git log -S "Initial"
    git log -G "Initial"
    git lol
    git show :/initial
    git checkout -
    git status
    git stash
    git stash pop
    git stash save index-change
    git checkout -
    git checkout -
    git checkout -
    git checkout test1 -- test-not-merged1.txt
    git checkout test1
    ls
    git checkout -
    git checkout test1 -- test-really2.txt
    git status
    git commit -m "new test file"
    git lol -10
    git lol -10
    git branch broken 0a88e74
    git branch --contains 0a88e74
    git branch --no-merged
    git branch --merged
    git config --local remotes.everything 'origin backup'
    git config --local --list
    git remote add backup https://github.com/githubstudent/example-basic
    git fetch everything
    git status
    git branch
    vim index.html
    git commit -am "new author"
    git checkout -b new-author HEAD~1
    vim index.html
    git status
    git commit -am "really, im the teacher i swear"
    git status
    git log master...new-author
    git log master...new-author  -p
    git log master...new-author  -p --decorate
    git checkout -
    git merge new-author 
    git status
    git diff
    git status
    git merge --abort
    git status
    git merge -Xours new-author
    git lol -5
    git reset --hard 14ec8bb
    git lol -5
    git merge -Xtheirs new-author
    git lol
    git lol -20
    git reset --hard 720e213
    git lol -20
    git branch -D new-author
    generaterandomchanges 5 broken txt
    git lol -10
    git bisect start
    git bisect bad
    git log -1 --decorate
    git bisect start
    git status
    git bisect good HEAD~5
    git bisect good
    git bisect start
    git bisect reset
    git lol -10
    git checkout -b test2
    generaterandomchanges 5 test-fixup md
    git lol -10
    vim README.md
    git commit -am "readme fixes"
    git status
    git lol -10
    git checkout -b read-fixes master
    git cherry-pick 583df5c
    git checkout test2
    git rebase -i master
    git status
    git show 98bcd1d
    git status
    vim test-fixup
    vim test-fixup1.md
    git status
    git add .
    git commit --amend
    git status
    git rebase --continue
    git lol -10
    irb
    git lol -10
    git branch -D read-fixes
    git lol -10
    git checkout master
    generaterandomchanges 5 master-only txt
    git lol -10
    git rebase master
    git lol -10
    git checkout test2 
    git rebase master
    git lol -10
    git rebase -i 98bcd1d
    git lol -10
    git reflog -10
    git reflog
    git status
    git lol
    vim test-fixup1.md
    git lol -5
    git commit -am "squash! A random change of 8649"
    generaterandomchanges 2 prep-auto-squash rb
    rebase -i master
    git rebase -i master
    git reflog -10
    git reset --hard bba10be
    ls
    git lol -3
    git rebase -i --autosquash master
    git status
    git diff test-fixup
    git diff test-fixup1.md
    git rebase --abort
    git rebase -i --autosquash master
    git status
    vim test-fixup1.md
    git add test-fixup1.md
    git status
    git rebase --continue
    git diff
    vim test-fixup3.md
    vim test-fixup1.md
    git status
    git add
    git add .
    git rebase --continue
    git status
    git lol -10
    git help notes
    git notes add d7ca2b8 -m "contained a squash that gave me trouble"
    git lol -10
    cat .git/refs/heads/commits
    git notes add ab58c85 -m "master worked here"
    git notes
    git show 6251ea40852d9a3db8eb3ba7d8381f9864a02057
    git show ab58c85579adecc46db2d54f4f4d55d
    vim .git/config
    git ls-remote
    git fetch origin
    git checkout pull/1
    git log -1
    git checkout master
    git merge pull/1
    git push origin master

