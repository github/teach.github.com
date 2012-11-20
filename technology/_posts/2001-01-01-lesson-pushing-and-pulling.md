---
layout: bare
title: Pushing and Pulling
description: Git's network transmission commands.
path: technology/_posts/2001-01-01-lesson-pushing-and-pulling.md
---

## Pushing to a repo
My Git playground repo URL

    git@github.com:matthewmccullough/hellogitworld.git

Push the current branch

    git push
    
Push to a specific remote and only a specific branch

    git push origin master
    git push <remote name> <branch name>

Push a branch to a different name on the remote

    git push <remote name> <local branch name:remote branch name>
    git push origin master:newbranch

Delete a remote branch

    git push origin somebranch:
    
Push all branches, all tags

    git push --all

Push even if refs disagree on parents

    git push --force

## Retrieving code
Pull in the blobs into our repo, but don't merge them

    git fetch <remote name>

What changes did we get?

    git log master..origin

Merge them in

    git merge <remote name/remote branch>

Automatic fetch and merge

    git pull
    git pull <remote name>
    git pull <remote name> <branch name>

Examine the project's `.git/config` file for automatic mappings. Projects locally created won't be tracking the remote repository so you would need to `git push origin master` or `git push origin master` verbosely each time. You'd see an error like this:

    git pull
    You asked me to pull without telling me which branch you
    want to merge with, and 'branch.master.merge' in
    your configuration file does not tell me, either. Please
    specify which branch you want to use on the command line and
    try again (e.g. 'git pull <repository> <refspec>').
    See git-pull(1) for details.

    If you often merge with the same branch, you may want to
    use something like the following in your configuration file:

        [branch "master"]
        remote = <nickname>
        merge = <remote-ref>

        [remote "<nickname>"]
        url = <url>
        fetch = <refspec>

    See git-config(1) for details.

or even if you specify a remote, but no branch:

    git pull origin
    From http://gitfarm.appspot.com/git/students10
     * [new branch]      master     -> origin/master
    You asked to pull from the remote 'origin', but did not specify
    a branch. Because this is not the default configured remote
    for your current branch, you must specify a branch on the command line.

To have the branch track a remote without re-checking it out, just edit the `.git/config` file. The branch will look like this:

    [core]
    	repositoryformatversion = 0
    	filemode = true
    	bare = false
    	logallrefupdates = true
    	ignorecase = true
    [remote "origin"]
    	url = http://students10:password@gitfarm.appspot.com/git/students10.git
    	fetch = +refs/heads/*:refs/remotes/origin/*
    
and needs to be changed to look like this:

    [core]
    	repositoryformatversion = 0
    	filemode = true
    	bare = false
    	logallrefupdates = true
    	ignorecase = true
    [remote "origin"]
    	url = http://students10:password@gitfarm.appspot.com/git/students10.git
    	fetch = +refs/heads/*:refs/remotes/origin/*
    [branch "master"]
    	remote = origin
    	merge = refs/heads/master
    	
or setup with the git config command like this:

    git config branch.master.remote origin
    git config branch.master.merge refs/heads/master
