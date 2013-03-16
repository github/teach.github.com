---
layout: bare
title: Online Git Advanced Class
description: A half-day Git Advanced class
tags: [notes, class, workshop]
path: classnotes/2013-01-10-git-advanced-online.md
eventdate: 2013-01-10
---

# Instructors
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))


# GitHub - Advanced Git & GitHub Course

Many Git workshops successfully focus on the basics for those new to DVCS. However, with Git having a full 5 years on the street now, there is a growing desire to address the maturing users of this innovative DVCS. This workshop will take existing Git users and bring them to a heightened level of productivity by leveraging Git’s powerful, yet underused “advanced” features.

## Topics
* Common Branching Strategies
* Applying Branching Strategies
* Branch Pull Options
* Reusing Small Pieces of Code
* Advanced Interactive Rebase
* Inserting Commits Into Existing History
* Undoing and Re-doing Almost Anything
* Building Custom Commands via Aliases
* Minimizing Repetitive Conflict Resolution
* Log History Searches
* Commit Data Structure Internals
* Refspecs

## Objectives
Enabling Git users to effectively migrate repositories from other formats.
Facilitate history modification of Git repositories.
Establish time-tested branching and merging strategies.
Enhance knowledge of Git tools to simplify history.
Search Git history with ease and precision.
Move to and reuse code on other branches via commits and tags.
Understand Git’s tagging and GPG signing process.
 
# Details of Class

## Branching

### Common Branching Strategies
__Duration:__ 5m

These are called Branching Strategies, but are just as easily called *Team Collaboration Techniques* in an abstract discussion of version control.

* Branch by feature
* git-flow
    *  Made popular on Git by Vincent Driessen and his NVIE site
    * [Git-Flow: A Successful Branching Model](http://nvie.com/posts/a-successful-git-branching-model/)
    * [Git-Flow Source](https://github.com/nvie/gitflow)
    * Too many levels?
    * GH prefers Simplest thing that works.
* GitHub Flow
    * [How GitHub Develops](https://github.com/blog/919-how-github-develops)
    * [GitHub Flow blog post](http://scottchacon.com/2011/08/31/github-flow.html)
    * Works well with Pull Requests when one-layer deep
    * Think of features much smaller than typical
* Git's Model
    * [Git Maintenance Notes](https://sites.google.com/site/maintnotes/)
    * [Git Workflows](http://www.kernel.org/pub/software/scm/git/docs/gitworkflows.html)
    * [Git's Source Code](https://github.com/git/git)
    * Branches
        * master
        * maint
        * next (graduation from pu)
        * pu (can be rebased)
        * html
        * man
    * _"A trivial and safe enhancement goes directly on top of 'master'."_
    * _"The two branches "master" and "maint" are never rewound, and "next" usually will not be either"_
    * _"When a topic that was in 'pu' proves to be in testable shape, it graduates to 'next'."_
* Version numbers
    * `major.minor.fix`
    * [Semantic versioning](http://semver.org)
* Rebase before sharing (sending a Pull Request)
    * [Contributing to Spring Social](https://github.com/SpringSource/spring-social/wiki/Contributing)
    * [How To Merge Without Fear](http://blog.springsource.org/2010/12/21/git-and-social-coding-how-to-merge-without-fear/)
    * [What to do when things get complicated](http://blog.springsource.org/2011/07/18/social-coding-pull-requests-what-to-do-when-things-get-complicated/)

### Branching Strategy Tools
__Duration:__ 10m

* git-flow
    * [Git-Flow: A Successful Branching Model](http://nvie.com/posts/a-successful-git-branching-model/)
    * Tool to enforce branching rules
    * Not very popular at GitHub
    * [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html) preferred
    * Complex diagram that makes you feel in control?
* Branch creation on the web
    * [Recent feature](https://github.com/blog/1377-create-and-delete-branches)
    * Entire workflow from the web
* Automatic fork-on-edit on the web
   * Irresponsible if not for [Commit Status API](https://github.com/blog/1227-commit-status-api)
   * Can't just blindly merge if you don't know it works
* Converting a branch to tag to signal a freeze
    * `git tag <tagname> <branchname>`
    * `git checkout <tagname>`
    * `git branch -D <branchname`

### Applying Branching Strategies
__Duration:__ 5m

* `HEAD`
    * Changing HEAD branch via the GitHub UI
        * Viewing the HEAD from GitHub
        * `git ls-remote`
    * Changing HEAD branch in bare (often headless) repos
    * git clone
        * What gets checked out by default?
* "Never commit to master"
* Pull Requests as branches
    * `git ls-remote`
    * `git fetch <refspec>`
    * `git merge FETCH_HEAD`
    * `git branch <branchname> FETCH_HEAD
    *  Manually editing the `.git/config` fetch refspec to retrieve Pull Request heads

### Merging Strategies
__Duration:__ 10m

* `git merge --no-ff`
    * Default for GitHub "merge" button on Pull Requests
* [Travis-CI](https://www.travis-ci.org/) building the PR branch 
* Squashed
    * `git merge --squash`
    * Atomic delivery
    * Loses merge metadata (no dual-parent commit)
* Rebase preparation
    * Rebase to `master` before merge
    * [Real-world request](https://github.com/github/gitscm-next/pull/217#issuecomment-11832808)
* Reroll
    * Lock original
    * Duplicate the branch
    * Rebase and manipulate 
    * before rebasing it before merging
    * Copy the `branch-wip` to `branch-reroll`
    * Convert `branch-wip` and `branch-reroll` to tags after merging.

### Branch Pull Options
__Duration:__ 10m

* Tracking
    * look in `.git/config` for tracking matches
    * Remote fetching versus pull's automatic merge

* Pulled branches _merge_ in to the local branch by default.
* Can override with providing the refspec on the CLI (no default action)
* Branches can be requested to rebase on an ad-hoc basis with `git pull --rebase`
* Pulled branches can be set to rebase instead. The option is set at the time the tracking branch is created.

        git config --local branch.autosetuprebase "always"

* The configuration set in the `.git/config` file is:

        [branch]
                autosetuprebase = always

* If a never-before tracked branch is checked out, the system reports that it is set up for rebasing, not merging:

        git checkout feature_division
        
        Branch feature_division set up to track remote branch feature_division from origin by rebasing.
        Switched to a new branch 'feature_division'

* The configuration set in the `.git/config` file for a specific branch to be rebased instead of merged on pull uses both the section name `branch` as well as the `subsection` name of the specific branch:

        [branch "feature_division"]
                remote = origin
                merge = refs/heads/feature_division
                rebase = true

* Alternatively, an already-tracked branch can be set to rebase with the `git config` syntax for setting a section and subsection key:

        git config --local branch.<branchname>.rebase true



### Reusing Small Pieces of Code
__Duration:__ 20m

You can use `git cherry` and its cousin, `git cherry-pick` to harvest and inspect commit-specific merges.

#### cherry
    * compares patch-id, not the hashes
    * commits not upstream are prefixed by a symbol
    * Minus says not upstream
    * Plus symbol says it is upstream
    * `git cherry <UPSTREAM> <HEAD>`
    * `git cherry feature_subtraction master`

#### cherry-pick
    * pulls in a commit like copy and paste
    * `-x` adds the commit ID in the commit message

* Merging small pieces into a feature branch
* A fix is a "feature" (reuse by merging many places)

#### Patches

* Extracting patch files and applying patches (for non Git use)
    * git format-patch
    * git apply

Not all projects are in Git, are on GitHub, accept pull requests, accept bundles, or offer developers direct access to submit changes via a Git push. For those cases, a Git repo can produce a patch file that can be later applied to a working copy of the same project.

A Git patch is created by formatting the patch into one or more patch files. One patch file is generated per Git commit. The `format-patch` command is given the _since_ reference and all commits from there to HEAD are output to unique files in the current directory.

    git format-patch HEAD~3
    
    0001-A-random-change-of-2003-to-file8.sample.patch
    0002-A-random-change-of-7199-to-file9.sample.patch
    0003-A-random-change-of-3572-to-file10.sample.patch

The patch output files can be targeted to another directory (cleaner than having them in the repo) with the `-o` flag. The folder will be created if it does not exist.

    git format-patch HEAD~3 -o ../patchtosend
    
    ../patchtosend/0001-A-random-change-of-2003-to-file8.sample.patch
    ../patchtosend/0002-A-random-change-of-7199-to-file9.sample.patch
    ../patchtosend/0003-A-random-change-of-3572-to-file10.sample.patch

A unified patch file can also be created by redirecting the output to a single named file.

    git format-patch HEAD~3 --stdout > unified.patch

The contents of the patch contain the code change, relative ref, and the version of Git that wrote it.

    cat ../patchtosend/0002-A-random-change-of-7199-to-file9.sample.patch
    
    From 608386f4145f4e5c26d3a365e43909b778c468ec Mon Sep 17 00:00:00 2001
    From: Matthew McCullough <matthewm@ambientideas.com>
    Date: Mon, 5 Dec 2011 23:06:48 -0700
    Subject: [PATCH 2/3] A random change of 7199 to file9.sample
     
    ---
     file9.sample |    1 +
     1 files changed, 1 insertions(+), 0 deletions(-)
     create mode 100644 file9.sample
     
    diff --git a/file9.sample b/file9.sample
    new file mode 100644
    index 0000000..d09384d
    --- /dev/null
    +++ b/file9.sample
    @@ -0,0 +1 @@
    +Some new random text: 5191
    -- 
    1.7.8

The third way a patch can be applied is with `apply` which applies just one patch at a time.  The patch can be previewed, integrated into the current code base via the `--stat` flag.

    git apply --stat unified.patch

If all looks good, the patch can be applied to the current working copy of the files. Then, the changed files would have to be manually staged and committed.

    git apply unified.patch

However, it may be more convenient to have `apply` put the changes into the index (stage them) when it is applying them to the working copies.

    git apply --index unified.patch

The changes are now ready to be committed.

However, I more often use `am` to apply patches since I can leverage the `--signoff` flag, which the subordinate `apply` command does not possess.

Then the patch can be applied in a series with `am`, which stands for _apply-mailbox_.

    git am --signoff ../patchtosend/*.patch

The `am` command, differently than `apply`, actually _commits_ the applied patches to the repo. A quick review of the log shows the signed-off-by field added to each commit message.

    git log -2
    
    commit 776cd63f1f985f50e5a0d4315678b21bff01a387
    Author: Matthew McCullough <matthewm@ambientideas.com>
    Date:   Mon Dec 5 23:06:48 2011 -0700

    A random change of 3572 to file10.sample
    
    Signed-off-by: Matthew McCullough <matthewm@ambientideas.com>


    commit f3ddc8ba2b56dda12e7188c08dd3bd8cb1d875a7
    Author: Matthew McCullough <matthewm@ambientideas.com>
    Date:   Mon Dec 5 23:06:48 2011 -0700

    A random change of 7199 to file9.sample
    
    Signed-off-by: Matthew McCullough <matthewm@ambientideas.com>

Patches with less metadata can be captured by the output of `diff`. Any unstaged changes can be directed into a file by just redirecting the diff output.

    git diff > ../diff.patch

Such basics diffs don't contain anything but the filename and code changes and not the refs they related to. Thus, they are unable to be applied with `am` and can only be applied with `apply`.

    cat ../diff.patch
    
    diff --git a/file1.sample b/file1.sample
    index 29ac2ce..843db1f 100644
    --- a/file1.sample
    +++ b/file1.sample
    @@ -1 +1,2 @@
    -Some new random text: 8373
    +More Some new random text: 8373
    +Additional
    
    git apply ../diff.patch

It is interesting to note that `git apply` is one of the very few commands that can function even outside of a Git repository.

* carrying small pieces around with firewalls (git bundle create)
* stashes without popping (apply) (rubber stamp on branches)
    * throwaway branch
    * only has the fix
    * merge it places (instead of a stash)
    * network portable where stash would not be

## History

### Advanced Interactive Rebase
__Duration:__ 15m

* Interactive Rebase
    * What are the verbs?
    * Edit mode
    * Delete a line
    * Reorder commits
    * Danger of reorder (Git is snapshots, not patches)
* Rebase `autosquash` and `fixup`.
    * Commit messages with `autosquash!` or `fixup!`
    * `git rebase -i --autosquash`
    * The "squash! ..." or "fixup! ..." message phrase has to match identically to an existing commit.

### Inserting Commits Into Existing History
__Duration:__ 5

* Interactive Rebase Insertion
    * `git rebase -i`
    * Pause rebase
* Branch and cherry pick
* Rebuild the branch
   * a.k.a. reroll the series

Interactively rebase and edit on the desired commit

    git rebase -i <startingref>
    # Edit the recipe and mark the commit you want to insert before with an "EDIT""
    
    #Amend that commit
    git commit --amend
    
    #Or bring in a commit
    git cherry-pick
    
    #Rebase continue
    git rebase --continue

### Undoing and Re-doing Almost Anything
__Duration:__ 15

* Reflog
* `git commit -C <ref>` for commit message reuse
* `ORIG_HEAD`
* `FETCH_HEAD`
* `git merge --abort`
* `git rebase --abort`
* `reset --hard`
* `reset --soft`
* `reset --mixed`

## Productivity

### Building Custom Commands via Aliases
__Duration:__ 5m

* Aliases
* Combined aliases
* [Git Extras](https://github.com/visionmedia/git-extras)
    * `brew install git-extras`
    * `git summary`
    * git summary
    * git changelog
* [hub](https://github.com/defunkt/hub)
* Pull Request via CLI

### Minimizing Repetitive Conflict Resolution with Rerere
__Duration:__ 15m

The `rerere` command (and configuration option) which stands for "reuse recorded resolution" memorizes the two sides of a conflict and can re-use your resolution next time the same conflict is seen.

Merge conflicts are an inevitable thing, but it certainly would be nice if you never had to deal with the same one more than once. What if you rolled back a commit, only later to have to merge it again? It would be fantastic if Git could remember how you resolved it last time. It can, with `rerere` turned on.

Rerere captures the left and right side of a merge conflict and if it sees those same two sides again, it will auto-resolve them, leaving them staged for your review and approval. The intelligence of a rerere data file can be incredible on a large and long-lived code base.

#### Testing Rerere
* Turn on rerere

         git config --global rerere.enabled 1
         #or
         git config --global rerere.enabled true

* Start a merge with a conflict.

        git checkout conflict1
        git merge conflict2
        
        Auto-merging src/Sum.groovy
        CONFLICT (content): Merge conflict in src/Sum.groovy
        Automatic merge failed; fix conflicts and then commit the result.

The merge failed, needing manual intervention. The rerere status and diff will tell us what it is watching for resolution:

        git rerere status
        
        src/Sum.groovy
        
The `git rerere diff` will show the contents of the conflicts known by the rerere cache.
        
        git rerere diff
        
        --- a/src/Sum.groovy
        +++ b/src/Sum.groovy
        @@ -1,7 +1,4 @@
         static int sum(int val1, val2) {
        -<<<<<<<
        -    return (val1 + val2)
        -=======
             val3 = val1 + val2
        ->>>>>>>
        +    return val3
        }

Next, we'll fix the conflict and then commit it.

        # Fix conflict in file
        
        git commit -a -m"Fixed conflict"
        Recorded resolution for 'src/Sum.groovy'.
        [conflict1 c062e45] Fixed conflict

Notice how the rerere indicated it was capturing the merge conflict resolution.

We don't like the merge result, so we'll roll it back.

        git reset --hard HEAD~1

Then try it again with a merge that will redo that merge plus some things:

    git merge conflict2
    Auto-merging src/Sum.groovy
    CONFLICT (content): Merge conflict in src/Sum.groovy
    Resolved 'src/Sum.groovy' using previous resolution.
    Automatic merge failed; fix conflicts and then commit the result.

The results of rerere are explicitly cleaned if the `git rerere gc` command is run. Rerere results are saved for 15 days for unresolved conflicts and for 60 days for resolved conflicts. These expirations can be set through the `gc.rerereunresolved` and `gc.rerereresolved` variables, which are set to integer date counts.

Specific resolutions can be forgotten via the rerere command. A rerere resolution set can be forgotten, but this technique is deprecated.

    git rerere forget
    
    warning: 'git rerere forget' without paths is deprecated

It is more appropriate to forget the rerere of a specific filespec.

    git rerere forget src/Sum.java
    
    Updated preimage for 'src/Sum.groovy'
    Forgot resolution for src/Sum.groovy

#### Rerere Cache Location
The most surprising fact is that the rerere cache is not machine-portable in the sense that it is not transported with `push` or `pull` operations. It saves resolved objects to the `.git/rr-cache` folder.

    .git
       |-- rr-cache
           |-- 810a8080b83381d1db72066593c8f01954be8bc3
           |   |-- preimage
           |-- c437466904eeeebfd1f406c0f7a0179db64382be
               |-- preimage

#### Expiration of Rerere Cache Entries
* Resolved expiration
    * 60 days?
    * Can be configured
* Unresolved expiration
    * 30 days?
    * Can be configured


### Log History Searches
__Duration:__ 20m

The following commands and GitHub references by in large are in reference to <https://github.com/brntbeer/teach.github.com>
unless otherwise specified.

To follow along: `git clone https://github.com/brntbeer/teach.gitub.com` and navigate
into the project from your terminal.

#### Git Log
Git log is a super valuable tool when keeping track of your project. From just getting
a summary of who committed lately, to what was specifically committed, to even investigating
for particular changes -- git log can be used to tell us many things.


#### Basics
Starting out, it's important to understand how we can limit the number of commits that we
are shown. In some bigger projects there can be hundreds or thousands of commits, and most
of those we don't care about.

* `git log -1` or `git log -15`

When we specify a dash and then a number, that tells `log` how many recent commits should
be returned to us. If we think of `git log` as a way to look back in time, the ordering
of these commits returned makes sense to be from most recent to oldest.

Seeing the commits and their messages can be pretty important, but we can also format
these commits to give us more of less information.

* `git log --pretty=oneline` or (oneline, short, medium[default], full, fuller, email, raw)

`--pretty=` will allow us to vary the control of what our commit messages show. By
default `git log` uses `medium`, but we can see that with `oneline` or `short` we can
change what kind of embedded information we are presented with. For instance, if I
didn't want to see committer, author, or date information and only cared about the
subject of a commit message (first line), oneline is clearly best. However, if I have a
more complicated project and want to see both authored date and commit date, I'd want
to use `fuller`. The commit date is the date that is shown by default with `medium`, but
depending on different types of collaboration, your commit may have actually been
authored many days previous [Ed Note: If I made a commit, created a Pull request, and
had that pull request accepted 3 days later, the difference in authored and commit date
would be 3 days]

Now that we can control how many commits we see, and what level of detail we see in the
summary, often we want to filter these results even more before we start digging through
content.


#### Filtering results

* `git log --author="brent"`
  * find commits only authored by a given person

* `git log --grep="add"`

`--grep` is used just like you'd use it from the command line, you have to say
specifically what you'd want to search for. When we use a term to grep for, we're only
going to search the log for that term in the commit message itself. This is one example
of why a descriptive commit message could be super useful (besides just allowing friends
or coworkers to see what you're up to without reading your code).
  * Grep will even look at words you're not actually seeing (pretty=short but word exists
  in the message body, still finds it!)

_Bonus Online Material_

* `git log --since="2 weeks ago"
  * grab all the commits that happened between now and 2 weeks ago
* `git log --before="2 weeks ago"
  * grab commits that happened from 2 weeks ago and OLDER
* `git log gh-pages...gh-pages@{2.weeks.ago}
  * Similar to https://github.com/github/teach.github.com/compare/gh-pages@%7B2.days.ago%7D...gh-pages

* `git log --diff-filter=R` (needs `-M` or `-C` etc for renames)

The `diff-filter=` command is super useful when you're wanting to find commits that did
specific things. Some of the more common flags are: Added (A), Copied (C), Deleted (D),
Modified (M), Renamed (R). The Rename or Copy flag are ones that I've found particularly
useful due to the simple nature of finding commits with only renames.

One specific example of when I've had to filter on a rename was a few weeks ago for our
teach.github.com repo when I had noticed a few links were not working as intended.
It had seemed the pages those links were pointing to no longer existed, and I had a hunch
that they were simply renamed. By using `--diff-filter=R -M` I was able to more
appropriately get an idea of which commits included those renames. Using an additional
flag of `-p` allows me to actually see those renames.


#### Viewing Content

* `git log -1 --stat`

The `--stat` flag is useful in cases of wanting to know which files were affected in
a particular commit.

    [/github/teach.github.com]$ git log --stat
    commit 5c6d6f89e5f1d4137faf2af31275456dbb8cd166
    Author: brntbeer <brent.beer@gmail.com>
    Date:   Fri Nov 23 17:16:56 2012 -0800

        fixed path for example hooks

     examples/_posts/2001-01-01-example-hooks.md |    2 +-
     1 files changed, 1 insertions(+), 1 deletions(-)

This gives us a bit higher view of what we're actually dealing with in terms of how many
lines were changed in a commit. So we know there was an one line change to this particular
file, but we don't actually know what this change involved. To view this, we need to see
the commit's patch.

 `git log -1 -p`

The patch here shows us the specific file that was changed and what that change was
because there had only been one file changed in this commit. This is a small change, but
we see there was one line removed, and another almost identical line was inserted in it's 
place.

    [/github/teach.github.com]$ git log -p
    commit 5c6d6f89e5f1d4137faf2af31275456dbb8cd166
    Author: brntbeer <brent.beer@gmail.com>
    Date:   Fri Nov 23 17:16:56 2012 -0800

        fixed path for example hooks

    diff --git a/examples/_posts/2001-01-01-example-hooks.md b/examples/_posts/2001-01-01-example-hoo
    index 217e87e..78957e7 100644
    --- a/examples/_posts/2001-01-01-example-hooks.md
    +++ b/examples/_posts/2001-01-01-example-hooks.md
    @@ -2,7 +2,7 @@
     layout: exampleswithrelated
     title: Git Hooks
     description: An example of hooks and their power for lifecycle driven activities with Git.
    -path: examples/_posts/2001-01-01-example-hooks.md
    +path: examples/hooks/
     examples: post-receive-email-SMTP.py
     tags: [example, code]
     ---



* `git log -1 -p --word-diff`

We can see with `--word-diff` that Git actually knows this change was really changing
that same line.

    [/github/teach.github.com]$ git log -1 -p --word-diff
    commit 5c6d6f89e5f1d4137faf2af31275456dbb8cd166
    Author: brntbeer <brent.beer@gmail.com>
    Date:   Fri Nov 23 17:16:56 2012 -0800

        fixed path for example hooks

    diff --git a/examples/_posts/2001-01-01-example-hooks.md b/examples/_posts/2001-
    index 217e87e..78957e7 100644
    --- a/examples/_posts/2001-01-01-example-hooks.md
    +++ b/examples/_posts/2001-01-01-example-hooks.md
    @@ -2,7 +2,7 @@
    layout: exampleswithrelated
    title: Git Hooks
    description: An example of hooks and their power for lifecycle driven activities
    path: [-examples/_posts/2001-01-01-example-hooks.md-]{+examples/hooks/+}
    examples: post-receive-email-SMTP.py
    tags: [example, code]
    ---

### Commit Data Structure Internals
__Duration:__ 10m

* Merkle (hash) tree
* What rebase does these
* What is a branch and a tag
* Cecompose commit
    * `git ls-files`
    * `git cat-file -p`
    * `git cat-file -t`
* Git modes
    * Regular file
    * Folder
    * Symlink
    * Submodule
* Umask
    * 777, 644, 755, 000)

### Refspecs
__Duration:__ 10m

* Caretspec
* Tildespec
* `..`
* `...`
* Blob spec
* `^{tree}`
* `^{blob}`

#### Describe • Relative Positions
1. Finds nearest annotated tag and outputs an identifier of the tag name supplemented with a hash.

        git describe <COMMITREF>

2. Optionally, with `--tag`, finds non-annotated tags.

        git describe --tag <COMMITREF>


#### Most recent commit
1. The reflog can show the most recent commit by integer position with an `@` syntax. 

        git show master@{1}

2. For this to work, there must be a log in `$GITDIR/logs/ref/...`

3. The branch was specified in the first example, but  `@{1}` is shorthand for the current branch.

#### Upstream
Identify the upstream branch connected to the current local branch?

* `@{upstream}`
* `@{u}`
* `REFHERE@{u}`

#### Tree of Commit
Commits are the outermost object. Trees are the middle level object. Commits point to a tree. This could be investigated long-hand by `git cat-file -p <COMMITHASH>`, but can be discovered short hand by the caret tree syntax.

    git show master^{tree}




### Q&A
__Duration:__ 5m

* [Office Hours](http://training.github.com/web/free-classes/)
* [Class Notes](http://teach.github.com/classnotes/)

---------------------------------------------------

# Q&A From Chat
    Q: So, if there's no metadata saying where it came from, what would happen if you then tried to merge that branch to master after cherry picking that commit?
    A: bingo! just needs that -x if you want to maintain where it came from
    Q: so did the cherry-pick create a new commit in master?
    A: yep! but it maintains the original where it is as well!
    Q: what happens to the state, if you add a new commit to master without the keepthis branch?
    A: Those commits are still orphaned, there's just a commit ahead of them in history. but they still came from the older one. when we view this in gitk we can see the "orphan branch" from that older commit, and a newer commit being ahead of them from the master "branch line"
    Q: So, just to be clear, are those green customer fixes stored as two separate commits now?  What happens if you try to merge greencustomer back onto master after the cherry-pick?
    A: as we saw in visual/audio there are two different commits, but the content is the same. so a merge isnt FF, but no actual content changes
    Q: I hadn't previously considered that orphaned commits are garbage collected automatically.  How often does that happen, or what is the trigger on that?
    A: The default is actually every 90 days. you can find out more about it by typing `git help gc` =)
    Q: I noticed that your oneline is only showing an abbreviated sha1, what is the git config option for that (the default is full sha1, apparently)
    A: --oneline is actually a shorthand for `--pretty=oneline --abbrev-commit`
    Q: How common is it? And, why shouldn't we have the rerere option on all the time?
    A: depending on number of team members, and how often you reset/rebase this can be helpful constantly. it's one of those "oh wow that was nice, i only have to do that once"

# Command Line History

    cd hellogitworld
    git remote -v
    git branch feature9
    git checkout feature9
    tree
    vim src/Division.groovy
    git commit -m"Fix"
    git commit -am"Fix"
    git push
    git push -u origin feature9
    git-flow
    clear
    cat .git/config
    git pull
    git ls-remote
    git fetch origin refs/pull/1/head
    git config --local branch.feature9.rebase true
    ls
    vim sample2.txt
    git commit -a -m"Matthew here"
    git pull
    clear
    git pull
    ls
    tree
    cat src/main/java/com/ambientideas/App.java
    vim src/main/java/com/ambientideas/App.java 
    git commit -a -m"Matthew was here at the same time as brent"
    git pull
    cat src/main/java/com/ambientideas/App.java 
    clear
    git checkout master
    git branch feature10
    git branch feature11
    git checkout feature10
    echo CHANGE1 >> sample1.txt
    git commit -a -m"Fix 1"
    echo CHANGE2 >> sample2.txt
    git commit -a -m"Fix 2"
    git cherry master
    git checkout master
    git cherry-pick 2f6fb
    git checkout feature10
    git cherry master
    git checkout master
    git cherry feature10
    git cherry feature10 feature11
    git checkout feature10
    git log -2
    git checkout master
    git cherry-pick -x cfab4c0
    git log -2
    git merge feature10
    git show HEAD
    git log --stat -1
    git log --format=raw -1
    gitx
    clear
    git push
    clear
    git checkout -b feature12
    ls
    vim README.txt
    git commit -a -m"Build instructions"
    vim src/Division.groovy 
    git commit -a -m"Change 1"
    vim src/Subtract.groovy
    git commit -a -m"Improved"
    vim src/Subtract.groovy
    git commit -a -m"fixup! Improved"
    vim src/Division.groovy 
    git commit -a -m"autosquash! Change 1"
    git rebase -i master
    git rebase -i --autosquash master
    git commit --amend
    git rebase -i --autosquash master
    gitx
    git checkout master
    clear
    git branch
    git checkout -b feature13
    generaterandomchanges featurethirteen txt
    generaterandomchanges 5 featurethirteen txt
    git checkout master
    git checkout -b greencustomer
    vim src/Square.groovy
    git commit -a -m"Green customer fix"
    git checkout feature13
    git rebase -i master
    git cherry-pick 7b10206
    git rebase --continue
    git checkout master
    git merge feature13
    git merge greencustomer
    git show greencustomer
    clear
    git reflog
    git checkout feature13
    git reflog
    git checkout master
    generaterandomchanges 5 bad txt
    git log --oneline
    git reset --hard 61214be
    git reflog
    git orphank
    git branch keepthis 8a4d
    clear
    git config orphank
    git config alias.orphank
    git branch -D keepthis
    echo STUFF >> fix.txt
    git commit -a -m"For Christoph"
    git orphank
    clear
    echo CHANGE >> fix.txt
    git commit -m"Fix 1"
    git commit -am"Fix 1"
    git reset --hard HEAD~1
    echo BETTERCHANGE >> fix.txt
    git commit -C b8b4399
    git commit -a -C b8b4399
    clear
    git push origin master
    ls
    vim sample2.txt
    git commit -a -m"Matthews change"
    git pull --no-commit
    git status
    git merge --abort
    git pull
    open .git
    gitk ORIG_HEAD master
    gitk ORIG_HEAD 
    clear
    echo "Make a new commit that looks like the ORIG_HEAD"
    git reset --soft ORIG_HEAD
    git status
    git diff --staged
    git commit -m"Restoring"
    git reset HEAD~3
    git status
    git commit -a -m"Restoring way back but with a new additive commit"
    clear
    git config --local alias.studentoops 'reset --hard HEAD~1'
    git studentoops
    clear
    mate ~/.gitconfig
    git l2
    git l2 --simplify-by-decoration
    git sync
    git wtf
    git orphanl
    git branch preservethis 8a4d2b5
    git orphanl
    git busypeople
    clear
    git branch featurererere1
    git branch featurererere2
    vim src/Division.groovy
    git commit -a -m"Retval fix"
    git show
    git checkout featurererere1
    vim src/Division.groovy
    git commit -a -m"Val one and two"
    git checkout featurererere2
    vim src/Division.groovy
    git commit -a -m"Val one and two on the other branch"
    clear
    git config --local rerere.enabled true
    git merge master
    vim src/Division.groovy
    git status
    git add src/Division.groovy
    git status
    git commit -m"Merged it and resolved"
    git checkout featurererere1
    git merge master
    git status
    cat src/Division.groovy
    git add .
    git commit -a 
    z git_git
    clear
    git log -5
    git log -1
    git log master~15 -1
    git log --pretty=oneline 
    git log --oneline
    git log --pretty=medium
    git log --pretty=short
    git log --pretty=fuller
    git log --grep="add"
    git log --grep="silly"
    git log --grep="silly" --oneline
    git log --grep="silly" --pretty=medium
    git log --grep="silly" --pretty=medium --author=peff
    git log --grep="silly" --pretty=medium --author=peff --since=2.years.ago
    git log --grep="silly" --pretty=medium --author=peff --since=3.years.ago
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    git log --oneline
    git log --diff-filter=R (needs -M or -C etc for renames)
    git log --diff-filter=R
    git log --diff-filter=ARD
    git log --diff-filter=ARD --stat
    git log --diff-filter=ARD --summary
    git log --diff-filter=D --stat
    git log --diff-filter=R --stat
    git log --diff-filter=R --stat -M
    git log --diff-filter=R --stat -M --author=peff
    git log --diff-filter=A --stat -M --author=peff
    git log --diff-filter=A -M --author=peff -p
    git log --diff-filter=R -M --author=peff -p
    git show master~590:fast-import.c
    git show master~590:fast-import.c | mate
    git show master~590^{tree}

## Other Resources
* [Git Advanced Online](http://teach.github.com/classnotes/2013-01-10-git-advanced-online.html)
* [Git Intermediate Course](http://teach.github.com/articles/git-intermediate-course/)
