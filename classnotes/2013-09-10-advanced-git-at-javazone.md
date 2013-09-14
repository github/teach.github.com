---
layout: bare
title: Private Advanced Git Training at JavaZone
description: Private Advanced Git Training Class Notes
tags: [notes]
path: classnotes/2013-09-10-advanced-git-at-javazone.md
eventdate: 2013-09-10
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Resources

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

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.8.0 or higher

## Suggested Books, Articles
* [Free ProGit Book](http://git-scm.com/book)
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)




# JavaZone Advanced Git & GitHub Workshop

Tuesday 10 September 2013  
Timeslot: 13:30 - 17:30  
Instructor: Matthew McCullough

## Description:
Advanced Git & GitHub Half-Day Workshop

Once you've spent some time getting to know Git and GitHub, you'll be interested in finding that next level of productivity with these two tools. This class provides precisely that next level of Git and GitHub education. This class is tuned for maximum benefit to students such as yourself that have spent several months in hands-on use of these tools.

### The hub gem

We'll begin with a look at the helpful [hub command line tool](https://github.com/defunkt/hub) that can create, open, and browse repositories in addition to diffing arbitrary hashes and forking repos. CLI aficionados will enjoy the return to the console, doing what they thought was only possible in the web browser.

### Refspecs

All Git interactions, whether transparently or opaquely, leverage a domain specific language in strings called Refspecs. Knowledge of this language lets you adeptly manipulate the contents of the packs that are sent to and from upstream hosts, and where those received items are stored on disk.

### Notes

You know that Git stores blobs, trees, commits, and tags, but did you know it can also store a parallel stream of notes? These notes can be written and adjusted again and again, categorized by namespace, and even rendered in the GitHub user interface. Notes are supported by automation tools like [Jenkins](http://jenkins-ci.org/) and [its Git plugins](https://wiki.jenkins-ci.org/display/JENKINS/git-notes+Plugin), and can be a powerful supplement of build results and deployment metadata on to an existing commit history.

### ReReRe

Git provides the power of being able to reset-away a less than pleasant merge. But what about all that investment in the merge conflicts that you solved? The rerere option switch and command provides a means of preserving your merge conflict resolutions, even for discarded merges. These can be reused across branches; for example, in the scenario of delivering a common fix to more than one branch.

Git provides the power of being able to reset-away a less than pleasant merge. But what about all that investment in the merge conflicts that you solved? The rerere option switch and command provides a means of preserving your merge conflict resolutions, even for discarded merges. These can be reused across branches; for example, in the scenario of delivering a common fix to more than one branch.

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
    

### Pull requests from the command line

Pull Requests are thought of as a web-based feature of GitHub. However, they are fully accessible, fetchable, and createable from the command line.


### Conflict Resolution
* You are warned
* You choose or merge (right, left, blend)
    * --ours
    * --theirs
    * merge (by blending)
* Signal success of resolution with `git add FILE`
* Merge
    * git commit
* Rebase
    * git rebase --continue

### External merge and diff tools

Merging and diffing with the command line can be effective. But, when an ocean of `<<<<<` symbols is overwhelming, switch to using Git's integration with any visual diff and merge tool. We'll cover how to configure, invoke, and leverage Open Diff and Araxis and talk about how this can extent to Beyond Compare, VimDiff, P4Merge and other similar tools.

### The Reflog

Git's ability to re-write history may seem scary at first. But once you know that [the reflog](http://git-scm.com/docs/git-reflog.html) has a rolling 90 day history of your destructive and creative actions, you'll feel more at ease to use Git's advanced features.

### Three reset modes

The [reset command](http://git-scm.com/docs/git-reset.html) is one of Git's real mysteries. What's the difference between soft, hard, and mixed? We'll show you first hand how and where to best leverage each of these modes.

### Interactive Rebase

Interactive rebasing gives you the ability to shape your commit history prior to sharing it with others. Combine commits, reorder activities, and improve the commit messages with ease.

### Rebase --onto

Rebase, at its core, is the transport of commits from one place in the graph to another. In this workflow example, we'll show how a feature or fix can atomically be transported on to another branch, isolated from potentially muddying earlier commits.

### Signed tags

Tags are a great way to mark a point in time for events such as an official release, or bug fix. However, signed tags can also be merged as of the latest versions of Git, thus providing a means of preserving signed-code integrity, all the way through the merge and delivery process.

### Bisect

The bisect feature of Git is a powerful tool that can be used to search for a regression. It is best paired with a strong unit test suite for complete automated execution, but can also be used in support of a manual search for a difficult-to-automatedly-detect problem, such as a subtle shift in an image. We'll explore this feature using a repository that has a latent defect that is easily found using bisect run.

## Audience Requirements:

* Laptop with Linux, Windows, or Mac OSX
* Git 1.8 or higher installed prior to class
* A GitHub account
* Approximately 6 months or more of hands-on Git experience