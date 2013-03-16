---
layout: bare
title: GNM Private Advanced Class
description: A One-day Private Advanced Git class
tags: [notes, class, workshop]
path: classnotes/2013-02-21-private-advanced-class.md
eventdate: 2013-02-21
---

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
* [hubgem](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

## Class Topics
* Common Branching Strategies
* Branching Models
* Applying Branching Strategies
* Branch Pull Options
* Reusing Small Pieces of Code
* Inserting Commits Into Existing History
* Building Custom Commands via Aliases
* Undoing and Re-doing Almost Anything
* Minimizing Repetitive Conflict Resolution
* Log History Searches
* Advanced Interactive Rebase
* Commit Data Structure Internals
* Refspecs

## Objectives

This workshop will take existing Git users and bring them to a heightened level of productivity by leveraging Git’s powerful, yet underused “advanced” features.

* Enabling Git users to effectively migrate repositories from other formats.
* Facilitate history modification of Git repositories.
* Establish time-tested branching and merging strategies.
* Enhance knowledge of Git tools to simplify history.
* Search Git history with ease and precision.
* Move to and reuse code on other branches via commits and tags.
* Understand Git’s tagging and GPG signing process.

## Command Line History

    git clone https://github.com/githubtraining/hellogitworld
    git branch feature1
    echo FEATUREWORK >> featurework.txt
    git add featurework.txt
    git checkout feature1
    git commit -m"Feature done"
    git checkout dosugfeature
    git branch -d dosugfeature
    git branch dosugfeaturerecovered fc3d496
    git checkout -b feature2
    vim README.txt
    git commit -a -m"Twoooooooo"
    vim pom.xml
    git commit -a -m"Maven rage"
    git rebase -i master
    vim fix.txt
    git add fix.txt
    git rebase --continue
    git remote -v 
    echo THING >> fix.txt
    git commit -a -m"Thing"
    git log --graph --all --abbrev-commit --pretty=oneline --decorate
    subl ~/.gitconfig
    echo retrieve all known tracking branches
    git help fetch
    git ls-remote origin
    git ls-remote origin | more
    git remote -v
    git remote add hotbackupserver https://github.com/githubtraining/hellogitworld
    git fetch hotbackupserver
    git help remote
    git remote rename origin github
    git branch -a
    git branch -a | more
    mkdir _setuptherepo
    echo "git remote add foo otherurl" >> _setuptherepo/setmeup.bsh
    git help pull
    rm -rf _setuptherepo
    echo STUFF >> fix.txt
    git stash
    git stash 
    git stash save "This was a thing"
    git commit -m"This is a change on master"
    git commit -am"This is a change on master"
    git checkout feature2
    git stash apply
    echo STUFF >> README.txt
    git stash save "More"
    git stash branch feature3 stash@{1}
    git help stash
    git branch feature4
    git branch feature5
    echo FIXSTEP1 >> fix.txt; git commit -a -m"Fix 1"
    echo FIXSTEP2 >> fix.txt; git commit -a -m"Fix 2"
    git checkout feature4
    gitk --all
    git log --graph
    git log --graph --oneline
    git reset --hard 753972b
    git reset --hard 753972b~1
    git reset --hard 753972b~2
    git merge --squash master
    git rebase --abort
    git merge --no-commit --no-ff master
    git merge --abort
    git log --raw
    git log --pretty=raw
    git config --local user.name "Other Person"
    git cherry-pick a8d4
    git cherry-pick -x a8d4
    git log --pretty=raw -1
    subl ~/.dotfiles
    bash
    git branch cherrypickexample master~3
    git checkout cherrypickexample
    echo PART1 >> fix.txt
    git commit -a -m"Part one"
    echo PART2 >> fix.txt; git commit -a -m"Part two"
    git checkout -
    git cherry-pick f8a3b0b
    git diff
    echo CHANGE1 >> fix.txt
    git commit -a -m"Feature stuff"
    echo CHANGE2 >> fix.txt
    git commit -a -m"fixup! Feature"
    git rebase -i --autosquash master~2
    generaterandomchanges 5 example txt
    echo LASTONE >> fix.txt
    git commit -a -m"fixup! A random change of 21343"
    echo LASTONE >> fix.txt; git commit -a -m"More"
    git rebase -i master~4
    git reset --hard c041159
    git reset --hard 400001e
    git reset --hard github/master
    git branch keeptheseofftotheside 400001e
    git merge --squash keeptheseofftotheside
    git reset HEAD fix.txt
    git reset HEAD example5.txt
    rm example5.txt
    git checkout HEAD fix.txt
    git commit -m"The good stuff"
    git status 
    cat .git/HEAD
    git checkout master~2
    echo PLEASEDONTDELETETHIS > saveme.txt
    rm saveme.txt
    git reset --soft master~3
    git commit -m"Restoring to a old known good state"
    git log --graph --abbrev-commit --pretty=oneline
    git revert c7233cd
    git log --patch
    git log --pretty=oneline -- fix.txt
    git log --pretty=oneline -- fix.txt src/
    git init test1
    cd test1
    echo test1 >> test.txt
    git cat-file a5bc
    git rm --cached test.txt
    rm test.txt
    git cat-file -p a5bc
    git config --global alias.gorilla "log --pretty=oneline --graph"
    git gorilla
    git config --global alias.rollbackone "reset --hard HEAD~1"
    git rollbackone
    git wtf
    g
    git show 2e9f:featurework.txt
    git diff master~1:featurework.txt 2e9f:featurework.txt
    git diff master~1:fix.txt master~2:fix.txt
    git log --patch master~1 -- fix.txt
    git checkout master~4 -- src/
    git checkout master~7 -- src/
    git checkout master~15 -- src/
    git show master~15:README.txt| mate
    gitk
    git orphank
    git rerere
    git branch rereretest1
    git checkout rereretest1
    generaterandomchanges 3 conflict txt
    git branch -d rereretest2
    git branch rereretest2
    git mergetool
    git checkout rereretest2
    cat conflict1.txt
    cat conflict2.txt
    git log --grep="fixes"
    git log -1 --patch
    git log -2 --patch --no-merge
    git log -2 --patch --no-merges
    git log -G="Release"
    git log -S="Release"
    git log -S"Release"
    git log -S"Release" --patch
    git log -S"Release" --patch --since=1.month.ago
    git log -S"Release" --patch --since=2.month.ago
    git log -S"Release" --oneline --decorate --since=2.month.ago
    git log -S"Release" --author=junio
    git log -S"Release" --author=Junio
    git branch
    git branch -r
    git log origin/next...origin/master --oneline
    git log origin/next...origin/master --oneline --no-merges
    git help diff-filter
    git log --diff-filter=D --patch
    git log --diff-filter=D --stat
    git log --diff-filter=D -- xdiff/
    git blame -C rerere.c
    git branch testmerge
    vim src
    vim src/Main.groovy
    git commit -a -m"Brent"
    mv src source
    vim source/Main.groovy
    git commit -m"Feature work"
    git checkout testmerge
    git log -- src/Main.groovy
    cd source
    git log -- Main.groovy
    git log --follow -- Main.groovy
    git merge testmerge -m"I hope this works"
    cat source/Main.groovy
    git log -C -C --stat
    git ls-remote
    vim .git/objects/d1/e4df8334ce9013338c085c9fbde343d3b48c63
    git fetch github refs/heads/master
    git fetch https://github.com/githubtraining/hellogitworld refs/heads/master
    git merge FETCH_HEAD
    git notes add 
    git log -1 
    git pushnotes github
    git checkout bisect
    git checkout github/bisect
    git l2
    git log --decorate --graph --pretty=oneline --abbrev-commit
    git bisect start
    git bisect bad 245a
    git bisect good 1f4b
    git bisect run mvn test
