---
layout: bare
title: Repository Maintenance
description: Maintaining a repository and checking for integrity.
path: technology/_posts/2001-01-01-lesson-git-repo-maintenance.md
---

## File System Check
File system check verifies integrity. Finds corrupt objects.

    git fsck
    
Find orphaned objects that would be cleaned by prune

    git fsck --orphaned

## Prune
Prune is a command that optimizes your repository by removing commits that are not orphaned.

    git prune

or to see what is orphaned, but not actually touch them:

    git prune --dry-run

or

    git prune -n

## Garbage Collect
GC compacts old loose commits into pack files and `prune`s orphan commits. It is a superset of the `prune` command and is more commonly run than `prune`.

    git gc

or to compress and optimize for space and speed

    git gc --aggressive
