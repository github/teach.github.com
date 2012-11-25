---
layout: barewithrelated
title: Advanced Git Workshop
description: An advanced Git workshop outline and course plan.
path: courses/_posts/2001-01-01-git-advanced-course.md
---

## Objectives

* Interactive rebasing with both the traditional squash, reword and edit, in addition to the new fixup and autosquash.
* Understanding the modes of `git reset` and how it affects, preserves, or destructs the history, index, and working directory.
* Searching through history with string, combination, and pickaxe approaches.
* Diffing changes past refactorings.
* Finding the original author of methods in refactored and relocated code.
* Administratively shaping history with `git filter-branch` at milestones or after a Subversion import.
* Minimizing repetitive merge efforts with `rerere`.
* Controlling pull and push behavior with advanced configuration options.
* Manually editing the refspec and git config files.
* Pushing to and pulling from multiple destinations.
* Tag signing, tag merging, and signed tag business scenarios.
* Adding Git notes and their effective namespace use.
* Relocating chunks of work with `rebase onto`
* Leveraging several other cutting-edge Git 1.7.9 features...

## Additions to Course Plan
* Push cherry-picks
   * Cherry picked some changes on to feature2
   * Someone else had already merged those onto feature1
* Cherry pick
    * Can you find a patch-id in the entire graph
    * "Where is this change also living in the entire repo?"
* Merge two branches (Your master and her master)
    * The file does exist and unchanged on sarah/master
    * The file has changes on matthew/master
    * merge those two that you get conflicts
* Mercurial
    * Cherry-pick == hg-graft <CHANGESETHASH>
* Comparison between Git and Mercurial
* My gitconfig will be shared (github.com/matthewmccullough/dotfiles git-workshop)
* Rebase vs Cherry-pick
    * Rebase -i
        * Reshape history to be clear for others later
        * 30 commits (s)
    * Cherry-pick
        * Harvest fix from customer branch
* Fetch versus Pull
    * pull -rebase vs pull
* Subtree merge
    * fold multiple repos into one, maintaining history
* Mercurial / Git Bridge Cautions
* GUI that allows for graph manipulation
* How to have multiple signers on a given commit

## Links

RefCard Cheat Sheet:  
<http://refcardz.dzone.com/refcardz/getting-started-git>


Recommended Free Git Book:  
<http://progit.org>


Workshop PDFs:  
<https://github.com/matthewmccullough/git-workshop>


Shell Prompt Enhancements:  
<http://ambientideas.com/blog/index.php/2010/11/zshell-prompt-for-git/>  
(which links to the Bash ones)

and the uber-set:  
<https://github.com/matthewmccullough/scripts>  
which includes all my OSS work for shell scripts.

As a command line productivity framework, I've become quite attached to oh-my-zsh.  It has git-enhanced prompts galore.  
<https://github.com/robbyrussell/oh-my-zsh>


Git Bookmarks:  
<https://pinboard.in/u:matthew.mccullough/t:git>


GitHub (Hub) Plugin for Git:  
<https://github.com/defunkt/hub>


Great GitHub help pages:  
<http://help.github.com>


Office Hours:  
Any follow up Git or GitHub questions can be asked in a desktop-sharing webinar and chat room:
<https://github.com/training/free>
