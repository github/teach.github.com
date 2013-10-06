---
layout: barewithrelated
title: Git Beyond the Basics
description: An intermediate Git workshop.
path: courses/_posts/2001-02-26-git-intermediate-course.md
---

This full day Git workshop takes you beyond the basic edit, add, and commit workflow to deep Git features that benefit developers appreciative of what Git's flexible DVCS model brings to hard-core software development. You'll learn how to harvest and inspect commit-specific merges, leverage interactive rebase, and search through history with precision and speed. Tags, GPG signatures, and other cryptographic integrity features will become clear, and pushing and pulling will be controlled with newfound precision.

Topics covered include:

* Using `git cherry` and its cousin, `git cherry-pick` to harvest and inspect commit-specific merges.
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

---------------------------------------

## Chat room
    * https://github.campfirenow.com/85193

## Using `git cherry` and its cousin, `git cherry-pick` to harvest and inspect commit-specific merges.
    * cherry
        * compares patch-id, not the hashes
        * commits not upstream are prefixed by a symbol
        * Minus (-) indicates equivalent change upstream
        * Plus (+) indicates change exclusive to HEAD
        * `git cherry <UPSTREAM> <HEAD>`
        * `git cherry feature_subtraction master`
    * cherry-pick
        * pulls in a commit like copy and paste
        * `-x` adds the commit ID in the commit message

## Interactive rebasing with both the traditional squash, reword and edit, in addition to the new fixup and autosquash.
	* `git rebase -i`
	* What is happening with these commits?
	* `squash! ` in commit message
	* `fixup! ` in commit message
	* `git rebase -i --autosquash HEAD~10`
	* `git commit --fixup`
	* `fixup! e83c5163` commit message
	* `git commit --squash`

## Understanding the modes of `git reset` and how it affects, preserves, or destructs the history, index, and working directory.
	* --hard
	* --soft
	* --mixed
	* --merge
	* <http://git-scm.com/2011/07/11/reset.html>

## Searching through history with string, combination, and pickaxe approaches.
	* --author
	* --committer

## Diffing changes past refactorings.
	* `git blame`
	* `git blame -C` to use similarity index

## Finding the original author of methods in refactored and relocated code.
	* `git blame`
	* `git blame -C`

## Administratively shaping history with `git filter-branch` at milestones or after a Subversion import.
	* Move the folder to the top
	* `git clone --no-hardlinks originalrepo filteredrepo.filtersubdirall`
	* `git filter-branch --subdirectory-filter c HEAD`
	* Keep tags and branches
	* `git filter-branch --subdirectory-filter c HEAD -- --all`
	* Use only Git commands
	* `git filter-branch --index-filter "git rm -r -f --cached --ignore-unmatch a b" --prune-empty HEAD`
	* Tag Name Filter
	* `git filter-branch --index-filter "git rm -r -f --cached --ignore-unmatch a b" --prune-empty --tag-name-filter cat -- --all`
	* Remove all a and b folder contents
	* `git filter-branch --tree-filter "rm -rf a b" --prune-empty HEAD`
	* Cleanup
		* `git reflog expire --expire=now --all`
		* `git reset --hard`
		* `git gc --aggressive --prune=now`

## Minimizing repetitive merge efforts with `rerere`.
	* `git config --global rerere.enabled 1`
	* `rr-cache` folder
	* `rerere-train` script in `contrib`

## Controlling pull and push behavior with advanced configuration options.
	* `git push --tags` # All tags
	* `git push --all` # All branches and tags
	* `git push --mirror`
	* `git push --force`
	* `git push origin`
	* `git config push.default tracking`
	* `git config push.default current`
	* `git config push.default matching`
	* `git config push.default nothing`
	* 1.7.11 got `push simple`

## Manually editing the refspec and git config files.
	* Final `*` can only be the trailing element
	* Pulling from a pull request to `FETCH_HEAD`
	* Pulling from a bundle

## Pushing to and pulling from multiple destinations.
Refspecs only allow for a wildcard as the last element, after a slash. It cannot be part of the name itself. For example, a disallowed pattern would be `+refs/heads/t*:refs/remotes/origin/t*` to pull all of TM's and TJ's branches. An allowed pattern would be `+refs/heads/tm/*:refs/remotes/origin/tm/*` to pull only TM's branches.

Refspecs can be given on `push` to change the destination of a push on the remote side. Keep in mind that the pattern is still `<source>:<dest>`, but we're transmitting in the opposite direction than a pull or fetch.

    git push origin master:refs/heads/tm/master

Some types of objects don't sit under the `refs/heads` folder and thus don't get pulled by the default refspec created for a cloned repository. It is easy to fetch things that normally wouldn't get fetched ([but are displayed on GitHub](https://github.com/blog/707-git-notes-display)) by specifying a refspec on the command line, but this can get tedious, time after time.

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


## URL aliases

		[url "git@github.com:"]
			insteadOf = "ghs://"
			pushInsteadOf = "ghs://"

## Tag signing, tag merging, and signed tag business scenarios.
* `git tag`
* `git tag -a`
* `git tag -s`

## Adding Git notes and their effective namespace use.


## Relocating chunks of work with `rebase onto`
* `git rebase --onto branchname`

## Leveraging several other cutting-edge Git 1.7.9 features...
* Credential Caching
	* `git credential-osxkeychain`
    * <https://help.github.com/articles/why-is-git-always-asking-for-my-password>
    * <http://www.kernel.org/pub/software/scm/git/docs/v1.7.9/git-credential-cache.html>
    * `git help credential-cache`
    * `git config --global credential.helper cache`
    * `git config credential.helper 'cache --timeout=150'`
    * `git config --global credential.helper osxkeychain`
	* <https://github.com/blog/1104-credential-caching-for-wrist-friendly-git-usage>
