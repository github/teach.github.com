---
layout: barewithrelated
title: GitHub and Git Foundations Course
description: A curriculum for our GitHub and Git Foundations Course
path: courses/_posts/2001-02-27-git-and-github-foundations-course.md
tags: [outline, course]
---

---------------

# Git Foundations

---

# Getting Started
## Intro
* Git: version control system
* GitHub: store code, share code

## Preparation
* Installing git
* Verifying & checking version
  * `git --version`

# config
* 3 tiers of config
  * `--global`
  * `--system`
  * `--local (default)`
* `git config --list`
* `git config user.name`
* `git config user.email`
* `git config --global core.autocrlf <value>`
* `git config --global color.ui auto`

---

# GitHub, Round I

## Basic Interaction
* Creating an account
* Reviewing UI
* Deciding on protocol
  * https
  * ssh
* Creating a new _repo_


## Repo Retrieval
* Using `git clone`
* Understanding remotes

---

# commit
* `git status`
  * Reviewing help on status output
* `git add <filename>`
* `git commit` or `git commit -m"<message>"`


# diff
* `git diff`
  * Working copy to staging
* `git diff --staged`
  * Staged to commit
* `git diff HEAD`
  * Working copy to commit

* Decorating diffs
  * `git diff --color-words`
  * `git diff --word-diff`

# log
* `log`
  * commit history
* `git log -<n>`
* `git log --author=<committer>`
  * Querying for patch author
* `git log -S=<StringInPatch>`
  * Search for string match _in_ patch
* `git log --stat`
  * Listing files of patch
* `git log --patch`
  * Listing patch change sets
* `git log --word-diff --patch`
* `git log --graph`

# rm
* Git interacting with filesystem
* Removes (deletes!) the file, stages deletion
  * `git rm <file>`

* Un-tracking tracked files
  * `git rm --cached -- <filename>`

# mv
* Moving generates new tree, not a new blob
  * Hash will be different
  * `git mv <file> <file>`

## Similarity Index
* Noting "100%" on commit output?
  * `git log --stat -M`
  * `git log --follow <file>`

# ignore
* Creating a .gitignore
* Adding patterns
* Global/external ignore
  * `git config --global core.excludesfile`


# branch
* Creating feature or prototype
* Showing local branches
  * `git branch`
* Showing remote branches
  * `git branch -r`
* Showing all branches
  * `git branch -a`
* Creating a branch
  * `git branch <name> <ref>`
* Deleting a branch
  * `git branch -d <name>`

# merge
* Folding in branches
  * `git merge` or `git merge -m<message>`
* Conflicting merges
  * Resolving file
  * `git add <file>`
  * `git rebase --continue`


# rebase
## branch preparation
* Explaining fast-forward
* Rebasing __is not__ merging!
  * `git checkout <featurebranch>`
  * `git rebase master`

## interactive
* `git rebase -i <REF>`

# reflog
* Tracing Git action "history"

# reset
* Losing data with Git is difficult (but possible)
* Clearing index and working directory
  * `git reset --hard`
* Reseting index, updating working directory
  * `git reset --mixed`
* Reseting index only
  * `git reset --soft`

# revert
* Generating commit to restore past patch set
  * `git revert <REF>`

---

# GitHub, Round II

## Network
* `git remote add origin <url>`
* show how `origin` will be setup

## remote
* Aliasing to server paths
  * `git remote add <name> <path>`
* Removing connections
  * `git remote -d <name>`

## push
* Publishing commit history
  * `git push -u origin master`

## pull
* Automatically fold-in/merge remote's commits
  * `git pull origin`

## fetch
* Comparing without merging
* Merging selectively
* Rebasing with respect to published
  * `git fetch <URL> <branch>`
  * `FETCH_HEAD`

## Pull Request
* Pushing branch to repo
* Creating GH pull request

### Automatic Merge
* Using GH Interface

### Manual Merge
* Using `FETCH_HEAD` approach
* Using GitHub tip approach

---

# Bonus Material

# stash
* `git stash`
* `git stash list`
* `git stash pop <name>`
* `git stash drop <name>`
* `git stash apply`

# tag
* `git tag -m<message>  <NAME>`
* `git tag -a -m<message> <NAME>`
* `git tag`

-----------------------------------

## Timing
* 08:40am Setup and Test Projector
* 08:50am Student Introductions
* 09:00am Begin Training
* 10:30am 10 minute Break
* 12:00pm Lunch Break
* 12:45pm Resume Teaching
* 02:15pm 10 minute Break
* 04:00pm Conclude Training
* 04:05pm Student Q&A

## Day One Outline
* Setting Up Git (identity)
* Building a Repository
* Cloning and Remotes
* Pushing and Pulling
* Git Push Contention
* Branch Creation
* Branch Display
* Git Aliases
* Internals of .git
* Viewing
* History Viewing File Contents
* Merging (recursive and fast-forward)

-------------------


This is an outline for a comprehensive class that uses all modules in the `articles` folder.

1. [Switching To GitHub and Git](/articles/moving-to-git-and-github/)
1. [History of Git](/articles/lesson-history-of-git/)
1. [SSH Setup](/articles/lesson-ssh-setup/)
1. [Setting Up Git](/articles/lesson-git-initial-setup/)
1. [Building a Repository](/articles/lesson-repository-creation/)
1. [Cloning and Remotes](/articles/lesson-git-clone/)
1. [Internals of DotGit](/articles/lesson-internals-of-dotgit/)
1. [Everyday Commands](/articles/lesson-git-everyday-commands/)
1. [Fixing Mistakes](/articles/lesson-fixing-mistakes/)
1. [Branch Creation](/articles/lesson-branch-creation/)
1. [Branch Display](/articles/lesson-branch-display/)
1. [Pushing and Pulling](/articles/lesson-pushing-and-pulling/)
1. [Git Push Contention](/articles/lesson-git-push-contention/)
1. [Viewing History](/articles/lesson-git-log-history/)
1. [Viewing File Contents](/articles/lesson-git-show-files/)
1. [Stash](/articles/lesson-git-stash/)
1. [Tags](/articles/lesson-git-tag/)
1. [Transporting Changes (Patches and Bundles)](/articles/lesson-git-patches-and-bundles/)
1. [GUIs](/articles/lesson-git-guis/)
1. [Interoperability with Subversion](/articles/lesson-git-interoperability-with-subversion/)
1. [Interoperability with Clearcase](/articles/lesson-git-interoperability-with-clearcase/)
1. [Merging, Rebase, and Rerere](/articles/lesson-git-merge/)
1. [Git Bisect](/articles/lesson-git-bisect/)
1. [Repo Maintenance](/articles/lesson-git-repo-maintenance/)
1. [Servers and WebUIs](/articles/lesson-git-servers-and-web-uis/)
1. [Continuous Integration](/articles/lesson-continuous-integration/)
1. [Ecosystem](/articles/lesson-git-ecosystem/)
1. [Submodules](/articles/lesson-git-submodules/)
1. [Customizing Git Aliases](/articles/lesson-git-aliases/)
1. [Hooks](/articles/lesson-git-hooks)
1. [Filter Branch](/articles/lesson-filter-branch/)
1. [Extra Tools](/articles/lesson-git-extras-addon/)

---------------------------------

# Outline Scraps for Reuse

# Getting Started
## Intro
* Git: version control system
* GitHub: store code, share code

## Preparation
* Installing git
* Verifying & checking version
  * `git --version`

## config
* 3 tiers of config
  * `--global`
  * `--system`
  * `--local (default)`
* `git config --list`
* `git config user.name`
* `git config user.email`
* `git config --global core.autocrlf <value>`
* `git config --global color.ui auto`


## commit
* `git status`
  * Reviewing help on status output
* `git add <filename>`
* `git commit` or `git commit -m"<message>"`


## diff
* `git diff`
  * Working copy to staging
* `git diff --staged`
  * Staged to commit
* `git diff HEAD`
  * Working copy to commit

### Decorating diffs
  * `git diff --color-words`
  * `git diff --word-diff`

## log
* `log`
  * commit history
* `git log -<n>`
* `git log --author=<committer>`
  * Querying for patch author
* `git log -S=<StringInPatch>`
  * Search for string match _in_ patch
* `git log --stat`
  * Listing files of patch
* `git log --patch`
  * Listing patch change sets
* `git log --word-diff --patch`
* `git log --graph`

## rm
* Git interacting with filesystem
* Removes (deletes!) the file, stages deletion
  * `git rm <file>`

* Un-tracking tracked files
  * `git rm --cached -- <filename>`

## mv
* Moving generates new tree, not a new blob
  * Hash will be different
  * `git mv <file> <file>`

### Similarity Index
* Noting "100%" on commit output?
  * `git log --stat -M`
  * `git log --follow <file>`

## ignore
* Creating a .gitignore
* Adding patterns
* Global/external ignore
  * `git config --global core.excludesfile`


## branch
* Creating feature or prototype
* Showing local branches
  * `git branch`
* Showing remote branches
  * `git branch -r`
* Showing all branches
  * `git branch -a`
* Creating a branch
  * `git branch <name> <ref>`
* Deleting a branch
  * `git branch -d <name>`

## merge
* Folding in branches
  * `git merge` or `git merge -m<message>`
* Conflicting merges
  * Resolving file
  * `git add <file>`
  * `git rebase --continue`


## rebase
### branch preparation
* Explaining fast-forward
* Rebasing __is not__ merging!
  * `git checkout <featurebranch>`
  * `git rebase master`

### interactive
* `git rebase -i <REF>`

## reflog
* Tracing Git action "history"

## reset
* Losing data with Git is difficult (but possible)
* Clearing index and working directory
  * `git reset --hard`
* Reseting index, updating working directory
  * `git reset --mixed`
* Reseting index only
  * `git reset --soft`

## revert
* Generating commit to restore past patch set
  * `git revert <REF>`

# GitHub

## Basic Interaction
* Creating an account
* Reviewing UI
* Deciding on protocol
  * https
  * ssh
* Creating a new _repo_


## Repo Retrieval
* Using `git clone`
* Understanding remotes

## Network
* `git remote add origin <url>`
* show how `origin` will be setup

## remote
* Aliasing to server paths
  * `git remote add <name> <path>`
* Removing connections
  * `git remote -d <name>`

## push
* Publishing commit history
  * `git push -u origin master`

## pull
* Automatically fold-in/merge remote's commits
  * `git pull origin`

## fetch
* Comparing without merging
* Merging selectively
* Rebasing with respect to published
  * `git fetch <URL> <branch>`
  * `FETCH_HEAD`

## Pull Request
* Pushing branch to repo
* Creating GH pull request

### Automatic Merge
* Using GH Interface

### Manual Merge
* Using `FETCH_HEAD` approach
* Using GitHub tip approach


# Bonus Material

## stash
* `git stash`
* `git stash list`
* `git stash pop <name>`
* `git stash drop <name>`
* `git stash apply`

## tag
* `git tag -m<message>  <NAME>`
* `git tag -a -m<message> <NAME>`
* `git tag`
