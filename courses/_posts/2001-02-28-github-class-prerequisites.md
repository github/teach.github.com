---
layout: barewithrelated
title: GitHub and Git Class Prerequisites
description: Installation, setup, and configuration prior to attending a GitHub and Git workshop.
path: courses/_posts/2001-02-28-github-class-prerequisites.md
tags: [email, reference, resource]
---


This document outlines the requirements for preparing your account and laptop prior to class.  It may be required that you escalate to administrative privileges for the tool installations. It is common for development tools to require administrative privileges at installation time.

1) Establish a GitHub.com Account
----------------------------------------------------------
We'd like you to establish a GitHub account to facilitate hands-on practice of the network flow components of Git during class.  A free account can be established at the
[GitHub Signup Page](https://github.com/signup/free). We also recommend that you [take a look at our supported browsers](https://help.github.com/articles/supported-browsers) after you signup to ensure the best experience.

**Please keep your username and password close at hand. You'll use it several times during class.**

It is best if you use a valid email address for your _GitHub.com_ signup at which you can receive email during class. Demonstrations of code comments and [Pull Requests](https://help.github.com/articles/using-pull-requests) work best when you can see them functioning end to end, including email-based notifications.

2) Install the Git Command Line and Desktop Program
-----------------------------------------------------------------------------
We'll need a command line version of Git for use during class. The following steps and our [GitHub Git Installation Help Page](https://help.github.com/articles/set-up-git) describe how to test and accomplish that installation. You can bypass the SSH setup steps if you wish.  We'll focus on using HTTPS during our class.

We request that you use [version 1.7.9](https://github.com/git/git/blob/master/Documentation/RelNotes/1.7.9.txt) or newer to correctly handle interactive authentication when using HTTPS as the repository access protocol.


### Common to all Operating Systems
1. It is absolutely best if Git is version _1.7.11_ or higher to match the behavior of your instructor's machine. However, no actual repository incompatibilities will be encountered during class if your installed version is _1.7.9_ or newer.
2. Git's version can be queried by running `git --version` at the terminal or command prompt.

### For _Windows_ Machines
Download the installer from <https://windows.github.com>. This provides the Git Shell running latest version of Git and a Windows graphical user interface.

### For _Mac OS X_ Machines
Download the installer from <https://mac.github.com>. This provides a Mac OS X  graphical user interface and optional setup of GitHub and Git command line utilities.

__Checking Git Installation__

Your Mac may already have Git installed. To verify, follow these steps:

1. The location of the installed Git can be found with the command `which git`.
3. If `usr/bin/git`, it was likely installed by Apple or [Xcode](https://developer.apple.com/xcode/).
4. If `usr/local/bin/git` it was likely installed by [Homebrew](http://mxcl.github.com/homebrew/).
5. `PATH` order may need to be modified to get the newly installed Git in "front" of other Git installations.

### _Linux_ Machines
1. Git will likely already be installed. It is present in most modern Linux distributions.
2. Package managers such as _Synaptic_, `yum` and `apt-get` are the best way to install and update Git.
3. The Git source code can be obtained and compiled from the [Git mirror on GitHub](https://github.com/git/git).


3) Skim the ProGit Free eBook
-----------------------------------------------------------------------------
Optionally, you can read several [free ProGit book](http://git-scm.com/book) chapters. The more knowledge you bring to the table on class day, the more we maximize the return on investment for the time spent learning together.  These selected chapters form a great introduction.


* [Section 1.4 - Installing Git](http://git-scm.com/book/en/Getting-Started-Installing-Git)
* [Section 1.5 - First Time Git Setup](http://git-scm.com/book/en/Getting-Started-First-Time-Git-Setup)
* [Section 2.1 - Getting a Git Repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository)
* [Section 2.2 - Recording Changes to the Repository](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository)
* [Section 2.3 - Viewing the Commit History](http://git-scm.com/book/en/Git-Basics-Viewing-the-Commit-History)
* [Section 3.1 - What a Branch Is](http://git-scm.com/book/en/Git-Branching-What-a-Branch-Is)

4) Jot Down Some In-class Questions
-----------------------------------------------------------------------------
Jot down a few questions about GitHub and Git.  The class flows best for everyone when we put the materials in the context of your real-world applications of GitHub and Git.
