---
layout: bare
title: SCALE11 Conference Advanced Git Class
description: A Three-hour Public Advanced Git Class
tags: [notes, class, workshop]
path: classnotes/2013-02-22-scale11-linux-advanced-class.md
eventdate: 2013-02-22
---

# Southern California Linux Expo (SCALE)

# Instructors
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* [Jessica Roll](https://github.com/jroll)

# Resources
* [Legacy Git Stash Documentation](http://git-scm.com/docs/git-stash/1.7.0.1)
* [Git-Flow Workflow](http://nvie.com/posts/a-successful-git-branching-model/)
* [Matthew's Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)
* [GitHub Flow Workflow](http://scottchacon.com/2011/08/31/github-flow.html)
* [Free Office Hours](http://training.github.com/web/free-classes/)
* [Ask a Git or GitHub Question](https://github.com/githubtraining/feedback)
* [Workshop Slides](http://cl.ly/1l3d1Z1r3p3b/content)
* [Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Visual Merge Tools](http://www.youtube.com/watch?v=xfh13LcgqIU)
* [Git & GitHub Public Videos](http://www.youtube.com/github)
* [Slides](http://teach.github.com/articles/course-slides/)
* [Slide PDF 1](http://githubtraining.s3.amazonaws.com/github-git-training-slides.pdf)
* [Slide PDF 2](http://githubtraining.s3.amazonaws.com/github-git-training-slides-advanced.pdf)
* [Open Source Git Ignores](https://github.com/github/gitignore)

## Tools, Tips, Shortcuts
* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem ](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

## Outline

* ✓ Interactive rebasing with both the traditional squash, reword and edit, in addition to the new fixup and autosquash.
* ✓ Understanding the modes of git reset and how it affects, preserves, or destructs the history, index, and working directory.
* ✓ Searching through history with string, combination, and pickaxe approaches.
* ✓ Diffing changes past refactorings.
* ✓ Finding the original author of methods in refactored and relocated code.
* ✓ Administratively shaping history with git filter-branch at milestones or after a Subversion import.
* ✓ Minimizing repetitive merge efforts with rerere.
* ✓ Controlling pull and push behavior with advanced configuration options.
* ✓ Manually editing the refspec and git config files.
* ✓ Pushing to and pulling from multiple destinations.
* ✓ Tag signing, tag merging, and signed tag business scenarios.
* ✓ Adding Git notes and their effective namespace use.
* ✓ Relocating chunks of work with rebase onto
* ✓ Leveraging several other cutting-edge Git 1.8 features.

## Command Line History

    git --version
    git init project1
    cd project1
    generaterandomchanges 10 sample txt
    git rebase -i master~9
    echo ONEMORECHANGE >> test.txt
    git commit -m"fixup! This"
    git rebase -i --autosquash master~5
    git show 952e4c4
    echo STUFF >> sample1.txt
    git commit -m"squash! Brent says"
    git rebase -i --autosquash master~4
    echo DIRTY >> sample1.txt
    git reset --hard HEAD
    echo "This restored us to the last committed state (tossed working changes)"
    git graphlive 10
    git reset --hard e1df713
    git reset --hard 9483c56
    git graphlive 2
    git graphlive 8
    git reset --soft cabc60f
    git rm -f sample2.txt
    git commit
    git reset --hard cabc60f -- sample1.txt
    git reset --hard 57af86e
    echo JUNK >> sample1.txt
    git commit -a -m"Mistake"
    git checkout master~3 -- sample1.txt
    mkdir thousands
    cd thousands
    git commit -m"Thousands"
    generaterandomfiles 100 sample txt
    git commit -am"Thousands again"
    git log --oneline
    git checkout d2980d2 -- thousands/
    git checkout HEAD -- 'thousands/*28*.txt'
    git commit -p 
    echo "newstuff" >> brentsnewfile.txt
    git commit -p
    git commit -p -- brentsnewfile.txt
    git add -p
    git reset HEAD 
    git reset HEAD brentsnewfile.txt
    git commit -m"One"
    vim brentsnewfile.txt
    git stash pop
    git stash -p
    git stash branch stash@{1}
    git stash list
    git stash branch newname stash@{1}
    z git_git
    git log --no-merges
    git log --no-merges --pretty=oneline --abbrev-commit
    git log --pretty=oneline --abbrev-commit
    historytailzsh
    historytailzsh 5 10
    git log --no-merges --pretty=oneline --abbrev-commit --graph
    git log --no-merges --pretty=oneline --abbrev-commit --graph --simplify-by-decoration
    git log --no-merges --pretty=oneline --abbrev-commit --graph --simplify-by-decoration --decorate
    git log --no-merges --author=Brent
    git log --no-merges --author=Junio
    git log --no-merges --author=Junio --format=raw
    git log --no-merges --author=Peff --format=raw
    git log --no-merges --author=Jeff --format=raw
    git log --no-merges --author=Jeff --format=raw --since=1.day.ago
    git log --no-merges --author=Jeff --format=raw --since=1.month.ago
    git reflog
    git log --format=raw --since=1.month.ago
    git log --format=raw --since=2.month.
    git log --format=raw --since=2.months.ago
    git pull --rebase
    git log --no-merges --format=raw --since=1.month.ago
    git log --no-merges --format=raw --since=1.week.ago
    git log --no-merges --format=raw --since=1.week.ago --oneline
    git log --no-merges --format=raw --since=1.week.ago --oneline --decorate
    git log --no-merges --format=raw --since=1.week.ago --patch --decorate
    git log --no-merges --format=raw --since=1.week.ago --patch --decorate -S "X509"
    git log --no-merges --format=raw  --patch --decorate -S "NSFW"
    git log --no-merges --format=raw  --patch --decorate --grep="Release"
    git log --no-merges --format=raw  --patch --decorate --diff-filter=D
    git log --no-merges --stat --decorate --diff-filter=D
    git log --no-merges --stat --decorate --diff-filter=DAM
    git log --diff-filter=R
    git log --diff-filter=R --stat
    git reset --hard
    mv brentsnewfile.txt newfile2.txt
    git stuat
    vim newfile2.txt
    git add -A .
    git commit -m"Renamed and changed"
    git log --stat 
    mate ~/.gitconfig
    git blame rerere.c
    git blame -C rerere.c 
    git log -- newfile2.txt
    git log --follow -- newfile2.txt
    cp sample8.txt showyouacopy.txt
    git commit -m"Copied file"
    git log --stat
    git log --stat -C
    git log --stat --find-copies-harder
    git log --stat -C -C
    git log --find-copies-harder --stat
    git log --find-copies-harder --stat --diff-filter=C
    git log --find-copies-harder --stat --diff-filter=M
    git filter-branch --subdirectory-filter xdiff HEAD -- --all
    echo "Empty commit"
    git filter-branch --tree-filter "rm -rf xdiff.h" --prune-empty HEAD
    git log -- xdiff.h
    git reflog expire --expire=now --all
    git branch brent
    git branch matthew
    git reset --hard newname
    gitx
    git add.
    git commit -m"Blue"
    git commit -m"Brent red"
    git commit -m"Matthew red"
    git config --local rerere.enabled true
    git checkout matthew
    open .
    vim corefuntion.txt
    git commit -a 
    git checkout brent
    git merge master
    git status
    cat corefuntion.txt
    git add 
    git add .
    git commit 
    git help rerere
    clear
    cd ..
    hub clone githubtraining/hellogitworld
    cd hellogitworld
    hub browse
    git ls-remote | more
    cat .git/config
    open .git
    git remote add other http://yourserver
    git log -1
    git log -2
    git log -3
    git fetch
    git notes add master~2
    git pushnotes
    git pushnotes origin
    git branch -r 
    echo JUNK ON >> fix.txt
    git commit -a -m"This is local"
    git log
    git tag REFERENCETAG 178f175eb36ad16563cb06b0a4d86a9780363321
    git log --decorate
    git tag -a ANNTAG 178f175eb36ad16563cb06b0a4d86a9780363321
    git log --decorate --oneline
    git show REFERENCETAG
    git cat-file -t REFERENCETAG
    git cat-file -t ANNTAG
    git show ANNTAG
    git tag -s SIGNEDTAG
    git cat-file -t SIGNEDTAG
    git show SIGNEDTAG
    git tag -v SIGNEDTAG
    git tag
    git help log
    git help tag
    echo "Computer says NOOOOOO"
    git branch feature7 master~4
    git branch feature8 master~4
    git checkout feature7
    generaterandomchanges 2 sample txt
    git tag -s F7READY
    git checkout feature8
    generaterandomchanges 2 sampleeight txt
    git tag -s 
    git tag -s  F8TAG
    git checkout master
    git merge F7READY F8TAG
    git show HEAD
    git log -1 --format=raw
    git reset --hard HEAD@{1}
    git help merge
    git help commit
    cd ~/.gnupg
    ls
    git config -e
    git config --global -e
    git cc-cache
    pwd
    cd -
    vim .git/config
    generaterandomchanges 2 other txt
    git push
    vim ~/.gitconfig
    git help push
