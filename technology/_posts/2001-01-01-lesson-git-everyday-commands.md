---
layout: bare
title: Everyday Commands
description: TODO
path: technology/_posts/2001-01-01-lesson-git-everyday-commands.md
---

## Status
Shows the current status of tracked objects in a repo while sitting anywhere in that repo's directory tree).

    git status

Everything unstaged diffed to the last commit

    git diff
    
Everything staged diffed to the last commit

    git diff --cached
    
Everything unstaged and staged diffed to the last commit

    git diff HEAD

## Adding
    git add <WILDCARD>
    git add <SPECIFICFILENAME>

Interactive

    git add -i

Interactive patch mode

    git add --patch
    git add -p
    
## Removing
Remove a file from being tracked

    git rm FILENAME
    
## Renaming (Moving)
Rename a tracked file

    git mv FILENAME NEWFILENAME

## Committing
Commit changes with a message provided interactively ($GIT_EDITOR or $EDITOR)

    git commit
    
Or preview what would have occurred

    git commit --dry-run

Commit with a message provided on the CLI

    git commit -m'Some message'

Commit and add any modified tracked files in one unified command

    git commit -a

## Git Ignores
Stored in a file at any level of the tree.

    .gitignore

Can apply recursively.

    **/*.tmp

Glob pattern format

    **/log*/*.log

Exclusions

    !logstuffweneedtokeep
    
## Checkout to a different Branch
Switch to a given branch

    git checkout BRANCHNAME

Switch to a detached (arbitrary, detached) HEAD

    git checkout TREEISH
