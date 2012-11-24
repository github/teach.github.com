---
layout: bare
title: Internals of .git
description: TODO
path: technology/_posts/2001-01-01-lesson-internals-of-dotgit.md
---

## Looking around the .git folder
The .git folder is the "magic" directory

    cd .git
    ls -al
    tree

There is only one .git folder at the top of the tree.

Take a look at the `objects` directory (filenames are hashes).
