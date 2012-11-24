---
layout: bare
title: Vintage Dates for Git Commits
description: Setting vintage dates for new Git commits.
path: technology/_posts/2001-01-01-lesson-forcing-vintage-commit-dates.md
---

Git uses the local clock setting for author and committer dates. Occasionally, when importing legacy projects that have nothing other than the file system date, there's a reason you would want to manually set the date for a commit.

The tempting first option is to use the `--date` option when making commits.

    git commit --date="Wed Feb 16 14:00 2037 +0100"

However, this only sets the `GIT_AUTHOR_DATE`, not the `GIT_COMMITTER_DATE`.

Alex Peattie has the solution in his [blog post](http://www.alexpeattie.com/blog/working-with-dates-in-git/) on working with dates in Git.

----------------

_This article was inspired by [Jon Rohan putting his old college assignments](https://twitter.com/jonrohan/statuses/247140239934627840) into GitHub repositories._
