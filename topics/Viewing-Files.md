---
layout: bare
title: Topics • Viewing File Contents
description: Viewing the contents of historical files.
---

# Viewing Files

## Composition of a file
Visualize the file's commits that brought it to the current state, including  developer, branch, date

    git blame FILENAME

## Shortlog
For release notes

    git shortlog

Author summary only

    git shortlog -s -10

## Viewing a specific file
To view the contents of a file at a specific point in time, 

    cat-file
