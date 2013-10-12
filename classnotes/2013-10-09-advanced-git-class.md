---
layout: bare
title: Advanced Git Open Enrollment
description: Advanced Git Open Enrollment Class Notes
tags: [notes]
path: classnotes/2013-10-09-advanced-class.md
eventdate: 2013-10-09
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

# Advanced Git & GitHub Course

Many Git workshops successfully focus on the basics for those new to DVCS. However, with Git having a full five years on the street now, there is a growing desire to address the maturing users of this innovative DVCS. This workshop will take existing Git users and bring them to a heightened level of productivity by leveraging Git’s powerful, yet underused “advanced” features.

## Topics
* Common Branching Strategies
* Branching Models
* Applying Branching Strategies
* Branch Pull Options
* Reusing Small Pieces of Code
* Inserting Commits Into Existing History
* Building Custom Commands via Aliases
* Undoing and Re-doing Almost Anything
* Minimizing Repetitive Conflict Resolution
* Log History Searches
* Advanced Interactive Rebase
* Commit Data Structure Internals
* Refspecs

## Objectives
* Enabling Git users to effectively migrate repositories from other formats.
* Facilitate history modification of Git repositories.
* Establish time-tested branching and merging strategies.
* Enhance knowledge of Git tools to simplify history.
* Search Git history with ease and precision.
* Move to and reuse code on other branches via commits and tags.
* Understand Git’s tagging and GPG signing process.

## Course Materials, Links
* [Course Slides](http://teach.github.com/presentations/)
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)
* [Matthew's Shell Scripts and `.gitconfig`](https://github.com/matthewmccullough/scripts)


## Foundational Resources

* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [Using Git with Media Temple](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Jenkins Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Advanced Resources

* [Git-Flow Workflow](http://nvie.com/posts/a-successful-git-branching-model/)
* [Matthew's Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)
* [GitHub Flow Workflow](http://scottchacon.com/2011/08/31/github-flow.html)

## Tools, Tips, Shortcuts
* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)


## Suggested Books, Articles
* [Free ProGit Book](http://git-scm.com/book)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

# Course Topic Details

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
    * `git branch <branchname> FETCH_HEAD`
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
    * Look in `.git/config` for tracking matches
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
* Compares patch-id, not the hashes
* Commits not upstream are prefixed by a symbol
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
authored many days previous.

For example, if I made a commit, created a Pull Request, and
had that pull request accepted 3 days later, the difference in authored and commit date
would be 3 days.

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

* `git log --since="2 weeks ago"`
  * grab all the commits that happened between now and 2 weeks ago
* `git log --before="2 weeks ago"`
  * grab commits that happened from 2 weeks ago and OLDER
* `git log gh-pages...gh-pages@{2.weeks.ago}`
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
we see there was one line removed, and another almost identical line was inserted in its 
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
* Recompose commit
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





## Transcript

* jordanmccullough    Good morning everyone. I'm Jordan McCullough, GitHub trainer, and will be here in chat assisting through the class.  
* matthewmccullough   Bob Fields: Morning!  
* jordanmccullough    Welcome Jim, thanks for joining us.  
* jordanmccullough    We've setup a class outline for today's content as well, which is available here:  
* http://teach.github.com/classnotes/2013-10-09-advanced-git-class.html
* jordanmccullough    Hello MJ.  
* I'll be here in chat providing any question support during today's class.  
* jordanmccullough    Welcome Kyle M., Josue P.  
* All questions are welcome. If anything comes up, please ask here and I'll be available to assist.  
* matthewmccullough   https://github.com/githubteacher?tab=repositories  
* Mark B. has entered the room  
* jordanmccullough    Hello Mark.  
* Matthew's scripts repository and collection, including the git-graphlive is available here:  
* https://github.com/matthewmccullough/scripts  
* kdaigle +1  
* jordanmccullough    Questions are welcome. I can bring these to Matthew's attention or raise on audio.  
* Jason T.    Good review so far  
* Bill    What arguments do you use for the git-graphlive script?  
* jordanmccullough    That would a script that loops every 2 seconds, and runs:  
* git log --graph --all --decorate --oneline  
* Greg    has entered the room  
* jordanmccullough    Welcome Greg.  
* matthewmccullough   https://github.com/githubteacher/example-branches
* Jason T.    :+1  
* Venkatdev   has entered the room  
* jordanmccullough    Welcome Venkat.  
* matthewmccullough   http://nvie.com/posts/a-successful-git-branching-model/
* Bob F.  GitFlow doesn't have the concept of an 'integration' branch where all changes are merged and CI run and tested before reviewing to merge / pull request into a develop branch. develop branch should be reserved for what we call 'candidate release builds'.  
* Trigg R.    has entered the room  
* Edric   has entered the room  
* jordanmccullough    Thanks for that insight Bob F.  
* Bob F.  Matthew covered autosetuprebase in the intro class, very well.  
* jordanmccullough    Bob F. Glad you were able to join for the Foundations class and get the intro to it.  
* Bob F.  This is very good additional info, thanks  
* jordanmccullough    https://github.com/matthewmccullough/scripts  
* Both the `generaterandomchanges` and a `generaterandomfiles` helper scripts are within this repository.  
* kdaigle All three? coffee  
* jordanmccullough    Great choice, kdaigle.  
* matthewmccullough   Thanks for being here everyone! Hope class is going great for you.  
* I know I've said it a bunch, but we love questions and challenges.  
* Don't hold back!  
* Jason T.    Is there anything interactive we will need to do in this class?  
* jordanmccullough    Jason T. You're welcome to follow along with the examples Matthew is walking through, just take notes, or watch and soak it all in.  
* Of course, if there's anything that needs more detail or clarification, just keep the questions coming and I'll help answer them or bring them up on audio.  
* Bill    Will any of the later rebase topics include how to deal with conflicts during a rebase?  
* jordanmccullough    I'll keep that in mind so I can bring that up with Matthew when we're there.  
* Thanks Bill.  
* Bill    thanks  
* Bob F.  It would be great to have the workflow strategy info in the class PDF. Some info is covered in the 'Teams and Orgs' pdf.  
* matthewmccullough   https://github.com/githubteacher?tab=repositories  
* Dee has entered the room  
* matthewmccullough   https://github.com/githubstudent/hellogitworld  
* https://github.com/githubteacher/hellogitworld  
* forked it  
* to your personal account  
* Jason T.    Got it  
* jordanmccullough    Bob F. Thanks for that suggestion. We're always pursuing providing more post-class materials, so I'll put that in the ears of my team members.  
* We also have the Advanced Slide Deck here:  
* http://teach.github.com/presentations/git-advanced.html
* Press the "?" for controls help panel. :)  
* kdaigle I always get confused. Does squash (when it says "into previous commit") does that mean the commit positioned below it in the list? Previous being the "parent of this commit"?  
* jordanmccullough    Squash works upwards.  
* kdaigle Ah, ok! +1  
* jordanmccullough    So the commit above the commit with the "s" for squash is the receiving object.  
* Great question kdaigle  
* rshapiro    back to interactive rebase for a second - sometimes I want to restructure the commits completely and it seems better to me to use a mixed reset to a given baseline and start over with the raw changes since that baseline, rather than interactive rebase. Any opinions ?  
* jordanmccullough    The important difference is that reset is discarding history (commits), where as rebase allows a mixing/tidying/revising to existing commits.  
* matthewmccullough   http://git-scm.com/2011/07/11/reset.html  
* jordanmccullough    I'd say that's the biggest take away to call out the differences. But either are usable techniques to manipulate history.  
* Bernard O.  has entered the room  
* Bernard O.  Thanks for the answer  
* jordanmccullough    Just repeating the question for anyone else that's interested:  
* Is there a difference between git reset --hard HEAD and git checkout somefile ?  
* Yes, the reset is rewriting the working tree for all paths for the specified ref.  
* Checkout is specifying a particular path/directory/file.  
* Happy to assist Bernard. Thanks for asking.  
* rshapiro    does rerere also work with rebase?  
* matthewmccullough   https://github.com/git/git  
* rshapiro    log -S is searching for matches in the modifications or the commit message?  
* jordanmccullough    -S is for string matching to the patch of any commit.  
* -G is for using a regular expression pattern.  
* and just for clarification, --grep="<your-pattern>" returns a log for a match of commit message.  
* rshapiro    answered the question I was just about to ask ...  
* jordanmccullough    If you're looking at the MAN page for `log`  
* jordanmccullough    -S<string> --pickaxe-regex has the same effect as -G. The latter being easier to type and use.  
* :)  
* jordanmccullough    http://teach.github.com/presentations/git-foundations.html
* jordanmccullough    http://teach.github.com/classnotes/2013-10-09-advanced-git-class.html
* mj  Thank you.  
* Jim A.  thanks guys! Great class.  
* Bernard O.  Thanks for the class was great  
* rshapiro    couple of topics you might consider: git bundle, this is really important in secure environments where some hosts are offline  
* jordanmccullough    Thanks for attending. Have a great rest of the day and happing coding.  
* matthewmccullough   Thanks all! Had a great time teaching it.  
* Trigg R.    Thank you!  
* matthewmccullough   rshapiro Good suggestion. We had broadly negative "doesn't apply to me" feedback when that was part of the class last year, so that presents a real challenge to have it or not. Will ponder anew! Maybe it should come back!  
* rshapiro    2) somewhat off-topic but only a little -- maybe think about a offering a course specifically on Git in Eclipse, so many of us use it there.  
* matthewmccullough   Trigg Russell: Thanks for being here  
* rshapiro: That's a great idea. In fact, I've done just that as a free class  
* Harald  has left the room  
* matthewmccullough   and maybe it is time to bring it back again as something for a free class in the closing months of this year.  
* jordanmccullough    Thanks again everyone.  
* Trigg R.    It would be great if there was a way to blend in more time to do hands on work. With so much material to cover, that's challenging in 3 hours.  
* matthewmccullough   Trigg Russell: Good feedback. We could break the class into multiple sessions, but signups dropped off then as students told us that it was hard to ask for more time off from work. Pondering. Such a challenge, but I want that as well. We're on the same page. :)  
* Trigg R.    As a reminder, what are the best references to use as I build my knowledge? I've saved all the URLs you've provided, plus github.com. Anything else that's a great resource?  
* jordanmccullough    Trigg R. We'll be updating the Class Notes file with references, resources, and today's CLI.  
* Trigg R.    Awesome. Many thanks!  
* jordanmccullough    So I'd highly recommend checking that file out in a bit once we update it we those resources :)  
* Sorry if we didn't mention that earlier.  
* Trigg R.    You did but I did not see anything. Forgot you had to upload :-)  

## Command Line History

    git clone https://github.com/githubstudent/example-branches.git
    cd example-branches
    git branch -a
    git checkout -b topic1
    ls
    vim index.html
    git commit -a -m"Topic 1 commit"
    git checkout master
    git merge topic1 
    cd example-branches
    clear
    git graphlive 25
    git reflog
    git reset --hard aac9e37
    git merge --no-ff topic1 
    git checkout -b topic2
    vim index.html
    git commit -a -m"Topic 2 change"
    cd .git
    ls
    tail -f config
    git push -u origin topic2
    tail -f config
    git graphlive 25
    git checkout master
    git push 
    git pull
    git-flow
    git checkout master
    vim index.html
    git commit -a -m"Local master changes"
    git pull
    git reflog
    git reset --hard 1718509
    git pull --rebase 
    mate ~/.gitconfig
    git checkout -b topic3
    git push -u origin topic3
    cat .git/config
    mate .git/config
    clear
    git status
    git checkout master
    git checkout -b topic4
    touch faster.rb
    git add faster.rb
    git commit -m"Faster"
    vim faster.rb
    git commit -a -m"Faster still"
    git branch -a
    git checkout topic3
    git cherry-pick topic4
    git status
    git merge --abort
    git cherry-pick --abort
    git checkout topic4 -- faster.rb
    ls
    git checkout topic4 -- faster.rb index.html
    git status
    git commit -C topic4
    git checkout master
    git branch topic5
    git branch topic6
    git checkout topic5
    generaterandomchanges 4 sample txt
    git checkout topic6
    generaterandomchanges 4 topicsix txt
    git cherry-pick f4044be
    git show
    git reflog
    git reset --hard 768e4e4
    git cherry-pick -x f4044be
    git show
    git push -u origin topic6
    git checkout topic5
    git push -u origin topic5
    cd .
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    git log --oneline --graph
    git checkout -b practicerebase
    cd ..
    cd he
    pwd
    cd ..
    cd hellogitworld
    git graphlive 25
    git rebase -i 8d2636d
    touch missed.txt
    git add missed.txt
    git status
    git commit --amend 
    git rebase --continue
    git push -u origin practicerebase 
    generaterandomchanges 5 showoff txt
    git rebase -i origin/practicerebase 
    generaterandomchanges 5 autorebase txt
    echo onemorething >> autorebase3.txt
    git add .
    git commit -m"fixup! A random change of 764"
    git rebase -i --autosquash origin/practicerebase 
    git show 237e3dd
    git s
    git br
    git config --global alias.stplus git status -u -v
    git config --global alias.stplus "git status -u -v"
    git stplus 
    git config --global alias.stplus "status -u -v"
    git stplus 
    git help
    git help -a
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    mate .git/config
    mate ~/.gitconfig
    git stplus -a
    git stplus --long
    clear
    git status
    git checkout master
    git status
    git reset --hard 
    git reset --hard HEAD
    echo "Use reset hard to forcefully go back to a known state"
    echo stuff >> fix.txt
    git status
    git reset --hard
    git status
    echo stuff >> fix.txt
    git commit -a -m"Fixing things"
    git reset --hard a13dba1
    cat fix.txt
    git reflog
    git reset --hard 57b2b01
    git reset --hard a13dba1
    git reset --hard 57b2b01
    git reset --hard a13dba1
    git reflog
    git checkout a13dba1 -- fix.txt
    git status
    git reset --hard 57b2b01
    git checkout a13dba1 -- fix.txt
    git status
    git show a13dba1:fix.txt 
    git show 57b2b01:fix.txt 
    git checkout practicerebase 
    git reset --soft origin/practicerebase
    git status
    git commit -m"Fixes everything"
    git checkout master
    git reset --hard origin/master
    clear
    git branch feature1
    git branch hotfix1
    git checkout feature1
    ls
    vim pom.xml
    git commit -m"Upgrade Junit to 3.8.8"
    git commit -am"Upgrade Junit to 3.8.8"
    generaterandomchanges 5 sample txt
    git checkout hotfix1 
    vim pom.xml
    git commit -a -m"Hotfix upgrade of Junit to 3.8.2"
    git checkout master
    git merge hotfix1 
    git config --local rerere.enabled true
    cd .git
    treelive 2
    treelive 1
    cd rr-cache
    ls
    treelive 2
    git checkout feature1
    git merge master
    vim pom.xml
    git commit 
    git commit -a 
    git reset --hard HEAD~1
    generaterandomchanges 3 more txt
    git merge master
    git status
    head pom.xml
    vim pom.xml
    git add pom.xml
    git status
    git commit -a 
    git rerere 
    git help rerere 
    z git_git
    git pull
    clear
    pwd
    git log
    git log --pretty=raw
    git log --oneline --graph --all --decorate
    git help log
    git log --oneline --graph --all --decorate --simplify-by-decoration
    git log --oneline --graph --decorate --simplify-by-decoration
    git log --oneline --merges
    git log --oneline --no-merges
    git status
    git log --oneline --no-merges
    git log --pretty=raw --patch --since=1.week.ago
    git fetch
    git log --pretty=raw --patch --since=12.week.ago
    git log --pretty=full --patch --since=12.week.ago
    git log --patch --since=12.week.ago
    git log --patch --since=12.week.ago --author=king
    git log --patch --since=12.week.ago --author="jeff king"
    git log --patch --since=12.week.ago --author="Jeff King"
    git log --oneline --since=12.week.ago --author="Jeff King"
    git log --oneline --since=12.week.ago --author="Jeff King" -S test
    git log --oneline --since=12.week.ago --author="Jeff King" -G '.*te.*'
    git log --pretty=raw --merges
    clear
    cd .git
    cat config
    z git_git
    cd .git
    cd refs
    tree
    git ls-remote 
    z hellogitworld
    pwd
    git ls-remote https://github.com/bk8190/hellogitworld/ 
    git fetch https://github.com/bk8190/hellogitworld/ refs/heads/practicerebase
