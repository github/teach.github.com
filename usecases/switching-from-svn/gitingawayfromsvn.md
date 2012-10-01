---
layout: bare
category: usecase
title: Use Case • Switching from Subversion to Git
description: A journey from Subversion to Git and the challenges that are likely to present themselves along the way.
---

# Git-ing away from SVN

If you like using [Subversion](http://subversion.apache.org), that's awesome. We won't fault you for it (a lot). If SVN isn't enough and you'd like to migrate to Git, here's an overview of the 'What', 'Why' and 'How'. 

Maybe a move to Git started with a few questions at work. Change is hard, even in software, and Git usually causes enough concern that a few concerns arise. We'll try to answer those concerns with answers derived from experience.

## Why switch?

Also known as "What's the justification?", the "Why?" question is common in a well established team. You're already using something for version control - maybe it works but gets corrupted every once in a while, or is hard to administer - and introducing Git is feared because the folks in charge are afraid it's only going to get worse. And someone has to appease the folks writing the checks, too.

We've seen this question phrased the following ways (if you have any additional examples, [submit a pull request](https://help.github.com/articles/using-pull-requests)). 

> Please provide justifications for the \[using Git\] (e.g. We should use XXX because..., and XXX is better than the others because ...)
> 

Let's ask [Git itself](http://git-scm.com/about):
> The Git feature that really makes it stand apart from nearly every other SCM out there is its branching model.
>
> Git allows and encourages you to have multiple local branches that can be entirely independent of each other. The creation, merging, and deletion of those lines of development takes seconds.

In practical terms, Git's branching powers may give your developers more options and freedom in their styles of applying version control. Create a branch, blow it away, merge it into master with the world's greatest feature, or submit a simple bug fix. It can all be done with branches and it's only a few clicks and key presses away. And you don't have to worry about being too far out of sync with the one golden master.

Notably, when you push to a remote repository, you do not have to push all of your branches. You can choose to share just one of your branches, a few of them, or all of them. This tends to free people to try new ideas without worrying about having to plan how and when they are going to merge it in or share it with others.

Git can 'free people' to be more productive, to experiment, to solve more problems. We like the sound of that. 

## Justifications

1. [Git has a small disk and memory footprint and is very fast](http://git-scm.com/about/small-and-fast).
2. Distributed version controls gives you [many workflow options](http://git-scm.com/about/small-and-fast). It even naturally created redundant repositories, in case hard drives get lost or corrupted. This [happens more frequently](http://www.zdnet.com/blog/storage/data-corruption-is-worse-than-you-know/191) than you'd like to believe.
3. Git is free. [Git uses a GPLv2 license] allowing for it to be used in any commercial or non-commercial environment. There are free-to-read books such as [Pro Git](http://git-scm.com/book), a popular hosting solution in [GitHub](http://github.com), comprehensive [resources and documentation](http://git-scm.com/documentation/external-links) and even free tools for [graphically working with](http://code.google.com/p/tortoisegit/) or [hosting Git yourself][gitorious]. Check the References section of this page for other hosting solutions.

## Suggested workflows

Git's flexibility is intriguing. But too many choices can also paralyze. If you're workflow is pretty standard practice according to the prescriptions of another version control tool (i.e. check out the repository, make a change, commit it, resolve conflicts), here are a few suggestions and references for Git-based workflows.

### The GitHub Flow

Scott Chacon's [blog post on the 'GitHub Flow'](http://scottchacon.com/2011/08/31/github-flow.html) is a great reference for those looking at potential workflows. It boils down to the following:

* Anything in the `master` branch should be deployable at any time.
* To work on something new, create a descriptively named branch off of master (ie: `new-oauth2-scopes`).
* Commit to that branch locally, and regularly push your work to the same named branch on the server.
* When you need feedback or help, or you think te branch is ready for merging, open a [pull request](TODO).
* After someone else has reviewed and signed off on the feature, merge it into `master`.
* Once it is merged and pushed to `master`, you can and should deploy immediately


### git-flow

In the aforementioned post on GitHub's choice of workflow, Scott starts off by discussing [git-flow](https://github.com/nvie/gitflow) - a set of Git extensions created after a series of ideas laid out by [Vincent Driessen](http://nvie.com/about/) in his blog post ['A successful git branching model'](http://nvie.com/posts/a-successful-git-branching-model/). Scott specifically points out some of the issues with using git-flow, so read the full post to get all the details. You may also want to avoid git-flow as it could [encourage long run feature branches](https://twitter.com/jmctee/status/240495167616978944), unless formal releases on a long scale (months) is part of your plan or requirements.

### The simplest thing that could work

>Git itself is fairly complex to understand, making the workflow that you use with it more complex than necessary is simply adding more mental overhead to everybody’s day. I would always advocate using the simplest possible system that will work for your team and doing so until it doesn’t work anymore and then adding complexity only as absolutely needed. - Scott Chacon

A Google search for ['simple git workflow']() returns over 500k results. Have we mentioned that Git's freedom results in lots of good information being shared all over the place? Whether it's a [hack && ship](http://jonrohan.me/guide/git/dead-simple-git-workflow-for-agile-teams/) or straight out of the [git man pages](http://www.kernel.org/pub/software/scm/git/docs/gitworkflows.html), there's a good starting point for your team out there somewhere. Just take Scott's advice and start with something simple, then level up as needed. 

### Using Git in the desert

What if you can't setup a Git repository or hosting solution where you deliver your code and can only bring in a copy of your repository, in order to be able to make last minute changes? Let's just say we're going on safari and need to deploy some code in the middle of the desert to our [remote controlled robot camera](http://www.burrard-lucas.com/beetlecam).

> TODO: What is a good answer is on this one. Use case is bringing 'unsafe' code into a 'safe' or offline environment.

## Q & A

* How do I manage multiple projects with Git?

	Use a Git hosting solution, like [GitHub][github] or [gitorious][gitorious].

* Can I manage and use common and third party libraries with Git?

	Probably, but a Maven-compatible artifact repository like [Nexus](http://www.sonatype.org/nexus/) or [Artifactory](http://www.jfrog.com/home/v_artifactory_opensource_overview) may be a better option (for Java-based projects at least). 

* Can I use Git to store test data? 

	If by 'test data' you mean 'large binary files that don't often change', then the answer is 'Yes!'. [git-submodules](http://git-scm.com/docs/git-submodule) may be just what you need. 

* How do I manage different development environments (Eclipse, Netbeans, Ant, etc) with Git?

	Hopefully you're not checking in your .project files, right? At any rate, different branches may be what you need here. 

## Git versus the World

Git certainly isn't the only distributed version control tool available. As usual, [there's a wikipedia page][version_compare] with a table outlining the differences between Git and other options (Bazaar, Mercurial, SVN, etc) that may be useful for a quickly spotlighting different options. 

If you have additional feedback on the differences between git and other systems, let us know. 

## I just can't Git you

We get it. Software developers are known to be picky about the tools they use, and rightly so. So if we haven't swayed you with this document, let us know what it is about Git that doesn't work for you. Maybe there is an alternative that just fits better, but if Git can be improved, that's good to know.

Steve Bennett's [blog post on "10 things I hate about git"](https://steveko.wordpress.com/2012/02/24/10-things-i-hate-about-git/) is one approach to doing just that. His blog got a lot of attention in early 2012 and part of that included additional tips and tricks to help ease his pain, so take a look to get his perspective as one example of a rare someone who wasn't enamored with Git. 

## But wait there's more

If you want to stick with SVN, but maybe start to try out Git before you fully commit, there are options. 

[git-svn](http://www.kernel.org/pub/software/scm/git/docs/git-svn.html) is a simple option and comes built in to git itself. There's a [simple overview and guide](http://learn.github.com/p/git-svn.html) over at Github itself if you're interested. But be aware that there are limitations that you should understand before you go too far down this path.

Thankfully, the idea of using git and SVN together is popular enough to warrant several solutions. [SubGit](http://subgit.com) offers "smooth, stress-free Svn to Git migration". And it runs on the server side, so you can avoid client-side tweaks and some of the other major limitations of git-svn. If nothing else, SubGit offers great "let's give it a shot" potential that may be enough to eventually win over those in doubt.
 
## References

### Internal Hosting

We all wish we could use [GitHub] [github]. If you're behind a firewall or in a restrictive environment, though, the public Internet site may not work. 
Thankfully, [GitHub] [github] offers an [enterprise version](https://enterprise.github.com) that gives you the best of both worlds. [@devnulled's GitHub Enterprise overview](https://github.com/github/teach.github.com/blob/gh-pages/resources/GitHub-Enterprise.md) has lots of good reasons why GitHub Enterprise could benefit your team and organization.

Here's a few other options for hosting Git yourself:
* [Gitorious][gitorious] - "The Git hosting software that you can install yourself."
* [Gitlab](http://gitlabhq.com) - a Rails based solution for hosting Git. Fast, secure and stable with releases every month.
* [Gitolite](https://github.com/sitaramc/gitolite) - control everything yourself using gitolite. All it needs is git, perl, openssh and a *nix distro and you're off and running.

### Links

[GitHub][github] - the best place to share code with friends, co-workers, classmates, and complete strangers. 

[github]: http://github.com "GitHub"


[10 things I hate about git][10-things] - "10 things I hate about git"  

[10-things]: https://steveko.wordpress.com/2012/02/24/10-things-i-hate-about-git/ "10 things I hate about Git"


[Comparison of Version Control Software][version_compare] - Wikipedia

[version_compare]: http://en.wikipedia.org/wiki/Comparison_of_revision_control_software


[gitorious]: http://gitorious.org

[gitimmersion]: http://gitimmersion.com
