# Managing Checkpoints

## Tagging
List all existing tags

    git tag

Mark a lightweight tag at the current point in history on the current branch

    git tag TAGNAME

Mark a lightweight tag at some previous point in history

    git tag TAGNAME TREEISH
    
Push tags to a remote repo

    git push --tags
    
Overwrite an existing lightweight tag (locally)

    git tag TAGNAME -f

Create a tag object without a digital signature

    git tag TAGNAME -a
    
Find tags containing a commit (do these tags have this fix?)

    git tag --contains TREEISH
    
Note that `.git/refs/tags` are the non-object tags.