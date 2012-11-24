---
layout: bare
title: Git Rebase
description: Reshaping commits with rebase.
path: technology/_posts/2001-01-01-lesson-git-rebase.md
---

Linearize the branch commits. Rebranches at the latest <source branch name> and replays committed branch work on top of that.

    git rebase <source branch name>

Or perform the rebase interactively, where you can change the order of the commits

    git rebase -i <branchname>
    
If conflicts occur:

    git add
    git rebase --continue
    
Or if you want to bail out, a similar command to aborting a merge:

    git rebase --abort
    
You can squash multiple commits into one commit with the interactive rebase. Simple mark a commit as squashed.

Commands:

    p, pick = use commit
    e, edit = use commit, but stop for amending
    s, squash = use commit, but meld into previous commit
    Or if you remove a line, that commit will be excluded from the rebase.

