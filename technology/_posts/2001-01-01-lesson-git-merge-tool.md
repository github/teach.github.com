---
layout: bare
title: Git Merge Tools
description: Using external merge tools.
path: technology/_posts/2001-01-01-lesson-git-merge-tool.md
---

## External Merge Tools
Setup diff in `~/.gitconfig` global configuration file:

    #[diff]
    #	tool = adifftool
    #	external = git-difftool--helper

or

    [difftool "adifftool"]
    	cmd = araxis-difftool.sh \"$LOCAL\" \"$REMOTE\" \"$MERGED\"
    [difftool]
    	prompt = false

    #Automatically do all merges with this mergetool
    [merge]
    	tool = amergetool
    [mergetool "amergetool"]
    	cmd = araxis-mergetool.sh \"$PWD/$LOCAL\" \"$PWD/$BASE\" \"$PWD/$REMOTE\" \"$PWD/$MERGED\"
    [mergetool]
    	prompt = false

Using Araxis for diffing

    git difftool HEAD HEAD^ -- test2.txt
