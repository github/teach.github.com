---
layout: bare
title: Interoperability with Fast-Import and Fast-Export
description: Git's interoperability with any system via fast-import and fast-export.
path: technology/_posts/2001-01-01-lesson-git-interoperability-with-fast-import.md
---

## Fast-Import
Git `fast-import` is a human-readable transport format for recreating repositories. Ben Lynn has written a quick description of [fast-import](http://crypto.stanford.edu/~blynn/gitmagic/ch05.html) that is helpful to read.

The standard use of fast-import is a one time import of source code history from another version control system. Using sed, awk, grep and similar tools, developers can craft an output to almost any version control system that matches this fast-import file format.
    
Example export:

    blob
    mark :1
    data 13
    Testing
    JUNK

    blob
    mark :2
    data 14
    Testing2
    JUNK

    commit refs/heads/master
    mark :3
    author Matthew McCullough <matthewm@ambientideas.com> 1286663588 -0600
    committer Matthew McCullough <matthewm@ambientideas.com> 1286663588 -0600
    data 11
    More stuff
    M 100644 :1 test1.txt
    M 100644 :2 test2.txt

    blob
    mark :4
    data 22
    Testing
    JUNK
    MOREJUNK

    blob
    mark :5
    data 23
    Testing2
    JUNK
    MOREJUNK

    commit refs/heads/master
    mark :6
    author Matthew McCullough <matthewm@ambientideas.com> 1286664669 -0600
    committer Matthew McCullough <matthewm@ambientideas.com> 1286664669 -0600
    data 15
    Another commit
    from :3
    M 100644 :4 test1.txt
    M 100644 :5 test2.txt
    
Create a Git repository from this formatted input file:

    mkdir importedproject
    cd importedproject
    git init
    git fast-import --date-format=rfc2822 < /myimportfile
    
and then switch to the master branch after the import with:

    git checkout master .
    
There is an equivalent `git fast-export` command that outputs an already-Git repository to this plaintext format. It can be used to study the format and learn how to craft your own import files.

    git fast-export HEAD^^..HEAD
    
You'll likely want to redirect this output to a file.
