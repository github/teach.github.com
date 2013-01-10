---
layout: bare
title: Online Git Advanced Class
description: A half-day Git Advanced class
tags: [notes, class, workshop]
path: classnotes/2013-01-10-git-advanced-online.md
eventdate: 2013-01-10
---

# Instructors
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))


# GitHub - Advanced Git & GitHub Course

Many Git workshops successfully focus on the basics for those new to DVCS. However, with Git having a full 5 years on the street now, there is a growing desire to address the maturing users of this innovative DVCS. This workshop will take existing Git users and bring them to a heightened level of productivity by leveraging Git’s powerful, yet underused “advanced” features.

## Topics
* Common Branching Strategies
* Branching Models
* Applying Branching Strategies
* Branch Pull Options
* Reusing Small Pieces of Code
* Inserting Commits Into Existing History
* Building Custom Commands via Aliases
* Undoing and Re-doing Almost Anything
* Minimizing Repetitive Conflict Resolution
* Log History Searches
* Advanced Interactive Rebase
* Commit Data Structure Internals
* Refspecs

## Objectives
Enabling Git users to effectively migrate repositories from other formats.
Facilitate history modification of Git repositories.
Establish time-tested branching and merging strategies.
Enhance knowledge of Git tools to simplify history.
Search Git history with ease and precision.
Move to and reuse code on other branches via commits and tags.
Understand Git’s tagging and GPG signing process.
 
# Details of Class

## Branching

### Common Branching Strategies
__Duration:__ 5m

These are called Branching Strategies, but are just as easily called *Team Collaboration Techniques* in an abstract discussion of version control.

* Branch by feature
* git-flow
    *  Made popular on Git by Vincent Driessen and his NVIE site
    * [Git-Flow: A Successful Branching Model](http://nvie.com/posts/a-successful-git-branching-model/)
    * [Git-Flow Source](https://github.com/nvie/gitflow)
    * Too many levels?
    * GH prefers Simplest thing that works.
* GitHub Flow
    * [How GitHub Develops](https://github.com/blog/919-how-github-develops)
    * [GitHub Flow blog post](http://scottchacon.com/2011/08/31/github-flow.html)
    * Works well with Pull Requests when one-layer deep
    * Think of features much smaller than typical
* Git's Model
    * [Git Maintenance Notes](http://members.cox.net/junkio/git/MaintNotes.html)
    * [Git's Source Code](https://github.com/git/git)
    * Branches
        * master
        * maint
        * next (graduation from pu)
        * pu (can be rebased)
        * html
        * man
* Version numbers
    * `major.minor.fix`
    * [Semantic versioning](http://semver.org)
* Rebase before sharing (sending a Pull Request)
    * [Contributing to Spring Social](https://github.com/SpringSource/spring-social/wiki/Contributing)
    * [How To Merge Without Fear](http://blog.springsource.org/2010/12/21/git-and-social-coding-how-to-merge-without-fear/)
    * [What to do when things get complicated](http://blog.springsource.org/2011/07/18/social-coding-pull-requests-what-to-do-when-things-get-complicated/)

### Branching Strategy Tools
__Duration:__ 10m

* git-flow
    * tool to enforce rules
    * not very preferred at GH
    * great complex diagram that makes you feel important
* branch creation on the web (GH)
* automatic fork for edit on the web
   * irresponsible if not for Travis
   * Can't just blindly merge if you don't know it works
* just SHIP IT
* master, RC, hotfix
* converting a branch to tag to signal "FREEZE"

### Applying Branching Strategies
__Duration:__ 5m

* Like git project (next, pu, maint, master)
* master
* changing HEAD branch on GH UI and in headless repos
* git clone (what gets checked out by default)
* why a bare repo has no HEAD
* "never commit to master"
* checking out PR branches (ls-remote and fetching and changing a refspec)

### Merging Strategies
__Duration:__ 10m
* --no-ff (also in GH GUI for PRs)
* travis that build the PR branch 
* --squash
* rebase in before merge
* duplicate the branch before rebasing it before merging
* renames the wip-branch to wd-branch, copy it rb-branch

### Branch Pull Options
__Duration:__ 10m

* pull --rebase
* which branches get pulled? (all of the things, but only one gets merged)
* tracking
    * look in .git/config for tracking matches
    * the remote versus the merge
    * rebase-on-pull
* what if you turn off all pull merging
* unless you give the refspec on the CLI (no default action)
* refspec on CLI versus what's in .git/config

### Reusing Small Pieces of Code
__Duration:__ 20m

* Cherry pick
* branches that are small feature sub-pieces
* pull requests for small things
* merging small pieces into a feature branch
* a fix is a "feature" (reuse by merging many places)
* extracting patch files and applying patches (for non Git use)
* carrying small pieces around with firewalls (git bundle create)
* stashes without popping (apply) (rubber stamp on branches)
    * throwaway branch
    * only has the fix
    * merge it places (instead of a stash)
    * network portable where stash would not be

## History

### Advanced Interactive Rebase
__Duration:__ 15

* rebase -i
* what are the verbs?
* autosquash!
* fixup!
* edit mode
* delete a line
* reorder
* danger of reorder
* squash
* fixup

### Inserting Commits Into Existing History
__Duration:__ 5

* rebase -i
* pause rebase
* branch and cherry pick
* rebuild the branch (reroll the series)

### Undoing and Re-doing Almost Anything
__Duration:__ 15

* reflog
* -C for commit
* ORIG_HEAD
* FETCH_HEAD
* --abort on merge and rebase
* reset --hard
* reset --soft
* reset --mixed

## Productivity

### Building Custom Commands via Aliases
__Duration:__ 5m

* aliases
* combined aliases
* brew install git-extras
* git summary
* git changelog
* hub
* pull request via CLI

### Minimizing Repetitive Conflict Resolution
__Duration:__ 15m

* rerere
* turn it on
* show how it helps on redoing a branch
* show how multiple merges of the same fix can benefit from this
* clearing 

### Log History Searches
__Duration:__ 20m

* steal from brent
* https://github.com/brntbeer/Lesson-Plans/blob/master/git-and-github/history-and-collaboration.md
* all of the stuff there


### Commit Data Structure Internals
__Duration:__ 10m

* Merkle (hash) tree
* What rebase does these
* What is a branch and a tag
* decompose commit with ls-files, cat-file -p and cat-file -t
* five modes (120 folder, 100 regular file, 222 symlink, 160 submodule) for the git umask, the four for the unix umask (777, 644, 755, 000)

### Refspecs
__Duration:__ 10m

* ..
* ...
* blob spec
* ^{tree}
* ^{blob}

### Q&A
__Duration:__ 5m

* [Office Hours]()

---------------------------------------------------

# Command Line History

```
Command line history here
```
