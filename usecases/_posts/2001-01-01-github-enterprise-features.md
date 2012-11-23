---
layout: barewithrelated
title: GitHub Enterprise Features
description: What features does GitHub Enterprise offer that help management in their purchase decision making?
path: usecases/_posts/2001-01-01-github-enterprise-features.md
---

What is [GitHub Enterprise](https://enterprise.github.com/)?  It's all of the features of [github.com](http://github.com) hosted as a virtual machine on your own servers.

## Major Features

Here are the major features of GitHub Enterprise:

* [Git Hosting](https://enterprise.github.com/faq)
* [Collaboration & Project Management](https://github.com/features/projects/collaboration)
* [Wiki's](https://github.com/features/projects/wikis)
* [Issue Tracking](https://github.com/features/projects/issues) - [more details](https://github.com/blog/831-issues-2-0-the-next-generation)
* [Subversion bridge](https://github.com/blog/1239-github-enterprise-11-10-280-release)
* [Windows client app](http://windows.github.com) with "Clone in GitHub for Windows" buttons on repo pages.
* [Mac client app](http://mac.github.com) with "Clone in GitHub for Mac" buttons on repo pages.


## Additional Features

This is by no means a complete list.  GitHub has a lot of nice little features that you learn about over time.

* [Cross Repository Compare View](https://github.com/blog/683-cross-repository-compare-view)
* [Notifications](https://github.com/blog/821-mention-somebody-they-re-notified)
* [Extensible API](https://github.com/blog/879-api-v3-190-methods-to-build-on)
* [Downloads](https://github.com/blog/900-nodeload2-downloads-reloaded)
* [Inline Code Editing](https://github.com/blog/905-edit-like-an-ace)
* [Event Hooks](https://github.com/blog/964-all-of-the-hooks)
* [Multiple People Per Ticket](https://github.com/blog/1004-mention-autocompletion)
* [Auto-Updating Comments](https://github.com/blog/1174-auto-updating-comments)
* [Subversion Client Support](https://github.com/blog/1178-collaborating-on-github-with-subversion)
* [Searching and Filtering Stars](https://github.com/blog/1236-searching-and-filtering-stars)


## Features in Detail

Here is a summary of some of the features, both major and minor, found in GitHub Enterprise.  GitHub is far more than just a place to put Git repos to get them off of your laptop.  Some of the features of GitHub Enterprise include:

### Visualizations
* A visual layer to the social activities that are going on in your source code.
* Visualizations of activity that are informative, but not draconian. "Who has most recently contributed to this project?" "Who are the contributors to this file?"  "What languages are used in this repo?"

### Developer Tools
* In-browser editing of files for small changes.
* In-browser merging of pull requests.
* In-browser visualization of fork positions relative to the primary repository.
* In-browser view of all changes to a file throughout its history
* In-browser "blame" view-- see which author wrote each piece of code line by line
* Collaborative coding through a web UI that doesn't require downloading of the code to the desktop.
* The ability of any permitted team member, no matter their skill, to fork code, edit it, and send a pull request in a controlled manner (not just the grant-them-access-to-the-core-repo approach).
* HTML5 image diff (no plugin required)
* Keyboard navigation in a web app (just hit ? for details)
* Extensible API allows you to perform various GitHub functionality programatically
* Service Hooks allow you to integrate in and notify 3rd party resources such as Jira and Jenkins when actions within GitHub occur.  There are many, many supported 3rd party resources that are supported, and they provide an Open API so that you are able to write your own if needed.

### Management Tools
* Allows you to watch repositories and follow users to generate activity streams.
* Activity streams show you everything important that’s happening with anyone or anything on GitHub
* Collaborative coding through a web UI that doesn't require downloading of the code to the desktop.
* The network graph is available on every repository on GitHub. It gives you as a project maintainer an at-a-glance understanding of the activity on your source code across all developers interested in it
* Many different clients available to do everything from browsing issues to monitoring activity

### IT/Server Administrator Tools
* LDAP & CAS Authentication supported, but can also stand on it's own
* Installs as a virtual machine under VMWare, IBM POWER, or VirtualBox
* Able to restart individual services rather than just the whole VM
* [SSL is used everywhere](https://github.com/blog/738-sidejack-prevention-phase-2-ssl-everywhere)

## Partial Listing of Clients

There are many options for both managing source code on GitHub as well as keeping up with activity streams outside of just using git or a web browser.  Here are a few examples:

### Official Clients
* [GitHub Mac Client](http://mac.github.com/)
* [GitHub Windows Client](http://windows.github.com/)
* [GitHub Issues for iPhone](https://github.com/blog/904-announcing-github-issues-for-iphone)
* [GitHub Eclipse Plugin](http://eclipse.github.com/)

### Unofficial Clients

* [Unoffical GitHub Client for iPhone](https://github.com/dennisreimann/ioctocat)
* [Unofficial GitHub Client for Android](http://www.gandroidmix.com/hubdroid/)
