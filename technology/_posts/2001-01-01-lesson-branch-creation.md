---
layout: bare
title: Creating Branches
description: Creating a new branch.
path: technology/_posts/2001-01-01-lesson-branch-creation.md
---

## Creating a Branch for Later Use
A new branch can be created at any time. The assumption, with no parameter, is that the branch is being created from `HEAD`, which is the current point in the currently checked out branch.

To create a new branch from HEAD:

    git branch <new-branch-name> <from-existing-branch>

To create a new branch from a more specific _ref_:

    git branch <new-branch-name> <from-existing-branch-or-ref>

## Selecting The Current Branch
Once a branch is created, it can be checked out to target it as the destination of the next commit.

    git checkout <new-branch-name>

## Creating a Branch and Selecting It
An option switch allows you to create a new branch and check it out in one unified operation:

    git checkout -b <new branch name> <from branch>
