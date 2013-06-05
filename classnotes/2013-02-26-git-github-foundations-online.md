---
layout: bare
title: Git and GitHub Foundations Online
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-02-26-git-github-foundations-online.md
eventdate: 2013-02-26
---

on 2013-02-26 through 2013-02-27

Teachers:

* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Matt Yoho ([Twitter](https://twitter.com/mattyoho), [GitHub](https://github.com/mattyoho))


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

    git --version
    git init project1
    cd project1
    open .
    pwd
    vim first.txt
    git add first.txt
    git commit -m "My first commit"
    git config --list
    git config user.name
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git config user.email
    git clone https://github.com/githubtraining/hellogitworld.git hgw1
    tree
    cd hgw1
    git log -2
    historytailzsh
    historytailzsh 3 10
    git log --oneline
    git log --oneline -4
    git commit -m "Saving this locally"
    git commit -m "My change"
    git clone https://github.com/githubteacher/hellogitworld.git hgwmine
    vim matthewmccullough.txt
    git add matthewmccullough.txt
    git commit -m "Matthews new file"
    git remote -v
    cd ..
    cd hgwmine
    git push
    subl ~/.gitconfig
    vim fix.txt
    git add fix.txt
    git diff
    git diff --staged
    git commit -m "All of things"
    github
    git gui
    echo CHANGE >> fix.txt
    git gui &
    git log -1
    gitk
    which -a git
    touch .gitignore

    ls -al
    echo JUNK >> newtmp
    echo JUNK >> new.tmp
    rm newtmp
    git add .
    git commit -m "Ignoring all tmp and subfolder"
    cat .gitignore
    mkdir stufffolder
    echo JUNK >> stufffolder/thing.txt
    git log master..origin/master
    git log origin/master..master
    git log origin/master master --oneline
    git log origin/master..master --oneline
    git fetch
    echo STUFF >> keepme.tmp
    vim .gitignore
    git status

## Command Line History, Day 2

    git rm fix.txt
    git status
    git reset --hard HEAD
    git status
    git rm fix.txt
    git status
    git reset --hard
    git status
    git add -u .
    git status
    git rm fix.txt
    git rm hellosvn-canyouhearme.md
    git status
    git reset --hard
    git mv fix.txt fixrenamed.txt
    git status
    git status -u
    git reset --hard
    mv fix.txt fixrenamed.txt
    git status
    git add -A .
    git status
    git add -A .
    git status
    git status -u
    git add -A .
    git status
    git add -A .
    git commit -m "Renamed some with the same content and some with changed content"
    git log --stat
    git status
    git branch -a
    git remote -v
    git reset --hard origin/master
    git fetch
    git reset --hard origin/master
    git status
    git clean -fr
    git clean -fd
    git status
    git fetch
    git remote -v
    git fetch
    cat fix.txt
    git merge origin/master
    git pull
    vim fix.txt
    git add fix.txt
    git commit -m "Client side change"
    git push
    git pull
    git log --graph --pretty=oneline --abbrev-commit --decorate --all -5
    git push
    git log --graph --pretty=oneline --abbrev-commit --decorate --all -5
    git branch
    git branch -r
    git branch -a
    git ls-remote origin
    git ls-remote origin | more
    git pull
    vim fix.txt
    git commit -a -m "Local change"
    git pull
    cat fix.txt
    vim fix.txt
    git status
    git add fix.txt
    git commit
    vim fix.txt
    git commit -a -m "Yellow locally"
    git pull
    subl ~/.gitconfig
    git help difftool
    git difftool --tool-help
    git mergetool
    git status
    git commit
    git push
    git difftool --tool-help
    historytailzsh 5 8
    git log --graph --pretty=oneline --abbrev-commit --decorate --all -5
    git status
    git branch featurework2
    git checkout featurework2
    git status
    git add -u .
    git status
    git commit -m"Deleted all of the things"
    git branch
    git status
    git checkout master
    git checkout featurework2
    git checkout master
    git checkout -b iwanttotrythisthing
    git checkout master
    git branch -d iwanttotrythisthing
    git checkout featurework2
    git push -u origin featurework2
    git checkout master
    git merge featurework2
    git push
    history
    git remote -v
    git config --global alias.s "status -u -s"
    git s
    git config --global alias.logfive ="log --graph --pretty=oneline --abbrev-commit --decorate --all -5"
    git config --global alias.logfive "log --graph --pretty=oneline --abbrev-commit --decorate --all -5"
    git logfive
    git l2
    cd ..
    cp -r hgwmine hgwtrashme
    cd hgwtrashme
    git rev-parse HEAD
    vim .git/objects/aa/9c41af2bd3123e9429baf0826097d34c819df7
    git log
    git fsck
    git rebase -i master~3
    git rebase -i master~1
    generaterandomchanges 5 sample txt
    git rebase -i master~3
    cd ..
    cd hgwmine
    git rebase -i master~3
    git status
    git checkout --theirs fix.txt
    git add .
    git rebase --continue
    git rebase --abort
    vim fi
    git checkout master
    git checkout featurework2
    vim .travis.yml
    git status
    git stash
    git status
    git stash list
    git stash pop
    git stash
    git checkout master
    git stash pop
    git stash
    git stash branch newfeature
    git stash
    echo CHANGE >> .gitignore
    git status
    git stash pop
    git stash
    echo CHANGE >> .gitignore
    git stash
    git stash pop
    git tag AGOODPOINTREF
    git tag -a AGOODPOINTREF2
    git tag -s AGOODPOINTREF3
    git show HEAD
    git log --format=raw HEAD
    git log --pretty=raw HEAD
    git log --format=raw
    git log --format=raw AGOODPOINT3
    git log --format=raw AGOODPOINTREF3
    git log --format=raw --decorate AGOODPOINTREF3
    cd ..
    svn co https://github.com/matthewmccullough/dotfiles/trunk
    cd trunk
    cd ..
    cd hgwmine
    git branch mynewbranch RELEASE_1.0
    git log --oneline
    git checkout cc536fa
    git checkout master
    git reset --soft cc536fa
    git commit -m"Restoring back to when it worked, you bad coders, you"

## Day One Chat

    Feb 26
    matthewmccullough   Hi everyone!
    Richard S.          Hi, is there audio yet?
    matthewmccullough   Richard. Indeed there. is. Just was testing. I see GoToMeeting saying I'm speaking with good levels.
    Richard S.          ok thanks
    Rajesh P.           Hello
    matthewmccullough   Howdy Rajesh!
    Matt Y.             Hi!
    Rajesh P.           Hi
                        git version 1.7.12.4 (Apple Git-37)
    John H.             git version 1.8.1.GIT
    Cheri V             $ git --version
                        git version 1.7.7.6
    Jeff K.             git version 1.7.8.2
    Ilya                1.7.12.4
    Dan                 Dans-MacBook-Air:~ danarnold$ git --version
                        git version 1.8.1.3
    Brandee             1.7.12.4
    Alejandro G.        git version 1.7.11
    Sean M.             1.8.0
    AL                  git version 1.7.12.4 (Apple Git-37)
    Seth                git version 1.8.0.msysgit.0
    Jim A.              git version 1.7.10.2 (Apple Git-33)
    Wouter K.           git version 1.7.9.6 (Apple Git-31.1)
    Daniel K.           git version 1.8.1.msysgit.1
    David R.            git version 1.8.1.msysgit.1
    Gary M              git version 1.7.10.2 (Apple Git-33)
    Justin C.           git version 1.8.0.msysgit.0
    Phillip J.          git version 1.7.10.2 (Apple Git-33)
    Pream T.            1.8.0.msysgit.0
    Nazila N.           git version 1.7.1
    Jon T.              git version 1.8.0.msysgit.0
    Matt Y.             Thanks for joining.
    Ruben M.            1.7.11
    Randy C.            git version 1.7.11.msysgit.1
    Matt Y.             If anyone has any questions about signing up, please ask.
    matthewmccullough   git init project1
    Randy C.            What was the first command to initialize
    matthewmccullough   cd project1
                        TEXTEDITOR first.txt
                        git status
                        UNTRACKED
                        git add first.txt
                        STAGING AREA
                        git status
                        git commit -m "First commit"
    Matt Y.             Keep the questions coming. :-)
    Randy C.            does git bash have an text editor?
    matthewmccullough   $EDITOR
    Matt Y.             Randy: Did that answer your question? I wasn't sure that was what you were curious about. :-)
    Cheri V.            git add . - start from where you are?
    Matt Y.             Yep, it starts from the current directory.
    Cheri V.            and 'git add --all' will add everything regardless of where you are?
    Matt Y.             So everything at the current level and further down.
    Cheri V.            so are . and --all the same thing?
    Matt Y.             Cheri: git add . and git add --all are similar.
    Cheri:              The difference is that git add -all will also stage files that have been deleted from the directory,
                        but git still thinks are being tracked.
                        git add . will only stage changes to new files or to already tracked files whose contents have
                        changed.
    Matt Y.             git config --list
    Jeff K.             would you pls share the cool command prompt? :)
    Matt Y.             Jeff K: I think Matthew has that open-sourced. I'm sure he'll share the GitHub URL later. :-)
    matthewmccullough   oh-my-zsh
    Jeff K.             thx
    jcamou              echo $PS1 (:
    Alejandro G.        thx, its look amazing
    Matt Y.             To see the settings specific to the current repository, for example, would be: git config --local --list
    Daniel K.           Is there a way to have git config --list indicate which (local/global/system) a setting is coming from?
    Justin C.           So local config has higher "specificity" than global?
    Matt Y.             Justin: Local takes top precedence, yep.
    Matt Y.             Daniel: I don't believe there is, but let me investigate for a moment.
    Daniel:             I don't think so, no.
    Daniel K.           ok. thx
    matthewmccullough   https://github.com/githubtraining
                        git clone https://github.com/githubtraining/hellogitworld.git hgw1
    Richard S.          hmm, any alternative to paste the url in windows git bash?
    Matt Y.             Richard: Not sure about that one, I don't have a Windows machine handy at the moment.
                        Possibly a right-click option?
    Richard S.          perfect thanks
    Bill                Is there a tree command in OSX?
    matthewmccullough   Brew Package Manager for OS X
                        brew install tree
    Pawel R.            there are two interesting files: .gitattributes .gitignore
                        what are those
    matthewmccullough   cd hgw1
    Matt Y.             Pawel: DId Matthew provide enough info for the time being?
    matthewmccullough   git log -2
    Pawel R.            yes, I think so
    Matt Y.             Pawel: Okay, we'll return to it later as well.
                        .gitignore is used much more frequently than .gitattributes, but generally remains static per
                        repository over the lifetime of the codebase.
    Ruben M.            In Windows how do I finish (get out) of the END?
                        Enter doesn't do it
    jcamou              nice, can even do git log --oneline -2
    Ruben M.            thx
    David R.            so the hex numbers to the left are the shortened "version numbers"?
    Ruben M.            Globally meaning?
    Matt Y.             Globally means statisitically unlikely that any other commit has the same id.
                        So, *very* unlikely. :-)
    Daniel K.           Incoming meteorites?
    Matt Y.             More likely.
    Daniel K.           :^)
    Matt Y.             :-)
                        Public repositories are available for anyone to read and make a copy of, but you still need to be
                        granted access to write to them.
                        git add fix.txt
    jcamou              but doesn´t fix.txt already exist in the repo_
    Matt Y.             It does!
    Ruben M.            What's the difference between add and commit?
    Matt Y.             Ruben: This should help.
                        The "Working" area is just what we think of as the files as they exist in the directory.
                        The staging area is the way that git sees the files have changed, and what will be committed when we run git commit.
    Ruben M.            I made a change to a file and then committed without adding!
    Matt Y.             In git, we have to tell git to pay attention to the changes we make to files on disk. This turns out to be very powerful.
    Ruben:              Run git status
    jcamou              so commit doesn´t do anything on the origin repo.
    Dan                 I'm not getting prompted for a password, instead I see (1 more line)
                        Dans-MacBook-Air:hgw1 danarnold$ git push
                        warning: push.default is unset; its implicit value is changing in
                        Git 2.0 from 'matching' to 'simple'. To squelch this message
                        and maintain the current behavior after the default changes, use:
                          git config --global push.default matching
                        To squelch this message and adopt the new behavior now, use:
                          git config --global push.default simple
                        See 'git help config' and search for 'push.default' for further information.
                        (the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
                        'current' instead of 'simple' if you sometimes use older versions of Git)
                        ...
    Ruben M.            So I could commit other1.txt without adding? That's what I did.
    Richard S.          I get "push.default is unset;" - did I miss the instruction for setting this? And how come when I
                        cloned the repo this wasn't automatically set?
    Daniel K.           There is also: git commit -a -m "my changes"
    Matt Y.             Dan: What Matthew is talking about is is the same issue you're seeing.
    Gary M.             How do I know what has been staged?
    Richard S.          I see, which do you suggest?
    Alejandro G.        git status
    Matt Y.             Historically, git would push al branches, but that had some surprising rough edges, so people often
                        changed from matching to simple.
                        So eventually git changed the default.
    Richard S.          gotcha thanks Matt
    Matt Y.             The 'simple' option is probably the safer option.
    jcamou              git add should be done against any modified file?
    Nazila N.           What does this mean: # Your branch is ahead of 'origin/master' by 1 commit.
    Matt Y.             No problem.
                        This is where it's important to keep in mind that every copy of a git repository is a complete
                        and independent one. We're not connected to the repo on the server, like we would be in a system
                        like SVN.
    Nazila N.           Thanks - got it
    Daniel K.           ... as far as your local repo knows
    Matt Y.             Daniel: True. :-)
                        Other activity "upstream" would come from, say, other developers on your team pushing their
                        changes before you.
                        Anyone can "fork" their own copy of a public repo on GitHub. That fork then belongs to the
                        person who created the fork, so they will have write permissions.
                        When you create a Pull Request, you're asking the original owner or owners of the repository
                        you've forked to accept your contributions.
    Matt Y.             It's up to them to pull them in, ignore them, or discuss them with you and suggest further changes.
                        Any questions at this point, about process or otherwise?
    matthewmccullough   https://github.com/githubtraining/hellogitworld
                        Fork
                        Copy
                        Your copy now lives under your username
                        Grab that URL
                        (It had your username in the URL)
    Ilya                sorry where exactly on the web page is "fork"? i missed it
    matthewmccullough   git clone YOURUSERNAMEURL hgwmine
    Matt Y.             Ilya: Were you able to find the button?
    Ruben M.            I got "Untracked..."
    Done.               Maybe I mispeled something
    Matt Y.             Ruben: Do you have it sorted out, or are you still seeing "Untracked"?
    Ruben:              You may want to watch Matthew walk through this, then we can follow up if you're still
                        having trouble.
    Ruben M.            But it's not in your local drive?
    Dan                 I'm assuming I might need to set credentials somewhere when I get the following error?
                        error: git-credential-osxkeychain died of signal 11
    Matt Y.             Dan: Could you share your set up process?
    Jeff K.             Daniel Kirkdorffer: K asked earlier about printing the scope where a config var comes from. You
                        could do something like this and alias it...
                        for scope in "local" "global" "system";
                        do git config --${scope} --list | awk -v s=$scope '{print s "\t" $1}'; done 2>/dev/null
    Matt Y.             Ruben: I apologize, could you clarify your question?
    jcamou              beautiful.
    Ruben M.            Yes, changes made in the web are not locally. right?
    Daniel K.           Jeff < true, aliasing would be an option. thx
    Matt Y.             Ruben: That's correct. Changes on the web will remain on the server until you run a git command to
                        pull those changes down.
    Dan                 Matt Y, I setup git some time ago but haven't really used it since. I installed git again this
                        morning, but I've also installed things like source tree a while back as well
    Randy C             I did "git add *" (no quotes) instead of "git add [filename]" and got:
                        warning: LF will be replaced by CRLF in h.
                        Now status shows new file h
                        What is this file h and where did it come from?
    Matt Y.             Dan: My guess is that the copy of git-credential-osxkeychain is out of date. Could you follow the
                        steps in this article specific to installing that utility: https://help.github.com/articles/set-up-git
                        It will be the steps under the portion Password Caching
    matthewmccullough   Matt Y: Spot on. That sounds like what I was going digging for. You are fast.
    Richard S.          I got a 403 error when I tried to push
    Matt Y.             Randy: It's possible that file came from a slight mis-type of another command.
                        I would guess it is safe to remove it.
    matthewmccullough   Randy: On that warning, it is just saying that it will convert the line endings between Unix
                        and Windows style. That is controlled by the setting:
    Matt Y.             matthewmccullough: I had my water cup on hand already. ;-)
    Tom H.              I added a file "Tom" to my local file, did git add Tom then git commit then git push
    matthewmccullough   git config --global core.autocrlf false
                        git config --global core.autocrlf true
                        git config --global core.autocrlf auto
                        git config --global core.autocrlf input
    Tom H.              Do not see it in the list of files on the web
    matthewmccullough   The "false" choice turns that behavior off.
    matthewmccullough   Tom, can you paste your push's success message from the command line? We'll check it from there
                        Also, paste us the `git remote -v` results so we can double check the URL and push success.
    Tom:                Sorry I didn't prefix those words above. Those are for you on the push output request and
                        remote -v request
    Tom H.              Just noticed I forgot the message on the commit. Push now did something. And the file is there.
                        Sorry about the drill.
    Matt Y.             Tom: No problem.
                        Dan Thanks Matt and Matthew. The osxkeychain helper that i'm using is the one that was
                        installed with the git download I did this morning, so it looks up to date.
    matthewmccullough   Tom: No apologies in this room! This is learning at its finest.
                        Question EVERYTHING. ;)
    Justin C.           Once a file is added to the stage I assume that changes to the file are tracked, is that correct?
                        Dan I can still enter my username and password after I get the error so I can proceed,
                        but I'd like understand how to fix it.
    matthewmccullough   Dan: I'd suggest turning the helper off for class until we can troubleshoot if there's another
                        account hanging in the keychain
                        To turn it off, here's the one-liner:
                        git config --unset --global credential.helper
                        So that just removes it from trying to use the helper
                        Then, test its setting by running
                        git config credential.helper
                        and it should report nothing and instead just prompt each time
                        I'm 92% confident that there's a wrong username and password stored in your
                        OSX Keychain -- maybe old -- maybe just off by a letter
    Matt Y.             Justin C: Sort of; If you stage changes to a file then change that file further, you would
                        have to re-stage it for those latter changes to be tracked for commit.
    Richard S.          I'm good on the 403 by the way; Just realized I didn't clone my own fork, but yours instead,
                        pushed successfully now.
    Justin C.           Oh, okay. Thanks.
    Matt Y.             Richard S: Great, glad you worked it out. I think your issue slipped through, my apologies.
    Dan                 It doesn't seem to be removing the fix
                        Dans-MacBook-Air:myworld1 danarnold$ git config --unset --global credential.helper
                        Dans-MacBook-Air:myworld1 danarnold$ git config credential.helper
                        osxkeychain
    Matt Y.             Dan: Just for sanity's sake, try removing it from --system and --local as well.
    Dan                 thanks! It looks like it was set at the system level
    Matt Y.             Dan: Interesting. Sorry for the trouble.
    Dan                 thanks for your help. I must have set up something months ago without realizing it.
    Matt Y.             It happens. :-)
    Jeff K.             I have a hard stop in 5 minutes, but will be back tomorrow morning. great training guys. thank you.
    Matt Y.             Thanks, Jeff, see you tomorrow.
    Alejandro G.        bye Jeff
                        thx
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    Matt Y.             So, Pull Requests can be made betweens forks of a repo OR within the same repo.
    Matt Y.             Branches are used often in git because they're so lightweight and make it easy using GitHub
                        in particular to review changes collaboratively.
                        Branches are very often short-lived.
                        Sorry, Matthew, I guess I'm slow to the mic! :-)
    Ruben M.            Could you quickly repeat the process of branching from the student viewpoint?
    Matt Y.             Ruben: We'll review it again quickly, sure.
    Ruben M.            thx
    Matt Y.             You're welcome.
    Cheri V.            how are merge conflicts handled in github?
    Matt Y.             Cheri: If there are merge conflicts, you won't be able to merge using the GitHub UI.
                        But the UI will tell you that's the case.
    Alejandro G.        wow that was amazing
    Matt Y.             That's somewhat rare, particularly with standard workflow, but in those cases you fall back to
                        manually merging the branch locally, and then push the merge back up.
    Dan                 i think I missed where you pointed to githubteacher's repository instead of githubtraining.
                        Could you possible show that again?
    Ruben M.            At least in my pc, the screen is not refreshing
    Matt Y.             Dan: Did that show what you needed to see?
    Daniel K.           What is the easiest way to do a complete unified diff of a specific commit?
    Matt Y.             Daniel: If you would like to see the changes for a specific commit, you can use git show
                        git show <hash id>
    Daniel K.           Ah
    Dan                 Yes, thanks Matt and Matthew
    Matt Y.             You can also use git diff for arbitrary commits.
                        Like `git diff HEAD`, you can substitute the hash id for any commit.
                        Instead of "HEAD".
    Dan:                You're welcome.
    Bill                How do you launch the Mac GUI?
    Matt Y.             Bill: You can open Spotlight with Cmd+Space, then type "GitHub". That should find it.
    Daniel K.           Can you repeat the definition of what "git diff HEAD" does?
    Matt Y.             Sure.
    Bill                Is it a Mac App that was installed when I installed Git or do I need to download it from Github?
    Matt Y.             git diff HEAD will show changes in the current state of the files as compared against
                        the most recent commit.
    Daniel K.           thx
    Matt Y.             HEAD is basically a variable name that points to the most recent commit in the branch
                        you're currently working with.
    Bill                Thank you.
    jcamou              [jcamou@local:hgwmine]$ git gui
                        git: 'gui' is not a git command. See 'git --help'.
                        gotcha.
    Cheri V.            yum install git-gui installed it for me on Fedora
    Ruben M.            How about Tortoise?
    Daniel K.           Off topic: Can one update a commit msg before a push (particularly not that of the last commit)?
    jcamou              thanks Cheri.. got gitk out of distro yum repo.
    Daniel K.           TortoiseGit 1.8 is quite an improvement over 1.7.
    Matt Y.             Daniel: If you haven't pushed up the commit you want to change, you can update it, yes.
                        You may be familiar with the `git commit --amend` case, sicne you're referencing a commit
                        other than the latest.
    Daniel K.           thx
    Matt Y.             As Matthew is saying, it's a bit advanced. :-)
    Bill                How about IDE Integration? IntelliJ?
    Matt Y.             The `git rebase` command can be used to rewrite previous commits.
    Daniel K.           Eclipse has eGit
    Alejandro G.        best learn to use it from console first and the switch to a gui :)
    Richard S.          what was the command for making existing non-git projects ready for git again?
    Matt Y.             Alejandro: That's definitely a strong option from a learning fundamentals perspective.
                        People who enjoy GUIs have options, though. :-)
    Richard:            git init
    Richard S.          thanks!
    Matt Y.             No problem.
    Bill                IntelliJ?
    Jim A.              Can you talk about upgrading git in xCode?
    Alejandro G.        i mean, you need the console if you are going to work with git. You can have a GUI but sooner or
                        latter you will need console skill to fix and do high level stuff
    Jim A.              thx
                        perfect.
    jcamou              does .gitignore go on homedir or per directory basis inside the repo_
                        nvm (:
    Matt Y.             jcamou: There is a .gitignore file per-repo.
                        But you can also have one in your home directory. The repo-level one will take precedence.
    jcamou              copy, thanks!
    Ruben M.            Something like bin/release/*.exe?
    Alejandro G.        can you do things like folder/sobfolder/*.log
    Matt Y.             Yep.
    Jim A.              global .gitignore?
    Matt Y.             tmp/* - will ignore all files in tmp, but preserve temp
                        tmp - will ignore the tmp directory itself and all child nodes
    Bill                When you create a file on github using the + key on the web page, how do you get that file to
                        your local machine?
    Matt Y.             Bill: Once your change (the new file) is committed on GitHub, you can run `git pull` in your
                        local repo to bring down the new commit with the new file.
    Daniel K.           can git status or git log just show the unpushed commits?
    Matt Y.             Daniel: You can use git log to show unpushed commits.
                        git log <COMMIT 1> <COMMIT 2>
                        I left out the .. between the commits in the above.
    Jim A.              can you get just the changes on the remote? Without pulling the actual files?
    Daniel K.           Great, thx
    Ruben M.            I created the files: !a.log a.log !a.tmp. When I do a log status it doesn't seem to go by the ! mark
    Jim A.              thx
    Bill                Is all the functionality of the command line available within Mac GUI app and IDE Integration?
    Daniel K.           Ruben < did you actually create a file that begins with a "!" character?
    Ruben M.            sorry...
                        I didn't change the .ignore
    Bill                Thank you.
    Matt Y.             The everyday commands for a standard workflow will be there.
    Phillip J.          `brew install git` automatically installed and added git 1.8.1 to my path
                        should i have to do anything else?
                        it had a few caveats listed - not sure if that's something to worry about
    David R.            To go back a little bit... In subversion it is *really* hard to lose history (a feature
                        that has pros and cons). Awhile ago you I think you said you sometimes clean up old, not
                        useful branches. That actually cleans up the server-side repository so those changes are purged?
                        That is, you if you view the network graph (e.g. gitk) you will not see that branch anymore?
                        Is that branch lost immediately or does it go to a "recycle bin" (to use a windows gui metaphor)?
                        If so, how is it be restored? How much time do you have?
    Daniel K.           Will you be talking more about line endings / autocrlf?
    Bill                Thank you for a great class!
    Alejandro G.        it almost imposible to lose nothing in git
    jcamou              tomorrow same time?
    AL                  Full slide deck?
    Richard S.          awesome class, thank you guys!
    matthewmccullough   Thanks Matt! Great help here. AL - Yes. Total set of slide decks emailed
                        They are all OSS so you can even use them at your company
                        CC-BY open source licensed
    Alejandro G.        thx for the class matt!
    Matt Y.             Phillip: Feel free to paste the caveats, but you should be fine.
    RIchard:            Thanks.
    Wouter K.           thx c u tomm.
    Pawel R.            thanks
    Phillip J           ==> Caveats
                        The OS X keychain credential helper has been installed to:
                          /usr/local/bin/git-credential-osxkeychain
                        The 'contrib' directory has been installed to:
                          /usr/local/share/git-core/contrib
                        Bash completion has been installed to:
                          /usr/local/etc/bash_completion.d
    matthewmccullough   David R. : As for the buffer of deleting the branch, you have a few hours to restore it
    David R.            Good to know, thanks!
    matthewmccullough   You are right in that it can be perceived as easier to lose history, but in reality,
                        I have not seen that manifest very much.
    Bill                What happens in cases where you have source code in multiple directories?
                        Is that one repository? How does this work?
    Matt Y.             David: When a branch is deleted, the commits it contain and the changes it introduced will
                        remain. It's more the "name" that points to a particular path of commits that goes away.
    matthewmccullough   The reason is that folks have a copy of the repo locally and server side in almost all real world cases
                        and the local side saves all trash for 90 days
    Matt Y.             Bill: You would either have a repository per directory (git init in each) or use the parent
                        directory as the root of the repo.
                        If they're really two code bases, two repos would be appropriate.
    matthewmccullough   So server side, the trash collection is a little quicker, but client side (and almost every developer
                        will have a local copy), you have a 90 day insurance policy.
    Matt Y.             Phillip: Those notes should be just fine.
    Phillip J.          thanks matt.
    David R.            Great. I appreciate the help. See you tomorrow.
    Justin C.           Thanks for the great class!
    matthewmccullough   Thanks all! Hope you learned a lot. See you tomorrow!
    matthewmccullough   Feel free to ask any extra-curricular questions over at our Q&A repo
                        that we hit every few days between travel training at:
                        https://github.com/githubtraining/feedback/issues
    matthewmccullough   And class-structure feedback is cheerfully accepted at training@github.com

## Day Two Chat

    matthewmccullough   Class notes are ready at: http://teach.github.com/classnotes/2013-02-26-git-github-foundations-online.html
    And will be expanded after class today.
    matthewmccullough   Morning Matt Yoho! Glad to have you here again helping us.
    Matt Y. Good morning!
    matthewmccullough   Class notes are all ready: http://teach.github.com/classnotes/2013-02-26-git-github-foundations-online.html
    More will be added at the end of class today, but that's the canonical link.
    Jim A.  on a pull request- what if there are conflicts?
    Matt Y. Jim: If there are conflicts on a pull request, they will have to be resolved manually locally first, then have the merge commit that resolves them pushed up to the Pull Request branch.
    Matt Y. The PR will then apply cleanly and can be closed through the GitHub UI. But in practice those conflicts are relatively infrequent.
    Jim A.  thx
    matthewmccullough   Class notes are ready: http://teach.github.com/classnotes/2013-02-26-git-github-foundations-online.html
    AL  Had to go into .git/config and change http to https to reset password to use HTTPS to push? Any ideas why?
    Bill    Thanks.
    Rajesh P.   Hello
    Good Morning
    Matt Y. AL: GitHub won't accept password-authenticated requests over non-SSL protected HTTP.
    Good morning, Rajesh.
    Justin C.   Will there be any information about deployment?
    matthewmccullough   http://training.github.com/web/git-foundations/
    Ilya    were any notes emailed yesterday? i haven't received anything
    Matt Y. Course notes for yesterday and today: http://teach.github.com/classnotes/2013-02-26-git-github-foundations-online.html
    Ilya    thank you
    Matt Y. Np!
    Daniel K.   Do you have a transcription of yesterday's chat?
    Matt Y. Daniel: I'm afraid not, I think. The free Campfire rooms don't track transcripts. Sorry!
    Daniel K.   Bummer. That was one benefit of the GoToMeeting chat room.
    Seth    If I reset --hard HEAD why would my branch be ahead of master by 1 commit still?
    Bill    How do I get my Mac Terminal to use same colors as Matthew's.
    Matt Y. Seth: If you haven't pushed that HEAD commit up to GitHub yet, your local repo will still be one commit ahead.
    matthewmccullough   http://teach.github.com/articles/shell-prompts/
    Daniel K.   Terrific. Thx.
    Matt Y. Sorry for the misinformation!
    Daniel K.   np
    Phillip J
    # On branch master
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #   new file:   mycontact.txt
    #   deleted:    philwinkle.txt
    #
    ahhhh i removed more than one line of a 5 line file
    Rajesh P.    copy of same file to a different name and move the file to a different name
    matthewmccullough   git log --stat
    Matt Y. Questions!
    Rajesh P
     first.txt => t/first.txt   | 4 ++++
     second.txt => t/second.txt | 0
     second.txt => third.tx     | 0
     3 files changed, 4 insertions(+)
    Randy C.    how long does it stay in effect.
    Matt Y. Randy: How long does the metadata recalculation in the log listing stay in effect?
    It's a one-time thing, it isn't cached or stored.
    So every time you want to see that view of the history you have to specify the flags.
    Randy C.    if I use -C once do I have to keep using it?
    Matt Y. Yep, you do.
    But you only need it when you want to see that "perspective" on the history.
    Randy C.    ok he said 'turns on' and thought it was forever.
    Matt Y. Right, gotcha. No, that was just a slightly loose manner of speaking.
    Bill    Do you have a document that list all the optional command line parameters for a command (i.e. -u, -A, etc)?
    Ruben M.    I assume that git reset --hard is not undoable. correct?
    Matt Y. Bill: One quick reference in addition to the only documentation, Git comes with traditional man pages.
    matthewmccullough   http://git-scm.com/docs/git-add/1.7.5
    Matt Y. Looking up specific commands takes a specific form. To check the documentation, including all the flags, for say `git log`, you would check `man git-log`.
    matthewmccullough   http://teach.github.com/cheatsheets/
    http://teach.github.com/articles/git-cheatsheets/
    Matt Y. Ruben: A `git reset --hard` isn't really undoable, no.
    Jeff K. Bill: man pages are usually accessible via the --help flag as well (tho for some reason this doesnt work on my windows installation): git add --help (or generically: git <command> --help)
    Alejandro G.    offtopic: how can you know what is going to be update by a git pull command?
    Daniel K.   git log origin/master..master
    Alejandro G.    nice
    Matt Y. Daniel: That's a good thought, but doesn't quite work.
    Daniel K.   Oops < sorry that's going to tell what will be pushed
    Matt Y. What Matthew is talking about now is related to Alejandro's question.
    We'll make sure to address it in a moment when Matthew finishes his point.
    matthewmccullough   git reset --hard origin/master
    Alejandro G.    nice fetch is was i was looking for :D
    Richard S.  so is it just changing what is "head" then?
    Matt Y. Richard S: Not exactly. HEAD refers to the latest commit in your current branch. What `fetch` does is pull over the local copies of the remote branches that mirror your local ones.
    Phillip J.  so, git fetch requires me to still have to git pull
    Daniel K.   If I do something like switch core.autocrlf from true to false, what would I need to do to ensure my local working files are adjusted accordingly? A new clone?
    Richard S.  ah I see
    Matt Y. Phillip: It turns out that git pull is a shortcut for git fetch and another command, git merge. We'll take in more detail a bit later.
    *talk
    Phillip J.  ok thank you
    Pream T
    # On branch master
    # Your branch is behind 'origin/master' by 3 commits, and can be fast-forwarded.
    #
    Matt Y. Daniel: Let me get back to you on that in a few, I want to make sure we follow up on the question Alejandro raised earlier.
    But in short, changing a setting like that will only affect files you change and commit, not files already in the repo.
    David R.    what is the difference between git fetch and git remote update (is there any?)
    Cheri V.    After a git fetch, I do a git pull and it says everything is already up to date.
    Matt Y. David: With only one remote, they're equivalent.
    AL  After Fetch, wouldn't it be good to do a diff?
    Matt Y. AL: You may want to do that, but even with a conflict, you will probably have to merge it.
    In practice it's okay to skip that.
    David R.    After git merge, I got: fatal: No commit specified and merge.defaultToUpstream not set.
    Matt Y. David: Could you paste the command you ran?
    David R.    I edited fix.txt in the browser, committed, it, then: git fetch
    then git merge
    Matt Y. Alejandro asked a few moments ago, "how can you know what is going to be updated by a git pull command?"
    Daniel K.   David do: git merge origin/master
    jcamou  is it a good practice to always do a pull before push?
    David R
    > git status
    # On branch master
    # Your branch is behind 'origin/master' by 1 commit, and can be fast-forwarded.
    #
    nothing to commit, working directory clean
    git merge origin/master
    Justin C.   Can you give a quick example of why you'd want to do a fetch instead of a pull?
    Bill    So Origin is Remote, not Upstream. Correct?
    Alejandro G.    ok understood, thx for the clarification matt
    Matt Y. Justin: Primarily if you wanted to review what would be automatically merged in by running pull.
    jcamou: Yes, it is; though if you haven't done a pull, and there are changes on the remote, your push will be rejected with a message telling you to pull.
    jcamou  Thank you, Matt.
    Justin C.   Thanks
    Matt Y. Bill: origin is the name of the primary/default remote.
    "Upstream" is a general term referring to a remote.
    Daniel K.   Wasn't prompted but using new version.
    git version 1.8.1.msysgit.1
    $ git pull
    remote: Counting objects: 5, done.
    remote: Compressing objects: 100% (1/1), done.
    remote: Total 3 (delta 2), reused 3 (delta 2)
    Unpacking objects: 100% (3/3), done.
    From https://github.com/dankirkd/hellogitworld
       9f6b991..e394d83  master     -> origin/master
    Updating 9f6b991..e394d83
    error: Your local changes to the following files would be overwritten by merge:
            Copyofother1.txt
    Please, commit your changes or stash them before you can merge.
    Aborting
    Jon G.  I have the same and wasn't prompted.
    jcamou  what would´ve happened if both changes were done at the bottom?
    Pream T.    may it be a windows/powershell thing?
    AL  Auto-merging... cursor is just hung in console
    Editing done and saved.
    ah
    was it
    matthewmccullough   git log --graph --pretty=oneline --abbrev-commit --decorate --all -5
    Richard S.  Matt, my merge failed, it says "Automatic merge failed; fix conflicts and then commit results."
    Matt Y. Richard: It may be the case that the files were changed in the same place in the remote and local versions.
    Matt Y. If you run git diff now, what does it look like?
    Daniel K.   How do I merge?
    Richard S.  it shows the changes of my one liner on local and the change on server
    Daniel K
    $ git merge origin/master
    Updating 9f6b991..e394d83
    error: Your local changes to the following files would be overwritten by merge:
            Copyofother1.txt
    Please, commit your changes or stash them before you can merge.
    Aborting
    David R.    in that git log graph output, origin/master and origin/head are red, does that mean anything?
    Matt Y. David: No, there's no special meaning to those colors.
    Daniel K.   Duh!
    David R.    okay good.
    AL  difference between origin/master origin/HEAD in log --graph?
    jcamou  how do you set the default branch on the cli_
    ?
    copy.
    Matt Y. Richard: You could paste the output of the diff if you'd like.
    Richard S.  sure
    Richard S
    $ git diff
    diff --cc fix.txt
    index a30ffa5,ba3cc83..0000000
    --- a/fix.txt
    +++ b/fix.txt
    @@@ -1,3 -1,4 +1,8 @@@
      Trainer making changes
      JUNK ON
    ++<<<<<<< HEAD
     +this was done on local
    ++=======
    + This is done serverside
    + put something bottom on serverside
    ++>>>>>>> e3364b8777e0408a77f0fb36ea19a541697630ed
    Alejandro G.    so if my default branch in server is master, origin/master == origin/HEAD?
    Richard S.  in this case is it best to just reset my changes since changes locally are in the same spot as server?
    Matt Y. Richard: The local change needed to be the very top line to avoid the conflict. Those changes weren't on the same line, but were close enough for git to consider them a potential conflict.
    Alejandro: Yep.
    Randy C.    What does this mean
    error: The requested URL returned error: 403 while accessing https://github.com/
    githubtraining/hellogitworld.git/info/refs
    fatal: HTTP request failed
    Richard S.  ok thanks
    Matt Y. Richard: As Matthew just said, you can just wait a bit. :-)
    Richard S.  :)
    Alejandro G.    403 is forbidden
    Randy C.    Is that a standard http error number?
    Matt Y. Randy: Yep.
    Richard S.  i had that yesterday Alejandro , are you using your fork?
    Alejandro G.    yep
    Matt Y. Randy: That is possibly happening because your remote is set up with an http url instead of https.
    You can look in the contents of ./.git/config to inspect the remote URL.
    I'll be back after the break.
    Nazila N.   Randy: had the problem yesterday which was resolved for me by adding adding my "username@github.com/...." in the URL line in for .git/config
    Daniel K.   Maybe this can be asked now? ... If I do something like switch core.autocrlf from true to false, what would I need to do to ensure my local working files are adjusted accordingly? A new clone?
    Right
    Right
    You're confirming my thinking.
    thx
    We made the mistake of choosing true and our whole team needs to make the switch
    jcamou  commit -a is add_
    ?
    Matt Y. jcamou: Yep.
    jcamou  beautiful.
    Matt Y. It's simple add, no flags.
    Matt Y. Red + blue == purple :-D
    Ruben M.    There are some pretty sophisticated apps that help you resolve conflicts, such as BeyondCompare. How can we use them?
    Matt Y. Ruben: Matthew is going to talk about using graphical merge tools shortly.
    matthewmccullough   git difftool --tool-help
    Randy C.    we saw a diagram of local & remote but where does base fit into to this picture?
    Ruben M.    thx
    matthewmccullough   https://github.com/matthewmccullough/dotfiles
    Bill    Does SmartGib or Tower include diff/merge tools with comparable functionality? How about IDE diff/merge tools?
    Cheri V.    For people who have to deal with a large number of merge conflicts (merging two versions of an OS for example), is there a way to "farm out" the merge conflicts so that multiple people can help resolve them?
    Bill    Do the IDEs (i.e. IntelliJ) have visual diff/merge tool that is comparable to Araxis?
    Thank you.
    Daniel K.   Modified date in Windows changes.
    Jim A.  what did she say?
    sorry, *he
    nvm, I saw it
    Nazila N.   sorry - what was "-u" switch ? (in push)
    Phillip J.  so it's possible to publish a local branch to a different origin branch name
    what's the use case for that
    Matt Y. Nazila: It tells git to remember the remote branch you pushed to, so that pulls will work afterward.
    Nazila: It tells the local branch you are pushing to "track" the remote branch you're creating in the future.
    Nazila N.   thanks Matt
    Matt Y. Nazila: You're welcome. Feel free to ask for further clarification.
    Phillip J.  could you show your zsh history once
    one more time
    Bill    Could you clarify what is "origin", the local cache of GitHub or actually GitHub?
    matthewmccullough
    10109  git branch featurework2
    10112  git add -u .
    10114  git commit -m"Deleted all of the things"
    10115  git branch
    10116  git status
    10120  git checkout -b iwanttotrythisthing
    10122  git branch -d iwanttotrythisthing
    10123  git checkout featurework2
    10124  git push -u origin featurework2
    10125  git checkout master
    10126  git merge featurework2
    10127  git push
    Bill    Thank you.
    Phillip J.  can we alias that
    e.g. another remote with a name other than origin
    Matt Y. Phillip: You can rename remotes if you like. "origin" is the default name for the first remote.
    Phillip J.  thanks
    matthewmccullough   git config --global alias.logfive ="log --graph --pretty=oneline --abbrev-commit --decorate --all -5"
    John H. git config --global alias.logfive ="log --graph --pretty=oneline --abbrev-commit --decorate --all -5"
    Sorry
    jcamou  white space
    matthewmccullough   git config --global alias.logfive "log --graph --pretty=oneline --abbrev-commit --decorate --all -5"
    Daniel K.   Removing an alias?
    Bill    When I typed your original version a small blue bird starting flying on my screen. How do I turn it off?
    Just Joking...
    Alejandro G.    you can open the .gitconfig to inspect it and add there what you want or remove it
    matthewmccullough   https://githubtraining.campfirenow.com/7051f
    Daniel K.   Looks like: git config --global --unset alias.s
    Daniel K.   Can you use rebasing to change the commit comment of an older commit (not just the last)?
    Matt Y. Daniel: Yep!
    AL  should we rebase before pushing to origin?
    Jim A.  rebasing will combine all of your local commits?
    Daniel K.   fix your repo
    Matt Y. Jim: That *can* be done, but isn't the default.
    Seth    not sure I understand the rebase before sharing... why shouldn't I rebase a branch, commit, push, and alert coworkers to pull the newly rebased branch?
    Matt Y. Seth: Because rebasing changes the history of commits, you would cause your coworkers later changes to be conflicts, as well as potentially duplicate commits.
    Seth: Once a commit has been shared, it shouldn't be changed.
    Alejandro G.    ok pple i have to leave now, its been a great learning time. Cheers all and keep the good work comming!
    Matt Y. Seth: Now, it *is* possible to "pull and rebase" but in general that workflow takes a lot more diligence than its payoff.
    Alejandro: Thanks for participating!
    Seth    so how might two separate people work on a long term feature branch (that will at some point involve a rebase before merge)?
    Alejandro G.    thx for all, matt and matthew both of you are good teachers hope we can meet in the advanced course :D!
    Matt Y. Alejandro: Thanks! See you around.
    Daniel K.   Why do people bad mouth using "git stash"?
    Phillip J.  this.
    Daniel K.   Isn't is like creating a local branch?
    Phillip J.  can we effectively pop 4 or 5 working ideas into the same branch
    or do they overwrite each other
    k
    Daniel K.   git branch will show a generic branch
    I love git stash
    Phillip J.  can you cat a stash and port it to another box, say like my laptop
    gotcha
    Daniel K.   So you can git reset --hard MYTAG
    Ruben M
    I have a general question:
    How secure is the code in GitHub? I understand there is no encrypt option or something like that, at least for some files.
    Daniel K.   This is only available from GitHub, not just any Git repo, right?
    Matt Y. --show-signature
    Cheri V.    Is there any help for how to merge from svn to git while preserving history?
    Daniel K.   How to create a branch from a tag?
    Rajesh P.   is there a advanced class too ?
    Jeff K. Great training. Thanks fellas.
    David R.    see you for the advanced class
    Daniel K.   :thumbsup
    Ruben M.    Excellent class
    matthewmccullough   http://help.github.com/security/
    Tom H.  Is it possible to delete repositories? I belive locally you can remove the .git file and/or the directory- but server side?
    David R.    Rajesh: http://training.github.com/web/advanced-git/
    Matt Y. Daniel: Which feature were you asking about, whether or was a git or GitHub feature?
    Tom H.  Thanks.
    Bill    When using IDE git integration, do you switch (and create a new branch) from inside the IDE, or do you need to do it outside IDE?
    Daniel K.   Matt < the SVN trick
    Matt Y. Bill: You can do it either way.
    Daniel K.   Matthew, thx
    Matt Y. Daniel: Gotcha. Any SVN repo can be converted to a git repo, it's just a matter of processing.
    Dan If I need to go back to a previously commit in a branch, several commits ago, how do I do that?
    Bill    Thank you. I'm assuming that's also true for IntelliJ?
    Thank you.
    Matt Y. Daniel: It's also possible and pretty common to create a git repo locally and then push it up to GitHub.
    Cheri V.    Is there a good reference for how to convert from svn to git while preserving history?
    Dan how about both? :)
    Daniel K.   I meant, can you "svn checkout" from any git repo, or only from a GitHub repo?
    Bill    Thank you for all the hard work in preparing and delivering this class. Very much appreciated.
    Matt Y. Cheri: Here's a helpful article on SVN => git conversion https://help.github.com/articles/importing-from-subversion
    Bill: On behalf of Matthew, thank you, and thanks for participating.
    Nazila N.   Thank you very much to both of you.
    Jim A.  thx guys!
    Wouter K.   Thanks, great info! See you for the advanced class.
    Matt Y. Daniel: Oh, my mistake. Yes, that's a GitHub feature. It may be replicated elsewhere but isn't standard.
    matthewmccullough   http://teach.github.com/classnotes/2013-02-26-git-github-foundations-online.html
    Richard S.  much thanks. Matthew and Matt!
    Justin C.   Thanks!
    Matt Y. Thanks everyone, enjoy your day!
    matthewmccullough   It was our pleasure to be able to share Git and GitHub knowledge with you.
    Thanks for giving us your time!
