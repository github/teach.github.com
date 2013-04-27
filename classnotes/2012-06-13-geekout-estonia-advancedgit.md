---
layout: bare
title: GeekOut Estonia - Guts of Git, Advanced Git Workshop
description: GeekOut Estonia presentation notes
tags: [notes, event]
eventdate: 2012-06-13
---

## Delivered at GeekOut Conference

* Tallinn, Estonia
* June 14, 2012
* <http://geekout.ee>
* Delivered by Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
    
## Presentation Outlines
* [Guts of Git Course](http://teach.github.com/articles/git-guts-course/)
* [Git Advanced Workshop](http://teach.github.com/articles/git-advanced-course/)

    
## Chat Transcript

    Juri H. (possible) Mercurial analog of cherry-pick: http://mercurial.selenic.com/wiki/TransplantExtension

    arhan   So the -x is no use if the cherry-picked commit hash is only in the commit message and not in the metadata? no automated way to track the trail?
    Toomas R.   I understood that -x was to show us more info
    my bad, checked the doc

    -x
               When recording the commit, append to the original commit message a note that indicates which commit this change was cherry-picked from.
               Append the note only for cherry picks without conflicts. Do not use this option if you are cherry-picking from your private branch because
               the information is useless to the recipient. If on the other hand you are cherry-picking between two publicly visible branches (e.g.
               backporting a fix to a maintenance branch for an older release from a development branch), adding this information can be useful.
    so it is a functional flag

    Juri T. http://www.selenic.com/mercurial/hg.1.html => ctrl+f graft

    Toomas R.   https://github.com/matthewmccullough/hellogitworld for slow typers
    Ö=
    :)
    arhan   :D
    matthewmccullough   https://github.com/matthewmccullough/hellogitworld

    Toomas R.   expensive merge, http://www.araxis.com/buy-eur.html
    Juri H. http://meldmerge.org/ ?
    Juri T. +1
    arhan   vimdiff ftw :P
    Toomas R.   squash - http://et.wikipedia.org/wiki/Squash
    arhan   View paste 
    for mercurial:
    http://mercurial.selenic.com/wiki/CollapseExtension
    and http://mercurial.selenic.com/wiki/RebaseExtension
    matthewmccullough   http://git-scm.com/2011/07/11/reset.html
    grd http://www.wikivs.com/wiki/Git_vs_Mercurial
    matthewmccullough   https://github.com/matthewmccullough/filter-branch-sample
    View paste 
    https://github.com/matthewmccullough/filter-branch-sample
    Toomas R.   I guess I missed how he got rid of the ISO file, filtered out that directory/file?
    Ervin   probably git revert :D
    arhan   "src -> source" level of history modification sounds too EVIL
    Juri T. git rm iso for every commit
    Toomas R.   I think the Archive Library was using git and this is how the existence of Kamino was deleted from the history and Jedi could not find it :)
    Toomas R.   git clone https://github.com/matthewmccullough/hellogitworld
    matthewmccullough   View paste 
    [url "git@github.com:"]
                insteadOf = "ghs://"
                pushInsteadOf = "ghs://"
    arhan   the ability to put notes about CI status for a specific revision is super-cool actually
    Toomas R.   i wish maven had notes
    i would like to label binary artifacts more
    or note them like in the book example
    matthewmccullough   https://gist.github.com/2565224
    Yeah. Maven notes would be interesting
    https://gist.github.com/2732679
    http://hg-git.github.com/
    Neeme P.    http://www.git-tower.com/
    matthewmccullough   https://github.com/github/teach.github.com
    Juri T. https://github.com/offbytwo/git-hg ? git client -> hg server
    Neeme P.    http://stackoverflow.com/questions/883452/git-interoperability-with-a-mercurial-repository
    Ervin   View paste 
    https://github.com/grosser/git-autobisect
    git-autobisect.sh your_unit_test_here
    matthewmccullough   sparse checkout
    git clone --depth
    matthewmccullough   graph depth
    Michael H.  If you haven't seen it: http://tom.preston-werner.com/2009/05/19/the-git-parable.html nice read
    matthewmccullough   git log --author --not --since
    matthewmccullough   caret spec for branch paths
    matthewmccullough   git show HEAD~5^2~5

## CLI History

    $ cd hellogitworld
    $ git branch -a
    $ git master
    $ git checkout master
    $ vim src/Sum.groovy
    $ git commit -m"Explicit return"
    $ git commit -am"Explicit return"
    $ git log -1
    $ git checkout feature_subtraction
    $ git cherry-pick f637
    $ git cherry master feature_subtraction
    $ git cherry -v master feature_subtraction
    $ git checkout master
    $ git cherry-pick 735794e644faf316c3ebf89bd7facccaab987621
    $ vim src/Division.groovy
    $ git commit -a -m"Explicit return for div"
    $ git checkout feature_subtraction
    $ git cherry-pick -x 655c
    $ git status
    $ git reset--hard
    $ git reset --hard
    $ git status
    $ git cherry-pick -x 655c
    $ git status
    $ git checkout --theirs src/Division.groovy
    $ git status
    $ git add .
    $ git status
    $ git commit 
    $ git help cherry-pick
    $ git diff master~1..master | pbcopy
    $ git diff master~1..master 
    $ git log --format=raw

    $ z git_git
    $ git blame rerere.c
    $ git blame -C rerere.c
    $ git show b4372ef1

    $ cd -
    $ git branch -a 

    $ cd ..
    $ mv hellogitworld hgwcherry
    $ hub clone -p hellogitworld
    $ cd hellogitworld
    $ git l2
    $ git checkout feature_division
    $ gitk --all&
    $ git rebase master
    $ git status
    $ git diff
    $ mate ~/.gitconfig
    $ git help mergetool
    $ git mergetool -t p4
    $ git mergetool -t p4tool
    $ git mergetool -t myaraxis
    $ git status
    $ open src
    $ git status
    $ git rebase --continue
    $ mate .git/config
    $ z git_git
    $ git fetch

    $ cd -
    $ git rebase --abort
    $ git merge-base master feature_division
    $ git rev-parse feature_division~1
    $ git rev-parse feature_division~2
    $ git rev-parse feature_division~3
    $ git rev-parse feature_division~4
    $ git rev-parse feature_division~5
    $ git rebase -i dc64f
    $ git l2
    $ git rebase -i dc64f
    $ git rebase master
    $ git mergetool -t myaraxis
    $ git rebase --continue
    $ git reflog
    $ git orphank
    $ git branch -a
    $ git wtf
    $ git checkout master

    $ git merge --squash feature_division
    $ generaterandomchanges 2 sample txt
    $ git l2
    $ git log
    $ git reflog
    $ git merge --squash origin/feature_image
    $ git status
    $ git commit
    $ generaterandomchanges 2 sample txt
    $ git revert fee601d
    $ git checkout feature_image
    $ echo correctiveaction > fixedit.java
    $ git add .
    $ git commit -m"Fixed it"
    $ git checkout master
    $ git merge --squash feature_image
    $ git commit

    $ cd ..
    $ mv hellogitworld hgw2
    $ hub clone -p hellogitworld
    $ cd hellogitworld

    $ git checkout -b feature1

    $ vim src/Subtract.groovy
    $ git commit -a -m"Change 1"
    $ vim src/Division.groovy
    $ git commit -a -m"Second change"
    $ git checkout master
    $ vim README.txt
    $ git commit -a -m"Readme styling"
    $ git checkout feature1
    $ vim src/Square.groovy
    $ git commit -a -m"squash! 5d69114"
    $ git merge-base master feature1
    $ git rebase -i --autosquash bf7a9a5ee025e
    $ git rebase -i  bf7a9a5ee025e

    $ git status

    $ git diff --staged
    $ mate README.txt
    $ git add .
    $ git status
    $ git rebase --continue
    $ git checkout master
    $ echo CHANGE >> README.txt
    $ git commit -a -m"Change"
    $ git status
    $ git reset --soft HEAD~1
    $ git status
    $ git diff --staged
    $ git commit -m"Undo"
    $ git reset --soft HEAD~4 -- src/
    $ git reset  HEAD~4 -- src/
    $ git status
    $ git reset  HEAD~10 -- src/
    $ git add .
    $ git commit -m"Rolling back"
    $ git reset --hard

    $ git log master~200 --name-status
    $ git log --name-status master~10
    $ git log --name-status master~10 | grep bin
    $ git log --name-status master~10 | grep class
    $ git log --name-status master~10 | grep iso
    $ git orphank
    $ cd ..
    $ git clone https://github.com/matthewmccullough/filter-branch-sample
    $ rm -rf filter-branch-sample
    $ git clone https://github.com/matthewmccullough/filter-branch-sample
    $ open .
    $ cd filter-branch-sample
    $ git filter-branch --subdirectory-filter c HEAD

    $ git remote -v
    $ cd ..
    $ cd filter-branch-sample
    $ git reflog expire --expire=now --all
    $ git gc --aggressive --prune=now
    $ cd ..
    $ git clone filter-branch-sample filterbranchcleaned
    $ cd filter-branch-sample\ copy\ 2

    $ git filter-branch --index-filter "git rm -r -f --cached --ignore-unmatch a" 

    $ pwd
    $ to.scratch
    $ git help merge
    $ gitnr testprimary
    $ mkdir a b

    $ cd a
    $ generaterandomchanges 2 samplea txt
    $ cd ..
    $ cd b
    $ generaterandomchanges 2 sampleb txt
    $ cd ..
    $ gitnr testsubtree
    $ generaterandomchanges 2 sampleb txt
    $ cd ..
    $ mv testsubtree ../
    $ git remote add file://../testsubtree
    $ git remote add subtree file://../testsubtree
    $ git fetch subtree
    $ git remote add subtree file://$PWD/../testsubtree
    $ git remote add subtree2 file://$PWD/../testsubtree
    $ git fetch subtree2
    $ git merge --strategy=subtree subtree2/master
    $ cd b

    $ git log -- .
    $ git log -- . --name-status
    $ cd ..
    $ git merge --strategy=subtree=c subtree2/master
    $ git help merge
    $ git merge --strategy=recursive -Xsubtree=c subtree2/master

    $ git reset HEAD~1
    $ git reset --hard
    $ git log

    $ cd ..

    $ cd test
    $ cd testprimary

    $ l
    $ cd ..
    $ cd testsubtree

    $ cd ..
    $ cd testprimary
    $ git remote -v
    $ git fetch submodule2
    $ git remote -v
    $ git fetch subtree2

    $ git branch -a
    $ git merge --strategy=subtree subtree2/master
    $ cd b
    $ git merge --strategy=subtree subtree2/master
    $ git status
    $ git reset --hard
    $ git status
    $ rm README
    $ git s
    $ git merge --strategy=subtree subtree2/master
    $ git merge --dry-run --strategy=subtree subtree2/master
    $ git merge -n --strategy=subtree subtree2/master
    $ git reset --hard HEAD~
    $ git merge -n --strategy=subtree subtree2/master
    $ git help merge

    $ git help merge
    $ cd ..

    $ mv hellogitworld hgw3
    $ hub clone -p hellogitworld

    $ cd hellogitworld

    $ git branch -a
    $ git config rerere.enabled true
    $ open .git

    $ git branch conflict
    $ vim README.txt
    $ git commit -a -m"Anton"
    $ git checkout conflict
    $ vim README.txt
    $ git commit -a -m"Ken changes"

    $ git checkout master
    $ git merge conflict
    $ git mergetool
    $ git add .
    $ git commit 

    $ git reset --hard HEAD~1
    $ git merge conflict
    $ git status
    $ cat README.txt
    $ more README.txt
    $ git status
    $ git mergetool
    $ git mergetool -- README.txt
    $ cd ..

    $ cd hellogitworld
    $ git branch -a
    $ git checkout feature_division
    $ git reset --hard
    $ git checkout feature_division
    $ git branch -a
    $ vim .git/config
    $ git config push.default matching
    $ git branch -m feature_division my_feature_division
    $ git push
    $ git config push.default tracking
    $ git push
    $ git tag STUFF1
    $ git tag STUFF2
    $ git push
    $ vim .git/config
    $ git push --tags
    $ git tag STUFF3
    $ git push origin STUFF3
    $ git push origin my_feature_division:anton1
    $ git push origin HEAD~5:anton2
    $ vim .git/config
    $ git checkout master

    $ git branch matthew/stuff1
    $ vim .git/config
    $ git pull
    $ vim .git/config
    $ git pull
    $ git bundle create ../my.bundle origin/feature_subtraction

    $ git fetch ../my.bundle
    $ git ls-remote origin
    $ git ls-remote ../my.bundle
    $ git fetch ../my.bundle refs/remotes/origin/feature_subtraction
    $ git merge FETCH_HEAD
    $ vim .git/config
    $ git push origin
    $ git remote -v
    $ vim .git/config
    $ git remote -v
    $ cd ..
    $ git clone ghs://matthewmccullough/hellogitworld hgw5
    $ cd hgw5
    $ cat .git/config

    $ git notes add HEAD~5
    $ git log 
    $ git help notes
    $ git notes add --ref jenkins HEAD~5
    $ git notes --ref add jenkins HEAD~5
    $ git notes --ref jenkins add HEAD~5
    $ git log
    $ git help log
    $ git log --notes='*'
    $ git push
    $ vim .git/config
    $ git help notes
    $ git push origin refs/notes/*:refs/notes/*
    $ git push origin 'refs/notes/*:refs/notes/*'
    $ git rev-parse HEAD~5
    $ git tag SOMETAG
    $ git tag SOMETAG HEAD~6
    $ git tag SOMETAG2 HEAD~6
    $ git tag -a SOMETAG3 HEAD~6
    $ git rev-parse SOMETAG3

    $ git show SOMETAG1
    $ git show SOMETAG2
    $ git show SOMETAG3

    $ git tag WITHAGPG HEAD~2
    $ git tag -s WITHAGPG2 HEAD~2
    $ git show WITHAGPG2
    $ git tag -v WITHAGPG2

    $ git tag 
    $ git tag -s SIGNASIGN WITHAGPG2
    $ git show SIGNASIGN
    $ cd ..
    $ git clone https://github.com/matthewmccullough/hellogitworld.git
    $ git clone https://github.com/matthewmccullough/hellogitworld.git hgw6
    $ cd hgw6
    $ generaterandomchanges 2 sample txt
    $ git push
    $ git config --global credential.helper cache
    $ generaterandomchanges 2 sample txt
    $ git push
    $ ps -aef | grep git
    $ git config --global credential.helper osxkeychain
    $ git config --global credential.helper 'cache --timeout=150'
    $ git show HEAD~2
    $ git show HEAD~2:b/sample2.txt
    $ git show HEAD~1:b/sample2.txt

    $ git show HEAD~1:sample2.txt
    $ git checkout HEAD~1 -- sample1.txt
    $ git checkout HEAD~1 -- sample2.txt
    $ git status
    $ git reset --hard
    $ vim README.txt
    $ git status
    $ git diff
    $ git diff --color-words
    $ git add -p .
    $ git add --color-words -p .
    $ git add  -p .
    $ git status
    $ git reset -p HEAD .
    $ git status
    $ git commit -m"oNe change"
    $ git status
    $ git stash
    $ git stash pop
    $ git stash -p 
    $ git stash list
    $ git stash
    $ git stash list
    $ git stash pop
    $ git stash save "This is the reason"
    $ git stash list
    $ git stash pop stash@{1}
    $ git stash pop stash@{0}
    $ git reset --hard
    $ git stash pop stash@{0}
    $ git status
    $ git stash
    $ git stash pop -p
    $ git help stash

    $ git config remotes.mygroup 'remote1 remote2 remote3'
    $ git pull
    $ git reset --hard origin/master
    $ git ls-remote
    $ git fetch origin refs/pull/2/head
    $ git merge FETCH_HEAD
    $ git push
    $ git fetch origin refs/pull/3/head
    $ git merge FETCH_HEAD
    $ git push

    $ to.courses.git.repos
    $ cd demo-bisect.git
    $ git log

    $ mvn test
    $ git bisect reset
    $ mvn test
    $ git bisect
    $ git bisect start
    $ git bisect bad HEAD~3
    $ git bisect good HEAD~10
    $ git bisect run mvn test
    $ git bisect log
    $ git bisect visualize
    $ z git_git
    $ git log --not --author=Junio
    $ git help log

    $ git log --author=Junio
    $ git log --commiter=Junio
    $ git log --committer=Junio
    $ git log --committer=Linus --before=2.years.ago
    $ git log --committer=Linus --before=2.years.ago --diff-filter=A
    $ git log --committer=Linus --before=2.years.ago --diff-filter=A --name-status

    $ cd hgw6
    $ git branch feature1
    $ git branch feature2
    $ git branch feature3
    $ generaterandomchanges 2 sample txt
    $ git checkout feature1
    $ generaterandomchanges 2 sample2 txt
    $ git checkout feature2
    $ generaterandomchanges 2 sample3 txt
    $ git checkout feature3
    $ generaterandomchanges 2 sample4 txt
    $ git checkout master
    $ git merge feature1 feature2 feature3
    $ git log --format=raw -1
