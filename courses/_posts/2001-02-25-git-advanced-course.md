---
layout: barewithrelated
title: Advanced Git Workshop
description: An advanced Git workshop outline and course plan.
path: courses/_posts/2001-02-25-git-advanced-course.md
---

# Objectives v1

* Interactive rebasing with both the traditional squash, reword and edit, in addition to the new fixup and autosquash.
* Understanding the modes of `git reset` and how it affects, preserves, or destructs the history, index, and working directory.
* Searching through history with string, combination, and pickaxe approaches.
* Diffing changes past refactorings.
* Finding the original author of methods in refactored and relocated code.
* Administratively shaping history with `git filter-branch` at milestones or after a Subversion import.
* Minimizing repetitive merge efforts with `rerere`.
* Controlling pull and push behavior with advanced configuration options.
* Manually editing the refspec and git config files.
* Pushing to and pulling from multiple destinations.
* Tag signing, tag merging, and signed tag business scenarios.
* Adding Git notes and their effective namespace use.
* Relocating chunks of work with `rebase onto`
* Leveraging several other cutting-edge Git 1.7.9 features...

## Opt-In Additions to Course Plan
* Push cherry-picks
   * Cherry picked some changes on to feature2
   * Someone else had already merged those onto feature1
* Cherry pick
    * Can you find a patch-id in the entire graph
    * "Where is this change also living in the entire repo?"
* Merge two branches (Your master and her master)
    * The file does exist and unchanged on sarah/master
    * The file has changes on matthew/master
    * merge those two that you get conflicts
* Mercurial
    * Cherry-pick == hg-graft <CHANGESETHASH>
* Comparison between Git and Mercurial
* My gitconfig will be shared (github.com/matthewmccullough/dotfiles git-workshop)
* Rebase vs Cherry-pick
    * Rebase -i
        * Reshape history to be clear for others later
        * 30 commits (s)
    * Cherry-pick
        * Harvest fix from customer branch
* Fetch versus Pull
    * pull -rebase vs pull
* Subtree merge
    * fold multiple repos into one, maintaining history
* Mercurial / Git Bridge Cautions
* GUI that allows for graph manipulation
* How to have multiple signers on a given commit

# Objectives v2

Once you've spent some time getting to know GitHub and Git, you'll be interested in finding that next level of productivity with these two tools. This class provides precisely that _next level_ of GitHub and Git education. This class is tuned for maximum benefit to students such as yourself that have spent several months in hands-on use of these tools.

## The `hub` gem

We'll begin with a look at the helpful [`hub` command line tool](https://github.com/defunkt/hub) that can create, open, and browse repositories in addition to diffing arbitrary hashes and forking repos. CLI afficionados will enjoy the return to the console, doing what they thought was only possible in the web browser.

## Refspecs

All Git interactions, whether transparently or opaquely, leverage a domain specific language in strings called Refspecs. Knowledge of this language lets you adeptly manipulate the contents of the packs that are sent to and from upstream hosts, and where those received items are stored on disk.

## Notes

You know that Git stores blobs, trees, commits, and tags, but did you know it can also store a parallel stream of notes?  These notes can be written and adjusted again and again, categorized by namespace, and even rendered in the GitHub user interface. Notes are supported by automation tools like [Jenkins](http://jenkins-ci.org) and its [Git plugins](https://wiki.jenkins-ci.org/display/JENKINS/git-notes+Plugin), and can be a powerful supplement of build results and deployment metadata on to an existing commit history.

## ReReRe

Git provides the power of being able to reset-away a less than plesant merge. But what about all that investment in the merge conflicts that you solved? The `rerere` option switch and command provides a means of preserving your merge conflict resolutions, even for discarded merges. These can be reused across branches; for example, in the scenario of  delivering a common fix to more than one branch.

## Pull requests from the command line

Pull Requests are thought of as a web-based feature of GitHub. However, they are fully accessible, fetchable, and create-able from the command line.

## External merge and diff tools

Merging and diffing with the command line can be effective. But, when an ocean of `<<<<<` symbols is overwhelming, switch to using Git's integration with any visual diff and merge tool. We'll cover how to configure, invoke, and leverage Open Diff and Araxis and talk about how this can extent to Beyond Compare, VimDiff, P4Merge and other similar tools.

## The Reflog

Git's ability to re-write history may seem scary at first. But once you know that the [reflog](http://git-scm.com/docs/git-reflog.html) has a rolling 90 day history of your destructive and creative actions, you'll feel more at ease to use Git's advanced features.

## Three reset modes

The [reset command](http://git-scm.com/docs/git-reset.html) is one of Git's real mysteries. What's the difference between `soft`, `hard`, and `mixed`? We'll show you first hand how and where to best leverage each of these modes.

## Interactive Rebase

Interactive rebasing gives you the ability to shape your commit history prior to sharing it with others. Combine commmits, reorder activities, and improve the commit messages with ease.

## Rebase --onto

Rebase, at its core, is the transport of commits from one place in the graph to another. In this workflow example, we'll show how a feature or fix can atomically be transported on to another branch, isolated from potentially muddying earlier commits.

## Signed tags

Tags are a great way to mark a point in time for events such as an official release, or bug fix. However, signed tags can also be merged as of the latest versions of Git, thus providing a means of preserving signed-code integrity, all the way through the merge and delivery process.

## Bisect

The bisect feature of Git is a powerful tool that can be used to search for a regression. It is best paired with a strong unit test suite for complete automated execution, but can also be used in support of a manual search for a difficult-to-automatedly-detect problem, such as a subtle shift in an image. We'll explore this feature using a repository that has a latent defect that is easily found using `bisect run`.

---------------------------------------------------

# Objectives v3 (User Group)

User groups and private companies are the most frequent places welcoming an _Advanced Git_ flavored talk. Such a talk can serve as a starting point for building out a event outline.

## Outline
* Interactive Rebasing
    * Traditional squash, reword and edit
    * [Fixup](http://technosorcery.net/blog/2010/02/07/fun-with-the-upcoming-1-7-release-of-git-rebase---interactive---autosquash/)
    * [Autosquash](http://technosorcery.net/blog/2010/02/07/fun-with-the-upcoming-1-7-release-of-git-rebase---interactive---autosquash/)
* Controlling pull and push behavior with advanced configuration options.
    * [`insteadOf`](http://blog.mraw.org/2011/05/24/Git_tip_of_the_day_insteadOf/)
    * `git config autosetuprebase always`
    * Changing the refspec directly
    * The `+` in the refspec forces the pull or push to overwrite
* Minimizing repetitive merge efforts with `rerere`.
   * `git config rerere.enabled true`
   * [Rerere article](http://git-scm.com/2010/03/08/rerere.html)
   * [Rerere man page](http://git-scm.com/docs/git-rerere)
* Relocating chunks of work with `rebase onto`
    * Switches branches before rebasing
    * Think about moving the "string of beads" onto another endpoint
    * [Rebase man page](http://git-scm.com/docs/git-rebase)
* Git best practices
    * Frequent Branching
    * [Git Flow (too complex)](https://github.com/nvie/gitflow)
    * [GitHub Flow (just right)](http://scottchacon.com/2011/08/31/github-flow.html)
* Searching through history with string, combination, and pickaxe approaches.
    * `git log -S "STRING"`
    * `git log -G "REGEX"`
    * [Git log man page](http://git-scm.com/docs/git-log)
* Finding the original author of methods in refactored and relocated code.
    * `git blame -C <FILENAME>`
    * [Git blame man page](http://git-scm.com/docs/git-blame)
* Ways to manage long-term projects
    * [Pull Request merges into branches other than master, same repo](https://github.com/blog/967-github-secrets)
    * [Feature toggles](http://martinfowler.com/bliki/FeatureToggle.html)
* How GitHub uses Pull Requests
    * [How we use Pull Requests to Build GitHub](https://github.com/blog/1124-how-we-use-pull-requests-to-build-github)
    * [How to Use Pull Requests](https://help.github.com/articles/using-pull-requests)
* Patch and Diffs
    * `.patch` and `.diff` added to end of commit and Pull Request URLs
    * https://github.com/githubtraining/hellogitworld/commit/32c273781bab599b955ce7c59d92c39bedf35db0.diff
    * https://github.com/githubtraining/hellogitworld/commit/32c273781bab599b955ce7c59d92c39bedf35db0.patch
* [Ignoring whitespace](https://github.com/blog/967-github-secrets)
    * Add `?w=1` to the URL
    * Example with whitespace [on](https://github.com/githubtraining/hellogitworld/commit/32c273781bab599b955ce7c59d92c39bedf35db0) and [off](https://github.com/githubtraining/hellogitworld/commit/32c273781bab599b955ce7c59d92c39bedf35db0?w=1)
* [Cross Repository issue links](https://github.com/blog/967-github-secrets)
    * Format: `user/repository#number`
    * [GitHub Flavored Markdown](http://github.github.com/github-flavored-markdown/)
* GitHub Keyboard Shortcuts
    * Open github.com and type `?`
    * `w` (branch navigator)
    * `t` (file navigator)
    * `s` (search)
    * `m` (markdown cheat sheet)
    * `c` (create issue)
* Using the Hub command line tool
    * [Hub Source](https://github.com/defunkt/hub)
    * [Hub About Page](http://defunkt.io/hub/)
* Administratively shaping history with `git filter-branch`
    * At milestones or after a Subversion import, or when bad data creeps in.
    * [Examples on how to use filter-branch](https://github.com/githubtraining/git-workshop/tree/master/examples/filter-branch)
    * GitHub Help [article on filter-branch](https://help.github.com/articles/remove-sensitive-data)
* Adding Git notes and their effective namespace use.
    * [Git Notes how-to](http://git-scm.com/2010/08/25/notes.html)


# Resources
* Cheat Sheets: http://teach.github.com/articles/git-cheatsheets/
* Visual Merge Tools: http://www.youtube.com/watch?v=xfh13LcgqIU&feature=plcp
* Git & GitHub Public Videos: http://www.youtube.com/github
* Slides: http://teach.github.com/articles/course-slides/
* Slide PDF 1: http://githubtraining.s3.amazonaws.com/github-git-training-slides.pdf
* Slide PDF 2: http://githubtraining.s3.amazonaws.com/github-git-training-slides-advanced.pdf
* Open Source Git Ignores: https://github.com/github/gitignore
* [Matthew's gitconfig](https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig)
* [Vintage User Group Git Advanced Slides](https://speakerdeck.com/u/matthewmccullough/p/using-git-and-github-effectively-at-emerge-interactive)


----------------------------

# Timing

* 08:40am Setup and Test Projector
* 08:50am Student Introductions
* 09:00am Begin Training
* 10:30am 10 minute Break
* 12:00pm Lunch Break
* 12:45pm Resume Teaching
* 02:15pm 10 minute Break
* 04:00pm Conclude Training
* 04:05pm Student Q&A

# Topics

### Git Stash
### Tags
### GUIs
### Bisect
### Rerere: Minimizing Repetitive Conflict Resolution
### Grep
### Submodules
### Rebase (Traditional Branch to Branch)
### Advanced Interactive Rebase
### Interactive Rebase (Autosquash)
### Cherry Pick
### Merges
* Working on feature1
* Make a copy of the branch
* git branch feature1-redo feature1-dev
* git branch feature1dot1 master
* git cherry-pick

### Branch Pull Options
git pull --rebase

### Git Log
git log -G -S --author

### Git diff
--diff-filter=D

### Parents

------------------------------------

## Course Description

### Short Description
Many Git workshops successfully focus on the basics for those new to DVCS. However, with Git having a full 7 years on the street now, there is a growing desire to address the maturing users of this innovative DVCS. This class will take existing Git users and bring them to a heightened level of productivity by leveraging Git’s powerful, yet underused “advanced” features.

### Long Description
Many Git classes successfully focus on the basics for those new to DVCS. However, with Git having a full 7 years on the street now, there is a growing desire to address the maturing users of this innovative DVCS. This class will take existing Git users and bring them to a heightened level of productivity by leveraging Git's powerful, yet under-used advanced features.

Git has established itself as an important new version control system and many progressive developers have already moved to this exciting system. After a few months of using the basics, passionate developers may begin to wonder what advanced features Git has to offer. These advanced Git usages are scarcely documented, and for the first time on video, they are demonstrated in an easy-to-grasp form with the use case, operation, and behavior all thoroughly explained.

### Big Ideas

* Branching
* Visualization
    * Merged
    * Unmerged
    * Formatting with color
* Searching
    * Log
    * Pickaxe
* Maintenance
    * Removing bad commits with `filter-branch`
    * Finding orphans with `log`, `gc --orphan` and `gitk`
    * Compacting the repo with `gc`
* Efficiency
    * Multi-push
    * Add-ons
* Models
    * Git itself (`pu`, `next`)
    * Linux
    * Air-gap, `git bundle`

--------------------------------

## Links

RefCard Cheat Sheet:  
<http://refcardz.dzone.com/refcardz/getting-started-git>


Recommended Free Git Book:  
<http://progit.org>


Workshop PDFs:  
<https://github.com/matthewmccullough/git-workshop>


Shell Prompt Enhancements:  
<http://ambientideas.com/blog/index.php/2010/11/zshell-prompt-for-git/>  
(which links to the Bash ones)

and the uber-set:  
<https://github.com/matthewmccullough/scripts>  
which includes all my OSS work for shell scripts.

As a command line productivity framework, I've become quite attached to oh-my-zsh.  It has git-enhanced prompts galore.  
<https://github.com/robbyrussell/oh-my-zsh>


Git Bookmarks:  
<https://pinboard.in/u:matthew.mccullough/t:git>


GitHub (Hub) Plugin for Git:  
<https://github.com/defunkt/hub>


Great GitHub help pages:  
<http://help.github.com>


Office Hours:  
Any follow up Git or GitHub questions can be asked in a desktop-sharing webinar and chat room:
<https://github.com/training/free>

--------------------------------------

# Teaching Script, Details

## Common Branching Strategies
These are called Branching Strategies, but are just as easily called *Team Collaboration Techniques* in an abstract discussion of version control.

### Branch By Feature
#### Made popular on Git by Vincent Driessen and his NVIE site
#### http://nvie.com/posts/a-successful-git-branching-model/
#### https://github.com/nvie/gitflow
### Open Source Branch By Feature
#### SpringSource,
#### http://blog.springsource.com/2010/12/21/git-and-social-coding-how-to-merge-without-fear/
### GitHub Branch By Feature
#### https://github.com/blog/919-how-github-develops
#### http://scottchacon.com/2011/08/31/github-flow.html
### Git's model
#### http://members.cox.net/junkio/git/MaintNotes.html
#### https://github.com/git/git
#### Branches
* master
* maint
* next (graduation from pu)
* pu (can be rebased)
* html
* man
#### Creating a parentless branch
* git checkout --orphan


## Branching Models
It is useful to study the emergent team-collaboration techniques that various languages, frameworks, tools and teams have developed during their use of Git.

### Discussions about Feature Branches
* Feature Branches
    * Branch per feature is not as scary as it sounds, but has its detractors in efforts towards continuous delivery.
    * [Jez Humble on DVCS, CI, and Feature Branches](http://continuousdelivery.com/2011/07/on-dvcs-continuous-integration-and-feature-branches/#more-401)
    * [Martin Fowler on Feature Branches](http://martinfowler.com/bliki/FeatureBranch.html)
* Branch by Abstraction
    * [Martin Fowler on branching by abstraction](http://continuousdelivery.com/2011/05/make-large-scale-changes-incrementally-with-branch-by-abstraction/)
* Feature Toggles
    * [Martin Fowler on Feature Toggles](http://martinfowler.com/bliki/FeatureToggle.html)
* Continuous Delivery
    * [The Continuous Delivery book](http://continuousdelivery.com/)
* Continuous Integration
    * [Martin Fowler discusses Continuous Integration](http://martinfowler.com/articles/continuousIntegration.html)

### Discussions about Git Branching Models
* Spring Framework OSS Contributions
    * How Chris Beams [recommends contributors to Spring Framework projects use rebasing](http://blog.springsource.com/2010/12/21/git-and-social-coding-how-to-merge-without-fear/).
* Git Flow
    * The `git-flow` [workflow, diagrammed](http://nvie.com/posts/a-successful-git-branching-model/).
    * `git-flow` [screencast by David Bock](http://nvie.com/posts/a-git-flow-screencast/)
* GitHub Flow
    * Scott Chacon's [simplified branching approach used at GitHub](http://scottchacon.com/2011/08/31/github-flow.html).
    * How the team at GitHub [develops their own products](https://github.com/blog/919-how-github-develops).

### Git's own Branching Model
* Git maintainer notes about the project's [branches and their purpose](http://members.cox.net/junkio/git/MaintNotes.html).
* The Git project's [source on GitHub](https://github.com/git/git)
* The Git project's [source on Kernel.org](git://git.kernel.org/pub/scm/git/git)
* The Git Project Branches
     * `master`
     * `maint`
     * `next` (graduation from `pu`)
     * `pu` (can be rebased)
     * `html` (parentless)
     * `man` (parentless)

When fetching from the Git repo, it is possible to see non-fast-forward updates to the `pu` branch.

    git fetch

    remote: Counting objects: 1144, done.
    remote: Compressing objects: 100% (361/361), done.
    remote: Total 777 (delta 576), reused 579 (delta 412)
    Receiving objects: 100% (777/777), 281.35 KiB, done.
    Resolving deltas: 100% (576/576), completed with 125 local objects.
    From git://git.kernel.org/pub/scm/git/git
       bd5bce7..b1af963  maint      -> origin/maint
       f56ef11..7e02a6c  master     -> origin/master
       872f25e..9aa1b8a  next       -> origin/next
     + e341d00...d17668d pu         -> origin/pu  (forced update)
       3646cd6..7a02dba  todo       -> origin/todo
    From git://git.kernel.org/pub/scm/git/git
     * [new tag]         v1.7.8     -> v1.7.8
     * [new tag]         v1.7.8-rc4 -> v1.7.8-rc4

These non-fast-forward updates are a result of `pu` being rebased, as is always the documented workflow possibility on this particular branch.

## Applying Branching Strategies
### Pull requests on branches, not just commits
Leaves the PR open to enhancements, feedback, continued contributions

### Collapse branches quickly
* Fine to delete branches once merged. The commits are preserved.
* Some teams prefer `--no-ff` on their explicit merges.

### Never Commit to Master
Some teams have a policy of never committing to `master`. This means that all work is done on a branch, and possibly reviewed with the help of a *pull request*.

### Rebase Pulls

Merges on `pull` can be messy with a large number of users committing to a single branch. Keep history as clean as possible and set the default to rebase branches upon pull. This must be done in advance of the branch's creation `.git/config`

    git config --local branch.autosetuprebase "always"

Alternatively, issue the alternate syntax to cause `pull` to rebase.

    git pull --rebase

### Portable commits
With an air-gap between two repos, bundles become a reasonable tool to use as a means of bringing commits from one team to another. It can get a bit tricky on merging, so it is suggested to possibly just put one branch in a bundle to stay focused on merging just that one.

    git bundle create master mymaster.bundle

## Applying road-tested branching strategies.
* GitHub Pull requests on branches, not individual commits
    * Leaves the PR open to enhancements, feedback, continued contributions
    * Send the PR early before the branch is ready to be pulled. Start discussions on implementation techniques.
* Collapse branches quickly
    * Fine to delete branches once merged
    * Use `git branch --no-merged` to find which ones need to be merged.
    * Some teams prefer --no-ff on their merges
        * This leaves the merge commit present, even when it doesn't need to be
        * Provides metadata about the branch work, but would a `git merge --squash` have been better to see the "working" result rather than the process that got to a working result?
* Flatten
    * `git merge --squash`
    * Coarse grained commits to master
* Improve with Rebase
    * `git rebase -i`
    * Improve history before sending, merging
* Test feature branch
    * Merge from master into topic frequently
    * Enable rerere
    * Possibly reset feature branch if only you own it
* Never commit to master
    * Possibly only accept pull requests
    * Works will with CI servers and automatic merges
    * Jenkins is able to do this easily with the Git plugin and Git publisher

## Branch Pull Options
* Pulled branches _merge_ in to the local branch by default.
* Branches can be requested to rebase on an ad-hoc basis with`git pull --rebase`
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


## Reusing Small Pieces of Code
Cherry picking bug fixes and other nuggets of code

* Works in both linear and rebase workflows
* Cherry pick from customer branch
    * Can be picked from anywhere

## Inserting Commits Into Existing History
Interactively rebase and edit on the desired commit

    git rebase -i <startingref>
    # Edit the recipe and mark the commit you want to insert before with an "EDIT""

    #Amend that commit
    git commit --amend

    #Or bring in a commit
    git cherry-pick

    #Rebase continue
    git rebase --continue

## Building Custom Commands via Aliases
TODO Showcase many of Matthew's aliases here.

### Concise Log History
Show the log history in a more concise format:

    hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short

### Clean untracked files and remove staged changes
Remove all staged changes and removed any untracked files:

    purge = "!git clean -fd && git reset --hard"


## Building Custom Commands via Shell Scripts
### `gc_recursive`
This command runs `git gc` on all Git repositories it can find

### ``finddirtygit`
Find Git repositories with uncommitted changes.

Could be enhanced to find ones with stashes.

### `servehere``

Serve a Git repository using the daemon at the current directory downwards. Ignore repository-specific settings and `export-all` repositories. Allow pushes via the `receive-pack` flag.

    # Serve the repo
    git daemon --export-all --base-path`. --enable=receive-pack

    # Find Matthew's IP
    ifconfig

    # Add Matthew's laptop as a remote
    git remote add matthew git://192.168.1.166/hgw1

    # Fetch the repo from Matthew's laptop
    git fetch matthew

    # Or specifically fetch without a remote to FETCH_HEAD
    git fetch git://192.168.1.166/hgw1


## Undoing and Re-doing Almost Anything
Coverage of revert, reset, reflog and stash.

### Revert
### Reset
#### Soft
#### Hard
### Reflog
### Stash

## Minimizing Repetitive Conflict Resolution
The `rerere` command (and configuration option) which stands for "reuse recorded resolution" memorizes the two sides of a conflict and can re-use your resolution next time the same conflict is seen.

Merge conflicts are an inevitable thing, but it certainly would be nice if you never had to deal with the same one more than once. What if you rolled back a commit, only later to have to merge it again? It would be fantastic if Git could remember how you resolved it last time. It can, with `rerere` turned on.

Rerere captures the left and right side of a merge conflict and if it sees those same two sides again, it will auto-resolve them, leaving them staged for your review and approval. The intelligence of a rerere data file can be incredible on a large and long-lived code base.

### Testing Rerere
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

### Rerere Cache Location
The most surprising fact is that the rerere cache is not machine-portable in the sense that it is not transported with `push` or `pull` operations. It saves resolved objects to the `.git/rr-cache` folder.

    .git
       |-- rr-cache
           |-- 810a8080b83381d1db72066593c8f01954be8bc3
           |   |-- preimage
           |-- c437466904eeeebfd1f406c0f7a0179db64382be
               |-- preimage

### Expiration of Rerere Cache Entries
* Resolved expiration
    * 60 days?
    * Can be configured
* Unresolved expiration
    * 30 days?
    * Can be configured



## Log History Searches
### Search with Log for a String
`git log -S "STRING"`

### Search with Log for a RegEx

    git log -G "regex"
    #or
    git log --grep "<PATTERN>"

### Search for Code in History
Log can query for Strings in the history of code changes.

    git log -p -S "<somestring>"
    # or only where deleted
    git log -p -S "<somestring>" --diff-filter=D

or specifically, as an example, search in Log4J history.

    # Clone Log4J
    git clone git://git.apache.org/log4j.git
    cd log4j

    # Search for a string
    git log -p -S "option ` options[0];"

    # Search for a string, only in deletes
    git log -p -S "option ` options[0];" --diff-filter=D

## Log History File-Specific Review
### Follow a File's History Back Through Renaming from HEAD

    git log --follow FILENAME

### Follow a File's History Back Through Renaming From A Point In Time

    git log --follow REF:FILENAME



## Listing Special Files
Git exposes some of its plumbing commands to aid in the construction of useful shell scripts. `ls-files` is one of the most heavily used in scripting.

### Untracked files
While Git generally ignores untracked files for most operations, it can be helpful, for scripting purposes, to list and only list untracked files. The `ls-files` command knows how to do that by telling it to `exclude-standard` tracked files and to not list `others` which includes ignored files.

    git ls-files . --exclude-standard --others

### Ignored files
Git can be asked to list the ignored files for potential use in a script.

    # The plainest output
    git ls-files . --ignored --exclude-standard --others

It can also be done with a `clean` command, but there is more decoration around the output.

    git clean -ndX


## Advanced Interactive Rebase
The objective of `fixup`, `autosquash`, and `squash` within interactive rebase is to easily enable the polishing of history for consumption by others. This effort can happen on a differnt timeline than the construction of the code. Developers can separating thinking from polishing and leave reminder comment crumbs all along the way. This ultimately makes the source history more comprehensible for other team members.

### Interactive Rebase

    git rebase -i <REF>

### Squash Merge

    git merge --squash

### Squash within Interactive Rebase

    git rebase -i
    # Select the commits to squash with a letter S in front of them
    # Work on the combined commit messages in your editor

### Fixup

    git commit -m"FIXUP! Message Here"

### Interactive Rebase Aliases
[AutoSquash Script by By Jacob Helwig](http://technosorcery.net/2010/02/07/fun_with_the_upcoming_1.7_release_of_git_rebase_--interactive_--autosquash.html)

    fixup ` !sh -c 'git commit -m \"fixup! $(git log -1 --format='\\''%s'\\'' $@)\"' -
    squash ` !sh -c 'git commit -m \"squash! $(git log -1 --format='\\''%s'\\'' $@)\"' -
    ri ` rebase --interactive --autosquash

## Plumbing Commands
### `rev-parse [something]`
show the SHA of any weird git phrase
### `hash-object -w [file]`
take any file or stdin and return a blob sha
### `ls-tree (-r) [sha]`
show the entries of a git tree in the db
### `ls-files -s`
show the entries of the index
### `read-tree`
make the index look like a git tree in the db
### `update-index`
take an existing blob or a file from the work tree and update the index entry
### `write-tree`
record the current state of the index into a git tree in the db and return the sha
### `commit-tree`
create a commit object from a git tree in the db
### `update-ref`
update a branch (or other reference) to point to a specific commit sha
### `symbolic-ref`
update a reference (usually HEAD) to point to another reference (like a branch)

## Rebase Onto
Rebase a series of commits onto another location
`git rebase --onto`

## Octopus Merge of Signed Tags
`git merge <SIGNEDTAG1> <SIGNEDTAG1> <SIGNEDTAG1>`
Works just fine and even permits `--show-signature`

## Find Where a Single Commit is Merged
The `git cherry` command is an easy way to query where a commit is merged to and where it is not.

## Commit Data Structure Internals
### Why parent pointer, author and committer in each checkin?
### One parent? (single commit on a branch)
### Multiple parents? (multiple branches merged together)

## Content Tracking After Refactoring
### Git and Mercurial are able to track "renames through a merge"
### `git blame -C`
Shows lines that came from other files that now compose this file
### Possible because of the similarity index
Follows content lifetime and location, not just files

## Composable versus Contextualized Tool Architecture
### Not grasped by many people
### Plugins versus composition
#### Mercurial: Plugins
#### Git: Composable
### Plugins
Mercurial uses plugins
#### Requires shared context
#### Known shared context
#### Constraints
#### Get started faster
#### Less composable in the end
### Composition
Git uses Unix-like composition of small commands
#### Git
#### Language always more powerful than a framework
#### Languages are ultimately composable (computer language)



-------------------------------
## Backups
* automatic commit backup script from Chacon
* `git fast-export`
* Copying the .git folder
* A Git bundle

## Integrity Verification
* Verifying commits with `git fsck-objects`
* Verifying the repo with `git fsck`
* Signed tags

## Shell Prompts
* ZSH
    * ohmyzsh
        * <http://github.com/robbyrussell/oh-my-zsh>
    * Matthew's OSS prompts
        * TODO LINK
* Bash
    * Included with Git distribution (source)
    * Now default installed in "Git Bash Prompt" with MSysGit on Windows
    * Matthew's OSS
        * TODO LINK
    * Others on the web



# TO INTEGRATE

## Push Options
Rather broadly, compared to Git's general pattern of being focused, `git push` pushes all branches that have matching names on the remote. In the case where a tracking branch doesn't match its remote, it wouldn't be pushed. To control which branches get pushed on an argument-less push, set one of the options.

    #Do not push anything
    git config --global push.default nothing

    #Push the current branch to whatever it is tracking
    git config --global push.default tracking

    #Push all branches having the same name locally and remotely (the default)
    git config --global push.default matching

    #Push the current branch to a branch of the same name
    git config --global push.default current




## Portable Branches with Bundles
The `git bundle` command provides for a means to capture

    git bundle create <filename.bundle> <branchname>
    # or
    git bundle create <filename.bundle> <branchname1> <branchname2> <tagname1>

Applying that bundle after transporting it can be done with an inspection of the bundle:

    git bundle list-heads filename.bundle

    8d2636da55da593c421e1cb09eea502a05556a69 refs/heads/master
    c38c21af0adfb4edf7bb090af45640d293012551 refs/heads/conflict1

The same effect can be achieved via `ls-remote` as a bundle is just like a Git _remote repository_ for all operational purposes.

    git ls-remote filename.bundle

    8d2636da55da593c421e1cb09eea502a05556a69 refs/heads/master
    c38c21af0adfb4edf7bb090af45640d293012551 refs/heads/conflict1

If initially establishing the repository from the bundle, then clone the bundle:

    git clone filename.bundle localfolderdest

    Cloning into 'localfolderdest'...
    Receiving objects: 100% (56/56), 5.50 KiB, done.
    Resolving deltas: 100% (24/24), done.
    warning: remote HEAD refers to nonexistent ref, unable to checkout.

What went wrong? Well, there was no HEAD to check out. The folder was created and the bundle was reconstituted into a working folder with a `.git` folder, but no files were checked out. A `git checkout master` would be necessary to switch to that branch.

    git bundle create filename.bundle master conflict1 HEAD

followed by a listing of those heads results in a HEAD that can be checked out on clone:

    git bundle list-heads filename.bundle

    8d2636da55da593c421e1cb09eea502a05556a69 refs/heads/master
    c38c21af0adfb4edf7bb090af45640d293012551 refs/heads/conflict1
    c38c21af0adfb4edf7bb090af45640d293012551 HEAD

and then a retrieval of the bundle's HEAD pointer:

    git fetch ../filename.bundle

    From ../filename.bundle
     * branch            HEAD       -> FETCH_HEAD

but this is likely not what is wanted. What is HEAD? Only a good place to check out after clone. A named branch is more precise.

    git fetch ../filename.bundle master

    From ../filename.bundle
     * branch            master     -> FETCH_HEAD

This pulls the retrieved information into a special temporary symbol called `FETCH_HEAD`. This symbol stays stable until another fetch command is issued. It can be examined or merged anywhere.

    git checkout master
    git merge FETCH_HEAD

Git is also able to pull from bundles.

    git pull ../filename.bundle

    From ../filename.bundle
     * branch            HEAD       -> FETCH_HEAD
    Auto-merging src/Sum.groovy
    CONFLICT (add/add): Merge conflict in src/Sum.groovy
    Automatic merge failed; fix conflicts and then commit the result.

But this is likely too imprecise for most user with a merge of HEAD. The merge of a specific branch, say, `master`, can be targeted to the local master branch with a refspec.

    git pull ../filename.bundle master:refs/heads/master

    From ../file4.bundle
     ! [rejected]        master     -> master  (non-fast-forward)

Pulls reject non-fast-forward merges from bundles and must be fetched instead.

Bundles can be added as remotes if a new file is frequently put in the same place on disk.

    git remote add bundle ../filename.bundle
    git pull bundle

    You asked to pull from the remote 'bundle', but did not specify
    a branch. Because this is not the default configured remote
    for your current branch, you must specify a branch on the command line.

With only the source refspec specified, the master branch is pulled to `FETCH_HEAD`, not the local `master` branch as you might assume.

    git pull bundle master

    From ../file4.bundle
     * branch            master     -> FETCH_HEAD
    Merge made by the 'recursive' strategy.
     0 files changed, 0 insertions(+), 0 deletions(-)
     create mode 100644 newfile1.txt

With the local:remote refspec fully called out, we get success.

    git pull bundle master:origin/master

    Merge made by the 'recursive' strategy.
     0 files changed, 0 insertions(+), 0 deletions(-)
     create mode 100644 newfile1.txt

If you'd like to know in advance of trying these activities if a bundle can be merged on to a repo, it can be verified.

    git bundle verify filename.bundle

    The bundle contains 3 refs
     8d2636da55da593c421e1cb09eea502a05556a69 refs/heads/master
     c38c21af0adfb4edf7bb090af45640d293012551 refs/heads/conflict1
     c38c21af0adfb4edf7bb090af45640d293012551 HEAD
     The bundle requires these 0 ref
     ../filename3.bundle is okay

A bundle can also be unbundled into the current repo, but that doesn't guarantee any heads point to any of the new commits. The commits are present, but candidates for garbage collection until a tag or branch points to them by means of a branch creation, a merge, or a rebase.

    git bundle unbundle ../filename.bundle

    8d2636da55da593c421e1cb09eea502a05556a69 refs/heads/master
    c38c21af0adfb4edf7bb090af45640d293012551 refs/heads/conflict1
    c38c21af0adfb4edf7bb090af45640d293012551 HEAD


## Portable Changes as Patches
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


## Creating a parentless (orphan) branch
Why would you ever want a parentless branch? Well, Git is capable of storing things related to, but not derived from the source code of the main project. In short, parallel branches of code that belong to, but don't have a historical relationship to the main codebase. Examples include the reference documentation (`html` and `man`) or perhaps plugins or advertising assets.

Parentless branches are created with the checkout command using the special flag `--orphan`. This toggles to a new branch and still contains all the current files.

    git checkout --orphan docs

After checking out this branch, the files present on the old branch are still present and staged.

    git status

    # On branch docs
    #
    # Initial commit
    #
    # Changes to be committed:
    #   (use "git rm --cached <file>..." to unstage)
    #
    #   new file:   README
    #   new file:   file1.txt
    #   new file:   file2.txt
    #

 These remaining files will likely need to be unstaged and removed from the working directory.

    git rm -rf *

    rm 'README'
    rm 'file1.txt'
    rm 'file2.txt'

The branch is now clean of contents and ready to have its own contents added and committed.

    touch newfile.txt
    git add newfile.txt
    git commit -m"New files on docs branch"


----------------------------------------------------------------------------
## Refspecs

### Using Refspecs
Refspecs are specifications for what to retrieve and merge to when Git is performing some action. A refspec from the `.git/config` file might contain a `fetch` entry like this one. There's a great description of refspecs in Scott Chacon's flavor of writing in his [Pro Git book](http://progit.org/book/ch9-5.html).

    +refs/heads/master:refs/remotes/origin/master

The `+` tells Git to update the reference even if it isn't a fast-forward. If it isn't a fast forward, a merge would typically be invoked, or a rebase if the `branch.<branchname>.rebase` flag is set to `true`.

The format of the refspec is an optional `+`, followed by `<source>:<dest>`

If one branch is to be fetched and put in a certain location locally, fully specify both sides.

    git fetch origin master:refs/remotes/origin/mymaster`

When speaking of _remotes_, more than one ref can be put in a pooled location locally by using a * wildcard for the ref's last element. Note that a wildcard * is only valid as the last character in a refspec. This pattern is most often seen under a `[remote]` section of the `.git/config` file.

    [remote "origin"]
        +refs/heads/*:refs/remotes/origin/*

And while seemingly frustrating that a wildcard can only be used and only at the end of a refspec, there is a way to target two items to be retrieved for just one pull command issued.

    [remote "origin"]
        fetch = +refs/heads/master:refs/remotes/origin/master
        fetch = +refs/heads/experiment:refs/remotes/origin/experiment

This same multiplicity can be issued at the command line.

    git fetch origin refs/heads/master:refs/remotes/origin/master \
        refs/heads/experiment:refs/remotes/origin/experiment

This will reject updating the branches (remote branches) if it is anything other than a fast-forward since there is no plus in front of the specs. A plus can be given, but bear in mind the effect that has on the commit history. There are frequent use cases where the `+` is not desired and a loud complaint is desired if anything other than a fast forward is retrieved.

A fetch can use shorthand syntax, assuming `refs/heads` if operating in the context of a remote and is on the source side of the refspec.

    git fetch origin master:refs/remotes/origin/master \
        experiment:refs/remotes/origin/experiment

This will likewise reject updating the branches (local branches) if it is anything other than a fast-forward since there is no plus in front of the specs.

Refspecs also tell us why we might want to namespace our branch names with a `/`. For example, the [Git repository](https://github.com/gitster/git) has branches with the contributor's name as a prefix.

    git branch -a

    remotes/gitster/rs/name-rev-usage
    remotes/gitster/rs/pending
    remotes/gitster/rs/pickaxe
    remotes/gitster/sc/difftool-skip
    remotes/gitster/sg/complete-refs
    remotes/gitster/sr/fix-fast-export-tips
    remotes/gitster/sr/transport-helper-fix-rfc
    remotes/gitster/ss/inet-ntop
    remotes/gitster/tj/maint-imap-send-remove-unused
    remotes/gitster/tm/completion-commit-fixup-squash
    remotes/gitster/tm/completion-push-set-upstream
    remotes/gitster/vr/git-merge-default-to-upstream
    remotes/gitster/vr/msvc
    remotes/gitster/zj/send-email-authen-sasl

Refspecs only allow for a wildcard as the last element, after a slash. It cannot be part of the name itself. For example, a disallowed pattern would be `+refs/heads/t*:refs/remotes/origin/t*` to pull all of TM's and TJ's branches. An allowed pattern would be `+refs/heads/tm/*:refs/remotes/origin/tm/*` to pull only TM's branches.

Refspecs can be given on `push` to change the destination of a push on the remote side. Keep in mind that the pattern is still <source>:<dest>, but we're transmitting in the opposite direction than a pull or fetch.

    git push origin master:refs/heads/tm/master

Some types of objects don't sit under the `refs/heads` folder and thus don't get pulled by the default refspec created for a cloned repository. It is easy to fetch things that normally wouldn't get fetched ([but are displayed on GitHub](https://github.com/blog/707-git-notes-display))by specifying a refspec on the command line, but this can get tedious, time after time.

    git push origin refs/notes/commits

Multiple `fetch` lines in `.git/config` can yield an easy way of fetching multiple specs. This is especially useful for [Git notes](http://progit.org/2010/08/25/notes.html), which aren't usually pushed or pulled and don't yet have a `--tags` option for pushing.

    [remote "origin"]
            fetch = +refs/heads/*:refs/remotes/origin/*
            fetch = +refs/notes/*:refs/notes/*
            url = git@github.com:matthewmccullough/hellogitworld.git


Multiple `url` lines in `.git/config` can yield an easy way of pushing to multiple locations sequentially.

    [remote "origin"]
            fetch = +refs/heads/*:refs/remotes/origin/*
            url = git@github.com:matthewmccullough/hellogitworld.git
            url = git@github.com:matthewmccullough/hellogitworld


### Blobspec
Similar to a refspec, a blobspec is a ref with a specific file identified.

    git show RELEASE10:src/main/java/Main.java`

This blobspec can be used to identify a file within a commit and access it with a Git command such as `show` or even `blame`.

The <tree>:<path> syntax for naming a blob in a tree, and the :<path> syntax for naming a blob in the index (e.g. "master:Makefile", ":hello.c") have been extended.  You can start <path> with "./" to implicitly have the (sub)directory you are in prefixed to the lookup.  Similarly, ":../Makefile" from a subdirectory would mean "the Makefile of the parent directory in the index".


### Fetch a pull request by refspec
If a pull request is issued against a project and you don't want to add it as a remote, you can retrieve it via a one-time request.

    git fetch git@github.com:someothercontributor/hellogitworld refs/pull/19/head

This is a fetch by _refspec_, which means we are providing the precise elements we want retrieved instead of all elements.  It also means there is no residual _remote_ if we are not going to frequently communicate with the source of this particular pull request.

Then merge via `FETCH_HEAD` to pull in this one time request's contents into the current branch.

    git merge FETCH_HEAD


----------------------------------------------------------------------------
## Pushing Effectively

### Mirror for Pushes

    git push --mirror <remote>

### Mirror for remotes

    git remote add --mirror backup /Volumes/Storage


### Groups of remotes
Groups of remotes can be set up to be used with pull and fetch.

From documentation of `git fetch`:

    A name referring to a list of repositories as the value of remotes.<group> in the configuration file. (See git-config(1)).

Fetch a group of remotes

    $ git config remotes.default 'origin mislav staging'
    $ git remote update

    # fetches remotes "origin", "mislav", and "staging"

You can define a default list of remotes to be fetched by the remote update command. These can be remotes from your teammates, trusted community members of an opensource project, or similar. You can also define a named group like so:

    $ git config remotes.mygroup 'remote1 remote2 ...'
    $ git fetch mygroup


### Username Expansion in Git Repo Addresses
The ssh and git protocols additionally support ~username expansion:

* `ssh://[user@]host.xz[:port]/~[user]/path/to/repo.git/`
* `git://host.xz[:port]/~[user]/path/to/repo.git/`
* `[user@]host.xz:/~[user]/path/to/repo.git/`

### Efficient Repo URL Reuse, Aliases
If there are a large number of similarly-named remote repositories and you want to use a different format for them (such that the URLs you use will be rewritten into URLs that work), you can create a configuration section of the form:

    [url "<actual url base>"]
        insteadOf = <other url base>

For example, with this:

    [url "git://git.host.xz/"]
        insteadOf = host.xz:/path/to/
        insteadOf = work:

a URL like `work:repo.git` or like `host.xz:/path/to/repo.git` will be rewritten in any context that takes a URL to be

    "git://git.host.xz/repo.git".

If you want to rewrite URLs for push only, you can create a configuration section of the form:
    [url "<actual url base>"]
       pushInsteadOf = <other url base>

For example, with this:
    [url "ssh://example.org/"]
        pushInsteadOf = git://example.org/
a URL like "git://example.org/path/to/repo.git" will be rewritten to "ssh://example.org/path/to/repo.git" for pushes, but
pulls will still use the original URL.

### Alternate URLs for push and pull (insteadOf)

In the same vein as `alias` setups for commands, [shortcuts can be set for URLs](https://gist.github.com/833086#file_gitconfig.ini).

    [url "https://github.com/"]
      insteadOf = "ghh:"
    [url "git@github.com:"]
      insteadOf = "gh:"
      pushInsteadOf = "github:"
      pushInsteadOf = "git://github.com/"
    [url "git://github.com/"]
      insteadOf = "github:"
    [url "git@gist.github.com:"]
      insteadOf = "gst:"
      pushInsteadOf = "gist:"
      pushInsteadOf = "git://gist.github.com/"
    [url "git://gist.github.com/"]
      insteadOf = "gist:"
    [url "git@heroku.com:"]
      insteadOf = "heroku:"

Example use:

    $ git clone ghh:schacon/git-pulls

    $ git clone github:lenary/guides.git
    Cloning into guides...
    remote: Counting objects: 255, done.
    remote: Compressing objects: 100% (216/216), done.
    remote: Total 255 (delta 111), reused 163 (delta 35)
    Receiving objects: 100% (255/255), 1.49 MiB | 564 KiB/s, done.
    Resolving deltas: 100% (111/111), done.

    $ cd guides
    $ git remote -v
    origin git://github.com/lenary/guides.git (fetch)
    origin git@github.com:lenary/guides.git (push)

    $ cd ..
    $ git clone gist:806037
    Cloning into 806037...
    remote: Counting objects: 3, done.
    remote: Compressing objects: 100% (2/2), done.
    remote: Total 3 (delta 0), reused 0 (delta 0)
    Receiving objects: 100% (3/3), done.

    $ cd 806037
    $ git remote -v
    origin git://gist.github.com/806037 (fetch)
    origin git@gist.github.com:806037 (push)


----------------------------------------------------------------------------
## Reset
* Changing the index and possibly the working copy depending on the mode.
* `soft`
* `hard`
* `mixed`
* `merge`
* [Chacon's reset demystifying grid](http://schacon.github.com/resetvcheckout.html)
* grid of reset behaviors from chacon
    * <http://progit.org/2011/07/11/reset.html>
    * <http://schacon.github.com/resetvcheckout.html>
    * [Prepare deploy script](https://gist.github.com/582888)
* Three Trees presentation by Scott Chacon
    * https://github.com/strangeloop/2011-slides/blob/master/Chacon-ThreeTrees.pdf

## Reflog
* `git reflog` reflog format
* `git log -g` normal format

## Minimizing repetitive work with rerere, pickaxe, and bisect.
* Logging
    * git log -S "STRING"
    * git log -G "regex"
    * git log --grep "<PATTERN>"
    * git log --follow FILENAME
    * git log --follow REF:FILENAME
    * git log -p -S "option = options[0];" --diff-filter=D

## Rebase

### Rebase, Interactive, Autosquash, Fixup
Leveraging fixup, autosquash, squash and interactive rebase to fluidly make source history more comprehensible.
* Interactive Rebase
* Squash, Autosquash
* Fixup
* Aliases for autosquash
    * [Jacob Helwig's blog entry](http://technosorcery.net/2010/02/07/fun_with_the_upcoming_1.7_release_of_git_rebase_--interactive_--autosquash.html)
    * `fixup = !sh -c 'git commit -m \"fixup! $(git log -1 --format='\\''%s'\\'' $@)\"' -`
    * `squash = !sh -c 'git commit -m \"squash! $(git log -1 --format='\\''%s'\\'' $@)\"' -`
    * `ri = rebase --interactive --autosquash`

### Rebase Onto
* Takes a chunk of commits independent of other branches it may be based on and relocates those to the named branch
* Useful for taking a feature branch from a feature branch and putting it back on to the master
* `git rebase feature2 --onto master`

### Rebasing Strategies
* Wink in changes with an interactive rebase then cherry-pick
* Rebasing your own branch for reordering and squashing

## Autosquash
[Autosquash is a form of interactive rebasing](http://technosorcery.net/2010/02/07/fun_with_the_upcoming_1.7_release_of_git_rebase_--interactive_--autosquash.html).

[rebase autosquash](http://www.kernel.org/pub/software/scm/git/docs/RelNotes/1.7.4.txt)

   git rebase --autosquash

"git commit" learned the --fixup and --squash options to help later invocation of interactive rebase.


## Git Up for Rebasing All Branches
* add on command for git
* https://github.com/aanand/git-up
* iterates over all branches and updates each, rebasing the local changes on top of the remote chnges.

    git up


### Pull with Rebase
Rebase the local (unsent) changes on top of the pulled in changes. This results in NO merge commit. For a given request:

    $ git pull --rebase

For a permanent config for any branch:

    $ git config branch.autosetuprebase always

For a singular branch that be rebased when pulled:

    $ git config branch.master.rebase true

For an alternate command (Gem) that works on all branches:

    https://github.com/aanand/git-up

then

    $ git up


As mentioned before, `rebase`pull --rebase` can be set as the default with:

    $ git config branch.autosetuprebase always

When a new branch is created with `git-branch` or `git-checkout` that tracks another branch, this variable tells git to set up pull to rebase instead of merge. When `autosetuprebase` is `never`, rebase is never automatically set to `true`. When `local`, rebase is set to `true` for tracked branches of other local branches. When `remote`, rebase is set to `true` for tracked branches of remote branches. When `always`, rebase will be set to true for all tracking branches. See `branch.autosetupmerge` for details on how to set up a branch to track another branch. This option defaults to `never`.

You can override this with `--no-rebase`.



----------------------------------------------------------------------------
## Interactive Checkout, Interactive Reset

### Add
Traditional patch adding

    git add -p

### Checkout
Patch checkout

    git checkout -p HEAD -- <FILENAME>

### Resetting
Unstaging selectively

    git reset -p HEAD

### Stashing
Stashing selectively

    git stash -p

----------------------------------------------------------------------------
## Recovery

### Recover a deleted commit
* Use GitK to visualize orphans
* Write an alias for orphan logging
* Cherry pick an orphan
* Give an orphan a tag so it won't be garbage collected

### Other Undos
* Undo a bad merge
* Undo a bad rebase
* Undo a bad commit (reset --soft)

### Restoring
* Restore a file or directory:
* `git checkout HEAD -- foldername`

### Revert
* Logical reversal of identified commit
* Single commit
* Range of commits


----------------------------------------------------------------------------
## External Tools

### Visual tools
* Why use visual tools?
* How are visual merge tools set up?

### Mergetool
* `git config --global merge.tool vimdiff`

### Difftool
* `git config --global diff.tool vimdiff`

### Git Attributes
* .gitattributes for tools
* Controls what is thought of as binary and text
* Controls which tools are launched for which file types


----------------------------------------------------------------------------
## Merging

### Octopus
* Not possible in Mercurial
* Has var-arg parent ref pointer in merge-resolving commit

* Selecting the strategy with CLI options
* `git merge -s ours <one>`
* `git checkout --ours <FILEORPATH>`
* `git checkout --theirs <FILEORPATH>`

## Subtree Merge
* What benefits it offers
* Better than a submodule?
* Less flexible than a submodule
* Code actually stored in master repo
* How to do it


----------------------------------------------------------------------------
## Navigation

### navigation syntax
* triple caret
* tilde
* master^{tree}

### Advanced Ref Ranges
* `..` reachable
    * Reachable between left and right side of `..`
* `...` common ancestor
    * From point to the common ancestor


----------------------------------------------------------------------------
## Clone and Checkout Options

### Clone options
* git clone --depth 1
* git clone --recurse
* git clone -b OTHERBRANCH REPOURL #For alternate branch checkout
* git clone -o ORIGINNAME REPOURL #For alternate remote name

### sparse checkout
Check out just some directories

    git clone ~/git/git  
    cd git
    git config core.sparsecheckout true
    echo ppc/ > .git/info/sparse-checkout
    echo perl/ >> .git/info/sparse-checkout
    git read-tree -m -u HEAD
    ls


----------------------------------------------------------------------------

## Visualization

### Logging a single file
* git log -p FILENAME
  * History of a single file including line by line changes
* With Rename
  * --follow-renames

### investigation
* relative dates
* Grep
* log -s
* log pickaxe

### blame
* blame (plain)
* blame -C
* Rename detection (where did the code originally come from?)



### Visualizing push
* Ls-remote
* Branch -vv
* What is unpushed?

### Dry run
* Dry run of many commands
* merge
* pull
* push
* clean

### Show Push Progress
[Showing push progress](http://www.kernel.org/pub/software/scm/git/docs/RelNotes/1.7.4.txt)
    git push --progress

### Searching for Diffs
You can find what commits contain a certain change in the history as of [Git 1.7.4](http://bit.ly/f9E06k).

    git log -G TEXTTOFIND

### name-rev
Name-rev is a command that provides a relative-position name (symbolic name) for a _rev_ based on a tag or a branch. Which of the two is a base is determined by the option flags.  Another way to say this is that `name-rev` takes a hash parameter and give it a navigable (carat or tilde spec) name based on the first found commit's predecessors.

Find relative to branches:

    git name-rev a45d123

    a45d123 tags/v1.1.0^0~5

Find relative to tags:

    git name-rev --tags a45d123

    a45d123 tags/v1.1.0^0~5

You can also use the output of other commands as the input to `name-rev`. This would find the relative positions of all entries that log would discover

    git log | git name-rev --stdin

### describe
Describe is a command that provides TODO.  It is effectively a the opposite of `name-rev`. Names the revision using a tag and advancing from there.

    git describe a45d123

    v1.5.0-rc0-260-ge05db0f


### Quickly view an SVN commit diff
Find an SVN commit with a particular SVN revision number:

    git log -p --grep="@<svn commit #>"


### View git branch tracking info
For examination of the Subversion server you are speaking to:
    $ git svn info

To view the branch status within the status output:
    $ git status --branch
    # On branch master
    # Your branch is behind 'origin/master' by 1 commit, and can be fast-forwarded.
    #
    nothing to commit (working directory clean)

To get the basic position of a branch to its tracked branch:
    $ git branch -v
    * master       a60b37e [behind 1] First checkin
      mynewfeature 7a910dc Checking in everything

To get the details, including the name of the branch being tracked:
    $ git branch -vv
    * master       a60b37e [origin/master: behind 1] First checkin
      mynewfeature 7a910dc Checking in everything


### Previewing a Git Push
If you want the full commit info on all the commits that will be pushed:

    $ git log origin/master..master

Or if you just want a one-line summary of the commits that will be pushed:

    $ git log origin/master..master --pretty=oneline

    e3a4ea2e5221a1ae85fba98900778260f8e5c356 Refactoring to the rendering engine
    ee4839d0f82ed812f1dd3855ee32db09d5e4bd31 Performance tune on loops

Or to preview the full code level detail of the commits in the range of what is local to what will be pushed:

    $ git diff master remotes/origin/master

    diff --git a/README.txt b/README.txt
    index f2ae811..1e24b56 100644
    --- a/README.txt
    +++ b/README.txt
    @@ -8,4 +8,4 @@ As a quick reminder, this came from one of three locations in ei
     * git://github.com/matthewmccullough/hellogitworld.git
     * https://matthewmccullough@github.com/matthewmccullough/hellogitworld.git

    -We can, as an example effort, even modify this README and change it as if it we
    +We can, as an example effort, even modify this README and change it as if it we
    \ No newline at end of file
    diff --git a/new.txt b/new.txt
    deleted file mode 100644
    index e69de29..0000000

### Show Find Regex
Show the last commit which message matches a regex

    $ git show :/fix
    # shows the last commit which has the word "fix" in its message

    $ git show :/^Merge
    # shows the last merge commit

### Find out which branch contains a change

    $ git branch --contains 50f3754

This filters the lists of branches to only those which have the given commit among their ancestors. To also include remote tracking branches in the list, include the “-a” flag.

### See which changes from a branch are already present upstream
This command compares changes on the current (“feature”) branch to upstream (“master”) and indicates which are present on both with the “–” sign. Changes still missing from upstream are marked with “+”. This identifies what commits have been cherry-picked onto one branch or the other.

    # while on "feature" branch:
    $ git cherry -v master

    + 497034f2 Listener.new now accepts a hash of options
    - 2d0333ff cache the absolute images path for growl messages
    + e4406858 rename Listener#run to #start

### Graphing of color formatted short date history
Uses percent color escapes
    log --graph --date=short --pretty=format:'%C(yellow)%h%Creset %cn%x09%cd %s%C(green bold)%d'

### Find lost files
Shows the hashes of disconnected refs.
    git fsck --lost-found

### Details of files in the Git Index
See the mod times and file sizes in the Git index
`git ls-files -s --debug`


### Diff-Tree
[Single letter flags with diff-tree](http://www.kernel.org/pub/software/scm/git/docs/git-diff.html)

    git-diff-tree

    in-place edit  :100644 100644 bcd1234... 0123456... M file0
    copy-edit      :100644 100644 abcd123... 1234567... C68 file1 file2
    rename-edit    :100644 100644 abcd123... 1234567... R86 file1 file3
    create         :000000 100644 0000000... 1234567... A file4
    delete         :100644 000000 1234567... 0000000... D file5
    unmerged       :000000 000000 0000000... 0000000... U file6

Possible status letters are:
* A: addition of a file
* C: copy of a file into a new one
* D: deletion of a file
* M: modification of the contents or mode of a file
* R: renaming of a file
* T: change in the type of the file
* U: file is unmerged (you must complete the merge before it can be committed)
* X: "unknown" change type (most probably a bug, please report it))



----------------------------------------------------------------------------

## Submodules

### Recursive
* Recursing when pulling or fetching

### Best practices
* Adding them via a read-only address like git://
* checking out sha, not a branch name

### .gitmodules
* The control structure for submodules
* Manually editing to relocation a git submodule


----------------------------------------------------------------------------
## HTTP Protocol

### Caching Credentials

* Git will use any values you supply in your `~/.netrc` file on *NIX and `~/_netrc` or `$HOME/_netrc` on Windows (MSysGit and perhaps Cygwin).

    machine github.com
    login yOuRgItHuBuSeRnAmE
    password yOuRpAsSwOrD

To clone a repository using these credentials, _remove_ the username from GitHub's suggested authenticated URL (e.g. https://matthewmccullough@github.com/matthewmccullough/projectname.git).

    git clone https://github.com/matthewmccullough/projectname.git

If there is a need to specify the certificate authority (CA) bundle, it can be done with a system or global configuration of the `http.sslcainfo` section and key.

    git config --system http.sslcainfo /bin/curl-ca-bundle.crt


### Smart HTTP Protocol

GitHub wrote a [blog post](https://github.com/blog/642-smart-http-support) in April of 2010 that introduced this new protocol to their user base.



----------------------------------------------------------------------------
## Line Endings

### Conversions
Convert line endings from CRLF to LF when adding them to the staging area:

    $ git config --global core.autocrlf input

Converts line endings from CRLF to LF when adding them to the staging area and from LF to CRLF when checking them out:

    $ git config --global core.autocrlf true

Do not touch line endings:

    $ git config --global core.autocrlf false

### Warnings
Never complain about line ending conversion:

    $ git config --global core.safecrlf false

Warn, but allow line ending conversion to proceed (the default):

    $ git config --global core.safecrlf warn

Do not allow line ending conversion to proceed:

    $ git config --global core.safecrlf true



----------------------------------------------------------------------------
## GitHub Add-Ons

### github command
This command can:

* Create new repo
* Pull a fork
* Fork a project

    github create reponame

### git-pulls

* Watch pull queue

    git pulls

### hub command

* multiple destination push
* browse a project page
* diff on the web

    hub diff master


## Add on tools
* Hub command
    * install from `gem`
    * install from `brew`
* Git-flow
    * Tool for simplifying branching commands
    * https://github.com/nvie/gitflow
* Git-extras
    * https://github.com/visionmedia/git-extras
        * git extras
        * git summary
        * git changelog
        * git commits-since
        * git pull-request
        * git count
        * git create-branch
        * git apply-branch
        * git delete-branch
        * git delete-submodule
        * git delete-tag
        * git fresh-branch
        * git graft
        * git alias
        * git ignore
        * git release
        * git contrib
        * git repl
        * git undo
        * git gh-pages
        * git setup
        * git touch
        * git feature
        * git refactor
        * git bug
        * git promote
        * GH gem
    * https://github.com/defunkt/github-gem
    * `gh pull <otheruser>` pulls current branch from other remote and sets up the remote if needed.
    * `gh network list` lists the users having forked this repo
    * `gh network commits` lists the commits in the forks


----------------------------------------------------------------------------
## Maintenance

### filter branch
* removing sensitive file
* filter by folder
* filter by index search


### Git GC Auto, Configuration
    git gc --aggressive
    git gc --aggressive --prune="1 day ago" (default is "2 weeks ago")

    git config gc.auto

* 6700 (default)
* 0 (disabled)

    git gc --auto

gc.autopacklimit

If the number of packs exceeds the value of gc.autopacklimit, then existing packs (except those marked with a .keep file) are consolidated into a single pack by using the -A option of git repack. Setting gc.autopacklimit to 0 disables automatic consolidation of packs.

    git repack -d -l


### Git GC Automatic Execution
Automatic running of git gc
Git Magic - Chapter 7. Git Grandmastery

    git config gc.pruneexpire "30 days"

means a deleted commit will only be permanently lost once 30 days have passed and git gc is run.

You may also wish to disable automatic invocations of git gc

    git config gc.auto 0


### Clean up (remove) orphaned commits

    git fsck --full


### Verifying commits
You can run the count-objects command to quickly see how much space you're using:

    git count-objects -v


----------------------------------------------------------------------------
## Whitespace

### Whitespace ignoring
When reformatting a file, if your language doesn't have significant whitespace, you can ensure you've done no harm by performing whitespace-only changes and then diffing, suppressing the whitespace output.

    git diff -w

This ignores all whitespace, whether at the front, middle or back of a line, and whether tabs or spaces.

### EOL Whitespace
In Git 1.7.4. there were improvements to [dealing with whitespace](http://www.kernel.org/pub/software/scm/git/docs/RelNotes/1.7.4.txt).

    git diff -ignore-space-at-eol

versus

    git diff -w

which pays attention to all white space, including that at the end of the line.

These enhancements solely apply to `git diff` for the time being, as this [StackOverflow article](http://stackoverflow.com/questions/861995/is-it-possible-for-git-merge-to-ignore-line-ending-differences) indicates the resistance to putting this feature on to `git merge`.


----------------------------------------------------------------------------

## Git SVN (Advanced Integration)

### Subversion Integration
* Cloning a repo
* watching the clone
* Cloning only a range
* Converting branches to tags
* Clean migrating to Git with a bare copy of the SVN repo

### Git Searching Subversion Revision Numbers
Search for a revision number in a SVN-to-Git converted repo.

    git-svn log -r5277
    git-svn log -r5277 --show-commit

### Long Running SVN Clone Progress
`watch -n 3 -d cat .git/svn/.metadata`


### ProGit Book on Git SVN
Scott Chacon's book has an [entire chapter on git-svn](http://progit.org/book/ch8-1.html).

### git-svn Man Page
There are some caveats about merging anything with Git branches and then dcommiting to SVN. This is enough of a land mine I wanted to emphasize it via a [man page excerpt](http://www.kernel.org/pub/software/scm/git/docs/git-svn.html)...

    CAVEATS
       For the sake of simplicity and interoperating with a less-capable
       system (SVN), it is recommended that all git svn users clone, fetch and
       dcommit directly from the SVN server, and avoid all git
       clone/pull/merge/push operations between git repositories and branches.
       The recommended method of exchanging code between git branches and
       users is git format-patch and git am, or just 'dcommit'ing to the SVN
       repository.

       Running git merge or git pull is NOT recommended on a branch you plan
       to dcommit from. Subversion does not represent merges in any reasonable
       or useful fashion; so users using Subversion cannot see any merges
       you've made. Furthermore, if you merge or pull from a git branch that
       is a mirror of an SVN branch, dcommit may commit to the wrong branch.

       If you do merge, note the following rule: git svn dcommit will attempt
       to commit on top of the SVN commit named in

           git log --grep=^git-svn-id: --first-parent -1

       You must therefore ensure that the most recent commit of the branch you
       want to dcommit to is the first parent of the merge. Chaos will ensue
       otherwise, especially if the first parent is an older commit on the
       same SVN branch.

       git clone does not clone branches under the refs/remotes/ hierarchy or
       any git svn metadata, or config. So repositories created and managed
       with using git svn should use rsync for cloning, if cloning is to be
       done at all.

       Since dcommit uses rebase internally, any git branches you git push to
       before dcommit on will require forcing an overwrite of the existing ref
       on the remote repository. This is generally considered bad practice,
       see the git-push(1) documentation for details.


### Git Branches and SVN -- Caution
I often point folks at this [partial summary of Git branches and SVN](https://git.wiki.kernel.org/index.php/GitTips#How_to_use_git_branches_with_git_svn).  It employs a nice workaround using rebase (re-writing commits) to re-write them cleanly onto the branch you want to `dcommit`.

### Targeting a branch for an SVN dcommit
You can target the branch you want to dcommit to with a

    $ git svn dcommit --commit-url http://ambientideas.com/svn/ai/branches/featurebranch1

### Dry Run
    $ git svn dcommit --dry-run

Let's you see what it will try to commit to like so:

    Committing to http://ambientideas.unfuddle.com/svn/ambientideas_demo/trunk ...
    diff-tree e50848a6a89e7fd3726de7f136612dcd4ef7aa8c~1 e50848a6a89e7fd3726de7f136612dcd4ef7aa8c


### Branch names after SVN clone
You shouldn't have branches beneath remotes/origin/branchname. A git clone like so:

    $ git svn clone --stdlayout http://ambientideas.com/svn/ai/

should yield something like the following:

    $ git branch -a

    * master
      remotes/featurebranch1
      remotes/featurebranch2
      remotes/tags/AGOODPOINT
      remotes/trunk

Then, a change to featurebranch1 would be:

    $ git checkout featurebranch1

    Note: checking out 'featurebranch1'.

    You are in 'detached HEAD' state. You can look around, make experimental
    changes and commit them, and you can discard any commits you make in this
    state without impacting any branches by performing another checkout.

    If you want to create a new branch to retain commits you create, you may
    do so (now or later) by using -b with the checkout command again. Example:

      git checkout -b new_branch_name

    HEAD is now at f89df06... Fixing a FB1 bug

    $ ls
    anewfile.java           featurebranch1file.txt  newfile.txt
    anewfile2.txt           mattfile.txt
    config/                 myfile.txt

    $ echo //STUFFFORFEATUREBRANCH >> anewfile.java
    $ git commit -a -m'Feature branch work'
    [detached HEAD 5c7b812] Feature branch work
     1 files changed, 1 insertions(+), 0 deletions(-)

    $ git svn dcommit
    Committing to http://ambientideas.unfuddle.com/svn/ambientideas_demo/branches/featurebranch1 ...
        M   anewfile.java
    Committed r22
        M   anewfile.java
    r22 = c0812af7b003b4335654c5e1893b9a996a77e53e (refs/remotes/featurebranch1)
    No changes between current HEAD and refs/remotes/featurebranch1
    Resetting to the latest refs/remotes/featurebranch1

----------------------------------------------------------------------------

## File Mode (RW, X)

### Disable File Mode
Configure the filemode to `false` so as not to pay attention to file mode changes. Note that Git only supports 644 and 755 for files.  755=`rwxrw_rw_`. 644 = `rw_r_r_`. In short, Git only pays attention to the executable bit. The leading three symbols indicate if this is a blob, folder, or submodule.

    git config core.filemode false

From the official Git documentation:

> If false, the executable bit differences between the index and the  working copy are ignored; useful on broken filesystems like FAT. See git-update-index(1). True by default.

### Reverse File Mode
To automate the reversal of executable files that were converted to X back to just RW:

    git diff --summary | grep --color 'mode change 100755 => 100644' | cut -d' ' -f7- | xargs -d'\n' chmod +x

or to automate the conversion of files that were changed to RW back to X:

    git diff --summary | grep --color 'mode change 100644 => 100755' | cut -d' ' -f7- | xargs -d'\n' chmod -x

----------------------------------------------------------------------------

## Pruning Tracking Branches Missing from Upstream
* Several ways to prune this.
* Git doesn't prune because it is paranoid of delting anything
* `git fetch -p`
* or
* `git remote prune <origin>`

## Retrieving Tags
* Normally, tags are fetched.
* But not when they don't point to objects that are part of the main graph
    * "tags that do not point at objects reachable from the branch heads that are being tracked will not be fetched by this mechanism"

    git pull -t
or
    git config remote.<name>.tagopt <setting>

## Git Exclude (Alternate Ignore Method)
Put an ignore pattern into:
.git/info/exclude


## Sparse Checkout
http://vmiklos.hu/blog/sparse-checkout-example-in-git-1-7

Sparse checkout is now part of git-1.7.0. See here on what it is in general. Basically something what svn already knew for years and git did not. And of course git now does it better, since this way it's possible to checkout multiple sub-directories, not just a single one, what svn allows. Here is a short example:

    $ git clone ~/git/git
    $ cd git
    $ ls|wc -l
    361
    $ git config core.sparsecheckout true
    $ echo ppc/ > .git/info/sparse-checkout
    $ echo perl/ >> .git/info/sparse-checkout
    $ git read-tree -m -u HEAD
    $ ls
    perl/  ppc/

## Verbose Pre-Commit Diffs
* git commit -v
* Verbose diffs in commit message


## Stashes
* Starting a branch from a stash
* `git stash branch branchname stashname`


## Case Insensitivity
* Recent builds of git in the 1.7 series have improved the support of case insensitive filesystems on Windows, Mac OSX and Linux alike.
* Previously, the gitignore mechanism didn't pay proper attention to case insensitivity, if enabled.

    git config --global core.ignorecase


## Keep file when removing from version control
Either variation results in the same outcome. The local file is kept, but the file is staged as being removed from version control.

    git rm --cached FILENAME

    ## or an alternate switch with the same meaning
    git rm --keep-local FILENAME


## Delete a remote tag
Deleting a tag is much like deleting a branch but with a bit more information in the prefix to the tagname:

    git push origin :refs/tags/VITRUE1



## Similarity Index
Git merge with rename threshold
1.7.4 option

    git merge -Xrename-threshold=50% ...

    git log -M
    git log -C

50% default threshold "similarity index"

    git diff HEAD -M
    git diff --staged -M

Show how copies are also detected

The default "recursive" merge strategy learned the `--rename-threshold` option to influence the rename detection, similar to the -M option of "git diff".  From the "git merge" frontend, the `-X<strategy option>`  interface, e.g. "git merge -Xrename-threshold=50% ...", can be used to trigger this.




## Get GitHub Access Key from Mac Keychain
Defunkt shows you how
http://help.github.com/working-with-key-passphrases/
Shown in GitHub wiki on server access keys page?


## Git Commit Message Subject Lines
[More important than the mechanics of formatting the body is the practice of having a subject line](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html). As the example indicates, you should shoot for about 50 characters (though this isn’t a hard maximum) and always, always follow it with a blank line. This first line should be a concise summary of the changes introduced by the commit; if there are any technical details that cannot be expressed in these strict size constraints, put them in the body instead. The subject line is used all over Git, oftentimes in truncated form if too long of a message was used. The following are just a handful of examples of where it ends up:

    git log --pretty=oneline shows a terse history mapping containing the commit id and the summary
    git rebase --interactive provides the summary for each commit in the editor it invokes
    if the config option merge.summary is set, the summaries from all merged commits will make their way into the merge commit message
    git shortlog uses summary lines in the changelog-like output it produces
    git format-patch, git send-email, and related tools use it as the subject for emails
    reflogs, a local history accessible with git reflog intended to help you recover from stupid mistakes, get a copy of the summary
    gitk has a column for the summary
    GitHub uses the summary in various places in their user interface

The subject/body distinction may seem unimportant but it’s one of many subtle factors that makes Git history so much more pleasant to work with than Subversion.


## Auto-Correct Misspelled Commands
When [commands are misspelled](http://stackoverflow.com/questions/5167367/how-can-i-make-git-do-the-did-you-mean-suggestion) such as:

    $ git puhs

Git says:

    git: 'puhs' is not a git command. See 'git --help'

    Did you mean this?
          push

What is the config setting to make git just do the suggested command if it only has one suggestion ?

    According to git-config(1), you want to set `help.autocorrect` appropriately. For example, `git config --global help.autocorrect 5` will make it wait half a second before running the command so you can see the message first.



## Re-writing Author Names
Most approaches use [`filter-branch`](http://www.kernel.org/pub/software/scm/git/docs/git-filter-branch.html). This re-writes history. This should be approached with caution. A very edgy approach uses a feature called [`git replace` available since 1.6.5](http://stackoverflow.com/questions/3401732/git-rewrite-author-in-history).

    $ git replace <ID of wrong commit> <ID of corrected commit>

Find the offending commits by email via:

    $ git log --author=user@wrong.email --all

GitHub's [solution](http://help.github.com/changing-author-info/):

    #!/bin/sh

    git filter-branch --env-filter '

    an="$GIT_AUTHOR_NAME"
    am="$GIT_AUTHOR_EMAIL"
    cn="$GIT_COMMITTER_NAME"
    cm="$GIT_COMMITTER_EMAIL"

    if [ "$GIT_COMMITTER_EMAIL" = "your@email.to.match" ]
    then
        cn="Your New Committer Name"
        cm="Your New Committer Email"
    fi
    if [ "$GIT_AUTHOR_EMAIL" = "your@email.to.match" ]
    then
        an="Your New Author Name"
        am="Your New Author Email"
    fi

    export GIT_AUTHOR_NAME="$an"
    export GIT_AUTHOR_EMAIL="$am"
    export GIT_COMMITTER_NAME="$cn"
    export GIT_COMMITTER_EMAIL="$cm"
    '

A `commit-filter` [solution](http://stackoverflow.com/questions/750172/how-do-i-change-the-author-of-a-commit-in-git):

    git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "<Old Name>" ];
        then
                GIT_COMMITTER_NAME="<New Name>";
                GIT_AUTHOR_NAME="<New Name>";
                GIT_COMMITTER_EMAIL="<New Email>";
                GIT_AUTHOR_EMAIL="<New Email>";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD

A [solution that uses `env-filter`](http://stackoverflow.com/questions/750172/how-do-i-change-the-author-of-a-commit-in-git):

    git filter-branch -f --env-filter "GIT_AUTHOR_NAME='Newname'; GIT_AUTHOR_EMAIL='newemail'; GIT_COMMITER_NAME='Newname'; GIT_COMMITTER_EMAIL='newemail';" HEAD


## Subtree & Large Files
How can we track large files in Git without bloating the repo?  There are several approaches, but one of these is [subtree merges](http://h2ik.co/2011/03/having-fun-with-git-subtree/).



## Committer and Author
* How do both fields get populated?
* Cherry-pick
* Patch apply
* Any other way?

## Cherry picking bug fixes and other nuggets of code in both linear and rebase workflows.
* Cherry pick from customer branch
    * Can be picked from anywhere
* Interactively rebase and edit on the desired commit
    * Amend that commit
    * Rebase continue

## Building custom commands via aliases and shell scripts.
* gc_recursive
* finddirtygit
* servehere
    * git daemon --export-all --base-path=. --enable=receive-pack
    * git fetch git://


## Internals
* Create a Git commit with simple tools, no Git commands


## Hooks
* Write a Git hook to publish a web site

## Amend
* change commit message
* add missing file
* edit incorrect file
* remove file
* restore old state of file

## Ignores
* Find ignored files list alias
* ignore add on command

## Direct Ref Manipulation
* update-ref
* symbolic-ref

## JGit
* Platform independent Git in Java
* http://wiki.eclipse.org/JGit/User_Guide
* Tool integration and CLI

## Gerrit
* Code review system
* Has its own SSH git server
* Ships as a war file
* Integrates with CI servers like Jenkins
* Google initiated
* Java based
* JGit driven
* Pre-tested commits with CI integration
* http://gerrit-documentation.googlecode.com/svn/Documentation/2.2.0/index.html


## Tracking
* How to manually fix /.Git/configuration for tracking a branch created locally
* `git branch --track` when the auto-track won't work due to ambiguity in remotes
* What branch checkouts get auto-tracked?


## Committer Environment Variables
Set these for a temporary user name to be read by git commands:

    GIT_COMMITTER_NAME
    GIT_COMMITTER_EMAIL

Another strategy is to set them for a single repo (instead of `--global`) with:

    git config user.name "foo"
    git config user.email "baz"

## Tracking for an Existing Local Branch
Most of the time a branch is set to track a remote when `git checkout` sees the checkout requesting a new branch that exists (uniquely) as a remote.

    # List the branches
    git branch -a

    * master
      remotes/origin/HEAD -> origin/master
      remotes/origin/master
      remotes/origin/feature42

    git checkout feature42

    Branch feature42 set up to track remote branch feature42 from origin.
    Switched to a new branch 'feature42'

And if a branch is ambiguous in its checkout, it won't use the automatic behavior.

    # List the branches
    git branch -a

    * master
      remotes/https/master
      remotes/https/feature42
      remotes/origin/HEAD -> origin/master
      remotes/origin/master
      remotes/origin/feature42

    # Attempt to checkout the branch, but it is ambiguous which one we mean
    git checkout feature42

    error: pathspec 'feature42' did not match any file(s) known to git.

If a branch already exists locally and should begin tracking a remote branch, you can

    git branch --set-upstream feature42 origin/feature42

    Branch feature42 set up to track remote branch feature42 from origin.

-----------------------

## Day Two

### Git Stash
* Using Git Stash
* Listing from stashes
* Patch mode stash

### Tags
* Reference
* Annotated
* Signed

### GUIs
* gitk
* git log --graph

### Bisect
Binary search through history.

### Rerere: Minimizing Repetitive Conflict Resolution
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

### Grep
Searching through a specific revision.

### Submodules
* Git repos nested in Git repos.
* Greg noted you don't use these frequently at BBN.

### Rebase (Traditional Branch to Branch)
* Branch to branch
* Two divergent branches
* Rebase the topic branch on the master branch
* Rebase --onto

### Rebase (Interactive) Basics
* Review of Interactive rebase verbs (squash, edit, reword)
* Always `rebase --continue`

### Advanced Interactive Rebase
* Separating one commit into two with interactive rebasing
* Rebase a range that contains the splittable code
* `git reset HEAD^`
* Then commit
* Then `rebase --continue`

### Interactive Rebase (Autosquash)
* Rebase `autosquash` and `fixup`.
* `git rebase -i --autosquash`
* The "squash! ..." or "fixup! ..." message phrase has to match identically to an existing commit.

### Cherry Pick
* Benefits
* Downsides (loss of merge fidelity)
* -x option switch for traceability
* How to avoid the need cherry-pick
* Cherry pick in the context of release and development branches

> Greg: basically we develop on master (with feature branches off master), and then merge them when they pass regression test. That's easy. Then we have release branches, and people need to understand why when you are fixing a bug intended for a release that you should create the feature branch off the release branch, so that our normal 'merge release to master' workflow avoids the need for cherrypicks. Basically, think and act to reduce cherrypicks in favor of normal merges.

> Greg: Also cherrypick w/o -x to construct what you want to publish/commit when you are going to throw out the other one. eg. when you have a fix branch on master and you decide you want it on release, cherrypick no-x to a branch off release, then merge to master, drop origainl branch.

## Inserting Commits Into Existing History
Interactively rebase and edit on the desired commit

    git rebase -i <startingref>
    # Edit the recipe and mark the commit you want to insert before with an "EDIT""

    #Amend that commit
    git commit --amend

    #Or bring in a commit
    git cherry-pick

    #Rebase continue
    git rebase --continue

### Merges
* Maintaining meta-data
* Reverse merges
* Fast-forwards
* Loss of information on fast-forwards
* Merge squash (totally flatten)
* Another option: Duplicate branch, then flatten

> Greg: Basically, we merge master to feature branches. Then when we merge back we do --no-ff. i want the first parent history to be individual commits on master and merges of branches, so it makes sense. And particularly to avoid the flipped parents of a ff merge of feature to master following merge of master to feature, because even serious git weenies have trouble following the history in that case (esp. when there's other complexity).

### Branch Pull Options
* Pulled branches _merge_ in to the local branch by default.
* Branches can be requested to rebase on an ad-hoc basis with`git pull --rebase`
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


### Git Log
* Basic log use
* Treating Git repos like a database
* Advanced Git log queries

### Git diff
* Basics review
* Format options (whitespace, etc.)
* Filtering
* Unstaged, Staged, HEAD

### Parents
* Caretspec
* Tildespec
* ..
* ...
* Parents on merges (order matters, multiples are possible)

----------------------------

# Reusable outline fragments

* Common Branching Strategies
* Branching Models
* Applying Branching Strategies
  * `git branch --contains <ref>
  * `git branch --merged`
  * `git branch --no-merged`
  * github way, master is deployable
  * freature branching only with descriptive nmae
  * pushing only, PRs only
  * WIP branch
  * readme branch
  * more than one contributor on a feature branch
* Branch Pull Options
  * `git branch -d`
  * `git branch -D`
  * `git push <remote> :<branch>` to delete remote
* Reusing Small Pieces of Code
  * cherry-pick
  * cherry
  * how comparison of patch-id works
* Inserting Commits Into Existing History
  *
* Building Custom Commands via Aliases
  * git config <scope> alias.<name> <command>
* Undoing and Re-doing Almost Anything
  * `git reflog`
* Minimizing Repetitive Conflict Resolution
  * `git config --global rerere.enabled true`
* Log History Searches
  * `log --grep=<pattern>` commit message search
* Advanced Interactive Rebase
  * `-r` reword
  * `-f` fixup
  * re-ordering
  * deleting
  * --autosquash -i
    * `fixup! <pattern>`
    * `squash! <pattern>`
    * Subject must match, line break between message body
* Commit Data Structure Internals
  * diagram of commit-->tree-->blob
  * `ls-tree`
  * `cat-file`
  * `ls-files`
  * zlib inflate, deflate
* Refspecs

Enabling Git users to effectively migrate repositories from other formats.
Facilitate history modification of Git repositories.
Establish time-tested branching and merging strategies.
Enhance knowledge of Git tools to simplify history.
Search Git history with ease and precision.
Move to and reuse code on other branches via commits and tags.
Understand Git’s tagging and GPG signing process.

* Rebase
  * --continue
  * --skip
  * --abort
* Rerere
  * rerere.enabled true
* Branches
  * branch --merged
  * branch --no-merge
  * Delete without prune: push :branchname
  * `branch -m <oldbranch> <newbranch>`
* Remote (stuff)
  * `git remote show <remotename>`
  * `remote prune` (Mention push --prune, pull --prune)
  * git config push.default simple
  * git config push.default matching
  * git push --prune <remote>
* Tricks to Proficiency
  * Staging
    * `add -A` staging everything changes that's been tracked
    * `add -u` staging deleted files
    * `add -p` interactive patch for hunks
  * Merging
    * `checkout --ours <file>` (local variation)
    * `checkout --theirs <file>` (incoming variation)
  * Relocating Work
    * branch <feature>
    * reset <wrongbranch>^^^
    * checkout <feature>
    * commit or code here
    * OR
    * stash, checkout <feature>, stash pop
* Searching code in Git
  * `git grep -F "yourstringhere` searches string in code
  * `git grep -p` for showing patches
* Tagging more in-depth?
*  Merging
