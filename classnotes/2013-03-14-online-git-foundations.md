---
layout: bare
title: Git and GitHub Foundations Online
description: Git and GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-03-14-online-git-foundations.md
eventdate: 2013-03-14
---

Teachers:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brentbeer))

## Outline
* History and Intro
* Installing and configuring
* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Understanding Git's Content Tracking
* Moving and copying files
* Branching and Merging in Git
* Establishing upstream repositories
* Push, pull, and fetch
* RefLog as a safety net
* Stash for work-in-progress
* Reset
* Collaboration through Pull Requests
* Graphical merge/diff tools

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

# Command Line History, Day 1

    git config --list
    echo Matthew has no idea how to be minimal
    echo Brent is a 5 minimalist
    git config user.name
    git config user.email
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    cat ~/.gitconfig
    cat ~/.gitconfig | more 
    git config --local
    git config --local --list
    echo YOU ARE NOT IN A GIT REPO YET
    git config --list
    echo looking local (nothing), then look global, then system
    echo "looking local (nothing), then look global, then system"
    git init newproject
    open .
    cd newproject
    git config --local --list
    cd ..
    mkdir oldproject
    cd oldproject
    touch main.java
    touch build.xml
    git init 
    to.scratch
    cd oldproject
    tree .git
    git add .
    git status
    git commit -m "Our first commit"
    cd ..
    cd newproject
    vim first.txt
    git status
    git add first.txt
    git commit -m "My first commit in the new repo"
    echo We just committed only to our LOCAL machine
    echo My team members will never push their changes
    git add .
    echo "That just added everything modified"
    echo "That just added everything modified or new"
    git status
    touch abrandnewfile.txt
    git status
    git add .
    git status
    git commit -m "One more file"
    vim first.txt
    git status
    git diff
    git diff --color-words
    github
    git sttaus
    git status
    git diff --color-words
    git diff
    git add --patch
    git gui
    git status
    git log -1
    vim first.txt
    git status
    git diff
    git add -p 
    git status
    git diff 
    git diff --staged
    git gui
    git status
    git commit -m "Only the staged changes"
    git status
    git add first.txt
    git commit -m "The rest of the changes"
    git status
    vim first.txt
    git status
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git add -p first.txt
    git status
    git diff --stat
    git diff --stat --staged
    git log
    git log --format=full
    git log --format=fuller
    git log --format=raw
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --oneline
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline
    git log -1
    git log -2
    git log -2 HEAD
    git log -2 HEAD~3
    git log -2 HEAD~90
    cp first.txt second.txt
    git add .
    git commit -m "Copied the first file"
    git status
    git rm second.txt
    git status
    git add -u .
    git status
    git commit -m"Deleting a bunch of files"
    git rm --cached -- first.txt
    git status
    git reset --hard
    git status
    git status
    git add -A .
    git status
    git commit -m "Renamed ALL OF THE THINGS"
    git log --stat
    git log --stat --no-find-renames
    git status
    git add .
    git status
    git commit -m "Copied the file"
    git log -1 --stat
    git log -1 --stat -C
    git log -1 --stat --find-copies-harder
    git log -- src/abrandnewfile-copy.txt
    git log --follow -- src/abrandnewfile-copy.txt
    git log --stat --follow -- src/abrandnewfile-copy.txt
    git status
    cd src
    echo STUFF >> stuff.txt
    git status
    git add stuff.txt
    echo "It walks upwards until it finds a .git folder. That's the top"
    cd .
    cd ..
    touch outout.log
    git status
    rm src/stuff.txt
    git status
    git reset --hard
    git status
    vim .gitignore
    git status
    git add .gitignore
    git commit -m "Ignoring all log files"
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git hwgstudent
    cd hwgstudent
    git log -2
    vim matthewm.txt
    git add matthewm.txt
    git commit -m "Matthew added himself to the repo"
    git status
    git push
    git gui

## Command Line History, Day 2

    cd hgwstudent
    git checkout -b thing1
    open .
    git add thing1.txt
    git commit -m "Thing 1 on the thing1 branch"
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 feature txt
    git commit -m "Thousands of features"
    git checkout -
    git diff master thing1
    git diff --stat master thing1
    git diff --pretty=raw master thing1
    git branch
    git branch -r
    git push -u origin thing1
    vim thing1.txt
    git commit -m"Documents per alderete's request"
    git push
    git remote add teacher https://github.com/githubteacher/hellogitworld.git
    git remote -v
    git fetch teacher
    git merge teacher/master
    cat malderete.txt
    git checkout thing1
    ls
    cat thing1.txt
    c d..
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    git checkout -b matthewfeature
    vim matthewfeature.txt
    git add matthewfeature.txt
    git commit -m"Matthew was on feature"
    git push -u origin matthewfeature
    git fetch
    git diff origin/matthewfeature
    history
    pwd
    cd ..
    cd hgwteacher
    git graphlive 25
    git graphlive 10
    git branch featuremergerecurdemo
    git checkout featuremergerecurdemo 
    generaterandomchanges 3 mergerecr txt
    git merge featuremergerecurdemo
    gitx
    git branch featuremergerecurdemo2
    generaterandomchanges 2 masterchg txt
    generaterandomchanges 2 feature txt
    git checkout master
    git merge featuremergerecurdemo2
    git reset --hard 68820b5
    git reflog
    git checkout adb4 -- other1.txt
    git checkout adb4 -- README.txt
    git checkout adb4~15 -- README.txt
    git checkout adb4~15 -- src/
    git checkout adb4~15 -- src/ .gitignore 
    git reset --hard 
    generaterandomchanges 5 pleaserevertme txt
    git revert b270
    git graphlive 15
    echo CHANGE1 >> change1.txt
    echo CHANGE2 >> change2.txt
    git commit -m "Matthew change set 1"
    echo CHANGE3 >> change3.txt
    echo CHANGE4 >> change4.txt
    git commit -m "Matthew change set 2"
    git revert --no-commit b4b10
    git checkout HEAD change1.txt
    echo CHANGE >> README.txt
    echo CHANGE >> matthewm.txt
    git add matthewm.txt
    git commit -m"Brent test changes"
    git checkout featuremergerecurdemo2
    git stash pop
    git stash apply
    git stash --list
    git stash list
    git stash
    git stash branch shouldhavebeenabranch
    git stash branch shouldhavebeenabranch2
    git add .
    git commit -m"All grown up and a real branch now"
    clear
    vim matthewm.txt
    git commit -a -m"On the second branch"
    git merge master
    cat matthewm.txt
    git mergetool
    git status
    git commit
    mate ~/.gitconfig
    echo Brent should try meld


## Day One Chat

    brntbeer            Welcome everyone!
                        If you guys hear of anyone needing the class url, let me know and i can paste it 
                        back into the gototraining chat interface!
    Michael A.          Brent is a little quiet, if he can raise his volume, that would be better.
    brntbeer            Thanks michael! will do
                        Keep me posted when i speak again if it's still a little soft =)
    Michael A.          Matt is very audible, and Brent was OK, but the contrast was significant.
    brntbeer            Gotcha, i'll keep tinkering with mine. He's lucky and got a new microphone 
                        lately! haha
    matthewmccullough   training@github.com is Jessica
                        Always happy to help with anything
    brntbeer            https://github.com/githubtraining/feedback
    matthewmccullough   https://github.com/githubtraining/feedback
    brntbeer            for those feedback questions =)
    Srividhya A.        will we get the recordings of this session as well?
    matthewmccullough   Srividhya Agandeswaran(srivi): It isn't recorded, but we have a lot of resources 
                        for after the session and also you are welcome to any future instance of class. 
                        Brent can tell you more
    Srividhya A.        cool thanks
    brntbeer            Let me know if you have any questions. The notes will be pretty thorough with 
                        additional resources! Matthew will also be capturing his command history for 
                        both days, so that'll definitely help
    Oleg                1.7.10 is ok?
    brntbeer            definitely!
    brntbeer            http://windows.github.com, http://git-scm.com, http://mac.github.com
    Michael A.          Worth knowing that REDACTED whitelisting prevents the installation of GitHub 
                        for Windows by default. Irritating.
    Henry Q.            will we need gui for this training or will command line be sufficient?
    brntbeer            Command line should be good!
    Henry Q.            thanks
    Michael A.          That's very cool. What tool are you using to do these split panes? Great 
                        training tool.
    Amy                 apt-get gets me version 1.7.0.4. Did other people get their version 
                        some other way?
    brntbeer            If anyone is on windows and doesn't have mysysgit installed, let me know. Or if 
                        you have any problems with getting it from 
                        https://code.google.com/p/msysgit/downloads/list, let me know
                        be sure to go to https://github.com/signup/free and signup for tomorrow for some 
                        work over the network!
    matthewmccullough   http://teach.github.com/presentations/git-foundations.html
    Michael A.          I'm on Windows (sadly), and downloaded from the GitHub installation 
                        instructions. Version 1.8.1.msysgit.1.
    brntbeer            perfect. let me know if you have any other windows questions michael and i'll do 
                        my best to answer them
    brntbeer            Welcome newcomers! Sorry for missing chat over in the GoToTraining interface. 
                        the reason we like to use Campfire is because it allows us to copy the chat for 
                        sending out after class a lot easier. Command snippits and questions are easier 
                        to re-read as wel
                        Damian, I see in the GoToTaining chat that you were asking about 
                        git.soma.REDACTED.com. I'm not familiar with this, but is this your 
    brntbeer            git config user.name
                        will just return the value if they're already set
                        `git config user.name "YOUR NAME" ` sets it to whatever is in the quotes there
    HariDara            Yes, that is our enterprise install.
    Srividhya A.        Michael Alderete: I'm also on Windows in SFDC netowrk and was able to dowload 
                        Git 1.8.1 from this link:http://code.google.com/p/msysgit/downloads/list 
                        :Git-1.8.1.2-preview20130201.exe
    brntbeer            gotcha. We will get to using remotes more-so tomorrow, but for the sake of the 
                        class we will be using github.com as our remote. The interfaces and 
                        instructions and feature sets are nearly identical. your enterprise install 
                        won't be behind on anything we're actually using today or tomorrow
    Michael A.          Srividhya Agandeswaran(srivi): Yes, I was able to install the command line tools 
                        without a whitelist approval. Just the GitHub for Windows GUI tool gets 
                        blocked. (At least, this morning.)
    Kshama T.           I only see global config. I can't set or see local settings. Would you know why?
                        View paste
                        kthacker-ltm:~ kthacker$ git config --local --list
                        fatal: unable to read config file '.git/config': No such file or directory
    brntbeer            Michael Alderete: bummer to hear that!
                        Kshama Thacker: matthew is just about to talk about that =) the reason is 
                        because we're not in a git project right now
    Kshama T.           I see. Thanks !
    Michael A.          I do have GitHub for Windows installed on my remote machine, I just wanted to 
                        have it locally as well. I'm set to do everything today.
    Srividhya A.        Mathew where can I get sh.exe , the open cmd wasn;t working for me
    brntbeer            Srividhya Agandeswaran(srivi): you have mysysgit installed before class correct?
    Srividhya A.        I've missed that ..
                        where can I get the link?
    brntbeer            you posted earlier that you were able to download mysysgit from 
                        https://code.google.com/p/msysgit/downloads/list, correct?
    Srividhya A.        Nevermind got it . Thanks
    brntbeer            oh ok! good
    HariDara            Is GitHub gui a generic git GUI or is it meant to be used only with github.com 
                        (and the enterprise version)?
    brntbeer            HariDara: both windows and mac github guis can use any remote url (interacting 
                        with github.com or your internal enterprise install).
                        so, a long way of saying: they dont have to just be used with github.com
    HariDara            ok, thanks
    brntbeer            `git init newproject`
                        and then `cd newproject`
                        Now just create a file in the newproject directory called "first.txt" and make 
                        some changes into the file. I just added a few lines of text separated by some 
                        blank lines
    Michael A.          View paste
                        $ git add first.txt
                        warning: LF will be replaced by CRLF in first.txt.
                        The file will have its original line endings in your working directory.
    brntbeer            Git is fully distributed. Everything we'll be doing today will not effect anyone 
                        else elses projects or machines. Later we'll be interacting with an upstream 
                        repo (github.com for the sake of this class)
                        Hi michael! just a happy little note from git there. take a look at 
                        http://teach.github.com/presentations/git-foundations.html#/4/ to get an idea of what 
                        config we generally like setting
    HariDara            What does "6 insertions" mean?
    brntbeer            what we generally like setting for windows machines i mean. this makes line 
                        endings happy across mutliple operating systems
                        HariDara: that just means we had 6 new lines of code being tracked, or in this 
                        case all the lines of the file we've written (since we just created it)
    brntbeer            Great of you to notice that! Keep an eye on it as we make some more and more 
                        changes too!
    HariDara            I read in the pro git that git doesn't store diff, so what is printed on the 
                        console is just for our info, or is it really tracking it?
    brntbeer            it doesn't store the Diff, however it calculates it. In this case their was no 
                        file and no lines. so the diff was the 6 new lines and a file created.
    Alicia              Is there a section coming up on removing added files that you haven't committed 
                        yet? What's the recommended way? Resetting to HEAD, then adding again without 
                        the file you accidentally added works, but takes a bit of time...
    brntbeer            Alicia: definitely things we'll talk about today! We're going to go over a bit 
                        of the "3 stage thinking" here first, then some viewing diffs and looking at 
                        history. Reset is a very powerful command we'll be talking about =)
    Oleg                Can we add all changed by default?
                        Thanks!
    brntbeer            By crafting what we want to go into our commits (with `git add FILENAME` and 
                        adding it to the staging area), we end up having a cleaner history that can 
                        make it easy for you to maybe see what you've done, as well as other people to 
                        easily later see what kind of work you've done.
    HariDara            You might accidentally add temp/generated files such as . files (e.g., vim swap 
                        files).
                        If you do 'git add .'
    brntbeer            certainly there's `git add .` to grab everything, but be careful about what we 
                        get there! You'll see Matthew constantly saying `git status`to get an idea of 
                        the state of the repo. where files are at (working directory or staging) and 
                        what files have changed
    brntbeer            exactly HariDara! must be careful
    Oleg                what is -m in commit? message?
    brntbeer            even in the years that i've used Git, i try not to `git add .` unless im 100% 
                        sure of what im working with
    Michael A.          FWIW, that slide has a typo, missing space between -m and "The message".
    Kshama T.           Can we commit just 1 file?
    brntbeer            Michael Alderete: shouldnt need a space between the two, though it'll be happy 
                        to take it
    Kshama T.           -m stands for "Message"
    brntbeer            Kshama Thacker: definitely can. totally up to you and how you want to craft your 
                        project's history
                        Michael Alderete: does it complain on windows when there's a space?
    Michael A.          Yes, not required, but the general convention would be to have a space. (Seeing 
                        whitespace errors is my useless superpower.)
    brntbeer            ah! a superpower that Git will actually assist you with.
                        on these changes we're making now, go ahead and leave a whitespace at the end of 
                        a line. ;) we'll see later how git will expose this (make sure you have `git 
                        config --global color.ui auto` set though!)
                        This is one of the cooler parts of Git as being a content tracker, not just a 
                        "line of changes" tracker
                        See those red blocks at the end of the line!
                        Again for anyone wanting to follow along the slides. we're currently on 
                        http://teach.github.com/presen
    matthewmccullough   http://mac.github.com
    matthewmccullough   http://windows.github.com
    HariDara            Seems like --color-words doesn't handle whitespace change well? In the 2nd line, 
                        it clubbed the removed word that of the previous. Also didn't show the 
                        whitespace change in the 3rd line.
                        I know whitespace is hardly a word :)
    brntbeer            HariDara: definitely by default on that. because if it was going to show 
                        whitespace errors it becomes complicated to say "whats a whitespace error vs a 
                        space between two words"
                        HariDara: a problem that i hate as well ;)
    Amy                 why is there no linux gui?
    brntbeer            Just by convention of linux user workflows.
                        Also, git comes with a sort of native gui, that we can see with `git gui`
                        the workflow is a big wonky for me. And Matthew is showing it now! haha
    Brian S.            is the "hunk" the line? if we had done git add --patch prior to committing the 
                        first two lines via the UI would we have had three "hunks"?
    Kshama T.           git gui errors out for me
                        kthacker-ltm:newproject kthacker$ git gui
                        error: git-gui died of signal 11
    Michael A.          Using the patch modifier hits the Bit9 whitelist blocking...
    brntbeer            Hm, interesting Kshama Thacker. what operating system are you on?
    Amy                 git gui looks soooo much uglier on linux than mac. what's up with that?
    Kshama T.           mac
    brntbeer            oof =(
                        Amy: it just happens to be the open source version of the gui, where as the Mac 
                        and Windows clients have been created by github.com
    Kshama T.           View paste
                        kthacker-ltm:newproject kthacker$ git --version
                        git version 1.8.0.2
                        kthacker-ltm:newproject kthacker$
                        GitHub
                        mac
    HariDara            I have the same question as Brian. When I run `git add --patch`, I can't select 
                        individual changes, unlike in the GitHub gui. Is there another option to reduce 
                        the scope of the hunks?
    Kshama T.           mac.github...
    matthewmccullough   git-scm.com/
    Joe H.              Use the s command to split the hunks
                        After running git add --patch
    HariDara            ok
    Kshama T.           okay, downloading now
    HariDara            yes, that works
    brntbeer            HariDara: definitely! i'll ensure matthew shows that really quickly. but when 
                        we're in that command prompt we can ask "?" to see a full list of commands 
                        (splitting is the one we're looking for)
    DamianMyerscough    is there a Linux equivalent to the Mac GUI?
    brntbeer            DamianMyerscough: unfortunately no
    DamianMyerscough    Any plans for one?
    brntbeer            DamianMyerscough: not that i know of. Mainly because we've found that users who 
                        are linux are very un-GUI centric
    DamianMyerscough    Can we see a diff in the staged area?
    Oleg                Are hunks always come in "line" increments?
    Amy                 at REDACTED developers use linux, and I think most of us prefer GUIs to 
                        command line. maybe we are unusual?
    Michael A.          It seems like the 'git add -p' command is trying to launch GitHub for Windows 
                        (on my Windows machine). Is there a way to force it to stay in the console on 
                        the command line?
    brntbeer            Oleg: yep! as far as i know!
    Oleg                Thanks
    Alicia              git diff --cached is the same as --staged?
    brntbeer            Alicia: it is, Though it's an older form
    Vivek               just trying to understand, git diff --staged will show the difference between 
                        what is in the staging area and what has already been committed
    brntbeer            Michael Alderete: could you type `git config core.editor`?
                        Michael Alderete: wondering if it's poping open `gitpad` instead of github for 
                        windows
    Michael A.          brntbeer: Returns an empty result (straight back to the prompt).
    Henry Q.            about right
    Michael A.          About riht
                        About right.
    Kshama T.           brent, I'm trying to install the git gui, even after I installed it, I still see 
                        this error message
                        View paste
                        kthacker-ltm:newproject kthacker$ git gui
                        error: git-gui died of signal 11
    Oleg                about right. The only thing - chat window sometimes distracts with beeps :)
    brntbeer            Vivek: exactly.
    Megha A.            about right.
    Michael A.          View paste
                        $ git config core.editor
                        malderete@MALDERETE-WS2 ~/git_training/newproject (master)
    brntbeer            Oleg: you can actually turn that sound off in the top corner of the window i 
                        blelieve
    Oleg                thanks!
    brntbeer            Oops, guys there was a pool that popped up from gototraining =) not to post here 
                        about it
                        we'll have another later and i'll remind people that the poll is an independent 
                        window. sorry!
    brntbeer            Kshama Thacker: sorry to hear that. haven't actually experienced that before. 
                        Looking into it now.
                        Michael Alderete: could you try: echo $EDITOR
                        Kshama Thacker: it appears there's a error with that version. strangely. found 
                        more details here: https://cod
                        I'd say for the sake of staying up with class to not use the gui for now and 
                        maybe after class today to grab the instructions on this forum
                        Michael Alderete if it complains about "$EDITOR" go ahead and type "%EDITOR". 
                        slight windows nuence
    Kshama T.           Ohh.. That makes sense
                        okay sure, I'll update git after the class today
    brntbeer            yeah, i had a feeling it had something to do with the keep alive connection from 
                        terminal to the window, but im no Tcl master! haha
                        awesome to hear it
                        frustating that windows.github.com isnt able to be installed while at work. wish 
                        there was a workaround for that
                        actually talking to our enterprise team and windows team about ways we can get 
                        around that
    Michael A.          View paste
                        $ echo $EDITOR
                        malderete@MALDERETE-WS2 ~/git_training/newproject (master)
                        $
    brntbeer            Also for Linux users: Just had a few other GitHubbers reach out to me. the Linux 
                        gui is something we've thought about and are interested in and will eventually 
                        want to work on. So it's definitely on our list!
    Michael A.          View paste
                        $ echo %EDITOR
                        %EDITOR
                        malderete@MALDERETE-WS2 ~/git_training/newproject (master)
                        $ echo %EDITOR%
                        %EDITOR%
                        malderete@MALDERETE-WS2 ~/git_training/newproject (master)
                        $
                        brntbeer: Yeah, the Windows issue is maddening. But it's maddening for all kinds 
                        of software, not just Git.
                        But, I would suggest that, for future classes, you give people a script to run 
                        through in advance of the class, that will exercise every component, and create 
                        Bit9 violations for anything that's not yet allowed.
                        So that all the tickets get created in advance, instead of during the actual 
                        class. Would need to run through it about a week in advance, given how slow IT 
                        is in responding to these things...
                        Obviously this is all SFDC-specific. There are days when working at a large 
                        company really sucks...
    Henry Q.            Is there a max limit on the -m when committing?
    brntbeer            Michael Alderete: i agree and will be currating that content for future classes. 
                        we have people run through a `git --version` before class starts and have a few 
                        things we try to emphysis before class starts that should have been passed to 
                        you. I'll be looking into it though! love the feedback
                        Michael Alderete: you could try setting the core.editor and that may help you 
                        out here by setting something like instructed here: 
                        http://stackoverflow.com/questions/10564/setup-editor-to-work-with-git-on-windows 
						for making a given window 
    Michael A.          I wonder if it's not also related to the auto-update feature of GitHub for 
                        Windows? I ran through the whole installation a few weeks ago, and thought I 
                        was good-to-go. But maybe a component got updated, and now doesn't pass the 
                        whitelist test?
    brntbeer            Michael Alderete hmm, totally possible.
                        some advice im getting from the windows guys is to look at 
                        https://github.com/github/GitPad ( a tool the windows team maintains and works 
                        on) certainly want to suggest not doing this during class, but it's a useful 
                        maybe after class today take a look at that and use that as your core editor
    brntbeer            Of course, `git add -p` doesnt actually invoke editor, but i was curious of not 
                        having it set was overriding something new.
    matthewmccullough   http://git-scm.com/docs/git-log
    Brian S.            what do the little red and green dots mean on the version history?
    brntbeer            the average number of additons and deletions from that file. similar to what a 
                        `git log -1 --stat` would kind of show us
    Brian S.            cool - kind of a measure of activity in that commit, in essence?
    brntbeer            exactly
    matthewmccullough   Tilde ~ is a "back in history"
                        Give it an integer
                        ESC
                        c
    Oleg                all examples are in root dir of the project - would git track changes in 
                        subdirs?
    brntbeer            definitely! Oleg!
    Oleg                ok :)
    HariDara            Why did we need to specify a separator here?
    brntbeer            just helps git differentiate things from filenames and commands
    HariDara            Ok, I knew the purpose of the --, I was specific about this usage, and it seems 
                        like it would have worked without it.
    brntbeer            HariDara: and it most certainly will
                        You don't always need -- but it's helpful
    Alicia              What about git reset --soft?
    brntbeer            Alicia: we'll be diving into git reset and it's options a bit more i believe at 
                        the begininng of tomorrow morning. however, `git reset --soft` will only put 
                        things into the staging area. So without saying something like `git reset 
                        --soft HEAD~1` git doesnt have anything to move to the staging area
                        soft by default grabs previous things to move to staging area. where reset 
                        --hard removes things from staging, and from working directory without a sort 
                        of "move to staging area and allow user to review"
    Brian S.            how does git know that src/first.txt = first.txt? does it look at the content? 
                        the filename?
    HariDara            What if you moved them after starting modifying them and not yet staging them?
    brntbeer            this will make more sense as we continue =)
    brntbeer            the resetting* will make more sense as we continue i mean.
                        HariDara: as Matthew is about to show, there's a similarity index that Git uses 
                        to watch these things
                        Oleg: as we saw with `first.txt`, we can see that git is going to grab stuff at 
                        lower directories. But if Matthew moved down to the "src" directory, the 
                        commits there are going to still record at the root of the project
    Oleg                thanks
    brntbeer            We'll dive into using .gitignore in a bit and Matthew gets into some good 
                        examples with that that he'll show that makes this more obvious, but totally 
                        doable regardless of where you are. Whereas svn would have different file 
                        revisions at lower levels if you forgot to check them in at the root of the 
                        project. accident prone!
    HariDara            Is there a difference in git behavior with "." argument to mean current 
                        directory and not specifying anything, especially when in a subdir?
    Joe H.              Can I get the history for a single file, and if so, will it track across 
                        renames?
    brntbeer            HariDara: it'll grab everything from the top directory down. so in this case the 
                        "." means "everything my current project"
                        so it'll always get subdirs. we can see this in the "git status" showing that at 
                        the top level we know about these changes
                        Joe Humphreys: hoping Matthew's latest example is answering this question =) 
                        totally doable with `git log --stat --follow -- FILENAME`
    HariDara            When in root dir, "." and no arg would mean the same? What about when you are in 
                        a subdir instead of the root dir?
    Oleg                looking for copies is likely very expensive on 100K files?
    brntbeer            Oleg: definitely can be
    Alicia              I'm assuming there's no view commits by person and you have to pipe and grep it 
                        out?
    brntbeer            HariDara: hope that latest example helped explained adding from subdirectories 
                        some more
                        Alicia: acccctually =) you can view specific commits by a given author!
                        this is why setting the config like `git config user.name` is so important
                        we can do a `git log --author=Alicia` and see all commits created by a user 
                        named "Alicia"
    Alicia              Thanks, that's super useful!
    brntbeer            now, of course you're the only commiter in this project, so it'll show your 
                        commits still
                        yeah! git log is easily my favorite git command
    HariDara            Actually, I was asking a slightly different scenario, but what I had in mind is 
                        invalid. I thought "." was optional, e.g., `git add .`, but I just tried `git 
                        add` and it insisted I specify an argument. May be it is optional for some 
                        other commands and my scenario applies to those.
    Kshama T.           does git reset --hard respect .gitignore?
    Alicia              On github, is there an equivalent "view by person" (besides your own publicized 
                        history)?
    brntbeer            HariDara: ah, sorry to misinterpret!
    HariDara            np
    Alicia              Never mind, found it under "public activity" on other users
    brntbeer            Alicia: definitely. works with usernames: 
                        https://github.com/github/Akavache/commits?author=xpaulbettsx for example
    brntbeer            Kshama Thacker: Not sure i follow. the reset is going to move us to a previous 
                        version of the project. so if you reset to a point where an ignore wasnt 
                        created, then it wont exist there to be read
    Alicia              Actually, some people I know have committed don't have public activity...I guess 
                        protected repos won't show anything?
                        (even if I have access to that repo)
    brntbeer            right, if you dont have access to those same projects, then you cant see their 
                        activity. but on a project by project basis you can see commits by certain 
                        authors just like you do with `git log --author=Alicia` as i linked above
                        Ah right, if you look on their "contributions" tab though, you'll see their 
                        commits across all projects that you two share rights on
    Alicia              Ahhh, there it is!
    brntbeer            yep!
    Henry Q.            can't see what you are typing?
    Henry Q.            thanks
    brntbeer            http://teach.github.com/presentations/git-foundations.html#/8 is the slide he's on
    matthewmccullough   https://github.com/githubtraining/hellogitworld
    brntbeer            Before typing this "clone" command, ensure you're in some sort of scratch 
                        directory, not within the `newproject` file
    Amy                 View paste
                        apalke@apalke-wsl:~/dev/gitclass/hgwapalke$ git push
                        error: The requested URL returned error: 403 while accessing 
                        https://github.com/apalke/h
    matthewmccullough   View paste
                        git --version
    brntbeer            View paste
                        and also a `git config user.name`
                        View paste
                        git config credential.cache
    Amy                 I'm on git version 1.7.0.4
                        that's what our apt-get repo gets me
    Brian S.            amy are you on linux?
    Amy                 yes
    Brian S.            sudo add-apt-repository ppa:git-core/ppa
                        sudo apt-get update
                        sudo apt-get install git
                        that worked for me - just did that right before the class
    brntbeer            looking at the actual git project itself, it looks like 1.7.0.4 was created back 
                        on March 31st of 2010. so its 3 years old now.
                        Brian St.Clair: thank you so much for that! internal repos for apt-get can be 
                        tricky. thank you
    Brian S.            i haven't created branches - why does my branch list show a bunch of stuff?
                        So a pull request is a message from me to you saying that I want you to 
                        incorporate some of my changes into your repo?
    brntbeer            They're just branches that are created in that original fork. We'll dive deeper 
                        into this branches tomorrow for sure =)
                        Brian St.Clair: Definitely. I view it as a "suggested change" that you would 
                        want to make to that repository
    brntbeer            "ive made some changes to this project on my Fork that i dont have commit access 
                        to, would you please accept these?"
    matthewmccullough   https://github.com/githubteacher/hellogitworld/
    brntbeer            Amy: be sure when sending that pull request that we change the "base repo" 
                        dropdown to be "githubteacher"
                        Just got a notification of your pullrequest over to the githubtraining repo :)
    Brian S.            @amy - upgraded git ok?
    Vivek               do we get an email when our pull request has been merged? and is there a way to 
                        track on github on which of my pull requests have been accepted.
    Amy                 I didn't upgrade git yet - just changed the url in my .git/config
    Nat                 i followed the git upgrade steps with no problems
    brntbeer            Amy: awesome. glad to hear (and see!) that you got this fixed
                        Vivek: definitely. you can see at the bottom of your pull-request that there's a 
                        "notification" icon saying that you're watching the thread
    matthewmccullough   http://teach.github.com/classnotes/2013-03-14-online-git-foundations.html
    Amy                 update to git version 1.8.1.5 now. Thanks Brian!
    brntbeer            poll window up in go-to-training
                        Thanks for the amazing questions guys! Enjoyed the teaching so far! looking 
                        forward to tomorrow
    Henry Q.            thanks. this is great!
    Oleg                Thanks!
    Vivek               thanks for your time
    matthewmccullough   Thanks for investing 3 hours in the class.
    HariDara            Thank you
    matthewmccullough   Keen to get your feedback at training@github.com
    brntbeer            same room, same time for tomorrow
    matthewmccullough   We personally read each email there.
                        Same URLs and codes for everything tomorrow
                        Amy: Glad about the update! Hooray. And Brian St.Clair: Thanks for the apt-get 
                        help there!


## Day Two Chat

    matthewmccullough   So glad to have you all back in class today!
    brntbeer            of course!
    matthewmccullough   Howdy everyone!
    HariDara            Howdy!
    Henry               Hi, I'm dialed into the goto meeting but just on hold
    HariDara            Have you used the Goto Training link?
    Henry               yeah
                        but I'm on hold waiting for the meeting to start on the phone
    matthewmccullough   View paste
                        Please join my training:
                        https://student.gototraining.com/r/4684253035002095872
                        Session ID: 240-157-940
    Kshama T.           click on Use Mic & Speakers
                        you don't need the phone really
    HariDara            ya, good point
    Brian S.            i'm dialed in on a phone - works
    matthewmccullough   Joseph is all good on the phone line
    Henry               - Any improvement there on that line?
    Henry               guess its not working for me I'll try something else
    Michael A.          Alderete is on the phone, too. No problems.
    Henry               no. can't hear jack
    HariDara            Henry, try restarting
    matthewmccullough   Henry - Can you restart the Session?
                        Seems like we have a quorum in here
                        But I don't want to leave you out
                        We're pausing for you
    Henry               just go ahead I'll figure something out
    matthewmccullough   Ok
    Amy                 Maybe the phone users could post the # they are using?
    brntbeer            I think just rejoining would make a difference
    Michael A.          View paste
                        My audio line details were different than what Matt gave. Here's what I dialed 
                        in with: United States
                        Toll: +1 (215) 383-1020
                        Access Code: 413-283-365
    Henry               ok
                        that worked
    brntbeer            woo!
    Henry               thanks Michael
    brntbeer            so glad to hear it
    Michael A.          Awesome.
    Michael A.          Not seeing all those branches. I just see this:
    brntbeer            is it just blank?
    Michael A.          View paste
                        $ git branch -r
                        malderete@MALDERETE-WS2 ~/git_training/newproject (master)
                        $
    Kshama T.           go to hgwstudent directory
    brntbeer            Michael Alderete: we're actually in the hwg project that we forked yesterday 
                        from github.com
    Kshama T.           and type git branch
    brntbeer            yep! thank you Kshama Thacker
    Michael A.          Oh, I'm an idiot!
                        I was playing around after class yesterday...
    brntbeer            whoops =)
    Nat                 sweet
    Oleg                What is happening in reality on checkout - files copied over?
    brntbeer            the way git stores files and it's data structure is composed of combining the 
                        directory structure into a hash at each commit. So a commit hash is a 
                        combination of previous commits and files at those commits down to the root 
                        (this forms a very nice graph). So when we switch to a branch, we're going to a 
                        specific commit, and at that commit there was a file created there
    Nat                 what about staged files
    HariDara            Does the current dir matter for checkout command?
    Oleg                Thanks!
    brntbeer            so because when we switch to a branch, we see that difference and the OS is 
                        doing rms or creation of files
    Kshama T.           How do I check the difference b/w 2 different branches?
    brntbeer            `git diff thing1..master` will say "if i moved over to master, what would happen 
                        to the state of my things?"
    Kshama T.           sweet !
    brntbeer            past that, looking at "what commits are here that aren't on master" you would 
                        use 3 dots and the log commit: `git log thing1...master`. imagine using 
                        additional log option switches to see these.
    Henry               I'm sorry maybe you said this earlier but how do you see all the branches?
    DamianMyerscough    Can we generate patches with git diff for the patch command?
    Henry               thank you
    brntbeer            Henry: `git branch` or `git branch -r`
                        DamianMyerscough: definitely!
    Kshama T.           is there a way I can use a file/folder compare software (like beyond compare) to 
                        git diff files/folders?
    Brian S.            on a "real" project where people are creating branches all the time, are there 
                        thousands of branches to search through on github?
    Oleg                Why it was better to do copying files to the same folder rather than switching 
                        between dirs - different branches?
    Brian S.            delete is scary
    HariDara            I guess it only deletes from the current list, but it still stays in the 
                        history?
                        I mean, a deleted branch
    brntbeer            HariDara: right. if you've merged in your changes (which we'll show shortly) 
                        deleting the branch wont matter because it's only a reference to those changes, 
                        or that timeline
                        and if you merge the timelines, then the history is all there
                        you're just deleting the reference to that it was even a different branch (or 
                        timeline)
                        Oleg: not sure i totally understand the question?
    HariDara            If it just a reference, it should be possible to recreate the branch pointing to 
                        the same reference (sort of undo of the delete)?
    Oleg                I meant on checkout - woul dit be easier to switch between dirs named 
                        mybranch_xyz then modifying files in the same folder
    brntbeer            HariDara: absolutely
    Kshama T.           what is an appropriate time to use this command git push -u origin?
    Brian S.            does that affect "origin" for other branches?
                        can i create other aliases with -u? e.g. git push -u home thing1
    brntbeer            Oleg: I'd feel that instead of creating folders to monitor my stuff it'd end up 
                        getting a very messy directory. how do you know which is good or up to date 
                        with other directories?
    Kshama T.           If I'm collaborating with a colleagues, how can I push to my colleague's branch? 
                        Is it only pull request?
    Amy                 I think local branches are kinda like perforce changelists in your workspace - 
                        you delete those after checking in
    HariDara            What if multiple folks end up using branch names that conflict? What happens 
                        during the push/pull?
    Brian S.            @Amy - that's an interesting comparison. can someone talk to how those compare?
    brntbeer            HariDara: because the forks are different projects, they wont effect each other 
                        with the branch names. if there were pull-requested to the same project, it 
                        wouldn't matter if everyone is sending a PR(pull-request) of the same branch 
                        because it's the commits that are coming in. Does that make more sense?
    Srividhya A.        Also to tag @Hari's question, what if they are working on the same file..
    brntbeer            Srividhya Agandeswaran(srivi): We could get some merge conflicts at that point. 
                        github.com won't allow you to merge if there's a conflict (which, believe me 
                        we'll definitely see) and we're allowed to resolve that locally so we can 
                        handle how to take in the changes.
    Brian S.            If i fork, is a pull request the only way to get my changes back into the repo 
                        that i forked?
    brntbeer            Amy: I can't speak to perforce, but in my opinion, i don't delete my local 
                        branch until after i know it has been merged into master or someone has 
                        accepted the changes.
                        Brian St.Clair: yep! we'll see later that github.com can add people as 
                        collaborators and have push and pull access to the same repo. so essentially 
                        the chains come off! haha
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
                        https://github.com/githubteacher/hellogitworld/...
    Brian S.            why am i forked off of githubtraining, not githubteacher...?
    brntbeer            Amy: Does that make a little more sense? once you push it to origin (or in this 
                        case, your fork on github.com), you could delete your local branch and get it 
                        again if you wanted to, but as a personal choice, i just keep the local file 
                        around until after it gets merged in
                        Brian St.Clair: we had originally forked off githubtraining, so, when sending 
                        the PR we need to change the "base repo" on the left here:
                        http://cl.ly/image/1L0H2x0b2R2a
    Brian S.            Thx!
    brntbeer            Welcome!
    Amy                 We create new changelists in our perforce workspace for each atomic change we 
                        work on, then we submit the changelist, then we usually delete the changelist 
                        from our workspace. I think it's the same workflow with git branches.
    brntbeer            Be sure you guys are sending a PR to the githubteacher base repo =)
                        Amy: once you push your changes, you can definitely delete your branch
    Brian S.            i think there are some different options when merging a git branch wrt tracking 
                        this history of changes within the branch maybe, as opposed to a single, atomic 
                        Perforce CL commit?
    brntbeer            for example. right now you could send a pull-request to githubteacher, and then 
                        delete your branch. however, if that pull-request wasn't accepted, then you'd 
                        need to recreate that branch (which is doable, git will happily recreate it 
                        from the remote branch ) and make those changes and continue pushing again
    Kshama T.           How do I get latest updates to stuff in my branch from all pushed changes from 
                        others. I want to test my changes with the changes that were committed to the 
                        main branch
    brntbeer            Brian St.Clair: right, git has some ways to make all commits of a branch into a 
                        single commit, if that's what you'd like. we'll be talking about `git rebase` 
                        shortly
                        Kshama Thacker: perfect question. im going to make sure matthew shows that right 
                        now or shortly
    HariDara            About using the same branch name by multiple people, I guess they are still 
                        different considering the fact that git distinguishes local and remote 
    brntbeer            HariDara: absolutely. and even deeper down, their different commit hashes
                        thats why the calculation of a commit hash is super important and awesome
    Brian S.            is a "clone of a repository" what we get when we fork?
    brntbeer            well, the forking is simply a copy with reference to original project that 
                        GitHub created.
    brntbeer            the "cloning a repository" is something we do when we type `git clone` for that 
                        specific fork that we copied
    Brian S.            git remote -v - i don't see branch info there? how does it know branch? or is 
                        that just appended to url?
    brntbeer            Brian St.Clair: the `remote -v` command only tells us about our upstream repos. 
                        for instance, mine shows:
                        View paste
                        [/scratch/hwgbrntbeer]$ git remote -v
                        origin  https://github.com/brntbeer/hellogitworld.git (fetch)
                        origin  https://github.com/brntbeer/hellogitworld.git (push)
    matthewmccullough   View paste
                        git remote add teacher https://github.com/githubteacher/hellogitworld.git
    brntbeer            the branches themselves are found (`git branch -r`) when we do network 
                        connections and say "ok, i know i have some remote branches, are there any more 
                        remote branches at that upstream (origin) that i need copies of"
                        Brian St.Clair: we'll see `git pull` and `git fetch` shrotly to show how we 
                        update our references to upstream repos (teacher and origin now)
                        after we do that fetch, we see that a bunch of new branches were made, except 
                        the namespace is slightly different. they aren't "origin/master" or 
                        "origin/bisect" but "teacher/master" etc
    matthewmccullough   View paste
                        git fetch teacher
                        git merge teacher/master
    Brian S.            so fetch basically updates the locally cached data, but not any of our "working" 
                        code?
    brntbeer            absolutely! well put
                        i typically `git fetch` right before leaving work, so that if i work in transit 
                        i dont need any network connection
    Vivek               when you merge the master with a latest copy, does the child branches also see 
                        the newly merged changes?
    Kshama T.           does this have to happen on the master only? Why didn't we merge thing1 with 
                        teacher?
    HariDara            So, if I fetch changes from remote1 and remote2, until I merge remote1/master 
                        and remote2/master into my master, they will basically stay out of my way?
    Vivek               sure thanks
    brntbeer            Kshama Thacker: we could have merged into whichever branch, yep
    Kshama T.           okay
    brntbeer            HariDara: definitely. they won't bother your changes until you say "bring in 
                        those changes" even if you're constantly fetching
    Brian S.            @hari - yes, fetch won't touch anything by itself
    brntbeer            thing of remote1/master and remote2/master are just different branches like we 
                        see with thing1 and master
    Kshama T.           View paste
                        kthacker-ltm:hgwstudent kthacker$ git merge master
                        Auto-merging thing1.txt
                        CONFLICT (add/add): Merge conflict in thing1.txt
                        Automatic merge failed; fix conflicts and then commit the result.
                        kthacker-ltm:hgwstudent kthacker$
    Brian S.            i just got the same thing
    Vivek               same here
    Henry               same here
    Nat                 also is merge atomic, ie not done at all if there's a conflict
    brntbeer            a sidenote: we could run "git diff -- thing1.txt"
                        to see what changes are happening
    HariDara            `git merge master` says "Already up-to-date."
    Amy                 HariDara, are you in master, not thing1?
    brntbeer            HariDara: did you merge teacher/master into your master?
    HariDara            yes to both questions
    brntbeer            to resolve this conflict:
                        View paste
                        git checkout --theirs -- thing1.txt
                        git add thing1.txt
                        git commit
    Nat                 how to find all the files that have conflicts?
    brntbeer            that last git `commit` will default a merge commit message
    brntbeer            Nat: it'll say "both modified" if there's a conflict for them on the `git 
                        status` command
    Kshama T.           git checkout is used here in a different way.. makes me confused about what git 
                        checkout is
    brntbeer            HariDara: and a `git fetch teacher` got some changes, correct?
    HariDara            so, why am I not seeing the conflict, or even a need to merge?
                        Yes, did the fetch and merge with teacher/master
                        I saw the thousands files merged
    brntbeer            HariDara: good! it's just a matter of the changes you happened to have made to 
                        thing1.txt
    Nat                 git status | grep both
                        ?
    brntbeer            some of our changes were just nearly the same from what teacher/master had 
                        merged
    Brian S.            brianstclair7@gmail.com
    HariDara            but I added it just like others
    HariDara            multiple adds with the same file name is automatically a conflict, right?
    brntbeer            Nat: a "git status" should show a part of that saying "both modified" instead of 
                        just "modified" or "new file" etc
    HariDara            hdara
    brntbeer            Brian St.Clair: whats your github username?
    Michael A.          Professional typist.
    Brian S.            brianstclair
    Vivek               sfvivek
    HariDara            sorry, mine is haridsv
    Alicia              hwgstudent
    Srividhya A.        Srivi
    HariDara            I just corrected mine
    Nat                 brntbeer: just looking for list of just conflicting files... is there a git 
                        status flag for that or do you need to grep?
    Vivek               Mine is sfvivek
    brntbeer            Nat: ah sorry i miss understood. you could grep yes
    Amy                 Will we also be learning how to keep our fork up-to-date for projects that we 
                        don't have permissions to push directly to?
    brntbeer            HariDara: the conflict was maybe already resolved in a previous commit. i'm not 
                        quite sure
    matthewmccullough   git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    brntbeer            Amy: in the way we just did our `git fetch teacher` and then merged that into 
                        master, we would push back to origin with `git push origin master`
                        to update our fork, even though we didn't have permission to update it
                        When doing this clone, ensure you're outside of your original project
                        so matthew switched to his scratch repository with `cd ..` and then did the 
                        clone
                        so he backed out of the hwgstudent project and then did the clone
    Brian S.            oops... i just did commit and it says 3 added
                        how can i see what i just added? ah! git log?
    brntbeer            thats fine =)
                        `git log -1 -p`
                        that -p is shorthand for --patch
                        and totally ok to commit that file
    Brian S.            oh right, the 3 is the number of lines...
    brntbeer            yep yep
    HariDara            Since everyone has access to the master, anybody can do a direct merge right? 
                        There is really no need to do a pull request, right?
    Kshama T.           I can't find my feature branch in the dropdown, I think its because we ahvent 
                        pusjed yet
                        haven't pushed yet*
    matthewmccullough   Kshama Thacker. Can you now: git push -u origin YOURFEATUREBRANCH"
                        View paste
                        git push -u origin YOURFEATUREBRANCH
    Brian S.            wait... that added my branch to githubteacher... is that what i should have 
                        expected? i was looking for it under my username
    brntbeer            HariDara: except that by doing the Pull-request, we allow other people to review 
                        things and get an idea of whats coming
                        Brian St.Clair: you did it correctly! =)
    HariDara            Brian S: You are pushing to a different repo
    brntbeer            we're definitely pushing to this githubteacher repo
    Kshama T.           why origin?o
                        i think we need teacher, tight?
    brntbeer            we should be in the `hgwteacher` project with this as our `origin`
                        View paste
                        [/scratch/hgwteacher]$ git remote -v
                        origin  https://github.com/githubteacher/hellogitworld.git (fetch)
                        origin  https://github.com/githubteacher/hellogitworld.git (push)
    Brian S.            gotcha... makes sense
    brntbeer            Kshama Thacker: because we cloned the teacher repo, it calls the first remote 
                        for us called "origin"
    Kshama T.           I see
    Brian S.            so we can have multiple remotes, but only one that will be used by default if i 
                        just say "git push", right?
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    Kshama T.           I still can't find my branch on github
    Brian S.            sure
    brntbeer            Henry: i noticed you pushed to master, did you create your featurebranch and 
                        push to that first?
                        Kshama Thacker: are you on a feature branch in which you made some changes? 
                        afterwards you should type `git push -u origin yourfeaturebran
    Brian S.            tah dah!
    Henry               I thought I did push to the feature branch
    Nat                 matthewmccullough: can you recap this with a picture?
    brntbeer            Kshama Thacker: i see it at origin/kthackerfeature
                        Henry: no problem. we can see we're on a feature branch by typing "git branch"
    Kshama T.           View paste
                        kthacker-ltm:hgwteacher kthacker$ git checkout kthackerfeature
                        Already on 'kthackerfeature'
                        kthacker-ltm:hgwteacher kthacker$ git push -u origin kthackerfeature
                        error: git-credential-osxkeychain died of signal 11
                        Username for 'https://github.com': kthacker
                        Password for 'https://kthacker@github.com':
                        error: git-credential-osxkeychain died of signal 11
                        Branch kthackerfeature set up to track remote branch kthackerfeature from 
                        origin.
                        Everything up-to-date
    Kshama T.           I'm falling behind a lil here.
    brntbeer            just to be sure we're working on things again
    Amy                 How do you delete a pull request?
    Henry               ah crap.
    Kshama T.           I can't see my branch on github yet
    Henry               yeah I'm on the master
                        thanks
    Michael A.          What if, you merge, deploy, Oops there's a typo? Wouldn't it be easier to have 
                        that branch still, to fix it quickly?
    brntbeer            Kshama Thacker: can you type "git config --unset credential.helper"
                        Kshama Thacker: not sure why you're getting a "signal 11" but it may have to do 
                        with your install of github to be installed wrong
    Brian S.            can you dig up old conversations on deleted pull requests?
    Joe H.              Can you see in the logs what branch a checkin originally happened on?
    Brian S.            probably more of a github question than a git question...
    Oleg                View paste
                         ! [rejected]        master -> master (non-fast-forward)
                        error: failed to push some refs to 
                        'https://github.com/githubte
    brntbeer            Brian St.Clair: more than happy though to answer! =)
    Joe H.              In the git log, I mean?
    Kshama T.           I'm completely confused here :(
                        can't understand whats going on here
    HariDara            Since we all created our own branch on the same repo, if a couple of us chose 
                        the same exact name, would the push have failed?
    brntbeer            Kshama Thacker: you have a credential helper that's not working. simply type the 
                        "git config --unset crdential.helper"
                        and try to do the push again
                        Kshama Thacker: if it makes you feel better. it appears your work is still being 
                        done and working. you're just seeing errors
                        Kshama Thacker: but once we remove that credential helper, we should be fine
    Oleg                brntbeer: I got that erro on push: git push -u origin
    brntbeer            similarly, you could type "git config --local credential.helper cache" and it'll 
                        use the caching version of credential helper
    brntbeer            Oleg: that's because there's changes on mastr that you don't have yet. you need 
                        to do a "git fetch" followed by making sure you're on master and that "git 
                        merge origin/master" before you can push
    Nat                 yes helpful. but...
    brntbeer            just one way git ensures you cant push things without checking that you have all 
                        the changes (saves against merge conflicts etc)
    Nat                 i think i pushed my changes to the wrong place
    Oleg                View paste
                        git merge origin/master
                        Already up-to-date.
    brntbeer            Oleg: have you done a fetch first?
    Kshama T.           View paste
                        kthacker-ltm:hgwteacher kthacker$ git checkout kthackerfeature
                        Already on 'kthackerfeature'
                        kthacker-ltm:hgwteacher kthacker$ git push -u origin kthackerfeature
                        error: git-credential-osxkeychain died of signal 11
                        Username for 'https://github.com': kthacker
                        Password for 'https://kthacker@github.com':
                        error: git-credential-osxkeychain died of signal 11
                        Branch kthackerfeature set up to track remote branch kthackerfeature from 
                        origin.
                        Everything up-to-date
    Oleg                yes - doing it again now
    brntbeer            Kshama Thacker: can you type "git config --global --list" and send that to me
    HariDara            ok, that explains my earlier question. I did a fetch, but nobody pushed their 
                        changes by that time :)
    brntbeer            HariDara: ah! definitely
    Brian S.            so does the git push -u origin myfeature actually push my code up to the remote 
                        server?
    Oleg                brntbeer: same thing
    Brian S.            or does it just create something like a "placeholder" branch? it actually pushes 
                        everything, right?
    Nat                 actually i think i pushed to the right place but sent the pull request to the 
                        wrong place (?)
    brntbeer            Oleg: can you paste to me exactly what you're typing?
                        Brian St.Clair: yep. it sends it to the server
                        Nat: could definitely be the situation. make sure the base repo and head repo 
                        are appropriately "githubteacher"
    Oleg                View paste
                        git fetch
                        git merge origin/master
                        git push -u origin
    Kshama T.           View paste
                        kthacker-ltm:hgwteacher kthacker$ git config --global --list
                        user.name=Kshama Thacker
                        user.email=kthacker@REDACTED
                        kthacker-ltm:hgwteacher kthacker$
    Brian S.            so what does the -u do again then? what if i don't do that?
    brntbeer            Oleg: can you type "git push origin master" for me? and paste what it shows
    Nat                 hang on need to find that pull request
    brntbeer            Brian St.Clair: it creates that tracking feature that says "ok, keep an eye on 
                        this branch when we do fetches to let me know if im out of date and need to 
                        emrge"
    Oleg                View paste
                        ~/gittraining/hgwteacher$ git push origin master
                        To https://github.com/githubteacher/hellogitworld.git
                         ! [rejected]        master -> master (non-fast-forward)
                        error: failed to push some refs to 
                        'https://github.com/githubte
                        To prevent you from losing history, non-fast-forward updates were rejected
                        Merge the remote changes (e.g. 'git pull') before pushing again.  See the
                        'Note about fast-forwards' section of 'git push --help' for details.
    Brian S.            thx
    brntbeer            Kshama Thacker: can you type "git config --global credential.helper cache" ? 
                        that should hopefully take care of some of these problems
    Nat                 how do i close the pull request?
    Brian S.            is there a way to merge in remote changes without using fetch?
                        or is that the way?
    HariDara            Brian: Did you see my new question about possible conflict with branch names?
    brntbeer            Kshama Thacker: other than that, your stuff is still getting pushed and working. 
                        not sure why the git-credential-osxkeychain is complaining
    Nat                 got it, just didn't scroll down far enough
    brntbeer            Kshama Thacker: another thing to look at is just pasting a "git config --list" 
                        to show me all of your confgs
    Kshama T.           I was in the wrong repo on github
                        that is why I couldn't see my branch
    Brian S.            same with diff and other operations?
                        perfect, thanks
    brntbeer            Oleg: i'd do a `git pull origin master` and see if anything happens there
    Kshama T.           View paste (2 more lines)
                        kthacker-ltm:hgwteacher kthacker$ git config --list
                        credential.helper=osxkeychain
                        user.name=Kshama Thacker
                        user.email=kthacker@REDACTED
                        credential.helper=cache
                        core.repositoryformatversion=0
                        core.filemode=true
                        core.bare=false
                        core.logallrefupdates=true
                        core.ignorecase=true
                        core.precomposeunicode=false
                        remote.origin.url=https://github.com/githubteacher/hellogitworld.git
                        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
                        branch.master.remote=origin
                        branch.master.merge=refs/heads/master
                        ...
    Nat                 ok (finally) on pull request
    HariDara            Sorry Brian, my question was meant for brntbeer :)
    Brian S.            whoa... lost me on the git pull origin master...
    brntbeer            Kshama Thacker: you have a system level config set. you need to unset that to 
                        remove it from complaining. `git config --system --unset crede
    Brian S.            what the heck does THAT do?
    brntbeer            Brian St.Clair: sorry, little more combination of fetch and merge
                        it does a fetch and then a merge of the branch name. i personally dont even use 
                        it
    Oleg                brntbeer: same thig :)
                        View paste
                        git pull origin master
                        From https://github.com/githubteacher/hellogitworld
                         * branch            master     -> FETCH_HEAD
                        Already up-to-date.
                        ogusak@ogusak-wsl:~/gittraining/hgwteacher$ git push origin master
                        To https://github.com/githubteacher/hellogitworld.git
                         ! [rejected]        master -> master (non-fast-forward)
    Brian S.            ok... so there IS a way to merge from remote without *directly* using fetch 
                        then?
                        although maybe it does that behind the scenes?
    brntbeer            "pull" is simply a cobination of fetch and merge
                        so it still does the same opperations
    HariDara            Since my question scrolled off long back, let me ask again. If two folks create 
                        a branch with the same name on the same repo, what happens when the 2nd person 
                        does a push? Will it fail because a branch with the same name exists?
    brntbeer            HariDara: sorry, yes was just answering you =)
    Kshama T.           View paste (1 more line)
                        kthacker-ltm:hgwteacher kthacker$ git config --list
                        user.name=Kshama Thacker
                        user.email=kthacker@REDACTED
                        credential.helper=cache
                        core.repositoryformatversion=0
                        core.filemode=true
                        core.bare=false
                        core.logallrefupdates=true
                        core.ignorecase=true
                        core.precomposeunicode=false
                        remote.origin.url=https://github.com/githubteacher/hellogitworld.git
                        remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
                        branch.master.remote=origin
                        branch.master.merge=refs/heads/master
                        branch.kthackerfeature.remote=origin
                        ...
                        Does this look good now, brent?
    brntbeer            HariDara: it'll fail because it'll say (similar to oleg) that you have refs you 
                        need to pull
                        Kshama Thacker: yep. you could even make some additional commits to your feature 
                        branch and push them to see if we've gotten rid of that warning
                        Oleg: standby. looking into it!
    Oleg                brntbeer: thanks!!
    HariDara            ok, so when you fetch, would you need to do a merge?
    brntbeer            Oleg: and type a "git branch" for me?
    Oleg                View paste
                        git branch
                          master
                        * olegfeature
    brntbeer            there we go
                        you shouldn't do a "git push origin master" when you're not on the master branch
    Oleg                :) ok
                        but i didn't do it first
    brntbeer            so, if you're wanting to push your changes (olegfeature) to github.com, you 
                        could type "git push -u origin olegfeature"
    Oleg                i did push -u origin
                        ok - worked!
                        so why I had to type branch explicitly if I am on that branch
    Kshama T.           great ! that warning is gone !
                        Thanks brent
    brntbeer            so if you're wanting to get olegfeature up to date with what's on origin/master, 
                        you could do a "git merge origin/master" while being on the olegfeature branch! 
                        and then push THOSE changes back to github.com with `git push origin 
                        olegfeature` to keep that remote branch up to date ;)
    brntbeer            woo!!! so happy Kshama Thacker. i'm curious about that being set at the system 
                        level. if you run into more problems i'd talk to some people there perha
    Oleg                Thanks! I meant "push -u origin" didn't work while on olegfeature branch - 
                        should we always include branch name?
    brntbeer            Kshama Thacker: that cache defaults to about 5 minutes i believe? so you only 
                        need to enter credentials once every 5 minutes. this can be read up on and 
                        configured different by looking into the man page at: `git help 
                        Oleg: that's something that's actually changing in git 2.0 to default to pushing 
                        your current branch. for now, i definitely always specific my same branch
    Oleg                Thanks!
    brntbeer            ok, quick break! brb
    Kshama T.           if we don't use forking, what would be the advantage of git over SVN or 
                        Perforce?
    Amy                 branching is nice - you can work on separate things without having changes get 
                        tangled up. with perforce you need to shelve things to switch between separate 
                        things
    HariDara            I just lost voice, is it just me?
    Michael A.          Still have audio here.
    Kshama T.           Agreed, love the idea of brach per feature as opposed to branches for different 
                        versions of software
    Michael A.          On the telephone, not Go2.
    matthewmccullough   HariDara Is it back?
    HariDara            ok, will restart GTM
    brntbeer            Hmm weird. was going to suggest restarting
                        keep us posted.
    HariDara            GTM doesn't come back up, still trying
    Brian S.            if it *doesn't* have an equiv branch on the server, is pull functionally equiv 
                        to fetch?
    brntbeer            HariDara: so far we've only mentioned what `git pull` is as a combination of 
                        `git fetch` and `git merge`
    HariDara            Thank you
    brntbeer            Brian St.Clair: it's only going to do retrieval things. so if there is a local 
                        branch that doesn't exist on the server, a pull isn't going to create that on 
                        the server
                        however, if you have a branch on the server that you don't have, a pull is going 
                        to act in the same way as a fetch
    HariDara            ok, back up. I had to disconnect my vpn :)
    brntbeer            woot!~ awesome
                        if you're following along, we're on 
                        http://teach.github.com/presentations/git-foundations.html and 
                        with a whole new slide theme that just got updated =)
    Brian S.            so if i do git log on master after fast forward merge, i see each commit from 
                        the branch?
    brntbeer            they'll be in a single line as if the branch wasnt there
    Brian S.            yep, cool
    brntbeer            because there's a good point to be made after a FF merge, "does it matter that 
                        it was on a branch?"
    Brian S.            probably only from a workflow standpoint?
    brntbeer            totally!
    Brian S.            i'm a little lost on the graph to the right of the screen... what am i looking 
                        at?
    brntbeer            you can keep those merge commits to more easily follow things if thats what you 
                        want
    Brian S.            so a merge commit hides the "bubble"?
    brntbeer            we were looking at "master" and "featuremergerecurdemo"
                        Brian St.Clair: opposite, a ff merge hides the bubble
                        and now labels were brought to the end of the graph
    Brian S.            sorry... merge commit "condenses" the bubble into one commit?
    Joe H.              Is there a way to merge a branch into your working files without committing that 
                        merge to the repo?
    Kshama T.           git merge and git push are essentially the same?
    Srividhya A.        what happens when there's a file conflict in the fast forward action ?
    Brian S.            ohhh... i was looking at "time" going down...
    brntbeer            Brian St.Clair: it just merges the lines together, so the commits appear in the 
                        same line there on the left
                        yea!
                        Kshama Thacker: not eactly. push is just updating the remote server. the merge 
                        is the action of pulling things in and condensing them into the branch
                        so merge => no network, push => network to update same branch
                        Joe Humphreys: if we get a FF merge, we wont get that merge commit. does that 
                        answer your question?
                        Brian St.Clair: time is actually going down, the most recent thing is at the top
                        We're getting this merge commit because there are things in master that the 
                        feature branch didnt have
                        so now this causes that sort of bubble
    Joe H.              No. Let's say I want to preview what will happen if I merge a branch, without 
                        actually merging it. How do I do that?
    Joe H.              Cool, thanks.
    Brian S.            whoa, i guess i missed the part that merge does a commit...
                        i would have thought that would just make the changes locally, and then you need 
                        to add and commit separately
    brntbeer            np! yep. `git merge --no-commit feature` will pull in the changes but stage 
                        them, then we can look at the changes, decide if we want it, and if we dont, we 
                        could tyoe `git merge --abort`
                        Brian St.Clair: it can create a commit. thats when there isnt a FF merge
                        like shown here: http://teach.github.com/presentations/git-foundations.html
                        there's changes on both branches from the point of the split
                        so to pull things together we cant just show things fast forward
    Kshama T.           does reflog/reset work only cumulatively?
                        can I revert changes only from 1 of the commits down in the tree?
    Joe H.              Those ids in the reflog don't appear to be unique -- there are duplicates.
    brntbeer            Kshama Thacker: nope, you can reset back to any of those steps in the reflog. be 
                        careful when you do it though. it's constantly moving etc
                        exactly Joe Humphreys =)
    Kshama T.           What I mean is if I want to revert HEAD 10 , can I do that without having to 
                        revert HEAD 0-9?
    DamianMyerscough    When you modify one file can you revert that one file?
    brntbeer            DamianMyerscough: definitely! there's a command called `git revert` and revert 
                        that actual commit.
                        so if in your change that you had for that file, you made the one commit for it
    DamianMyerscough    is that the same as svn revert?
    Kshama T.           ohh that was the answer to my Q as well :)
    brntbeer            you can do a `git revert HASHNUMBER` and revert that commit
                        this creates a whole new commit that does the inverse of it
                        Kshama Thacker: woot!
    HariDara            Can you only do the `git reset --hard` on local changes, or even those that you 
                        already pushed?
    brntbeer            HariDara: thats a tough question. i want to say "yes" because as you push 
                        things, and then reset them and try to puish again. you're going to be told 
                        "there are changes that you need to pull first!"
                        so HariDara, i want to say "only use reset on things you havent pushed yet"
                        it'll make life so much easier to do that. can really bother other people's 
                        repositories when you do that
    HariDara            That is what I thought, can really surprise others when they pull
    Nat                 why just adb4 and not the whole hash?
    DamianMyerscough    Cool
    brntbeer            Nat: 4 is actually the shortest amount you can use. but it'll check the entire 
                        repository and say "this is too ambiguous, specify more please!"
    Oleg                it is confusing same verb checkout switches branches AND checks out files and 
                        modifies them
    Kshama T.           Matthew can you show us how to use git revert on an older committed version of a 
                        file
    Nat                 ..and we can go "forward" too?
    brntbeer            Oleg: i agree. it can be pretty confusing. think of checkout as moving us to 
                        states in time. it moves HEAD around
                        for branches, this moves head to that branch. for files, it moves HEADS 
                        understanding of that specific file
    Kshama T.           revert works on a commit changelist only?
                        so there is no way to rever only 1 file from a commit?
    Oleg                brntbeer - thanks!
    brntbeer            np Oleg! happy to continue explaining if you want more
                        Kshama Thacker: correct. the git revert man page actually suggests using `git 
                        checkout` for that file
    Kshama T.           In that case, we're missing a feature in Git I believe
                        SVN allows you to revert your changes on 1 file from one previous revision
                        in Git seems like you either checkout your file to a prev state
                        or revert the entire change list
    HariDara            Kshama: But you can always checkout a single file from a previous commit and add 
                        back in with a sensible comment, right?
    Kshama T.           yikes, if I have 20 files, I have to checkout to head 19 of them?
    brntbeer            Kshama Thacker: hope that demo helps a little more! let me know if i can help 
                        more as well =) `git revert HASH --no-commit`, then do some changes with reset 
                        etc
    Amy                 If I'm working in a local branch, and I commit 5 times before I'm done and ready 
                        to push, there's some way to collapse those so it appears as just 1 commit up 
                        on github, right? Can you explain how to do that?
    brntbeer            Kshama Thacker: with a big revert like that, i'd just say to make a new commit
    Kshama T.           hmm.. so it is missing a feature that svn easily provides. I use it sometimes 
                        when I make a mistake in 1 file
                        agreed, there are many more advantages in git especially branching :)
    HariDara            Kshama: I don't understand your statement, why is it harder to revert a single 
                        file? Why is checking out that *single* file from a previous commit harde
    brntbeer            Kshama Thacker: and just personally, i dont revert often. i just continue to 
                        make commits especially if it's something really small. and if you made a 
                        change that you wanted to undo after a simple commit. if you havent been 
                        pushing that change yet, you can definitely `git reset HEAD^` which will reset 
                        to your previous commit
                        Kshama Thacker: again, no resets after you've pushed, but thats just one way i 
                        generally wrk
                        Amy: i'll go ahead and answer that in text: there's a command called `git 
                        rebase` and furthermore, `git rebase -i` that helps us do a squashing command. 
                        I would recommend reading up on it quite a bit before using it, i don't know if 
                        we'll have time in class today to get to it, but it's a way of preparing 
                        commits for a merge in the way that you're specifying
    Kshama T.           Har: checkout takes you to a prev version of the file. I just want to revert my 
                        changes from one of the older versions of the file say head~10. if I do 
                        checkout, I will lose all changes Head 0-9
    HariDara            OK, I see what you are saying, sorry should have been obvious.
    Kshama T.           brent, it happens only rarely, agreed.
    brntbeer            ah ok good =)
                        and if it's something so many commits ago, i'd still just make a new commit =)
                        clearly one thing i love about git is it allows me to dodge questions ;) haha
                        but seriously, the idea of multiple workflows being able to accompliush the same 
                        thing
                        i love so so so much
    Kshama T.           git stash is cool !
    brntbeer            definitely!
    Srividhya A.        stash can be used only within branches or against repo?
    brntbeer            against repo
                        and they are local only. no network traffic
    Srividhya A.        oh ok thanks -brntbeer
    Joe H.              Kshama, if you really needed to revert one change in one file, you could 
                        probably do it with "git diff" and patch. Figuring out the right way to apply 
                        the patch would be a bit of a pain, maybe.
    brntbeer            Joe Humphreys: you could do patches this way:
                        View paste
                        git diff 51fe50e14 --stdout > revert_this_file.patch
                        git am < revert_this_file.patch
                        i *believe* `git am` works in that way.
                        otherwise `git apply revert_this_file.patch` would certainly work
                        =)
    Joe H.              So if you did git diff <revb> <reva> <filename> --stdoud > my.patch, and then 
                        apply it, I think that solves Kshama's problem
                        To revert rev b
    brntbeer            Joe Humphreys: i think so. again i didn't try this just now but i believe that'd 
                        be a way to do it
    HariDara            After entering the editor for commit message, can you change your mind and abort 
                        commit?
    matthewmccullough   View paste
                        [mergetool]
                            prompt = false
                            keepBackup = false
                        [mergetool "myaraxis"]
                            cmd = araxisgitmerge $PWD/$REMOTE $PWD/$BASE $PWD/$LOCAL $PWD/$MERGED
                        [merge]
                        #   tool = araxis
                            tool = p4merge
    brntbeer            HariDara: definitely. if you don't have any message on there (again, this would 
                        be from deleting everything or commenting out everything) saves and quit, it'll 
                        say "aborrting due to no message"
    HariDara            ok
    Kshama T.           yeah seems like that patch *might* solve my question
    brntbeer            glad to hear it Kshama Thacker!
    Kshama T.           Will have to try it out. Thank brent :)
    brntbeer            no problem!
                        kind of a more advance feature useage. but try it out
    matthewmccullough   https://github.com/githubtraining/feedback
    brntbeer            http://teach.github.com
    Henry               great class . Thanks for this
    DamianMyerscough    Yeah, Thank you
    Kshama T.           where can I find the console history?
    brntbeer            Rejoin foundation online classes at for free at training@github.com
    Brian S.            Thank you guys!
    Oleg                Thank you both - great class!
    brntbeer            Kshama Thacker: http://teach.github.com/classnotes/2013-03-14-online-git-foundations.html
    Joe H.              Yep, very helpful, thanks.
    brntbeer            thank you guys! a real pleasure to teach
    Alicia              re: branching...when would you do a rebase?
    Srividhya A.        Thanks for a great Class.
    Nat                 thanks!
    Kshama T.           how long will that link live?
    brntbeer            Alicia: always before i merge. it makes you have a FF merge
                        Kshama Thacker: forever all time!
    Kshama T.           great ! That is really awesome, Thanks for the great class :)
    brntbeer            np! great times all around
    HariDara            Thanks a lot!
