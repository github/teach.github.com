---
layout: barewithrelated
title: Advanced Git & GitHub Online Course
description: An advanced Git talk delivered to online audiences over three hours.
path: courses/_posts/2001-01-01-git-and-github-advanced-course.md
---

Once you've spent some time getting to know Git and GitHub, you'll be interested in finding that next level of productivity with these two tools. This class provides precisely that _next level_ of Git and GitHub education. This class is tuned for maximum benefit to students such as yourself that have spent several months in hands-on use of these tools.

## The `hub` gem

We'll begin with a look at the helpful [`hub` command line tool](https://github.com/defunkt/hub) that can create, open, and browse repositories in addition to diffing arbitrary hashes and forking repos. CLI afficianandos will enjoy the return to the console, doing what they thought was only possible in the web browser.

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
