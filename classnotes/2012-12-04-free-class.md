---
layout: bare
title: GitHub Free Class and Office Hours (December 2012)
description: GitHub Free Class and Office Hours (December 2012) class notes
tags: [notes, event]
path: classnotes/2012-12-04-free-class.md
eventdate: 2012-12-04
---

## Teachers

* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

## Notes

* [Webcast • History and Collaboration with Git and GitHub](http://www.youtube.com/watch?v=IHjXQGYGAiw)
* [Complete free class outline](https://github.com/kevinclark/Lesson-Plans/blob/master/git-and-github/history-and-collaboration.md)

## Command History

    git log
    git log -5
    git log -2
    git log -2
    git log 6
    git log -6
    git log -1
    git log -2 --pretty=oneline
    git log --pretty=medium
    git log --pretty=fuller
    git log --pretty=medium
    git log -4 --author=brent
    git log -4 --author=tim
    git log -4 --author=Tim
    git log -4 --author=Matthew --grep="Merge"
    git log -4 --author=Matthew --grep="Updated" --pretty=oneline
    git log -4 --since="2 weeks ago"
    git log -4 --since="1 month ago"
    git log -4 --since="2 month ago"
    git status
    git log gh-pages@{2.weeks.ago}...gh-pages
    git log gh-pages@{2.days.ago}...gh-pages
    git branch
    git log gh-pages...collaboration-testing
    git log -1 --author=brent
    git log -1 --author=brent --stat
    git log --author=brent --stat
    git log -1 --author=brent -p
    git log -2 --author=brent -p
    git log -1 --author=brent -p
    git log -1 --author=brent -p --word-diff
    git log -1 --author=brent -p
    git log -1 --author=brent -p --color-words
    git log -1 --author=brent -p --word-diff
    git status
    git collaboration-testing
    git checkout collaboration-testing
    git status
    git diff
    git add README.md 
    git commit -m"Closes #7"
    git push origin collaboration-testing
