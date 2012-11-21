---
layout: barewithrelated
title: Advanced Git User Group Course
description: An advanced Git talk directed at User Groups.
path: courses/_posts/2001-01-01-git-advanced-usergroup-course.md
---

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


## Other Resources

* [Workshop Guide to Git Commands](https://github.com/githubtraining/git-workshop/tree/master/workbook/htmls)
* [Matthew's gitconfig](https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig)
* [Slides](https://speakerdeck.com/u/matthewmccullough/p/using-git-and-github-effectively-at-emerge-interactive)
