---
layout: bare
title: Atlanta Java Users Group - Guts of Git
description: Atlanta Java Users Group "Guts of Git" presentation notes
tags: [notes, event]
eventdate: 2012-11-21
---

## Resources

* [The Guts of Git Outline](http://teach.github.com/articles/git-guts-course/)

## Slides

<script async class="speakerdeck-embed" data-id="4fde51a8dbe56c001f013368" data-ratio="1.77777777777778" src="//speakerdeck.com/assets/embed.js"></script>

## CLI History

    git init proejct3
    cd proejct3
    echo TEST > test.txt
    printf "blob 12\000Hello World\n" | shasum
    git config user.name
    git config user.email
    echo "Hello World" > hello.txt
    git hash-object hello.txt
    git rev-parse 557d
    git commit -m"Test 1"
    git show 

    git show master
    git log --patch --before=5.years.ago
    git show 7ac17529297910c7b4502bdfa543ddec3f943413
    cat .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238
    alias deflate="perl -MCompress:Zlib -e 'undef $/; print uncompressed(<>)'"
    alias deflate="perl -MCompress::Zlib -e 'undef $/; print uncompressed(<>)'"
    alias deflate="perl -MCompress::Zlib -e 'undef $/; print uncompress(<>)'" 
    deflate .git/objects/55/7db03de997c86a4a028e1ebd3a1ceb225be238
    echo second > second.txt
    git commit -m"Second commit"
    git log --format=raw
    git log -S "debug1"
    git log -S "debug"
    git gc

    z git_git
    mv read-cache.c newfilename.c
    vim newfilename.c
    git add -A .
    git status
    git rev-parse origin/master
    git rev-parse remotes/origin/master  
    git rev-parse master

    cd -
    vim rev-parse HEAD
    echo test > test.txt
    git add .
    git commit -m"Test"
    git rev-parse HEAD
    vim .git/objects/30/231d736bff2c884cebe54ca108b8141ebbd0c0
    git fsck

    cd ../project2
    git show master^{tree}
    git rev-parse master^{tree}
    git cat-file -p 97b4
    git cat-file -p 557d
    generaterandomchanges 10 sample txt
    git log
    git show 513efe358ff351be84076878d1a4f14ce24ee4ab:hello.txt
    git show 513efe358ff351be84076878d1a4f14ce24ee4ab:hello.txt | mate
