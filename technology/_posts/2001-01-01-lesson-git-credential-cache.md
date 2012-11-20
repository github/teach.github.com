---
layout: bare
title: Git Credential Cache
description: Saving Git push and pull credentials for later reuse.
path: technology/_posts/2001-01-01-lesson-git-credential-cache.md
---

## Linux:

[Git Credential Cache, Gnome Keyring Implementation](https://github.com/shugo/git-credential-gnomekeyring)


## Mac OSX:

This credential cache native implementation is built into modern (1.7.10+) Git distributions.

    alias.cc-helper=config --global credential.helper 'osxkeychain'


## Windows:

[Git Credential Cache, Windows Credential Store](https://github.com/anurse/git-credential-winstore)


## Platform Independent

An in-memory cache that communicates over a socket.

	git config --global credential.helper 'cache --timeout=300'

## Disabling the Credential Helper

    git config --global --unset credential.helper
