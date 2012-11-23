---
layout: bare
title: Rerere
description: Reusing recorded merge resolution.
path: technology/_posts/2001-01-01-lesson-git-rerere.md
---

If you merge a branch often, you don't want to keep telling Git how to merge it every time you merge. With rerere enabled (just an option switch), it will remember your resolutions and use them next time to minimize your effort.

    git config --global rerere.enabled 1
