---
layout: bare
title: Private Git Foundations Training
description: Private Git Advanced Training Class Notes
tags: [notes]
path: classnotes/2013-09-18-private-git-advanced-class.md
eventdate: 2013-09-18
---

## Teacher
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Course Materials, Links
* [Course Slides](http://teach.github.com/presentations/)
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)
* [Matthew's Shell Scripts and `.gitconfig`](https://github.com/matthewmccullough/scripts)


## Resources

* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [Using Git with Media Temple](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Jenkins Git Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Suggested Books, Articles
* [Free ProGit Book](http://git-scm.com/book)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

-------------------------------------

## Topic Notes, Refreshers, and Details

### Refspecs

All Git interactions, whether transparently or opaquely, leverage a domain specific language in strings called Refspecs. Knowledge of this language lets you adeptly manipulate the contents of the packs that are sent to and from upstream hosts, and where those received items are stored on disk.

### Notes

You know that Git stores blobs, trees, commits, and tags, but did you know it can also store a parallel stream of notes? These notes can be written and adjusted again and again, categorized by namespace, and even rendered in the GitHub user interface. Notes are supported by automation tools like [Jenkins](http://jenkins-ci.org/) and [its Git plugins](https://wiki.jenkins-ci.org/display/JENKINS/git-notes+Plugin), and can be a powerful supplement of build results and deployment metadata on to an existing commit history.

### ReReRe

Git provides the power of being able to reset-away a less than pleasant merge. But what about all that investment in the merge conflicts that you solved? The rerere option switch and command provides a means of preserving your merge conflict resolutions, even for discarded merges. These can be reused across branches; for example, in the scenario of delivering a common fix to more than one branch.

Git provides the power of being able to reset-away a less than pleasant merge. But what about all that investment in the merge conflicts that you solved? The rerere option switch and command provides a means of preserving your merge conflict resolutions, even for discarded merges. These can be reused across branches; for example, in the scenario of delivering a common fix to more than one branch.

The `rerere` command (and configuration option) which stands for "reuse recorded resolution" memorizes the two sides of a conflict and can re-use your resolution next time the same conflict is seen.

Merge conflicts are an inevitable thing, but it certainly would be nice if you never had to deal with the same one more than once. What if you rolled back a commit, only later to have to merge it again? It would be fantastic if Git could remember how you resolved it last time. It can, with `rerere` turned on.

Rerere captures the left and right side of a merge conflict and if it sees those same two sides again, it will auto-resolve them, leaving them staged for your review and approval. The intelligence of a rerere data file can be incredible on a large and long-lived code base.

#### Testing Rerere

* Turn on rerere

         git config --global rerere.enabled 1
         #or
         git config --global rerere.enabled true

* Start a merge with a conflict.

        git checkout conflict1
        git merge conflict2
        
        Auto-merging src/Sum.groovy
        CONFLICT (content): Merge conflict in src/Sum.groovy
        Automatic merge failed; fix conflicts and then commit the result.

The merge failed, needing manual intervention. The rerere status and diff will tell us what it is watching for resolution:

        git rerere status
        
        src/Sum.groovy
        
The `git rerere diff` will show the contents of the conflicts known by the rerere cache.
        
        git rerere diff
        
        --- a/src/Sum.groovy
        +++ b/src/Sum.groovy
        @@ -1,7 +1,4 @@
         static int sum(int val1, val2) {
        -<<<<<<<
        -    return (val1 + val2)
        -=======
             val3 = val1 + val2
        ->>>>>>>
        +    return val3
        }

Next, we'll fix the conflict and then commit it.

        # Fix conflict in file
        
        git commit -a -m"Fixed conflict"
        Recorded resolution for 'src/Sum.groovy'.
        [conflict1 c062e45] Fixed conflict

Notice how the rerere indicated it was capturing the merge conflict resolution.

We don't like the merge result, so we'll roll it back.

        git reset --hard HEAD~1

Then try it again with a merge that will redo that merge plus some things:

    git merge conflict2
    Auto-merging src/Sum.groovy
    CONFLICT (content): Merge conflict in src/Sum.groovy
    Resolved 'src/Sum.groovy' using previous resolution.
    Automatic merge failed; fix conflicts and then commit the result.

The results of rerere are explicitly cleaned if the `git rerere gc` command is run. Rerere results are saved for 15 days for unresolved conflicts and for 60 days for resolved conflicts. These expirations can be set through the `gc.rerereunresolved` and `gc.rerereresolved` variables, which are set to integer date counts.

Specific resolutions can be forgotten via the rerere command. A rerere resolution set can be forgotten, but this technique is deprecated.

    git rerere forget
    
    warning: 'git rerere forget' without paths is deprecated

It is more appropriate to forget the rerere of a specific filespec.

    git rerere forget src/Sum.java
    
    Updated preimage for 'src/Sum.groovy'
    Forgot resolution for src/Sum.groovy

#### Rerere Cache Location
The most surprising fact is that the rerere cache is not machine-portable in the sense that it is not transported with `push` or `pull` operations. It saves resolved objects to the `.git/rr-cache` folder.

    .git
       |-- rr-cache
           |-- 810a8080b83381d1db72066593c8f01954be8bc3
           |   |-- preimage
           |-- c437466904eeeebfd1f406c0f7a0179db64382be
               |-- preimage

#### Expiration of Rerere Cache Entries
* Resolved expiration
    * 60 days?
    * Can be configured
* Unresolved expiration
    * 30 days?
    * Can be configured
    

### Pull requests from the command line

Pull Requests are thought of as a web-based feature of GitHub. However, they are fully accessible, fetchable, and createable from the command line.


### Conflict Resolution
* You are warned
* You choose or merge (right, left, blend)
    * --ours
    * --theirs
    * merge (by blending)
* Signal success of resolution with `git add FILE`
* Merge
    * git commit
* Rebase
    * git rebase --continue

### External merge and diff tools

Merging and diffing with the command line can be effective. But, when an ocean of `<<<<<` symbols is overwhelming, switch to using Git's integration with any visual diff and merge tool. We'll cover how to configure, invoke, and leverage Open Diff and Araxis and talk about how this can extent to Beyond Compare, VimDiff, P4Merge and other similar tools.

### The Reflog

Git's ability to re-write history may seem scary at first. But once you know that [the reflog](http://git-scm.com/docs/git-reflog.html) has a rolling 90 day history of your destructive and creative actions, you'll feel more at ease to use Git's advanced features.

### Three reset modes

The [reset command](http://git-scm.com/docs/git-reset.html) is one of Git's real mysteries. What's the difference between soft, hard, and mixed? We'll show you first hand how and where to best leverage each of these modes.

### Interactive Rebase

Interactive rebasing gives you the ability to shape your commit history prior to sharing it with others. Combine commits, reorder activities, and improve the commit messages with ease.

### Rebase --onto

Rebase, at its core, is the transport of commits from one place in the graph to another. In this workflow example, we'll show how a feature or fix can atomically be transported on to another branch, isolated from potentially muddying earlier commits.

### Signed tags

Tags are a great way to mark a point in time for events such as an official release, or bug fix. However, signed tags can also be merged as of the latest versions of Git, thus providing a means of preserving signed-code integrity, all the way through the merge and delivery process.

### Bisect

The bisect feature of Git is a powerful tool that can be used to search for a regression. It is best paired with a strong unit test suite for complete automated execution, but can also be used in support of a manual search for a difficult-to-automatedly-detect problem, such as a subtle shift in an image. We'll explore this feature using a repository that has a latent defect that is easily found using bisect run.


## Day Two Outline

* Rebase
* Review the branch-based concept
* Interactive Rebase
* Review purposes, use cases
* Interactive rebase demonstration
* Review of Interactive rebase verbs (squash, edit, reword)
* Interactive rebase exercises
* Advanced Interactive Rebase
* Separating one commit into two with interactive rebasing
* Rebase autosquash and fixup.
* Cherrypick
* Benefits
* Downsides (loss of merge fidelity)
* -x option switch for traceability
* How to avoid the need cherry-pick
* Cherry pick in the context of release and development branches
* Merges
* Maintaining meta-data
* Reverse merges
* Fast-forwards
* Loss of information on fast-forwards
* Git Log
* Basic log use
* Treating Git repos like a database
* Advanced Git queries
* Git diff
* Basics review
* Format options (whitespace, etc.)
* Filtering
* Unstaged, Staged, HEAD
* Parents
* Caretspec
* Tildespec
* ..
* …
* Parents on merges (order matters, multiples are possible)
* Filter Branch

## Day Two Command Line History

    git init project1
    cd project1
    vim first.txt 
    git add first.txt
    git commit -m "My first commit"
    vim first.txt
    git add .
    git commit -m"Second commit"
    git branch feature
    vim first.txt
    git add .
    git commit -m"Hot fix"
    git checkout feature 
    vim feature.txt
    git  add .
    git commit -m"Feature work one"
    vim feature.txt
    git add .
    git commit -m"Feature work two"
    git status
    git rev-parse master
    git rebase ccb8
    git orphank 
    git reflog
    git checkout master
    git merge feature 
    cd ..
    git clone https://github.com/githubteacher/hellogitworld
    cd hellogitworld
    echo CHANGES >> fix.txt
    git commit -a -m "Fix from Matthew"
    git push 
    cd ..
    cp -r hellogitworld hgw2
    cd hgw2/
    git reset --hard HEAD~1
    echo CHANGES2 >> matthew.txt
    git add .
    git commit -m "Matthew was here"
    git pull
    gitk &
    git reflog
    git reset --hard 1400321
    git pull --rebase
    git reflog
    git reset --hard 1400321
    git fetch
    git rebase origin/master
    git merge origin/master
    git config --list | grep rebase
    mate ~/.gitconfig
    clear
    ls
    vim pom.xml
    git commit -a -m"Matthew conflict"
    git push
    cd ..
    cd hellogitworld
    vim pom.xml
    git commit -a -m"My problem"
    git pull --rebase
    git status
    head pom.xml
    git mergetool 
    git add .
    git status
    git rebase --continue
    gitk &
    clear
    pwd
    git checkout master
    git fetch
    git reset --hard origin/master
    echo change >> fix.txt; git commit -a -m"Fix 1"
    echo change >> fix.txt; git commit -a -m"Fix 2"
    echo change >> fix.txt; git commit -a -m"Fix 3"
    echo change >> fix.txt; git commit -a -m"Fix 4"
    echo change >> fix.txt; git commit -a -m"Fix 5"
    git rev-parse HEAD~5
    git rebase -i HEAD~5
    git reflog
    git orphank
    git reflog
    git rebase -i HEAD~5
    git status
    head fix.txt
    vim fix.txt
    git add .
    git rebase --continue
    git status
    vim fix.txt
    git add .
    git rebase --continue 
    gitk&
    echo change >> fix.txt; git commit -a -m"Fix A"
    echo change >> fix.txt; git commit -a -m"Fix B"
    echo change >> fix.txt; git commit -a -m"Fix C"
    echo change >> fix.txt; git commit -a -m"Fix D"
    echo change >> fix.txt; git commit -a -m"Fix E"
    echo change >> fix.txt; git commit -a -m"fixup! Fix 3"
    git commit --amend
    echo change >> fix.txt; git commit -a -m"squash! Fix D"
    git rebase -i --autosquash HEAD~7
    git rebae --abort
    git rebase --abort
    git help rebase
    git tag BEFORE_LUNCH
    git log 
    git log --pretty=raw
    git config user.name "Karen"
    git rebase -i HEAD~1
    git log --pretty=raw
    git log --oneline
    git show 94dd570
    git format-patch 94dd570
    git show 94dd570
    git show 94dd570:fix.txt 
    git show 94dd570:fix.txt | mate
    git branch feature2
    echo change >> fix.txt; git commit -a -m"master 1"
    echo change >> fix.txt; git commit -a -m"master 2"
    echo change >> fix.txt; git commit -a -m"master 3"
    git checkout feature2
    echo change >> fix.txt; git commit -a -m"feature 1"
    echo change >> fix.txt; git commit -a -m"feature 2"
    echo change >> fix.txt; git commit -a -m"feature 3"
    git checkout master
    git cherry-pick d4e4136
    git status
    head fix.txt
    git clean -fd
    git status
    it add .
    git add .
    git diff --staged
    vim fix.txt
    git add .
    git commit 
    git checkout --ours
    vim fix.txt
    git add .
    git commit 
    open .
    git log --pretty=raw -1
    git reset --hard HEAD~1
    git cherry-pick -x d4e4136
    vim fix.txt
    git ad d.
    git commit 
    git add .
    git commit
    gitk
    git push
    hub browse
    clear
    git reflog
    git checkout master
    git reset --hard origin/master
    git branch feature3
    generaterandomchanges 5 master txt
    git checkout feature3 
    generaterandomchanges 5 featurethree txt
    gitk
    gitk --all
    git checkout master
    git cherry-pick 939d
    git cherry-pick 9e9d
    git merge feature3
    gitk --al
    gitk --all
    git reset --hard HEAD~1
    git checkout feature3
    git merge master
    git merge-base feature3 master
    git reset --hard HEAD~1
    git log --oneline master..feature3
    git log --oneline feature3..master
    git log --oneline master..feature3
    git log --oneline feature3..master
    gitk --all&
    git branch --no-merge
    git merge --no-commit feature2 master 
    git merge --abort
    git status
    git reset --hard HEAD
    git config alias.inbound "log master..origin/master"
    git log --oneline master...origin/master
    git log --oneline origin/master...master
    git log --oneline feature3...master
    git diff feature3 master
    git diff feature3..master
    git diff feature3...master
    git diff feature3...master > file1.txt
    git diff feature3..master > file2.txt
    diff file1.txt file2.txt
    diff file1.txt file2.txt | more
    git log --merge
    git help log
    git log --merges
    git help log
    ls
    mv src other
    git add -A .
    git commit -m"Moved the folder"
    generaterandomchanges 5 things txt
    git log --follow -- other/Division.groovy
    git log --follow --stat -- other/Division.groovy
    git log --not master --patch
    git log --not feature3 --patch
    git log master --not feature3 --patch
    git log master --not feature3 --patch > givethistoothervendor.patch
    git branch ks/feature1
    git branch mm/feature1
    git log --branches='*feature1'
    git branch -r
    git branch 
    git branch -a
    git log --stat -3
    git status
    git checkout master
    git log --stat -3
    ls
    mv README.txt NEWNAME.txt
    git add .
    git add -A .
    git commit -m"Rename"
    mv NEWNAME.txt NEWNEWNAME.txt
    vim NEWNEWNAME.txt
    git commit -A .
    ggit add -A .
    git add -A .
    git commit -m"Name and move"
    git log --stat -3
    git log --stat -3 -M
    git log --stat -3 -M95
    git log --stat -3 -M50
    git log --stat -3 -M10
    git log --stat -3 -M01
    git log --stat -3 -M00
    mv master1.txt masterone.txt
    vim masterone.txt
    git add -A .
    git commit -m"Renamed with changes"
    git log --stat -3 -M99
    git log --stat -3 -M01
    git log --stat -3 -M00
    touch newfile.txt
    mate NEWNEWNAME.txt
    mate newfile.txt
    git add .
    git commit -m"Copied it"
    git log --stat -3 -C
    git log --stat -3 -C -C
    git log --stat -3 -C -C | grep '=>'
    git log -S test
    git log --patch -S test
    git log --patch -S test --diff-filter=D
    git log --patch -S test --diff-filter=A
    clear
    git show HEAD~3
    git show HEAD^^^
    git checkout -b feature4
    generaterandom changes 2 feature4 txt
    generaterandomchanges changes 2 feature4 txt
    generaterandomchanges 2 feature4 txt
    git checkout master
    generaterandomchanges 2 master txt
    git merge feature4
    generaterandomchanges 2 master txt
    git show HEAD~1
    git log --oneline HEAD~2 -1
    git log --oneline HEAD~3 -1
    git log --oneline HEAD~4 -1
    git log --oneline HEAD^ -1
    git log --oneline HEAD^^ -1
    git log --oneline HEAD^^^ -1
    git log --oneline HEAD^^2^ -1
    git log --oneline HEAD^^2 -1
    git log --oneline HEAD^^1 -1
    git log --oneline HEAD^^1^ -1
    git show-branch
    git branch -vv
    git rev-parse origin/master~17
    git rev-parse master~17
    clear
    git rev-parse origin/master
    git branch -vv
    git branch -a -vv
    git rev-parse origin/master
    git rev-parse master~16
    git rev-parse master~17
    git rev-parse master~15
    git help --all
    cd hellogitworld
    git show-branch
    git tag HEAD~1 FINDME
    git tag  FINDME HEAD~1
    git name-rev FINDME
    git rev-list FINDME
    git describe FINDME 
    git tag -a POINTONE HEAD~6
    git describe HEAD
    git show POINTONE-8-g40dbf1c
    git help describe
    git describe feature2
    git describe 1772
    git tag -a ANNOT1 BEFORE_LUNCH
    git describe 1772
    git tag -a ANNOT2 0dd4
    git describe 1772
    git tag -a ONEMORETIME
    git describe 4c64
    cd ..
    ls
    cp -r hellogitworld hellogitworld.subdirfilter
    cd hellogitworld.subdirfilter
    ls
    git filter-branch --subdirectory-filter src HEAD
    ls
    git log --stat
    pwd 
    cd ..
    cd hellogitworld
    git submodule add file:///Users/mccm06/Documents/Scratch/hellogitworld.subdirfilter sourcecode
    ls
    git ls-files
    git status
    git commit -m"Submodule"
    cat .gitmodules
    pwd
    cd sourcecode
    git checkout FINDME 
    cd ..
    git status
    git add .
    git commit -m"Moved sourcecode back to an older working version"
    cat .gitmodules
    git cat-file -t HEAD
    git cat-file -p HEAD
    git cat-file -p a633676c481f5013def3fb44730f3a1e2d028e85
    cat .gitmodules
    ls
    git filter-branch --index-filter "git rm -r -f --cached --ignore-unmatch resources" --prune-empty --tag-name-filter cat -- --all
    ls
    git reflog expire --expire=now --all
    git reset --hard
    git gc --aggressive --prune=now
    cd ..
    git svn clone https://github.com/matthewmccullough/scripts/trunk

### Rebase-on-pull  Configuration

    [branch]
        # Automatically set up pull to be --rebase
        #autosetuprebase = always
