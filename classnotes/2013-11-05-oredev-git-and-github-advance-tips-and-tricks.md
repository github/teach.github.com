---
layout: bare
title: Oredev Git and GitHub Advanced Tips and Tricks
description: Oredev 2013 Git and GitHub Advanced Tips and Tricks
tags: [notes, conference, workshop]
path: classnotes/2013-11-05-oredev-git-and-github-advanced-tips-and-tricks.md
eventdate: 2013-11-05
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Markus Olsson ([Twitter](http://twitter.com/niik), [GitHub](https://github.com/niik))

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

* Branching Strategies
  * Git Flow
  * GitHub Flow
    * Short lived branches for the win.
  * Fork a project, jump onto a feature branch and implement a feature.
  * Send Pull Request back to upstream
  * Later get added as a collaborator to push directly to upstream
    * `git pull --rebase upstream master`
* Status API
  * Hooks
  * Ci Build status reports back
* Artful History
  * __Scenario__ We've created some pull requests, and we've got this branching system down,
     but what happens when we're in the middle of our feature and realize some commits should be
     on a different branch because they're not related?
    * whitespace fixes, line endings, tabs vs spaces, styleguide stuff are all great examples of this.
  * Create some commits on a branch. One or two of these commits should be un-related to the feature we're building
    * we'd ignore this so that we can remain in our mental flow state
  * After we're done with our branch and before we decide to send a PR, we need to clean up the commits
    * `git checkout -b whitespace-fixes master`
    * `git log -5 feature2` to grab the SHAs of the commits we want to pick off.
    * `git cherry-pick <first-sha>` and second. with or without `-x` if we want tracability. depends on the usecase
  * Now we need to remove those original commits. Cherry-pick doesnt do that for us.
    * `git checkout feature2` and `git rebase -i HEAD~4` because we need to go back 5 commits(head+ an additional 4)
    * in this interface we're simply going to delete the two lines. What rebase interactive does
      is allow us to follow basically a recipe of what to do with the last 5 commits.
  * Let's condense some of these commits
    * edit the commit message of one of them to also close an issue.
  * Auto-Linking Issues from commit messages
    * I actually had a previous company use a pre-commit hook to edit the commit messages and include the issue number in the commits. because our branch name started with an issue number. :boom:
    * (`fixes`/`fix`/`fixed`) OR (`close`/`closes`/`closed`) #1
    * `references` #1 etc
* Searching
  * Respository search
    * Search syntax
  * looking at commits by author
    * `?author=Brent Beer` onto the commit list page
  * Line Linking
    * click a line, it highlights, anchors and the URL changes so you can link it to someone for context
    * shift clicking to select multiple lines, OR edit the URL: `#L16-24`
  * Log
    * Search for a given term.
    * `git log -S <some-search-term> -p` where the `-p` is just so we can see the patch returned
    * `git log -G 'fixed'`
    * `git log --diff-filter=M`
    * `git log --diff-filter=A`
  * Revert
    * `git revert <COMMIT HASH>` revert the commit we found with log
      * `--edit` allows us to change it
  * Reset
    * Take a look at `.git/` internals to understand how the graph structure works
      * `cat-file -p SHA1` etc
    * `--soft`, `--mixed`, `--hard`
    * Mixed is a way to move things back to the working directory to do more edits
    * Hard is a way to completely blow away changes
    * `git reset --hard HEAD~5`
    * `git reset --hard origin/master` quick way to get your state back to the way that's upstream
    * What about typing `git reset --hard HEAD~6` instead of `git reset --hard HEAD~5`?
  * Reflog
    * `git reflog` gives us a running log of things that change the state of HEAD.
    * commits, checkouts, resets, rebases
    * reflog holds on to objects for a varying number of days depending on the object. Regular reflog
      entries are held on for 90 days. this means looking back and seeing commits and actions
      etc. When we're doing massive overhauling like `rebase -i`, `git commit --amend`, or
      `reset --hard`, we're creating unreachble objects because we're changing the graph structure
      and creating new commits. reflog holds on to THESE objects by default for 30 days. Both
      settings are configurable.
    * You can clear it out by running `git gc --prune=<date>`
* Notes
  * Notes are an interesting object in Git. They're like messages but i tend to think of them as something we do AFTER commits
  * __Example__: You've decided to go back and add a note onto a merge commit explaining the merge. If you went back to edit the commit message itself (which, we know how to do now), that'd alter the commit hash because the message is one input into the SHA1 algorithm for calculating the hash.
  * Shows up on that commit on github.com
* Tags
  * Tags are a great way to signal when something is releasable. You could say that is what master
    is for, and I'd agree.
  * Depending on what you're releasing though, tags may make more sense. Downloadable software? Tag that release.
  * `git tag 1.0` No message needed. super lightweight
  * `git tag -a '1.0' -m 'This tag is the 1.0 public release. and there was much Joy!'` 
    * This tag is a full tag object in the git store
  * `git tag -s 1.1 -m 'this is my gpg signed tag'`
    * when running `git show 1.1` on this commit, we see the signed key. To verify it, we'd need that signer's public key.
  * We can now go to github.com and our repository's releases tab to look at these tags as well
    * include `.exe` or some object needed to run this that wouldnt be useful to an end user (someone not building from source)
* Refspecs
  * git ls-remote
  * Sometimes you may want to interact with your pull requests on the command line and pull them in advance. Maybe you're about to hop on a flight.
  * `+refs/pull/*/head:refs/remotes/origin/pull/*`
    * custom refspec github created, allows us to set up these pulls as branches.


## Command Line History
    git commit -am "introduction for brent beer"
    git status
    git commit --amend
    git status
    git push -u my-fork introduction
    git config --list
    git config credential.helper
    git branch -r
    git fetch origin
    git status
    git merge origin/master
    git merge --abort
    git merge origin/master
    vim index.html
    git status
    git add .
    git status
    git commit
    git status
    git push my-fork introduction
    git fetch
    git fetch origin
    git status
    git merge origin/master
    git status
    git fetch
    git status
    git push my-fork introduction
    git status
    git checkout master
    git merge origin/master
    git lol
    git config --global color.ui auto
    cat .git/config
    cat /Users/brntbeer/.gitconfig
    git config --list
    git config --local logg "log --graph --oneline --decorate --all"
    git config --local alias.logg "log --graph --oneline --decorate --all"
    git logg
    git status
    git logg -10
    git status
    git checkout master
    git status
    git push -u origin master
    git fetch
    git status
    git merge origin/master
    git status
    git push -u origin master
    git checkout -b brntbeer-restaurant-san-francisco
    git status
    ls
    cp index.html brntbeer.html
    git status
    git fetch
    git checkout master
    git status
    mvim .
    git status
    git diff
    git status
    git add index.html
    git status
    git commit -m "remove merge markers"
    git push origin master
    git pull origin master
    git status
    git checkout brntbeer-restaurant-san-francisco
    git status
    git merge master
    git lol -5
    git pull origin master
    git status
    git log --oneline --graph --decorate --all
    git status
    mvim .
    rm brntbeer.html 
    cp index.html brntbeer.html
    git status
    git add brntbeer.html
    git status
    git commit -m "new brntbeer html file for malmo eatery"
    git status
    git push -u origin HEAD
    git status
    git checkout master
    git status
    git fetch
    git merge origin/master
    git status
    git fetch
    git merge origin/master
    git status
    git branch
    git branch -d test1 test2
    git status
    git pull origin master
    git checkout -b restaurants-everywhere
    mvim .
    git status
    git diff
    git add .
    git status
    git commit -m "combine restaurants"
    git status
    git commit -am "favorite font face for favorite restaurants"
    git lol -5
    git pull origin master
    git status
    git pull origin master
    git merge master
    git checkout master
    git merge FETCH_HEAD
    git status
    git fetch origin
    git status
    git status
    git log -1
    git checkout restaurants-everywhere 
    git status
    git merge master
    git log -1
    git fetch origin
    git lol -5
    git status
    git commit -am "more places"
    git checkout -b restaurant-styles b5a8a63
    git lol
    git cherry-pick 8319e9f
    git show 8319e9f
    git show dfaeb28
    git status
    git log -1
    git checkout restaurants-everywhere 
    git lol
    git rebase -i e693b4b
    git lol
    git status
    git push -u origin HEAD
    git checkout master
    git checkout restaurant-styles 
    git log -1 -p
    git push -u origin HEAD
    git checkout restaurants-everywhere
    git rebase -i HEAD~2
    git status
    git merge origin/restaurants-everywhere
    git status
    git reset --hard HEAD~2
    git status
    git merge origin/restaurants-everywhere
    git status
    git lol -3
    git rebase -i HEAD~2
    git status
    git push origin HEAD
    git status
    git reset --hard origin/restaurants-everywhere
    git status
    git checkout master
    git fetch origin
    git checkout -b brntbeer-index-changes
    vim .
    git status
    git diff
    git commit -am "remove iframe, sorry pal. added bastard"
    git status
    vim .
    git status
    git commit -am "one more place to eat and get fat"
    vim .
    git commit -am "readme edit that should be on a new branch"
    git lol -5
    git checkout -b readme-author-info master
    git lol -5
    git cherry-pick 035fe72 -x
    git status
    git lol -5
    git checkout brntbeer-index-changes
    git rebase -i master
    git status
    git lol -5
    git push -u origin HEAD
    git log
    git log -S adventure
    git log -S Adventure
    git log -S lazer
    git status
    git checkout master
    git pull origin master
    git log -5
    git log -5 -p
    git log -S malmo
    git log -S malmo --patch
    git log --grep "fixed"
    git log --grep "brntbeer"
    git log --grep "brntbeer"
    git log --format=email
    git log --regex-grep=/adventure/i
    git help log
    ls -a
    du sk .git/
    du -hcs .git/
    cd ..
    cd git/
    du -hcs .git/
    git shortlog -s -n
    git shortlog -s -n
    cd ../example-basic/
    ls -a
    cd .git/
    ls
    ls -p
    vim HEAD
    cd ..
    git status
    git log -1 --oneline
    git log -1 --oneline
    git log -1 --oneline --decorate
    mvim .
    mvim .
    git show --raw aca2189c433c4e1dad6e7e675e193320e9262240
    git help show
    git cat-file aca2189c433c4e1dad6e7e675e193320e9262240 
    git cat-file -t aca2189c433c4e1dad6e7e675e193320e9262240 
    git cat-file -p aca2189c433c4e1dad6e7e675e193320e9262240 
    git cat-file -p  075f98a0520db99ce850b3c2eb7a0c59e39d08fd
    git cat-file -p  f57a411a105b7cd9bddf107866d58dfd2192d599
    git cat-file -p  e693b4b0e62175a1e775176dcdf1ae6a7edcb241
    git cat-file -p e05af01f8e6ba5446538a4c9bf99c377c4dc2bf1
    git cat-file -p  e693b4b0e62175a1e775176dcdf1ae6a7edcb241
    git cat-file -p cfebfd953aaf4add59e7f86d56888b36d958bf3f
    git cat-file -p fbdd463d06fd761822476207feb8ef05761105a1
    git checkout HEAD~5
    cat .git/HEAD
    git status
    git lol -5
    git status
    git reset --hard origin/master
    mvim .git/
    git lol -5
    git lol -5
    git fetch
    git merge origin/master
    git lol -5
    git log --oneline master -10
    git log -5 master --oneline
    git reset aca2189
    git status
    git diff
    git add -p
    git status
    git diff --staged
    git diff
    git status
    git commit -m "remove adventure. needs more restaurants"
    git status
    git add .
    git status
    git lol -15
    git reset --hard HEAD~1
    git reset --hard origin/master
    rm -rf css
    git reset --hard HEAD
    git status
    git reset --hard HEAD~17
    git status
    git merge origin/amster
    git status
    git checkout -b test-branch
    generaterandomchanges 20 test-branch txt
    git lol -25
    git reset --hard HEAD~14
    git status
    git reflog
    git reset --hard dfaeb28
    git status
    git lol -20
    git lol
    git reflog -10
    git reset --hard HEAD@{2}
    git reflog -10
    git status
    ls
    git log -1 --oneline
    git reset --hard HEAD~1
    git checkout 7ff06f7
    generaterandomchanges 2 detatched md
    git lol -10
    git show 7ff06f7
    git lol -10
    git show 7ff06f7 --format=raw
    git checkout test-branch 
    git help bisect
    git help bisect
    git status
    git checkout master
    git notes
    git notes -h
    git notes add -m "This is a successful build to #24"
    git notes
    git notes
    git cat-file -p 13f57d36ea32159f990e3bd16583e89aa489dbbd
    git lol -5
    git push origin master
    git notes -h 
    git push origin refs/notes/commit
    git push origin refs/notes/commits
    git lol -5
    git notes -h
    git notes add --ref android -m"Successful on android"
    git notes --ref android add -m"Successful on android"
    git lol -2
    git push origin refs/notes/android
    git notes -h
    git notes -h
    git notes show HEAD
    git show 
    git notes --ref windows add -m "Failed build"
    git push origin refs/notes/*
    git notes -h
    git notes
    git lol -5
    git tag v1 v2 v3 v5 v6
    git tag v1
    git tag v2
    git tag v3
    git tag v4
    git tag v5
    cd .git/
    ls
    cd refs/
    cd tags/
    ls
    cat *
    cd .git/refs/
    ls
    cd notes/
    ls
    cat *
    cat commits
    cd ../../
    cd ..
    git checkout refs/notes/commits
    ls
    vim 7516089a59698c5947912897f0fb0a0a4927b7c3
    git show 7516089a59698c5947912897f0fb0a0a4927b7c3
    git cat-file -p 7516089a59698c5947912897f0fb0a0a4927b7c3
    git checkout master 
    git shortlog -n
    git shortlog -n -s
    git log --oneline | wc -l
    git log --oneline 
    git log --oneline | cut -f 1 -d' '
    git log --oneline | cut -f 1 -d' '|xargs -1 git notes add -m 'Test note'
    git log --oneline | cut -f 1 -d' '|xargs -n 1 git notes add -m 'Test note'
    git checkout refs/notes/commits
    ls
    cd 7e/
    ls
    vim 29d627c5aa7da9d2111ca79e29ae944964811c
    cd ..
    ls
    git checkout master
    ls
    git status
    git bisect stop
    git bisect --abort
    git bisect start
    git bisect stop
    git bisect reset
    git status
    git checkout master
    git tag
    git lol -5
    git lol -70
    rm -rf .git/refs/notes/
    git lol -5
    git reflog
    git show v1
    git tag -a '1.0' -m "This is a stable release"
    git show 1.0
    git show v1
    git show 1.0
    git push origin master 1.0
    git push origin master 1.0
    git status
    ls
    vim index.html 
    git commit -am "more better description"
    git status
    git push origin master
    git status
    git -s "1.2.secure" -m "this is my signed tag"
    git tag-s "1.2.secure" -m "this is my signed tag"
    git tag -s "1.2.secure" -m "this is my signed tag"
    vim .git/config
    git ls-remote
    git ls-remote -10
    git ls-remote
    git ls-remote | less
    git ls-remote | less
    git ls-remote
    git show 7516089
    vim .git/config
    git pull origin
    git branch -a
    git checkout origin/pull/21
    git checkout master
    git checkout 21
    git checkout pull/21
    git status
    git status
    git log -1
    git log -2
    git checkout master
    git merge pull/21
    git status
    git push origin master
    git config alias.nuke
    git fetch --prune origin
    git branch
    git branch -d pull/21
    git push origin :brntbeer-index-changes
    git push origin :brntbeer-restaurant-san-francisco 
    git help push
    git push --delete origin test-branch 
    git push origin HEAD~10:brntbeer-restaurant-san-francisco 
    git status
    git reflog --date=iso

