---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-03-29-online-foundations-class.md
eventdate: 2013-03-29
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brentbeer))

## Resources
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
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)
* [Adding SSL Certificates for GitHub.com (Common for Windows XP)](http://stackoverflow.com/questions/3777075/https-github-access/4454754#4454754)
* Disabling SSL Certificate Checks for Git:

        git config --global http.sslVerify false


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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Day One Chat
    matthewmccullough   Wonderful to see you all here early! Thanks for signing in.
    8:00 AM
    brntbeer    Hi everyone! If anyone has any questions they want to bring up in the chatroom, let me know!
    PHANIDHAR K.    has entered the room
    brntbeer    http://teach.github.com/presentations/git-foundations.html for anyone wanting to follow along
    https://github.com/signup/free
    matthewmccullough   http://mac.github.com
    GUI Only
    http://windows.github.com
    GUI + CLI
    Tom W.  View paste 
    on windows I had to execute
    "mkdir .git"
    otherwise I got the "could not lock config file .git/config" error
    brntbeer    Tom Wasiluk: shouldnt need to do that. the only reason you'd get that problem is if you didnt include --global in your configuration setting
    matthewmccullough   git config --global color.ui auto
    Tom W.  yes, I might have started without the --global option
    Jeff C. Once we turn them on - do they stick?
    brntbeer    Jeff Clark: if we set them on global, they'll stick across all projects. but regardless, they're alawys set
    Old T.  What is the command line equivalent for help by command? Such that I could find help on the config command?
    8:25 AM
    brntbeer    `git help config`or just "git help"
    `git help <command>` is how we get the manual for the command
    Jeff C. Where do we get the tree command for Mac's?
    8:30 AM
    brntbeer    on mac, https://github.com/mxcl/homebrew for downloading something like the tree command
    8:35 AM
    Jody    The shopping cart analogy for the staging area is great. I get it now.
    brntbeer    glad to hear it! i love it too
    we use it quite a bit, putting things in, taking things out, etc
    8:40 AM
    brntbeer    The staging area definitely acts like a cart though, multiple changes across multiple files can be added there to give you one solid "transaction" or commit
    nwj what does the text above the coloring indicate?
    Paul C. Can you set --color-words as a global setting?
    8:45 AM
    Old T.  what is the -m option on commit?
    how does diff know which file to diff?
    nwj so for example
    --- a/firest.txt
    Ken D.  View paste 
    I'm still stuck on git add, I get (use "git add <file>..." to inlcude what will be committed)

    .first.txt.swp
    .first.ext.swp
    Nothing added to commit but untractked files present (use "git add" to track
    8:50 AM
    brntbeer    Paul Coleman: that can be set as an alias in your git config for making a new command to always give you the color words. i have a command called 'dw" that gives me the diff of words with color-words. i set this by saying `git config --global alias.dw "diff --color-words"
    Ken Deeds: we'll add a way shortly to ensure we dont add those .swp files, sorry about those being there for now! gotta be careful when we do our `git add` to ensure we're not adding those in to our staging area
    9:00 AM
    Old T.  git diff show the difference between?
    9:05 AM
    brntbeer    just `git diff` by itself shows the changes you have in your working directory against the last known change of that file
    PHANIDHAR K.    but the diff "from" is always the working directory
    ?
    Old T.  So if I save a file. Add it. Commit it. And then do a git diff then there is no diff?
    But if I save a file. Add it. And then do a git diff I will see the difference between my last commit and my not yet committed file?
    9:10 AM
    brntbeer    PHANIDHAR KANDALA: it depends on what we ask of it, without any arguments (just saying `git diff`) then yes absoltely
    Old T.  ok. thx.
    matthewmccullough   git config --global alias.lol "log --graph --oneline --decorate --all"
    Old T.  Some discussion on what the head is and what the master is?
    9:15 AM
    brntbeer    HEAD is thought of as just a label for "where was our most recent change"
    Old T.  When you branch then the branch name would replace master?
    ok
    brntbeer    Old Town Creative: definitely!
    9:20 AM
    Paul C. using 1.8.2 it made me use -f to remove
    brntbeer    Paul Coleman: -f on git rm?
    Paul C. yes...but now I see I hadn;t committed..might have something to do with that
    brntbeer    ah, possibly! using -f can be pretty dangerous
    Old T.  Does command shell inherit all system command prompot plus git commands?
    brntbeer    Old Town Creative: on windows or mac?
    Old T.  windows
    brntbeer    it should be just fine to use either command window or Git Bash that is installed when you install github for windows
    Paul C. Yep..it forced -f because I hadn't committed.
    9:25 AM
    duncan  woah robot voice
    Jody    A little fuzzy on this question asked.... 'But if I save a file. Add it. And then do a git diff I will see the difference between my last commit and my not yet committed file'
    Paul C. robot!
    brntbeer    sorry guys!
    duncan  lol
    nwj are there common instances where git add -A . will not follow deletions, renames etc
    Ken D.  Old Town Creatice - was just a directory issue, created project in spot I wasn't expecting, figured it all out
    Daniel G.   It happened two or three times where a file was renamed with only a letter case change, and that file was removed from Git... is this normal, (we are using windows) and how to rename a file if there's only a case change? Thanks!
    George  how do you unindex a file?
    Jody    A little fuzzy on this question asked.... 'But if I save a file. Add it. And then do a git diff I will see the difference between my last commit and my not yet committed file'... wouldn't you have to use git diff --staged ?
    9:30 AM
    brntbeer    Daniel Giguere: i dont know if the file would have been removed from git. Git may have shown it as a deletion and then a new file created. Once you run a "git rm" on the old file name and "git add" on the new file name, it'll show a rename after the fact
    Daniel G.   (For example: C:\test\tEst.txt --> c:\test\test.txt)
    Thanks!
    Bryan C.    Word of caution: Case sensitive FS on OSX will break most Adobe products
    9:35 AM
    Ken D.  10:47 for return time? Timer is frozen on my screen.
    brntbeer    thats correct. told matthew in text ;)
    Old T.  I am not exactly sure how to ask this question. But I need some context for the git paradigm. We are all comfortable with the OS directory structure. I am having a hard time with the staging notion. I come from a StarTeam background. It seems like the staging adds a dimension of complexity.
    From an instruction standpoint. I think scaffolding on the familiar, i.e. directory structure and then explaining how git hub adds it's world view to that familiar topic would help those of us who are big picture minded sync with git. My two cents.
    Anthony A little off topic: which variation of Finder was used on screen?
    Old T.  I think it is a great idea having one person field the chat while the other moves through content.
    9:50 AM
    Jeff C. Perhaps a really silly question: The working project is selected by which directory I am in at the command line? I don't "open" a project?
    10:05 AM
    Paul C. Can you add a file that's in the ignore list? If you do what happens? #breakingthings
    brntbeer    haha Paul Coleman. you can force it, but generally i just remove it from the ignore and then add it
    love the questions!
    10:10 AM
    Randall V.  What is the pattern to ignore Finder .DS_Store files?
    brntbeer    matthew beat me to it! you can just mention ".DS_Store" literally
    Paul C. Can you use regex?
    brntbeer    Paul Coleman: not exactly. you can use glob patterns however. i find that's definitely good enough since my ignore behavior is for only a few things
    like an entire directory could be ignored, or an entire directorythat has files ending in ".build" like: builds/*.build
    or "logs/*.build", you get the idea ;)
    Paul C. Makes sense
    10:20 AM
    Daniel G.   View paste 
    These target folders should be ignored:

    <git repo>/folder1/integration/folderA/target/
    <git repo>/folder1/integration/folderB/target/
    <git repo>/folder2/integration/folderA/target/
    <git repo>/folder3/integration/folderA/target/

    Therefore we added this in the .gitignore file, but without luck:

    integration/*/target/
    (in the parent folder)
    Ken D.  if you can add the "subfolder/filename" to the root .gitignore is there a reason to make a separate .gitignore in the subfolder directory?
    brntbeer    Daniel Giguere: that seems like those are folders. you can't ignore a folder specifically, only the files inside of folders
    Ken Deeds: definitely, especially around different languages having different files they may auto-generate
    so sometimes you'd want to ignore a file and not on another
    Ken D.  k, got it
    10:25 AM
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    10:30 AM
    Jeff C. "Pull" implies, well, a pull. Can the Teacher pull them all?
    brntbeer    We clicked fork on the teacher's project, which created a copy to our username that we can edit. made the edit, and then clicked "pull request" to propose this change back to the teacher
    Jeff Clark: one at a time, certainly
    10:35 AM
    matthewmccullough   https://github.com/githubteacher/hellogitworld/pulls
    Jeff C. Now - but our forks are now obsolete?
    10:40 AM
    brntbeer    Jeff Clark: we'll definitely be showing how to keep your fork up to date! this may happen tomorrow or here in the next 20 minutes. but easily doable
    nwj is pull request functionality built into git, or is it unique to github
    10:45 AM
    brntbeer    its a GitHub only thing
    Daniel G.   brntbeer: to solve this, we added .gitignore files in each and every subfolders, each containing the "/target" folder. Any way to set that in the parent .gitignore file ?
    matthewmccullough   https://github.com/githubteacher/hellogitworld/
    brntbeer    Daniel Giguere: interesting! give me a second to test something locally =)
    Randall V.  Can you see who has cloned something?
    10:50 AM
    brntbeer    Daniel Giguere: so, if we look at this situation of "ignore all things under the target directory" like this: http://cl.ly/image/3F0t1m2j1g2t
    we can create an ignore rule like this:
    View paste 
    folder*/integration/folder*/target/*
    wherein i say "any folder starting with the name "folder", integration, another folder named starting with "folder" and target, then all things in target
    we can now see http://cl.ly/image/0M2t0h3x1B20
    the only change is the .gitignore file
    so because the ignore ignores all things in that target folder, the folder itself wont be checked into git
    hope that clears it up a bit!
    Daniel G.   Will try that, thanks!
    10:55 AM
    Jeff C. jclark12020
    Jeff    jeffland
    nwj https://github.com/nwj
    Randall V.  randallvenhola
    Dan G.  skid-dgreen
    Tom W.  twasiluk
    Lia L.  skid-llopinto
    Paul C. skid-pcoleman
    Ken D.  DirtyDeeds
    Bryan C.    bdcribbs
    brntbeer    deskeli for dan in the chat
    PHANIDHAR K.    kandaala
    duncan  duncancarroll
    George  grandvortex
    Randall V.  Question for tomorrow: How to setup a git server internally
    Old T.  A little more on the branch view? Is your finder showing actual file system files / dirs?
    Tom W.  If I accidentally push a password to my repository, is there any way to remove that action from the history of changes?
    RyanG   Will tomorrow cover working with multiple branches and a workflow for stashing files?
    Daniel G.   dgiguere-erpguru
    brntbeer    Tom Wasiluk: the best move in that situation is to just change your password. i take the thought of "if its on the internet for 1 second, it could be grabbed by someone"
    John L. jluu
    brntbeer    RyanG: definitely!
    RyanG   awesome, thanks
    11:00 AM
    brntbeer    Old Town Creative: we'll be showing more branching tomorrow for sure.
    Tom W.  my repository was private, but I wanted to make it public
    matthewmccullough   https://help.github.com/articles/remove-sensitive-data
    Tom W.  great! thanks for that link
    Lia L.  has left the room
    Jeff    What was the slides link?
    brntbeer    http://teach.github.com/presentations/git-foundations.html

## Day Two Chat

    matthewmccullough   Ready to start Day #2!
    Jeff C. Can you publish the new build for the integrated GitHub and Git command line install for windows? One of my colleagues didn't get the link yesterday
    Sorry - the link for it.
    nwj http://windows.github.com/
    d/l link is top right
    brntbeer    to copy this down to your laptop via the terminal: `git clone https://github.com/githubteacher/hellogitworld.git hgwteacher`
    i've typed this, as matthew did, in his scratch directory, this is just a directory we do our work in
    it also creates the folder called "hgwteacher"
    so, once we run the clone command, we can type "cd hgwteacher"
    8:10 AM
    Paul C. Do the changes we make on a file that's in both branches appear in both branches or is this essentially a difference in what files are there?
    Old T.  can you give a 10 sec explanation of how that works, maybe a bit on how the repository actually works and tracks.
    nwj what does the -u flag do?
    8:15 AM
    Old T.  nwj...i found how to get help.....git help push
    For all options on any command.
    nwj nice thx
    brntbeer    Old T.: the separate branches work in the sense that every branch can say "who is my parent commit?" so this allows us to walk through the graph structure. the branching is just a label to one of these commits, and as we move off to a different branch, the commits are tied to a different label
    so the "master" label points to a previous commit in history, and matthewfeature1 points to a differentone as we start branching off and making more changes
    PHANIDHAR K.    i am seeing my feature txt file in both the master and branch
    what mistake i would have done
    i tried deleting and recreating only in my feature branch but still could see it in master
    brntbeer    PHANIDHAR KANDALA: yes, thats because it was created in the master branch before you branched
    so, because you started a new branch from a point in history when that file already existed, your branch has that as well
    Old T.  I don't think I understand the notion of a 'parent commit'.
    brntbeer    i'll get matthew to do a loglive on the side to show this concept better.
    8:20 AM
    rdog    What happens if 2 different users call a branch the same name and push?
    brntbeer    rdog: it'll say that branch already exists and that they should pull it, and when they pull, it'll probably create a merge conflict
    rdog    gotcha, thanks
    brntbeer    which, is something we'll see today absolutely
    nwj i'm getting a 403 error when trying to push my branch
    and on an older version of git so cc-off is not a recognized command
    Bryan C.    pushed!
    nwj kk
    brntbeer    nwj: can you type "git remote -v" for me real quick as well?
    nwj View paste 
    $ git remote -v
    origin  https://github.com/githubteacher/hellogitworld.git (fetch)
    origin  https://github.com/githubteacher/hellogitworld.git (push)
    brntbeer    and what is your username on github?
    nwj nwj
    https://github.com/nwj
    matthewmccullough   https://github.com/githubteacher/hellogitworld/pulls
    8:25 AM
    matthewmccullough   git config --unset --global credential.helper
    Ken D.  in git --help I can't find graphlive
    matthewmccullough   https://github.com/matthewmccullough/scripts/
    Ken D.  ty
    brntbeer    the graphlive is somethign we just use for demonstrative purposes. it'll be running live on the side there for a while so i hope when running it it doesnt trip people up for today =)
    nwj unset the credential
    still 403 error
    brntbeer    nwj: can i see a `git --version`
    nwj version is 1.7.1
    so pretty old
    brntbeer    are your ssh keys published on github.com?
    nwj let me check
    brntbeer    just checking in the background, i see that you have an arch laptop and desktop one, but also a lenovoLaptop one
    so, depends which laptop you're on now, btu i think we're going to be good to go if you're on one of those computers
    8:30 AM
    nwj setting up new key
    since it's a different computer
    will take me a sec
    brntbeer    ok. let me know if you need any help with that. our docs are pretttty good about that
    Paul C. Oops...I changed fix.txt as well.
    nwj ok, i have a key up now
    it's the one labeled for git training
    brntbeer    nwj: awesome. now we just have to set a different remote url
    8:35 AM
    brntbeer    nwj: type `git remote set-url origin git@github.com:githubteacher/hellogitworld.git`
    matthewmccullough   https://github.com/githubteacher/hellogitworld/pulls
    brntbeer    and verify this works by doing a "git remote -v" again
    nwj kk just pushed up
    thanks
    brntbeer    success!
    Paul C. Ha
    PHANIDHAR K.    i am getting master is already up-to-date with kandaalafeature1
    8:40 AM
    PHANIDHAR K.    when tried a pull request
    brntbeer    nwj: which OS are you on? just curious
    PHANIDHAR KANDALA: that's becasue kandaalafeature1 and master have the same commits on them, we need to make a new commit once we're on that kandaalafeature1 branch
    nwj running git in a centos vm
    on windows
    so an odd environment...
    brntbeer    to verify we're on the correct branch, we can run "git branch" to see which branch is *'d
    then making a commit on that branch, then doing a `git push -u origin kandaalafeature1`
    we'll have a chance to do that PR
    i see nwj, makes it more difficult to get up to date! haha
    8:45 AM
    Kevin H.    will a fetch overwrite changes to my branch if I haven't pushed yet?
    Randall Are you current edits shelved somewhere when you do a pull?
    brntbeer    fetches will only update the understanding of what's on github.com (since our remote called origin is set for github.com)
    so we update that "origin/BRANCHNAME" branch, and if we want to later, we can say `git merge origin/BRANCHNAME` when we're on our local BRANCHNAME
    so fetch doesnt overwrite your things since they're two different branches
    Kevin H.    got it thx
    brntbeer    a pull is a fetch+merge of liked named branches, so long as we originally did a "git push -u origin BRANCHNAME" when we were createing the branch
    Old T.  Would you typically have only one developer working on a branch?
    brntbeer    the -u can be used at any time, by the way
    just ensures tracking
    Old T.: totally a workflow question. that can be the case, but not necessarily forced
    Old T.  ok, it seems if you did have one user per branch then fetch is of limited value?
    8:50 AM
    Old T.  I would just pull on master to get copy of current and I have the local copy of my branch already to work offline.?
    matthewmccullough   https://github.com/githubteacher/hellogitworld/pulls
    8:55 AM
    brntbeer    Old T.: possibly, but as a social standpoint, you can see where your friends are working on, so you could coordinate when things are going into master for example
    Old T.: doing a pull updates everything locally, right
    Kevin H.    Are there ways to diff branches to see where you overlap?
    Old T.  updates the branch I am working on be it master or mine.
    Daniel G.   For big projects, 40-member teams, closed source projects, what's the best practice (is it possible to avoid pulling (merging) all the repository before pushing?)
    brntbeer    Old T.: depends on what you say in the "git pull" if you just say "git pull origin" it's just going to update all your tracking branches. so it could update a bunch of branches. a fetch keeps the process to the remote tracking branches (origin/BRANCHNAME)
    Kevin Houk: absolutely. lets make matthew do that =)
    Daniel G.   e.g. when modifying only a single line in a single file
    9:00 AM
    brntbeer    Daniel Giguere: "best practice" is kind of tough because it's personal preferences =)
    9:05 AM
    brntbeer    Daniel Giguere: hope this little walkthrough is useful! let me know if you want more examples of a workflow
    Jody    It's great.
    9:10 AM
    Daniel G.   What's the good workflow to communicate to team (Commits -> Pull -> Fix conflicts -> Push) ?
    Old T.  has left the room
    brntbeer    Daniel Giguere: yeah, you could comment on github.com and say "hey, @USERNAME, could you fix your conflicts locally and re-push them?"
    thats how we work on them
    Daniel G.   brntbeer: I meant, what's the workflow employees should use day-to-day
    Kevin H.    Any advice on branching to your personal repo (khouk31 for me) vs using branches in a project?
    Daniel G.   (We're using Git & GitHub using eGit and we lost many files 3-4 times. that's why.. missing communication to our team :) But the training is very good, we can figure out afterwards I guess
    9:15 AM
    Ryan    Could you comment on deleting branches (i.e. "Pull request merged - the $branchname branch can be deleted safely.")
    nwj you monsters, what have you done to brent?
    brntbeer    Daniel Giguere: also, you could ask us over at https://github.com/githubtraining/feedback by filing an issue. that'd be an amazing place to look at past issues (on questions asked) or file a new issue?
    Daniel G.   Thanks
    9:20 AM
    Evan    Pull requests show up in the "Issues" list. If we already have an issue for a feature, that means we have two items covering the same issue, and it's lead to confusion before. Is there a way around that duplication?
    brntbeer    Ryan: yep! that's just going to delete the branch on github.com, not your local branch. if you want to remove your local branch to reflect the web, you can say "git remote prune origin"
    Evan: absolutely. you can comment on the PR to link it to the issue. one sec while i set this up
    we can see on this issue: https://github.com/github/training.github.com/i...
    that i referenced it from another pull-request, which added that comment at https://github.com/github/training.github.com/i...
    Evan    Thanks
    9:25 AM
    brntbeer    and, furthermore, on your PR, if you had a commit with a message that said "closes #ISSUENUMBER" it could close taht issue once the merge into master happened
    as shown in https://github.com/blog/1439-closing-issues-across-repositories
    Evan    Spiffy - thank you!
    brntbeer    and https://github.com/blog/1386-closing-issues-via-commit-messages
    so, across projects, or within the same project
    merits more online material to bring preference to those workflow things =)
    Evan    A bit off topic: what's that terminal with the split panes?
    George  View paste 
    why don't all the branches show up in my github account under hellogitworld?
    brntbeer    George: as long as you're viewing github.com/githubteacher/hellogitworld they should. they wouldnt appear under your account beacuse we're collaborating on the teacher's repository
    9:30 AM
    George  so the new branch george1 that I created locally will only appear under githubteacher? \
    How do I push that into my github account?
    9:35 AM
    brntbeer    George: if you created it on the hgwteacher project that we're all working in, a "git push -u origin george1" would push that to the github.com/githubteacher/hellogitworld project
    George  Ok, thanks
    brntbeer    np!
    9:40 AM
    matthewmccullough   View paste 
    George Vortman (PRIVATE):
    why don't all the branches show up in my github account under hellogitworld?
    9:45 AM
    nwj is there a way to do that selective commit from command line? cherrypick?
    Jeff C. in the gui - how did you select the .gitignore file?
    nwj also how does the gui handle conflicts?
    9:50 AM
    brntbeer    nwj: absolutely, you can select and stage separate lines from the command line by doing a "git add -p -- FILENAME" more details on the -p flag in `git help add` or `git help commit`. definitely a more advance feature though. gui will handle conflicts by saying "CONFLICT" instead of that "NEW" file notification we saw, we generally resolve it in the same way, but you could select separate lines like we did to resolve the conflict (and not commit the merge markers like "<<<<" and ">>>>")
    Jeff Clark any edits to the file under the setting and then "save" create that file if it doesnt exist yet. otherwise you could click the checkbox to say to commit that or not
    9:55 AM
    Randall What is the root directory on the local filesystem when you clone in the GUI?
    brntbeer    Randall: it will open the gui and will depend where your other projects are. its a setting of the gui
    10:00 AM
    Kevin H.    What if the upstream is now ahead? Does it reset it to the latest commit?
    brntbeer    it'd reset it to the latest there, absolutely
    10:10 AM
    Daniel G.   Out of curiosity, will we cover what's a fast-forward vs non-fast-forward merge
    brntbeer    great timing! yes.
    a fast forward is the idea of "nothing additional things happened since i branched off here"
    10:15 AM
    brntbeer    so the idea of the branch was only in case of mistakes and if you needed to throw it out
    10:25 AM
    Bryan C.    Shouldn't d19 and e69 change?
    brntbeer    yes, that's a good point ;)
    10:30 AM
    nwj View paste 
    so you have a branch that's out of date and needs to be brought in line with master before merging in. 2 options are:
    1. pull changes from master prior to merging back
    2. rebase

    why do one vs. the other? is it just personal preference?
    Dan G.  has left the room
    brntbeer    Definitely personal preference, the first workflow you're specifying is "git checkout master && git pull origin master" to update master branch, then: "git checkout feature1 && git merge master". this updates feature1 with changes to master. when we're ready we can switch back to master and merge it back in: "git checkout master && git merge feature1"
    10:35 AM
    brntbeer    number2 involves also updating master with the "git checkout master && git pull origin master" but on our branch we switch to, we can say "git checkout feature1 && git rebase master" and then a "git checkout master && git merge feature1" is going to be a fast-forward (ff) merge and look as though there's no differences
    At the end of the day, both result in the same things, one may be easier to follow...but if you're not looking back at history all the time, it doesnt matter
    matthewmccullough   git merge origin/nwjfeature1
    git reset --hard 14ea606
    git reflog
    10:40 AM
    Jody    has left the room
    Anthony has left the room
    10:45 AM
    matthewmccullough   View paste 
    git remote add student https://github.com/githubstudent/hellogitworld.git
    git fetch student
    10:50 AM
    Kevin H.    Quick thought on the last topic (rolling back), how do you roll something back on the remote master? Can I pull down a previously closed pull request?
    10:55 AM
    Kevin H.    Perfect thanks guys. Like the "Healing Commit" analogy
    Randall Is there a way to use more user-friendly labels, like in Perforce?
    11:00 AM
    John L. Can you display the revert drawing again?
    Ken D.  has left the room
    Anthony has entered the room
    brntbeer    feedback for longer questions: https://github.com/githubtraining/feedback
    Lia L.  has left the room
    Bryan C.    Thanks!
    Tom W.  +1
    Ryan    has left the room
    matthewmccullough   Thanks all!
    Transcript and notes will be sent late today
    11:05 AM
    Tom W.  Matt, are you also the instructor for the advanced course?
    matthewmccullough   It toggles between Tim and Brent and I
    we try to load balance. ;)
    I did the most recent advanced and I think Tim is doing the next one
    And then Brent and then back to me
    Tom W.  ok ;) I'm hungry for more so I will be taking that course next month
    11:10 AM
    Randall I am looking at the issue tracking in the web interface. Looks like a feature I would like to use. Can you track issues in the github desktop client?
    matthewmccullough   Randall: The issues is a web-only thing
    besides being somewhat manageable in our mobile clients

## Day One Command Line History

    git --version
    git config --list
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git config user.email
    git config user.name
    git init newproject
    tree .git
    cd newproject
    git commit -m "My first commit"
    ps -aef | grep git
    vim first.txt
    rm .first.txt.un\~
    git diff --stat
    git diff --color-words
    git reset HEAD first.txt
    git add first.txt
    git diff --staged --color-words
    git commit -m "My second commit"
    git log --format=raw
    git diff HEAD
    git diff f9919effb5ba291b7fbe3d03f70e8111aa2f30f8
    git diff f991
    git log --stat
    git log --stat -1
    git log --stat -2
    git log --stat -3
    git config --global alias.lol "log --graph --oneline --decorate --all"
    git lol
    cp first.txt second.txt
    git statu
    git add second.txt
    git commit -m "Copy of file"
    git checkout -- second.txt
    open .
    git rm second.txt
    git reset HEAD second.txt
    git checkout HEAD -- second.txt
    git commit -m "Renamed and deleted"
    git add -A firstreduxredux.txt firstredux.txt
    git add -A .
    git commit -m "Renamed and changed"
    git log -M --stat
    git log -M90 --stat -1
    git log -M85 --stat -1
    git log -M81 --stat -1
    git log -M40 --stat -1
    cp firstreduxredux.txt third.txt
    git commit -m "Copied a file"
    git log -1 --stat -c
    git log -1 --stat -C
    git log -1 --stat --find-copies-harder
    git log -1 --stat -C -C 
    vim firstreduxredux.txt
    echo JUNK >> build.log
    git commit -m "Ignoring all log and editor temp files"
    git commit -m "Code changes"
    echo JUNK > other.log
    git add other.log
    git commit -a -m "Adding and committing in the same step"
    git config core.excludesfile
    cat /opt/boxen/config/git/gitignore
    mkdir subfolder
    cp *.txt subfolder
    cp *.log subfolder
    ls subfolder
    echo JUNK >> other.tmp
    mv other.tmp subfolder
    git status -u
    cd subfolder
    vim .gitignore
    git add .gitignore
    git commit -m "Ignoring tmp in the subfolder"
    git commit -m "Two new files"
    git clone https://github.com/githubteacher/hellogitworld.git hellogitworldteacher
    git log 
    git branch matthewfeature1
    git commit -m "Matthew feature 1"

## Day Two Command Line History

    git checkout matthewfeature1
    pwd
    git cc-off
    git push -u origin matthewfeature1
    git graphlive 10
    git config alias.cc-off
    git pull 
    vim matthewfeature1.txt
    git commit -m 
    git commit -m "Matthew on master"
    git log -4 --graph --oneline
    git checkout kandaalademo
    git commit -m "I'm helping"
    git diff master 
    git checkout -
    git diff --stat master
    vim matthewhelpskandaala.txt
    git add .
    git commit -m "More helping"
    git merge origin/kandaalademo
    git merge origin/master
    vim testdemo.txt
    git commit -a -m"Stuff" ; git push 
    cd poetry
    ls -al
    git log
    vim mariner.txt
    git diff
    cat .gitignore
    git branch matthewfeature2
    generaterandomchanges 2 sample txt
    git push
    cd ..
    cd hellogitworldteacher
    git clean -nd
    vim fix.txt
    git commit -a -m "A bad change"
    git log -1
    echo fix >> fix.txt ; git commit -a -m "A bad change"
    git clean -fd
    echo "Things are a mess"
    subl matthewfeature1.txt
    git stash
    git pull
    git stash pop
    ls
    git graphlive 25
    git reset --hard
    generaterandomchanges 5 masterstuff txt
    git graphlive 15
    git branch showfastforward
    git checkout showfastforward
    generaterandomchanges 3 feature txt
    git merge showfastforward
    clear
    git fetch
    git reset --hard origin/master
    git branch
    git branch -a
    git merge origin/liatest
    git merge origin/nwjfeature1
    git reset --hard f4322a1
    git reset --hard 14ea606
    git reflog
    git remote -v
    git remote add student https://github.com/githubstudent/hellogitworld.git
    git fetch student
    git merge student/onlyonmatthew
    git status
    git push student master:mergedittogether
    git checkout master
    generaterandomchanges 10 stuffs txt
    git revert 36ebc76
    git log -1 -p
    git log -1 36ebc76
    git log -1 -p 36ebc76
    git tag AGOODPOINT97 36ebc76
    git branch startfromhere 36ebc76
