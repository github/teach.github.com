---
layout: barewithrelated
title: GitHub Issues Quick Reference
description: Quick reference for GitHub Issues (bug tracking).
path: cheatsheets/_posts/2001-01-01-github-issues-cheatsheet.md
tags: [reference, cheatsheet]
---

* An Eclipse article on [tips and tricks of using Eclipse with GitHub](http://eclipsesource.com/blogs/2012/08/28/tips-and-tricks-using-eclipse-with-github/), including the use of the Mylin connector.
* The [GitHub Eclipse](http://eclipse.github.com) page.

## Comment message keywords

GitHub [Issues 2.0](https://github.com/blog/831-issues-2-0-the-next-generation) supports manipulating the state of issues with keywords in commit messages.

In addition to `#<issue_number>`, several other annotations can be used in a Git commit. For example, if you say `fixes #<issue_number>` in a commit message, the issue will be automatically closed when the commit is pushed back to GitHub.  Other synonyms include:

    fixes #xxx
    fixed #xxx
    fix #xxx
    closes #xxx
    close #xxx
    closed #xxx
