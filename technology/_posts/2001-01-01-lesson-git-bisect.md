---
layout: bare
title: Git Bisect
description: Finding a regression in a repository's history
path: technology/_posts/2001-01-01-lesson-git-bisect.md
---

## Finding a bug with Bisect

Start the process of finding a commit where tests broke

    git bisect start

Mark current point as bad

    git bisect bad

Mark an older point as good

    git bisect OLDERTREEISH
    
If you want to manually mark the status of the current checkout and proceed to the next, type either of the following:

    git bisect bad
    git bisect good

Show the results of the bisect

    git bisect log

Start the bisect over again or to finish the process

    git bisect reset

If you wish to automate the run of the tests and marking boolean outcome (testing), use the `run` command. The program must return 0 for `good`, 125 for `skip`, 1-127 (except 125) for `bad`, and any negative value like -1 for `abort`.

    git bisect run <COMMAND>

Diagram the result of testing

    git bisect visualize

### Bisect Video

<iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/dy21sMRV-To?rel=0" frameborder="0" allowfullscreen></iframe>
