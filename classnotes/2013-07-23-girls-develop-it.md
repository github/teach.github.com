---
layout: bare
title: Girls Develop It
description: Girls Develop It Class Notes
tags: [notes, public, workshop]
path: classnotes/2013-07-23-girls-develop-it.md
eventdate: 2013-07-23
---

## Teachers
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Jesse Toth ([Twitter](http://twitter.com/jesseplusplus), [GitHub](https://github.com/jesseplusplus))

## Resources
* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [Book Authoring on Git and GitHub](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [Post Receive Hooks](https://help.github.com/articles/post-receive-hooks)
* [GitHub Training Videos](http://training.github.com/resources/videos/)
* [Using Git with Media Temple](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.8.0 or higher

## Suggested Books, Articles
* [Free ProGit Book](http://git-scm.com/book)
* [Getting started with Version Control](http://teach.github.com/articles/lesson-new-to-version-control/)
* [The GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
* [DVCS Workflows Book](https://github.com/zkessin/dvcs-workflows)
* [Git Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Git Workflow Links](https://pinboard.in/u:matthew.mccullough/t:git+workflow)

## Course Materials, Links
* [Git Teaching Materials](http://teach.github.com)
* [Course Slides](http://teach.github.com/presentations/)
* [Course Slides Source](https://github.com/github/teach.github.com/tree/gh-pages/presentations)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command History

    git --version
    git config --global user.name
    git config --global user.name "Brent Beer"
    git config --global user.name
    git config --global user.name "Brent Beer"
    cd ~/Desktop/
    mkdir scratch
    cd scratch/
    git config --global user.email
    git config --global user.email "brentbeer@github.com"
    git config --global user.email
    git init newproject
    cd newproject/
    ls -a
    ls
    ls .git/
    ls -p .git/ 
    man ls
    git config --local --list
    git status
    vim first.txt
    mvim first.txt 
    git status
    git add first.txt
    git status
    git commit -m'initial commit'
    git status
    git add first.txt
    git status
    ls
    git add second.txt
    vim first.txt 
    git status
    git add first.txt
    git status
    git commit -m "proper sentence structure needed"
    vim first.txt 
    git status
    git diff
    git diff first.txt
    git status
    git add first.txt
    git status
    git diff 
    git diff --staged
    git diff --cached
    git diff --staged
    git status
    vim first.txt 
    git status
    git diff 
    git diff --staged
    git diff HEAD
    git status
    git add first.txt
    git status
    git diff --staged
    git commit -m "add a teaser of the last line"
    vim .git/HEAD
    clear
    git log
    cd ~/scratch/
    cd git
    git log
    git log
    cd ~/Desktop/scratch/newproject/
    git log
    clear
    git log --stat
    git log --stat --patch
    git log --format=raw
    git log --format=raw -1
    git log  -10
    git log -1 --word-diff
    git log -1 --word-diff -p
    git log -1 --color-words -p
    git log -1 --color-words -p --stat
    git log -S "last"
    git log -S "last" -p
    git log -S "line" -p
    git log -S "second" -p
    git log -S "second"
    git grep "line"
    ls
    vim second.txt
    git status
    git add second.txt
    git status
    git commit -m"this file should be deleted shortly. this file is for an example that i will use the `git rm` command on."
    git log -1
    git status
    ls
    git rm second.txt
    git status
    git diff --staged
    git commit -m "removed worthless second file"
    ls
    vim third.txt
    vim third.txt
    git add third.txt
    git commit -m"prepped for deletion"
    git status
    open .
    git status
    clear
    git help add
    git add .
    git status
    git add -u third.txt
    git status
    git commit -m"deleted third file"
    clear
    mkdir docs
    git status
    git status
    ls
    vim README.md
    git status
    git add README.md
    git commit -m "begin a readme for friendliness"
    git status
    ls
    mv README.md docs/
    git status
    git status -u
    git add -A .
    git status
    git commit -m "move readme to docs for documentation"
    vim docs/README.md 
    mv docs/ README.md
    git status
    ls README.md/
    mv README.md/ .
    mv README.md/ ./README
    ls
    ls -p
    git status
    git status -u
    git add -A .
    git status
    git commit -m "move readme into special directory"
    git log -1 -p
    git log -1 --stat
    git log -1 --stat -M30
    git log -1 --stat -M20
    git log -1 --stat -M10
    git log -1 --stat -M5
    git log -1 --stat -M2
    git log -1 --stat -M30 -C
    git log -1 --stat -M30 -CC
    git log -1 --stat -M30 -C-C
    git log -1 --stat -M30 -C -C
    git status
    mv README/README.md documents/
    mkdir documents
    mv README/README.md documents/
    git status
    git add -A .
    git status
    git commit -am "moved readme into a full documents directory"
    vim .env
    git status
    git add .
    git status
    git diff --staged
    git commit -m "accidentally commit env file"
    vim .env 
    git status
    git rm --cached .env
    git status
    vim .gitignore
    git status
    ls -a
    git add .
    git status
    git commit -m "stop tracking the env file"
    vim .env
    git status
    vim .secret
    git status
    cat .gitignore 
    git config --global --list
    git branch
    git status
    git branch feature1
    git branch lunch_time
    git branch learning
    git branch
    git branch test
    git checkout test 
    git log --graph --oneline --decorate --all
    mkdir tests
    vim tests/first.rb
    git status
    git status -u
    git add .
    git status
    git commit -m "begin ruby tests"
    git status
    git log --graph --oneline --decorate --all
    git checkout master
    ls
    git checkout lunch_time
    vim lunch.txt
    git status
    git add .
    git commit -m"begin lunch driven development"
    git log --graph --oneline --decorate --all
    git checkout test
    git log --graph --oneline --decorate --all
    git status
    vim first.txt 
    git status
    git checkout -- first.txt
    git status
    git checkout master
    git branch
    git branch -d learning 
    git branch -d test
    git branch -D lunch_time 
    git log --graph --oneline --decorate --all
    git config --global alias.lol "log --graph --decorate --oneline --all"
    git lol
    git lol -5
    git branch
    git checkout test 
    vim .
    git branch -m feature1 feature_new
    git branch
    git checkout master
    git branch -m master production
    git branch -m production safe
    git branch -m safe master
    git lol
    git checkout test
    ls
    vim tests/integration.rb
    git status
    git add .
    git commit -m "begin integration testing"
    git lol -4
    git diff master
    git log master..test
    git lol -5
    git checkout master
    git merge test
    git lol -5
    generaterandomchanges 4 master_random txt
    git lol -5
    git checkout test
    generaterandomchanges 3 test_random txt
    git lol -10
    git checkout master
    git merge test
    git lol -10
    git log -1 --format=raw
    git checkout test
    git lol -10
    git checkout master
    git checkout test
    git merge master
    git lol -10
    generaterandom 2 test_again txt
    generaterandomchanges 2 test_again txt
    git checkout master
    git lol -5
    git merge test --no-ff
    git lol -10
    git branch -d test 
    ls
    ls README/
    ls documents/
    git branch readme_edits
    git checkout readme_edits 
    vim documents/README.md 
    git status
    git commit -m "add a thankyou for reading"
    git add documents/
    git status
    git commit -m "add a thankyou for reading"
    git status
    git checkout master
    vim documents/README.md 
    git add documents/
    git commit -m "add a goodbye message"
    git lol -5
    git merge readme_edits 
    git status
    vim documents/README.md 
    git status
    git add documents/
    git status
    git commit
    git log -1 --format=raw
    git log -1
    git lol -10
    git checkout readme_edits 
    git merge amster
    git merge master
    vim documents/README.md 
    git add .
    git commit -m "should really be a h2 header for thankyou
    git commit -m "should really be a h2 header for thankyou"
    checkout master
    git checkout master
    vim documents/README.md 
    git add .
    git commit -m "thank you should be a smaller heading"
    git merge readme_edits 
    git diff
    git status
    git merge --abort
    git status
    cd ..
    git clone https://github.com/githubstudent/hellogitworld
    cd hellogitworld/
    git lol -10
    git branch
    git branch -r
    git branch -a
    git status
    git lol -10
    git branch githubstudent-feature
    git lol -5
    ls
    vim githubstudent_greeting.txt
    git config --global alias.lol
    git checkout githubstudent-feature 
    git status
    vim githubstudent_greeting.txt
    git status
    git add githubstudent_greeting.txt
    git commit -m "added greeting to be as friendly as possible"
    git lol -5
    git push -u origin githubstudent-feature 
    git config --global --unset credential.helpe
    git push -u origin githubstudent-feature
    git remote -v
    git remote add teacher https://github.com/githubteacher/hellogitworld
    git remote -v
    git fetch
    git fetch teacher
    git branch
    git branch -r
    git lol -20
    git lol
    git status
    git checkout master
    git status
    git merge teacher/master
    git lol -5
    git status
    git push origin master
    git lol -4
    cd ..
    git clone https://github.com/githubteacher/hellogitworld hgw-teacher
    cd hgw-teacher/
    git remote -v
    git config  --local user.name
    git config  --local user.name "GitHub Student"
    git config  --local user.email "training+githubstudents@github.com"
    ls
    git branch -b githubstudent-test
    git checkout -b githubstudent-test
    ls
    vim githubstudent_greeting.txt 
    git status
    git add .
    vim runme.sh 
    git status
    git add .
    git commit -m "change greeting and runme script"
    git push -u origin githubstudent-test 
    git status
    vim runme.sh 
    git status
    git commit -a -m "almost empty commit to fix #23"
    git push origin githubstudent-test 
    git push -u origin githubstudent-test 
    git checkout master
    git fetch
    git status
    git pull
    git status
    git branch
    git lol -5
    git checkout -b reset-test
    generaterandomchanges 5 reset txt
    git lol -10
    git lol -10
    git reset --soft HEAD~2
    git status
    git diff --staged
    git commit -m "some random changes"
    git lol -10
    vim reset4.txt 
    git lol -5
    git commit -am "non-random text added"
    git reset HEAD~2
    git status
    git diff
    cat reset4.txt 
    git add .
    git commit -m "new reset files"
    git status
    git lol -5
    git reset --hard master
    git lol -5
    git reflog -20
    git reset --hard 27557ad
    git lol -5
    git lol -10
    git log -1 -p
    git reflog -15
    git checkout master
    git status
    git reset --hard HEAD~40
    git reset --hard HEAD~10
    git status
    generaterandomchanges 15 random_master_screwup txt
    git status
    git reset --hard origin/master
    git status
    git lol -10
    rm src/
    rm -rf src/
    git status
    git reset --hard origin/master
    git status
    git reflog -10
    git reflog -20
    git status
    git checkout -b test-push-demo
    vim .
    git branch -m test-push-demo readme-fixes-bad-matthew
    git status
    git diff
    git diff --color-words
    git commit -am "changes to readme for githubteacher repo"
    git push -u origin HEAD

## Chat History

    Cori J.  Slides available at: http://teach.github.com/presentations/git-foundations.html
    brntbeer  Good morning!
    brntbeer  for those of us just joined in recently, the slide presentations are at http://teach.github.com/presentations/git-foundations.html
    and you can find some hints about how to mvoe through the slides with the '?' key, but generally the arrow keys to move through would be great
    brntbeer  Feel free to ask questions in here if anyone doesnt want to raise their hand or speak up in class. either way works!
    Maria P.  Sorry, what does it mean for files to be LF in the repo?
    Lindsay E.  http://teach.github.com/presentations/git-foundations.html
    jesseplusplus  how did you get there lindsay?
    Lindsay E.  that was earlier in the history, pasted in by the teacher
    looks like the full history is not showing up for everyone :(
    Angeline T.  This is the description of the class I thought I signed up ...
    View paste 
    "The Foundations class helps you, as a newcomer to Git and GitHub, fully grasp the the concepts and application of distributed version control so that you can effectively begin using this productivity-enhancing suite of tools. During this live training course, we’ll explore the foundations of Git and GitHub through practical every-day commands and processes. We’ll conclude with workflow ideas and practical tips that will get you on the road to mastery of this revolutionary version control system."  Feeling kinda lost because a lot of CLI knowledge is assumed.  :-(
    jesseplusplus  Angeline: let us know if we need to slow down or if you need help with any of the CLI stuff. Git and GitHub are used most often on the command line, so we feel that it is useful to show you how to use it there.
    Angeline T.  Thanks Jesseplusplus ... let me try to absorb through osmosis and perhaps at lunch I will seek help ... hate to slow the whole class down ...
    Lindsay E.  does it matter if the quotes are single or double after the -m ?
    angie_bui  Nope, it doesn't matter
    as long as your closing with the same type of quotes ;)
    Lindsay E.  thx :)
    angie_bui  One note though: if you're using single quotes after your -m (aka the commit message), try not to use single quotes in the message like can't or don't -- it might get a little funky
    Lindsay E.  thx
    Christine S.  keep getting error : fatal: bad default revision 'HEAD'
    how can I fix that?
    jesseplusplus  which command are you running when you get that Christine?
    Christine S.  View paste 
    Christines-MacBook:newproject christineshellenbarger$ git log
    fatal: bad default revision 'HEAD'
    Christine S.  Thanks@
    brntbeer  teach.github.com/presentations/git-foundations.html
    Maria P.  Just to confirm: so 'git add -u' stages both new and deleted files?
    And what's the diff between 'git add -u' and 'git add -u .' ?
    jesseplusplus  correct
    adding the . tells it to do this for all files in the current directory
    Maria P.  Without the '.'. what does it default to?
    jesseplusplus  doing 'git add -u somefile.txt' will do it just for the file
    Maria P.  As in, if you don't add '.', what files does it add?
    jesseplusplus  i don't think it does anything if you don't add . or a filename
    Maria P.  Oh ok. So you can't just say 'git add -u', you have to say 'git add -u somefile'
    Cool, thanks : )
    jesseplusplus  right, which is why we did the '.'
    sure :)
    brntbeer  https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig
    alex  git log --graph --decorate works but --all and --online aren't recognized commands on my windows console. Any ideas?
    alex  --oneline
    --oneline and --all aren't recognized
    brntbeer  alex: what version of git are you on? --oneline is relatively new i believe
    similarly, you can get around it by instead saying "--pretty=oneline --abbrev-commit" instead
    alex  version is 1.8.1 on windows git
    Maria P.  Still fuzzy on the difference between merge recursive and merge fast-forward. So if you merge recursive, does that mean you get all of the commits for all the changes to master, but if you merge fast forward, you only get the very last commit from master?
    jesseplusplus  you get all of the commits into master in both cases
    Amanda S.  Merge fast forward occurs when you did not make any changes to the master branch, and you then merge a branch you have made changes to
    jesseplusplus  but merging with fast forward does not make a merge commit
    Maria P.  So basically it does not create a new commit message when you merge and you can't tell when it was merged back in?
    Amanda S.  Recursive merge occurs when you have made changes in both the master branch, and the branch you are merging in
    jesseplusplus  merging fast forward makes it look like you just made those commits right onto master
    maria: right
    Gaby  sorry, maybe i got lost but did we already went over the Rebase part from the presentation?
    jesseplusplus  We haven't
    I don't think we're going to cover rebasing
    as a general piece of advice, I would advise against rebasing branches and stick with merges. it's very easy to get into a messy place with rebasing
    Gaby  great! thanks for the advise
    *advice
    Lillian C.  this is the repo he's forking: https://github.com/githubteacher/hellogitworld
    Lindsay E.  what's the step after fork?
    nevermind :) I just had the old view
    brntbeer  https://github.com/githubteacher/hellogitworld
    brntbeer  git config --global alias.lol "log --graph --decorate --oneline --all "
    Christine S.  View paste 
    I'm getting this message: warning: push.default is unset; its implicit value is changing in
    Git 2.0 from 'matching' to 'simple'. To squelch this message
    and maintain the current behavior after the default changes, use:
      git config --global push.default matching
    To squelch this message and adopt the new behavior now, use:
      git config --global push.default simple
    anything I need to do?
    jesseplusplus  are you just typing 'git push' with no other parameters?
    alex  i have access issues
    alex  in git push -u orgin alexmac05-feature, what is orgin?
    jesseplusplus  origin tells it which server to push to
    in this case origin is the one that you also got the code from
    alex  github?
    i'm confused
    jesseplusplus  right!
    you could also have a copy of your repository on another server somewhere else, which you could push to instead of origin
    Dorrit G.  I was logged out of chat and I no longer have the history. I would like to have the link to Matthew McCullough's list of useful shortcuts to set up. Can you repost it?
    alex  ok that worked! thanks
    jesseplusplus  sure, 1 second
    https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig
    Cori J.  View paste 
    I got the error message: There isn't anything to compare.
    We couldn't figure out how to compare these references, do they point to valid commits?
    I assume I didn't push it correctly. Halp?
    jesseplusplus  did you add and commit the new file before pushing and opening the pull request?
    Cori J.  I did the first two things
    I think I missed a step
    jesseplusplus  did you do git push -u origin HEAD?
    to push it to your fork on github?
    Cori J.  it's asking me for a password but it won't let me type
    jesseplusplus  you can type, but it won't show anything on the screen
    it is still entering the password
    Cori J.  gross
    hooray, got it
    thanks!
    Lindsay E.  what do we type to download all the stuff from teacher?
    jesseplusplus  `git merge teacher/master` if you have the remote set up as teacher
    Gaby  what does means git lol?
    Angela L.  lol is an alias for log --graph --oneline --decorate --all
    Gaby  thanks
    Cori J.  git config --global --add alias.lol "log --graph --decorate --oneline"

