---
layout: bare
title: Saving In-Flight Changes with Stash
description: Stashing away in-progress changes without a commit.
path: technology/_posts/2001-01-01-lesson-git-stash.md
---

## Stashing Work in Progress
Safely stash work in progress while interrupted

    git stash

Put the work back on the current branch via a merge, leaving it on the stack

    git stash apply

Put the work back on the current branch and remove it from the stack

    git stash pop

Show what is on the current stack of stashes

    git stash list
