---
layout: bare
title: Online Git Free Class
description: A one-hour free class
tags: [notes, class, free]
path: classnotes/2013-01-12-free-class.md
eventdate: 2013-01-11
---

# Instructors
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Jordan McCullough ([Twitter](https://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))



## Outline
* Commit amend
  * Misspelled messages
  * One-level redo
* Reset
  * --soft to move the HEAD
  * --mixed to change the staging area
  * --hard for a big hammer
* Revert
  * The polite Undo
  * Resolving conflicts
  * --no-commit
* Reflog
  * git log -g
  * git reflog


# Command Line History

    vi raven.txt
    git add .
    git commit -m "Initial commit"
    vi raven.txt
    git commit -a -m "surcease of sorrow"
    vi raven.txt
    git commit -a -m "Nameless here"
    tmux attach
    ls
    cat raven.txt
    git log
    vi raven.txt
    git add raven.txt
    git status
    git commit -m "Bleak January"
    git lgo
    git log
    cat raven.txt
    git lgo
    git log
    git commit --amend
    git log
    vi raven.txt
    git add 
    git add .
    git commit -m "Dying embers"
    vi xanadu.txt
    git status
    git add xanadu.txt
    git status
    git commit --amend
    git log
    git log --stat -1
    vi xanadu.txt
    git status
    git add .
    git status
    git reset HEAD xanadu.txt
    git status
    cat xanadu.txt
    git add .
    git status
    git reset --mixed HEAD -- xanadu.txt
    git status
    git add .
    git commit -m "Measureless caverns"
    git log 
    git rev-parse HEAD 
    git rev-parse HEAD^ 
    git log --oneline
    git reset --soft HEAD^ 
    git rev-parse HEAD 
    git log --oneline
    git status
    cat xanadu.txt
    git diff --staged 
    vi xanadu.txt
    git add .
    git status
    git diff --staged
    git commit -m "Sunless sea"
    git log --oneline
    git lg
    cat "We need a readme" > README.md
    echo "We need a readme" > README.md
    ls
    git status
    git add README.md
    git lg
    git reset --hard 68e0 
    git status
    ls
    git lg
    ls
    cat raven.txt
    git reset --hard 8b2d96a
    git lg
    vi raven.txt
    git add .
    git commit -m "Buggy raven"
    git g
    git lg
    vi raven.txt
    git add .
    git commit -m "Surcease of bugs"
    git lg
    vi raven.txt
    git revert a5e4d0b 
    git lg
    vi raven.txt
    git reset --hard a5e4
    git reset --hard 7a129
    git lg
    vi raven.txt
    git lg
    git add .
    git commit -m "MOAR poe"
    git lg
    git revert a5e4d0b 
    git status
    vi raven.txt
    git add raven.txt
    git commit
    git lg
    git log -g --online
    git log -g --prett
    git log -g --oneline
    git branch 
    git reflog
    git lg
    git reset --hard 6f42
    git lg
    ls
    cat raven.txt
    git reflog
    git reset --hard HEAD@{1}
    git lg
    ls
    cat raven.txt
    cat xanadu.txt
    git reflog
    git lg
    git tag RELEASE_0.1
    git lg
    vi raven.txt
    git add .
    git commit -m "Sad curtains"
    git lg
    git tag COLERIDGE_COMPLETE 8b2d96a
    git lg
    git tag -a DYING_EMBER eefa
    git lg
    git show DYING_EMBER
    git status
    git lg
    ls
    cat raven.txt
    cat xanadu.txt
    git checkout DYING_EMBER
    ls
    cat xanadu.txt
    cat raven.txt
    git lg
    git branch feature
    git lg
    git checkout feature
    git lg
    vi README.md
    git add .
    git commit -m "Added a README"
    git lg
    git checkout master
    git lg
    git help rerere
    git log
    git log --pretty=fuller
    cd ~/code/groovy-liquibase
    git log
    git log --pretty=fuller
    git help config
    git help merge

# Q&A Transcript

    Q: what exactly is cat?
    A: Cat is just a unix command to spit out to the terminal the file's content :)
    Q: is the working tree and the staging area the same thing?
    A: Working tree is your directory and files you actively modify and write. The staging area is the step in which files will be placed in the commit.
    Q: Is commit amend just to change the commit message (and not the content of the file itself--such as the code)?
    A: --amend is much more powerful, which Tim is just about to demonstrate.
    Q: Please, what does reset do again?
    A: git reset allows the HEAD to a prior commit (via the hash in Tim's example).
    Q: Oh! It's oneline yeah
    A: =) and --oneline is even just a combination of `--pretty=oneline --abbrev-commit`. i believe it's a relatively new flag
    Q: Cool stuff guys ;)
    A: Thanks! glad to hear you're enjoying
    Q: There is an icon next to my name that says that I can't talk. How can I remove it?
    A: Join us for Office Hours, following this free class, for Git conversations. Looking forward to hearing from you then. https://www4.gotomeeting.com/island/webinar/registration.tmpl;jsessionid=abcSZjvreGKlueKeruQWt?id=267389430
    Q: Is the prev commit lost when we 'git commit --amend'?
    A: The commit itself--the file content changes involved in that commit. However, the unique hash for the amended commit is updated.
    Q: is git log --online how we diplay commits?
    A: well, `git log` is how we display commits. the --oneline flag just happens to be how tim is altering the output to that short form.
    Q: feature, okay. Is 'feature' part of the terminology?
    A: feature is just something that Tim is using to describe different aspects of his pretend project right now.
    Q: How do you display amend help?
    A: Amend is a feature of the "commit" command. For help on this command, try: git help commit
    Q: Yeah I'm registered. Could you please give me a  quick description of how this works (first time here)?
    A: The Free Online GitHub Class includes screensharing and topic discussion. For Git and GitHub questions, join us for the Office Hours session and we'll be happy to lend our expertise to your questions and Git inquiries.
    Q: By history you mean bunch of commits?
    A: yep!
    Q: Please, what does reset do again?
    A: there's a few reset types, which we're going over now, but ultimately what it's doing is undoing a number of things, like `git reset --hard HEAD^` will reset the last thing we did
    Q: will the text file that Tim is editing be available for public?
    A: We'll provide the command line output so you can follow along after class.
    Q: What's 'git lg'? Do the colors mean sth?
    A: Tim has a git alias (shortcut) setup for: git log --oneline with some other decoration options.
    Q: All my `git log` and even the `git lg` alias, clears the whole screen. Can I see it on the same screen? It doesn't disappears till I press "q".
    A: If you have many commits, git log will likely fill the screen with commit messages and information. You can limit log output by the -<n> options. For example, git log -3 will show only the last three commits.
    Q: How can I have the colored output for git commands? Mine doesn't.
    A: a real quick `git config --global color.ui auto` will set that for all your projects. leaving off '--global' will only set it for your current project
    Q: I have the same issue, even when I specify: git log -1. I'll see the output on a cleared screen with END at the bottom. Can only
    clear/exit with 'q'. (I'm using zsh)
    A: `git --no-pager log -1` will actually skip that from happening.
    Q: how does git know which commit you want to amend?
    A: The --amend applies in reference to the last commit.
    Q: what does it mean for a file to be "staged"
    A: It means we've updated git's index or understanding of the file, but we haven't commited it to history yet.
    Q: What's the difference between git log -g and git reflog?
    A: None whatsoever. just easier to remember
    Q: What's the difference between reset --hard and checkout?
    A: Reset modifies history and/or the working directory and index. Checkout moves the HEAD pointer.
    Q: Can you amend a commit at some point in your history that isn't the last comimt?
    A: --amend is utilized for changes on the "tip" of the branch only
    Q: what if we have commited that file? would I be able to get that file from history?
    A: Any commit (and its content/changes) is ""retrievable"", barring the side effects of a git reset --hard
    Q: is this training assuming that you have experience with GitHub?
    A: If there's things that we cover that you don't understand, don't worry! We can fill you in in text and also the office hours afterwards if you'd like.
    Q: What was the very first reset called?  The second one was a ""soft reset""
    A: git reset --soft, git reset --mixed, git reset --hard
