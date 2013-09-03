---
layout: bare
title: Git and GitHub Workflows Class
description: Git and GitHub Workflows Online Free Class
tags: [notes, event]
path: classnotes/2013-08-26-online-free-workflows-class.md
eventdate: 2013-08-26
---

## Trainers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Ben Straub ([Twitter](https://twitter.com/benstraub), [GitHub](https://github.com/ben))

# Git and GitHub Workflows

Date: 2013-08-26  
Kind: Free GitHub Class  
What: A free class given on 2013-08-26 and progressively migrated to a full screencast and in-person class over the coming months.  
Signup: http://training.github.com/web/free-classes/

__Topic:__  
**All About Git Workflows**

__Description:__  
When working with Git and GitHub, a common question is, “What is a good workflow?” Join us for an exploration of the pros and cons with git-flow and the GitHub Flow, branching patterns and merging strategies, as well as the nuances of rebasing and version history. See real-world scenarios and live demos to help make informed decisions that might work well for your team.

## Slides

[Slides on Speakerdeck](https://speakerdeck.com/matthewmccullough/git-and-github-workflows)

## Research

* [Git Branching and Merging Strategies video by Mike Jansen](http://www.youtube.com/watch?v=to6tIdy5rNc)
* [Power your Workflow with Git by Gallant Games](http://www.youtube.com/watch?v=GYnOwPl8yCE)
* Kent Beck's "Software G Forces" talk
    * [Software G Forces: The Effects of Acceleration](http://www.youtube.com/watch?v=KIkUWG5ACFY) on YouTube
    * [Keynote: G-Forces by Kent Beck](https://vimeo.com/33530096) on Vimeo
    * [Software G Forces: The Effects of Acceleration](https://www.usenix.org/conference/webapps11/software-g-forces-effects-acceleration) on Usenix 
    * [A Software G-Forces Experiment](http://learningagileandlean.wordpress.com/2012/10/03/a-software-g-forces-experiment/)
    * [Software G Forces - Slides](http://www.slideshare.net/KentBeck/software-g-forces)

## Number and Purpose of Branches

Numbered:

* 1 branch (always committing right to trunk, master, main/latest)
* 2 branches (master and feature branches, akin to the Pull Request based GitHub Flow)
* 3 branches (master, integration, and feature branches)
* 3+ (long running feature branches, maintenance, hotfix branches, bug fix branches, integration branches)

Named:

* master + feature (GitHub Flow)
* master + feature + hot fix
* master + stable + integration + qa + feature + hot fix

# Duration/Branch life/Release cycles

* intra-day
* daily
* weekly
* monthly
* quarterly

Could be driven by regulation. We've seen it constrained by governmental rules.  See Kent Beck's G Forces talk for some relevant information.

# Merge Targets:

* Merge what onto what?
* Feature onto master? The GitHub way.
* Feature onto integration? The more cautious way.
* PRs and integrated testing of the PRs can use the pre-merged ref on the server as the commit hash to test.
    * [GitHub Commit Status API](https://github.com/blog/1227-commit-status-api)
    * [TravisCI](https://travis-ci.org)
    * [Gist of pulling PRs locally](https://gist.github.com/piscisaureus/3342247) with an additional refspec.

## Described processes

* [Git Project itself](http://git-scm.com/docs/gitworkflows.html) (named playgrounds)
* [Linus' comment about rebasing](http://www.mail-archive.com/dri-devel@lists.sourceforge.net/msg39091.html)
* [Matthew's bookmarks on the topic](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Tools

* [Legit - easier Git CLI](http://www.git-legit.org)
* [Gerrit code review tool](https://code.google.com/p/gerrit/)
* [git-flow CLI](https://github.com/nvie/gitflow)

## Processes

* [gitworkflows Manual Page ](https://www.kernel.org/pub/software/scm/git/docs/gitworkflows.html)
* [Git workflow by The Diaspora Project](https://wiki.diasporafoundation.org/Git_Workflow)
* [Understanding the Git Workflow](https://sandofsky.com/blog/git-workflow.html)
* [Git Workflows by Yan Pritzker](http://documentup.com/skwp/git-workflows-book)
* [Git Branching - Branching Workflows](http://git-scm.com/book/en/Git-Branching-Branching-Workflows)
* [HubFlow: The GitFlow Tools Adapted For GitHub](http://datasift.github.io/gitflow/TheHubFlowTools.html)
* [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)

## Related Tactics

* [Feature Toggles](http://martinfowler.com/bliki/FeatureToggle.html)

## Documentation

* [Git Branching - Branching Workflows](http://git-scm.com/book/en/Git-Branching-Branching-Workflows)
* [Distributed Git - Distributed Workflows](http://git-scm.com/book/en/Distributed-Git-Distributed-Workflows)
* [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)
* [Git Workflows](https://www.atlassian.com/git/workflows)

------------------------------------------------------------------

# Office Hours on 26 August 2013
* Matthew McCullough
* Ben Straub

# SVN Externals, Submodules

* Reuse
* Git == submodules
* Links SVN externals to Git submodules
* 1.8.x follows the master branch (branch tip) of the submodule
* Git allows for pointing to top level project (repository)
* Submodules can be tricky to use, but can be the right thing
* Updates (update to a specific version), git pull --recurse-submodules
* Getting them set up is a bit tricky
* Made smoother with `git clone --recurse-submodules`
* PAUSE

# Conflicts

* Conflict marker `<<<<`
* Not smart enough to merge it for you (combine)
* This is Git giving you a "block" from each "source"
* Git is telling you to find markers and make the decisions of what to keep
* Some tool help (`git mergetool`, `git difftool`)
* Visual merge tools integration with Git
* You can use p4merge, opendiff, beyondcompare, vimdiff, ediff, araxis

# Submodules & Rebasing

* Rebasing is a step-by-step replay
* What subcomponent version do I want "now"
* Submodules at the top level
* Logic adaptable to the presence or absence of the submodule
* Focus on tagged and branch HEADs being correct
* Ben: Fundamentals - link to another project like `<a>` at a specific version
* Hard dependency graph problem. See: maven, brew, bundler

# Small 2 Dev Team Code Sharing Pattern

* Push to master == deployed to production automatically
* Development or staging branch as "playground" not ready for production
* Git should be your sync protocol
* `git pull`
* Plugins to Jenkins, Hudson, TeamCity, TravisCI for OSS and commercial (integrates tightly with GitHub)
* Builds the pull-requests so you know merge result in advance

# Git Flow as a Workflow

* https://github.com/nvie/gitflow
* GitHub Flow workflow
* Large PHP project maintainer uses this pattern
* http://martinfowler.com/bliki/FeatureToggle.html
* Releases spaced apart in time (git-flow may work well)
* GitHub.com the web site has 10-20 deploys to production per day
* Roll forward instead of rolling back (for GitHub)
* Hubflow http://datasift.github.io/gitflow/TheHubFlowTools.html

# Command Line Augmentation with Git Info

* z shell (bash ++)
* oh-my-zsh (plugin manager)
* gozilla theme
* Two line prompts
* Git status in the CLI
* Ruby versions, Java versions
* Solarized theme for Ben (nice colors, chosen for visibility)
* Powershell on Windows gives nice prompts too
* Posh-Git for PowerShell - Keith Dahlby

# Merge vs. Rebase

* Tricky question. Asked frequently.
* Combining work in Git is the big question.
* Should know how to use both.
* Affected by philosophy of how you build, merge, code, ship.
* What should the history reflect? Truth? Immutable? Never change?
* Mercurial supports the idea of "never changing history"
    * Embeds branch names in commits in Mercurial
    * Prevents changes to history unless you strongly coerce it
* Git thinks of branches and commits as more mutable
* Git thinks of history as a chance to make a readable history
* If you want to rebase, ensure that you have not shared the rebasing-commits, or you've notified all the dependent persons (communication needed)
* Rebase helps make history more linear
* GitHub employees and tooling like Pull Requests primarily do merge commits.
* But open source maintainers might ask you to rebase locally.
* Rebasing "loses" that "merge" time and instead looks like a series of changes (just steps in a long sequence of code changes)

# Editors
* Git plugin for Sublime
* Fugitive for Vim (Tim Pope)
* Emacs has Magit

# Terminal
* "Is zshell > Sublime?"
* Command line where you enter commands like `make` and `git add .` and zshell enhances that with completions, smart history, automatic escaping of certain chars found in URLs, etc.
* Sublime is a popular editor for specific text and source files.

## Chat Transcript

*What is the maximum space that a user can use on the GitHub?*  

There's no hard maximum, but if you're being abusive, we'll contact you to correct the situation.

*What does the command* `rebase` *do exactly?*

That's a big topic. :) This might help: http://git-scm.com/book/en/Git-Branching-Rebasing

*What if two features were modified at the same time in the same place for whatever reason. Does the merge fail and prompt?*  

You would get a merge conflict, I think Matthew will cover that situation soon.

*Will we be able to download this video or watch it after the live webinar?*  

YES! We'll provide links at the end.

*When a fork diverges from its original so far as to no longer make sense as a fork, is it possible and/or desirable to end that relationship?*  

As far as I know there's no way to break a fork relationship in the GitHub UI. But you can create a new repo, push to it, and delete the forked repo. That keeps all the code history, but none of the issues/pull requests.

*When wouldn't it be a good idea to use* `pull --rebase`?  

Well, it rewrites some of your history, so you have to be careful if that history has been shared with anyone else (i.e. if you've pushed the commits in question to the remote). This isn't very common for your workflow, though; `pull --rebase` is pretty safe.

*So rebasing before pushing is safe but rebasing after pushing could be dangerous?*  

Exactly. `pull --rebase` is pretty safe, but be careful with `git rebase`.

*When pulling and a merge conflict occurs we resolve the conflict the whole working directory is not clean but a lot of files are modified (work from co-workers). Is that logical and should we just commit the changes which will then show up in GitHub as a merge-commit? That way it looks like I changed files I didn't.*  

Yeah, that's pretty normal when you're in the middle of a merge. Git is comparing them to the last commit YOU made, but the working directory is full of the work OTHER people did. If you fix the conflict, make the merge commit, and open the merge commit in a history viewer, you'll see only the conflict resolution, because Git can compare with both parents. Does that make sense?

For more reading on rebase that'll answer your last question, http://git-scm.com/book/en/Git-Branching-Rebasing Good luck!

*When using the most basic workflow on our 'development' branch:*

    pull - work - commit - pull - push

*We get a lot of commit's named:* "Merge branch 'development' of github.com:User/Repo into development" *containing lots of modifications made by co-workers. This can be prevented with `pull --rebase` but this does not look like the best workflow. Is there a better one?*  

That workflow actually works pretty well, I use it myself. Another good way is to do work on feature branches, and only merge them when they're done. That way you only get a single merge commit at the end, rather than a bunch of them as you go along.

*When he made the pull request he specified base: master. Is the base the master branch of the teacher's repo?*

You mean the base for the merge? In this case, yes.

*Which terminal is he using where it shows branch names as part of the title?*  

I believe he's using a fancy ZSH prompt. Check out https://github.com/robbyrussell/oh-my-zsh

*Can you go over merging and rebasing and when to use each?*

I believe that'll be covered later on. If not, feel free to come to the office hours, or check this out: http://teach.github.com/presentations/git-foundations.html#/13

*I am a second year grad in Computer Science. What can I gain from this webinar?*

If you're going to be writing code, Git and GitHub are pretty useful. When I was working on my master's degree, I kept all my homework on GitHub.

*Right now, most of the time I write code in console. I think Git is basically for project purposes where many programmers are writing code in a single file. Am I correct?*

It's definitely good for that use case, but it's also good for keeping a timeline of your work. Think of it as an "undo" feature that can go back to before your code even existed. Also, think of GitHub as a secure backup of your work, so if your computer dies in a fire, you won't lose anything.

*What exactly does Travis-CI check? How does it know it breaks my code?*

Travis is a Continuous Integration service. It runs your automated tests for your project every time you make a change.

*Thank you Matthew and Ben!*

Thanks for coming!
