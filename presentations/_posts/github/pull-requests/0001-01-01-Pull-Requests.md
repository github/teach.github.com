---
chapter: Pull Requests
layout: slide
title: ''
tags: ['github/pull-requests']
---


## Auto-fetch all Pull Requests
* `git config --add remote.<name>.fetch <refspec>`
    * `+refs/pull/*/head:refs/remotes/origin/pull/*`