---
layout: bare
title: GitHub Foundations Online Open Enrollment
description: GitHub Foundations Online
tags: [notes, event]
path: classnotes/2013-08-22-online-foundations-class.md
eventdate: 2013-08-22
---

## Trainers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
* [GitHub Guides YouTube Channel](http:/youtube.com/githubguides)
* [GitHub Training Feedback and Follow-up Questions](https://github.com/githubtraining/feedback/issues?state=open)
* [GitHub Commit Status API for Continuous Integration](https://github.com/blog/1227-commit-status-api)
* [Git Credential Cache for HTTP](http://teach.github.com/articles/lesson-git-credential-cache/)
* [GitHub Issues Cheatsheet](http://teach.github.com/articles/github-issues-cheatsheet/)
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)
* [Merge Tool - Araxis](http://blog.ianbattersby.com/2012/08/04/git-mergetool-with-araxis-on-mac-os-x/)
* [Configure Merge and Diff Tools](http://teach.github.com/presentations/git-foundations.html#/20/3)

## Installation

* Git Installation
    * [The GitHub for Mac Client and Command Line](http://mac.github.com)
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
* [Course Slides](http://teach.github.com/presentations/git-foundations.html)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Console History

    git --version
    git init project1

    git config user.name
    git config user.email
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"

    vim ~/.gitconfig
    git config --list
    git config --list | more
    git config --system --list

    git add first.txt
    git commit -m "My first commit"
    historytailzsh 1 10
    git show HEAD~1
    git diff -w
    git diff --color-words
    git add -p
    git diff
    git reset -p
    git commit -m"Second commit"
    git commit -a -m "Third commit"

    git log --stat
    git log --patch
    git --no-pager log --patch
    echo NOTHING HERE
    echo So things start in the unstaged state
    echo I added that to the staging area
    git diff --staged
    vim first.txt
    git diff HEAD
    echo Staging is a virtual "opt in shopping cart"
    echo the working directory is just your file system.
    git log -1
    git log -2
    git log -4
    git log --color-words
    git log --color-words --patch
    git rm first.txt
    git commit -m "Deleting first file"
    git checkout HEAD~1 -- first.txt
    git commit -m"Resurrect the file"
    git status -u
    git add -A .
    git commit -m "Moved to a new location with some new code changes"
    echo Stuff >> 20130822.log
    echo specialstuff >> special.log
    vim .gitignore
    git add .gitignore
    git commit -m"Ignoring log files except for the special one"
    git add special.log
    git commit -m"Special log tracked for regulatory reasons"
    git log
    git diff HEAD~1
    git clone https://github.com/githubtraining/hellogitworld.git hgw1
    cd hellogitworld-fromtraining
    git branch myidea1
    git branch myidea2 HEAD~2
    git branch
    pwd
    git branch feature1
    git commit -m "Change on the project1 branch"
    cat dayone/uno.txt
    git checkout feature1
    rm -rf hellogitworld-fromtraining hgw1
    git clone https://github.com/githubstudent/hellogitworld.git
    git branch matthewsfeature
    git checkout matthewsfeature
    vim matthewfeature.txt
    git commit -m"Matthews feature"
    to.sc
    git graphlive 15
    git config alias.graphlive
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    git push -u origin matthewsfeature
    git checkout -b mergepractice
    git merge matthewsfeature
    git checkout -b feature2frommatthew
    git commit -a -m "Does it blend?"
    git push -u origin feature2frommatthew
    to.scratch
    z teach.github
    git s
    git add courses/_posts
    git commit -m"Mac command line install screenshot"
    git pull -r
    historytailzsh 2 10
    git graphlive 5 10
    git graphlive 5 20
    gitk
    gitk --all &
    git merge feature1
    z git_git
    git l2
    git commit -a -m "Trying this"
    git commit -a -m"Got a fix in"
    git commit -a -m"Got a fix in again"
    cd project1
    git log --graph --oneline master
    git rebase -i d78e60a
    git checkout -b feature2
    git commit -a -m"Feature work"
    git commit -a -m "Master branch bug fixes"
    git commit -a -m"Master branch still being fixed"
    vim dayone/uno.txt
    git commit -a -m"More feature work"
    git rebase master
    git merge feature2
    cd ..
    cd hellogitworld
    git show
    cd .. ; cd hell*
    git graphlive 20
    vim hellofrommatthew.md
    git commit -a -m"Change from command line"
    git commit -a -m"Master conflicting change"
    git commit -a -m"Red change on feature branch"
    git merge master
    cat README.md
    git commit
    git push
    git remote
    git remote -v
    git remote add brent https://github.com/brntbeer/hellogitworld.git
    git fetch brent
    git branch -a
    git checkout remotes/brent/thing1
    git checkout -
    git merge --no-commit --no-ff remotes/brent/thing1
    git merge --abort
    git fetch https://github.com/gregcohooninmar/hellogitworld.git
    git merge --no-commit --no-ff FETCH_HEAD
    git remote add GREG https://github.com/gregcohooninmar/hellogitworld.git
    git fetch GREG
    git merge --no-commit --no-ff GREG/gregsfeature
    cat gregfeatue.txt
    git commit
    vim pom.xml
    git add pom.xml
    git reset --hard
    git commit -a -m"Maybe works"
    git add README.md
    git commit --amend
    git show HEAD
    git reset --hard HEAD~1
    git reset --hard 118f858
    git reset --hard fb4fad5
    git reflog
    git checkout 118f858
    ls
    git checkout master
    git branch recoverdstate 118f858
    echo "Brent says, this is like returning to the server state. No need to reclone"
    clear
    git status
    git stash
    git stash list
    git commit -a -m"Part of the changes"
    git stash pop
    git diff
    more README.md
    git add .
    git commit --amend -v
    git fetch
    git reset --hard origin/master
    vim README.md
    git commit -a -m"Fixes #1 through a bit of writing"
    git push
    git pull
    git tag -a RELEASE_3.0
    git push origin RELEASE_3.0


    ## Day One Chat

    brntbeer    Good morning! I'm going to be assisting matthew this morning by helping answer any questions in campfire that may come up so he can address them in audio if need be. Otherwise i'll be answering additional questions here!
    David G.    Hello all
    brntbeer    hello david!
    David G.    Burnt beer? I hate it when that happens...
    brntbeer    brentbeer! simply a mispelling that i've held on to
    David G.    Ah!
    John W.     Hello to everyone.
    Srini V.    jw.. good morning.
    brntbeer    hello!
    brntbeer    that's mac.github.com and windows.github.com
                both of those include command line tools (mac's is through the properties that you can specially download)
                let us know if audio drops out for anyone for a long period of time. getting some reports that it's dropping a bit
                and a reminder, if you're nto QUITE at 1.8.2, dont sweat it. dont upgrade now.
                if you're lower than 1.7.10, let me know and we can keep an eye on things and work around things
    Bobby R.    We're at 1.7.9 in places because of 12.04
    brntbeer    Bobby R. Ward: that *should* be okay. going to keep an eye on some things especially as we move through to tomorrow
    James A.    Do you need to set the user config if you set if via the Git GUI?
    brntbeer    James A.: depends on the Git GUI. you could check by typing the same command matthew just typed
                it'll look to read the file ~/.gitconfig
                which is where the '--global' git config setting is placed
    James A.    Great, thank you.
    brntbeer    np! love the question =)
    Santosh B.  Is there a way to get all the parameters of the config file. A sample config file.
    brntbeer    so local: highest precision, most importance.
    John W.     anybody else getting a little intermittent static?
    Keith D.    I am
    Ramiro      yes
    brntbeer    John Wheeler: every once in a while, going to take a look at that. sorry guys
    brntbeer    Santosh BR: matthew's config are pretty good to see a list of them:
                https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig#L41
    James A.    Can you give an example of when the system config would be used?
    Tariq       does this configuration conflict with github.com username and email?
    brntbeer    Tariq: we should have our emails on both of those set the same, primarily
    James A.    Great, thank you.
    brntbeer    np!
    Santosh B.  Thx Brent thats very userful.
    James A.    BTW, sharing a laptop is like sharing a pair of shoes...
    brntbeer    no problem!
    James A.:   haha, always make sure it smells okay? not familiar with that anology!
    Tariq       how to modify username and email from cmd line once you have set it wrong?
    brntbeer    Tariq: you can just keep re-setting it: git config --global user.name "brent 1"
                git config --global user.name "brent 2"
                and it keep overwriting it
    Tariq       thanks
    James A.    If you're in a repo via command line, can I open the GUI client for the repo I'm viewing via command line?
    brntbeer    James A.: again, largely depends on the GUI, but yeah it won't make a difference. Git isn't like arunning program that keeps things locked. i sometimes have both GitHub for Mac and Terminal working with a git repo, just because i like variety!
                if you're unfamiliar with vim, no worries! to "save and quit" just hit escape, then ":wq"
                just as a headsup in case you find yourself accidentally in vim!
    brntbeer    the staging area can be thought of as a "review" area for getting ready to bundle up some changes as one atomic change.
                don't sweat the commands matthew is typing here, this is just for teaching purposes.
    Santosh B.  Mathhew: How is your screen showing "master"?
    brntbeer    try to stump me!
    John W.     the audio still gets some lag here and there. the video seems to lag by about 6-7 seconds as well from time to time, FYI. might keep that in mind as you work along with the instruction.
    brntbeer    John Wheeler: will keep that in mind when doing this and letting matthew repeat stuff as things drop. really sorry about that. going to double check some of that during the break.
    brntbeer    also, some things with GoToTraining can go up and down from time to time, so it's kind of hard to pin down. (ie, im sitting across from matthew, but my wifi doesnt drop, and maybe his does!)
    Santosh BR: it's a custom setting for matthew's shell. his $PS1 is set to read the current directory's git branch
    Santosh B.  Thx!
    Adam B.     Just curious, is there a command that will let you add and commit in one step?
    Chris F.    that's a pretty cool custom setting!
    brntbeer    from the ohmyzsh shell config
    benbalter   Question: If HEAD~1 is one commit ago, and HEAD~2 is two, I've seen "HEAD^" and "HEAD^^" in online tutorials before. What do they do?
    brntbeer    benbalter: yeah! the ~1 or ~2 syntax can be just an easier way to not have to type multiple "^"s in a row.
    Chris F.    is that red block showing the whitespace another custom setting?
    benbalter   so they do the same thing?
    brntbeer    secondly, it also can control ancestry path. that's a bit more complicated for tomorrow when doing more branching/merging but, you get the idea! i generally like the shorthand "HEAD~2" type syntax
                yep!almost all of the times yeah
    Chris Firth: it's just one of those configuration settings ("git config --global color.ui auto") that shows that there's whitespace at the end of the line
    Chris F.    cool thx
    James A.    Do you mind helping with the following error?
                git add -p
                Can't locate Git.pm in @INC (@INC contains: /usr/local/lib/perl5/site_perl /Library/Perl/5.12/darwin-thread-multi-2level /Library/Perl/5.12 /Network/Library/Perl/5.12/darwin-thread-multi-2level /Network/Library/Perl/5.12 /Library/Perl/Updates/5.12.4 /System/Library/Perl/5.12/darwin-thread-multi-2level /System/Library/Perl/5.12 /System/Library/Perl/Extras/5.12/darwin-thread-multi-2level /System/Library/Perl/Extras/5.12 .) at /usr/local/libexec/git-core/git-add--interactive line 7.
                BEGIN failed--compilation aborted at /usr/local/libexec/git-core/git-add--interactive line 7.
    brntbeer    James A.: but a "git status" works, right?
    James A.    yes
    brntbeer    sounds like it may be a problem with your instal of git unfortunately, you're on 1.7.9, correct? is it more custom than that?
    James A.    git version 1.8.3.1
    brntbeer    oh. 1.8.3?
    KJ          I got same error on 1.8.3.1
    brntbeer    ah, so there is a 1.8.3!
    James A.    =)
                I'll check the bug list after class
    brntbeer    yeah, weird! may just be broken! what OS are you on? mac?
    James A.    yes, mac
    brntbeer    whoa crazy
    KJ          yes, mac
    brntbeer    i'll have to update Git after class and doubt check things
    James A.    Thank you
    brntbeer    and similary, if you want to scroll through the pager faster, hit spacebar! it's one page at a time
                to quit, hit "q"
                not escape, like vim
    Tariq       i think the instructor went over quickly over diff
                i mean diff between working and staging, and diff between staging and history
    brntbeer    Tariq: we'll be using it a bit more as we do more changes. but i'll make him re-show that as well!
    Santosh B.  Binary files hanlding for diff / log
    Avneet K.   Are we going to discuss stash in detail
    Tariq       whats the difference between the working area and staging area?
                is n't staging area reflection of working area
                because staging area reflects changes in the working area
    Nick        staging area doesnt reflects changes until you git add <file>
    brntbeer    right Nick
                so, staging area is a place to put changes that you're done with
    brntbeer    so like that shopping cart: take my changes off the shelf and put them in my cart because im done with them
                then im ready to leave the store, i go to the cash register and commit
    James A.    brntbeer: have an email address for bug info?
    brntbeer    Avneet Kaur: we may get to stash tomorrow a bit!
    James A.:   ready! let's see it
                so, log with --patch, renders that diff, and --color-words is dependent on their being a patch to show
    Santosh B.  Reverting Staged files?
    Avneet K.   Thanks, was just wondering as instructor briefly touched that topic.
    brntbeer    Santosh BR: not just yet! definitely something we'll cover tho
                yep =) wanting to give a preview of what we may get to tomorrow!
                stash is so powerful but there's others definitely more important
    brntbeer    Santosh BR: he talked about it before i thought he would! ha!
    James A.    It looks like Git.PM is located in the wrong place, or... Git.PM is incorrectly referenced. Git.PM is present on the system but not at the location specified in the INC file.
    brntbeer    no idea what Git.PM really even is
                sounds like a custom thing, especially confusing since you're on mac.
                it's a perl file apparently. not sure how it could get moved to the wrong location though
    James A.    I wonder if the setup script places it in the wrong place. It's in the correct place on Linux, but not for Mac. Symlinking can fix the issue quickly
    brntbeer    yeahhh
                hitting up a core contributor. not sure if he's around today or not, but we'll get to the bottom of this
    James A.    Is it possible to delete a file and it's history?
    Thank you
    brntbeer    James A.: there is, it's pretty advance. it's certainly less advance to delete a file and not to track additional changes. if that makes sense
    James A.    Yes, it does. Thanks. If you want to ignore a commited file would I need to remove the file and it's history? Or can I just remove the file?
                ignore... assuming you have the .gitignore file rules
    brntbeer    you can just remove the file first (two ways to do that, delete it forever, or delete it and stop tracking it) then add it to ignore
                more on that in a second
    James A.    great, thanks again
    brntbeer    yep! James A. i'll make sure matthew touches that right after our break (doing move/remove, then break!) i think
    James A.    Thank you
    John W.     whats the acceptable threshold for that heuristic before git decides not to do the magic?
    brntbeer    50% as matthew just pointed out =)
    John W.     ok then :)
    brntbeer    hahaha
                BUT
                you can alter that yourself with that -M
                http://en.wikipedia.org/wiki/Ship_of_Theseus
    John W.     cool
    James A.    At some point when appropriate, could we go over the scenario of having multiple projects in one repo?
    brntbeer    James A.: that actually sounds like a big no-no
                unless im misunderstanding and you're thinking of sub-modules
    James A.    ah, that's why I wanted to go over it =)
                I'm coming from subversion where we have multiple projects per repo
    brntbeer    ah! matthew and i are discussing now =)
    Duncan W.   I setup git to have one project per repository. I initially tried to emulate my SVN configuration. Had to read some more to find out that that was not a good idea.
                I'm trying to setup symbolic links to allow for easy adding of repo B (a library) to repo A (an app project). This is in obj-c/xcode.
    brntbeer    Duncan W.: the thing to think about there is submodules
                otherwise, i guess the programmer inside of me says you should just pull in repo B as a library with an "#include " or whatnot
    Duncan W.   Ah, yes, submodules. That's what I want. I just want to implement this in a sustainable way using develop and master branches as permanent branches.
    Nick        To clarify, does the core.excludesfile --global and --local BOTH apply?
    brntbeer    they'll combine, yep!
                well
                sorry i mispoke.
    Santosh B.  So .gitignore is also version controlled?
    brntbeer    the core.excludesfile is going to set a file at the global level (thats how i think about it) that gets read
    matthewmccullough   https://github.com/githubtraining/hellogitworld
    brntbeer    and we have a local ignore, per project, that takes precedence over that core.excludesfile
                sorry for that static anyone may have just heard!
    Jeremy      When I click clone on desktop, it redirects me to the download page.
    brntbeer    ah, Jeremy, you have to make sure you have one of the clients installed
    Jeremy      I do. But I have not restarted my browser...
                I guess I can try another browser.
    brntbeer    interesting, have you opened and set your credentials to the client?
    Jeremy      Yes. Still does it in a new browser.
    brntbeer    strange, sorry to hear that. to confirm, you click "clone in desktop" and it takes you to mac.github.com?
    Jeremy      Unfortunately, I am on windows. But, the hyperlink when hovering points to windows.github.com. And when I click, that is what I get.
    brntbeer    ah, that is strange indeed. which web browser are you usign?
    Jeremy      Figured it out.
    brntbeer    poking some github for windows people
    Jeremy      I was logged in on the client.
    brntbeer    ah
    Jeremy      But, not on the web interface.
    brntbeer    oh !
                a key point to keep in mind. didnt even think of that.
    brntbeer    it's gotta be able to know you're a user. etc etc.
                i learned something today!
    Jeremy      Yeah,
    David G.    Can a git admin see everyone who has checked out a copy of a repo?
    brntbeer    David Gregory: do you mean an owner of a repository? like in this case, the githubtrainer user
    David G.    Yes, can the owner see who's wandering around the world with a local copy of a repo, that might someday check stuff back in?
    Duncan W.   This class is great!!! It's filling in all those gaps of my self taught efforts.
    brntbeer    that's something we're interested in David Gregory, to be able to see who's cloned your stuff. but there's nothing right now
    David G.    k
    Anthony     So there isn't a concept of "checked out", locking out others who would try to make changes?
    brntbeer    Anthony: nope. and i'd argue to prove a reason why there would need to be. because we're not the owner of this repository, we can read from it but we can't send data up to it
                so, if i cloned this down to my laptop, i wouldnt be able to make any changes
    Avneet K.   how can we cut the branch off existing branch
    Duncan W.   In each project repo I want to have a develop and master branch. master will never change other than to add tags. develop branch will be the equivalent of trunk in SVN. Are my thoughts correct here?
    brntbeer    Duncan W.: kind of. one thing we could think of is that we code directly onto develop
                and then when we're ready, merge that into master
                we need to eventually merge these changes into master, and then we can tag it at that point.
    Duncan W.   Ahhh, that's my missing piece of understanding.
    brntbeer    James A.: got some feedback on your "git add -p" problem
    James A.    great
    brntbeer    Duncan W.: similarly, i would just have feature branches and then merge them into master, then delete the branch
    branch      name,s like variables, can be descriptive
    James A.:   do you know where your Git.pm is located?
                actually scratch that
    Anthony     So is there a way to know who merged changes into a project?
    brntbeer    dont worry about that, but
    James A.    ok
    brntbeer    Anthony: absolutely, thats why the user.name and user.email are so important
    Anthony     ok
    brntbeer    Anthony: and why some communication methods and collaboration tools are important to do
                James A.: go ahead and type: PERL5LIB=/usr/local/share/perl:$PERL5LIB in terminal
                and then try to "git add -p" some working directory change
    James A.    Same error...
                Can't locate Git.pm in @INC (@INC contains: /usr/local/lib/perl5/site_perl /Library/Perl/5.12/darwin-thread-multi-2level /Library/Perl/5.12 /Network/Library/Perl/5.12/darwin-thread-multi-2level /Network/Library/Perl/5.12 /Library/Perl/Updates/5.12.4 /System/Library/Perl/5.12/darwin-thread-multi-2level /System/Library/Perl/5.12 /System/Library/Perl/Extras/5.12/darwin-thread-multi-2level /System/Library/Perl/Extras/5.12 .) at /usr/local/libexec/git-core/git-add--interactive line 7.
                BEGIN failed--compilation aborted at /usr/local/libexec/git-core/git-add--interactive line 7.
    Mark T.     would you need an export or something similar to set that environmental variable?
    Anthony     So I can understand that you may not know who's made a copy of a project/code, but you didn't seem to anser David's question about see who has checked out code.
    Santosh B.  Is there a Version Tree browser (GUI)
    brntbeer    Santosh BR: not sure what you mean by version tree?
                Anthony:no you can't see who's checked out public open source projects. not sure there's much of a worry there. if you're project is opensource and publically availble, there wouldnt be much of a concern to know who's cloned it to their desktop. anyone can clone anything, but that doesnt mean they canchange your project. they can make all the edits they want but they wont be able to send those changes back to the web. if you needed people NOT to get copies of your work, you'd want a private repository
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    brntbeer    also, cc David Gregory
    James A.:   sorry, it's: export PERL5LIB=/usr/local/share/perl:$PERL5LIB
    brntbeer    forgot the export
    Anthony     I am coming from the world of having project within our company, so I guess it would be private\
    brntbeer    ah. yep!
                same scenario though, your colleagues may not have permission to change and edit the project even if it's under the company organization
    Anthony     so here we would need to have more control
    James A.    brntbeer: same error. I can try after class so I don't clutter the chat
    brntbeer    James A.: sure. the key here is to find where git.pm is, and point PERL5LIM to it
    James A.    ok, thanks
    Anthony     do you have to do all this from the command line?
    brntbeer    Anthony: outside of the organization/company people wouldnt be able to read the project, but depending on how your organization is set up, everyone may have permission to pull and push changes. a good helper youtube video about this (made by matthew mccullough himself) is at http://www.youtube.com/watch?v=rPdTlOziCIg
                Anthony: permissions is a github thing, not a git thing (where as TFS for example, you can change that people can't check things out etc)
    Tariq       how do i fork?
                i did not get it
                matthew hold on please
    brntbeer    Tariq: once we're signed in to github.com, we can go to https://github.com/githubteacher/hellogitworld, and click the fork button in the upper righthand portion of the screen
    matthewmccullough   tariq: https://github.com/githubstudent/hellogitworld.git
                tariq: https://github.com/githubteacher/hellogitworld
    Jeremy      So, is fork a github specific item?
    brntbeer    yep
    Adam B. how do forks differ from branches?
    Avneet K.   how can we cut the branch off existing branch ?? Also is there a way to see which branch was created from where. Like some tree like structure.
    brntbeer    Avneet Kaur: not sure i understand what you mean by "cut the branch off", you mean branching off of branches? that is absolutely possible!
    Avneet K.   Yes, how can we do that
    brntbeer    theonly way to see when a branch started, or what it branched from is to use a version of the log command to see this graph structure
                because each commit has a "parent" we can see which commit branched off from another commit. one thing to type into a project at this point would be: "git log --graph --oneline --decorate --all"
                making matthew show this now
    Ramiro      did the history stop updating?
    matthewmccullough   Ramiro: Yup! Bug. Fixed!
    brntbeer    he's wrapped up that log command into something called "graphlive"
    James A.    re: my bug with git diff: git.pm wasn't installed during my GUI + CL install.
    brntbeer    James A.: ah. did you install command line tools from GitHub for Mac?
    matthewmccullough
                #!/bin/bash

                while :
                do
                    clear
                    git --no-pager log -$1 --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s' --abbrev-commit --date=relative
                    sleep 2
                done

    James A.    yes, correct
    brntbeer    James A.: thanks. telling github for mac guys.
                probably a good bug to kn ow about
    KJ:         same for you i suppose?
    James A.    thanks for your help
    brntbeer    np! thank YOU!
                KJ  sorry, missed the fix...
    brntbeer    no fix. just diagnosing the error
                KJ  I don't find git.pm on my machine either.
    brntbeer    ok, communicating now
    Greg C.     lots of audio dropping there.
    brntbeer    thanks guys!
    brntbeer    James A.: and KJ there was a few files from the command line tools that were excluded, because THEY were told from the core team that they weren't SUPER essential. including everything would make the binary of GHfM really large. they're re-communicating with the Git Core team to find files they need
                KJ  ok. thx.
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
    James A.    great, thanks
    brntbeer    anyone having issues getting their Pull Requests, let me know! soooo happy to help!
    John W.     how do you define these groups of individuals to target for CR?
    KJ          What types of files can you track in Git? Office?
    John W.     is that a per user list, or per team?
    Avneet K.   how can we merge from forked branch to main repository's particular branch
    James A.    What's the diff between Pull and Clone?
    brntbeer    John Wheeler: for viewing after class: http://www.youtube.com/watch?v=rPdTlOziCIg
    James A.:   pull is going to update your current local copy, where as clone is going to create and pull down those changes
    John W.     thanks :)
    James A.    ah, gotcha, ty
    brntbeer    KJ: any files that are plain text. word, excell and other files include a lot of meta data that are hard for git to see changes with
    KJ          ok. thx
    Avneet K.   Thanks :)
    brntbeer    no problem! excellent question
    Anthony     Can you put other files, like Word, Excel into the repsoitory even though you can't really use git to track changes?
    brntbeer    absolitely
                you could put images, but that gets VERY cumbersome to git. it doesnt like large files.
    Tariq       can you elaborate more on the need of CI? Why do we need it with github?
    brntbeer    if you use it with GitHub, you'll get some assurance with your pull request and review process that tests are passing
    PamelaSF    Thank you Brent and Matthew! Have a great day! :)
    Tariq       thanks brnt
    brntbeer    np Tariq !
    James A.    Are there any case studies?
    Ramiro      in svn we use tags is there anything like that in git or is it needed at all?
    James A.    Fantastic, thank you.
    John W.     Thanks guys.
    Duncan W.   Thanks!! Great class:-)
    Avneet K.   Thanks :)
    brntbeer    Thank you guys for attending! great questions
    Casey C.    Would be interested to hear your thoughts on "10 things I hate about git" (google it). I agree with many of the points.
    matthewmccullough   Ramiro: Git has tags as well. Super easy
    Tariq       how to get the entire chat log for today
    matthewmccullough   git tag VERSION_1.0
                Tariq we polish it all up and send it to you at the conclusion of class tomorrow.
                You'll get links to further study, slides, course notes, and transcript!
    Tariq       great thanks a lot folks!
    Ramiro      that was easy lol
    brntbeer    Casey Coenen: may take me until tomorrow to answer that question, would be more than happy to write up a gist about it though
    Ramiro      Thanks!
    brntbeer    Casey Coenen: and share it tomorrow
    Casey C.    Excellent - I'm logging off shortly anyway
    James A.    Fantastic job, fellas. You by far exceed my expectations for training.
    brntbeer    James A.: glad to hear it! thank you for coming


    ## Day Two Chat

    brntbeer    Good morning!
    matthewmccullough   Good morning all!
                You'll see Brent is already here and ready to go and I'm with you in chat now as well.
                Morning Duncan, Tim, Adam, and Pamela!
                Oh and Ramiro is here as well!
    PamelaSF    Good Morning!
    James A.    hahaha
    brntbeer    rebase can be pretty extreme sometimes! so it's okay if you're a little intimidated. took me quite a while before i was comfortable with this stuff, especially the interactive aspect
                and how it'll change the graph!
    James A.    I'm liking rebase. Pretty great function
    brntbeer    right, the thing to remember is that it's something we should be doing before we share this data/changes with other people
                the thing that's great is playing with some easy repositories and almost practicing and getting used to the commands
    Mark T.     Will git let you remove a commit in the middle of the chain, or does it have to be a commit at the end of the history?
    brntbeer    nope, can be at any given point
                now, that can sometimes throw merge conflicts, so we still have to think about the history of changes when doing something like that
    James A.    if you remove commit b how does it affect commit c?
    Mark T.     If git hits a confict, does it abort the entire rebase?
    brntbeer    depends if the change in c is dependant on B
    James A.    What are the best practices for avoiding using rebase?
    brntbeer    it doesnt abort it, it pauses at that point
                lets you resolve, and then you would type "git rebase --continue"
                so if it's a cookbook that plays through the commits
    Mark T.     k
    brntbeer    if it runs into a problem at one of those, it lets you do more changes and solve things, then continues down the recipe
    Duncan W.   Matthew said rebase is "dangerous", why is it dangerous?
    Tariq       can you sketch the last exercise on the skitchplus (matthew can you do this?)
                what are you trying to achieve?
    Duncan W.   What happens with rebase in a shared repository? A project being worked on by multiple devs. So that is why?
    Tariq       thanks matthew for the skitch plus
                how is fast forwarding coming into picture?
                thanks a lot matthew
    cesar       does this mean that Johnny's work, who made a great work on the release2 branch, will be considered the new master branch?
    Duncan W.   Got it. Thanks.
    brntbeer    Duncan W.: the rebase and all the changes we're doing are local, but because we're changing the commit hashes, it looks like different changes to Git. so if those changes were already pushed, we cant push our new commits without forcing it.
    Avneet K.   I am little confused, if you have already rebased the comits from side branch why do we need to run merge commad.
    brntbeer    Avneet Kaur: because the rebase simply cleans them up on that branch. it wont do the merge into another branch like master
                it's simply "clean up these commits from THIS reference point"
                where "this reference point" could be something like master
    brntbeer    so "compare my branch to master, and allow me to edit my commit order, content, etc, then pretend as if i've branched from the current point of master
    Avneet K.   got it
    brntbeer    awesome =)
    Mark T.     is it because I am on git version 1.7.9.5 that it didn't ask me for a merge commit message?
                View paste
                remote: Counting objects: 5, done.
                remote: Compressing objects: 100% (2/2), done.
                remote: Total 3 (delta 1), reused 2 (delta 0)
                Unpacking objects: 100% (3/3), done.
                From github.com:mtrimmer/hellogitworld
                   aa46d5e..227da0a  marksfeature -> origin/marksfeature
                Auto-merging markfeature.txt
                Merge made by the 'recursive' strategy.
                 markfeature.txt |    2 ++
                 1 file changed, 2 insertions(+)

                Do you guys have a suggested method for how to update git on Ubuntu 12.04?
    cesar       What was the syntax for the pull command?
    Jeremy      I am getting a conflict error when I do the pull.
    Tariq       i dont see matthew.md file in my directory
                brntbeer?
    brntbeer    Tariq: that's because it was done on the https://github.com/githubstudent/hellogitworld/ repository, and nto your own repository
    Tariq       how do i repeat this exercise locally
    brntbeer    sorry Tariq i had stepped away for a minute.
    Tariq       no problem
    i am here
    brntbeer    to repeat, you should switch to a branch in the web view of your fork
                https://github.com/tariq786/hellogitworld
    James A.    Does Git have any best practices to follow?
    brntbeer    and then switch to a new branch like matthew did and make an edit on to a file
                you can then make a change through your terminal, and commit that
                and then do a "git fetch"
    Tariq       ok trying right now
    brntbeer    and you'll have two separate changes, one in the web that has been reflected and stored in a remote tracking branch, and the change you did locally.
    James A.:   we try to do our best to show those practices here, though because of Git's expandability and flexability, I'd argue to say the best way to use Git is to discover how you want to use it
    James A.    gotcha, thanks
    Tariq       brntbeer i have done local change and on the web change
                why do i need to fetch instead of a pull?
    brntbeer    did you do a "git fetch"
                fetch is going to update that branch's remote tracking branch
                so, if you were working on tariqfeature
                form both the web and locally
                then a fetch would update origin/tariqfeature
                and that's what we're wanting to show, that this change can happen on the branch from two locations, but when we do a fetch we update a special branch that's used to see changes that have happened on our remote server
    Tariq       i did git fetch
    brntbeer    so, then we do a merge of that feature
    Tariq       nothing seem to change
                aaah
                is it git merge
                or whats the exact command?
    brntbeer    yep, if you're on the same branch locally that you were on in the web to make the change
                you should type "git merge origin/thatbranchname" where "thatbranchname" is whatever that branch's name is
    Tariq       i got
                Automatic merge failed; fix conflicts and then commit the result.
    brntbeer    perfect
                we're going to fix that here
                now that we're back from break
    Tariq       why this didnt happen when matthew did it before break
    brntbeer    because the change he did on the web was in a different place than the change he did locally. he separated them so that he wouldnt get that conflict
    Tariq       ok thanks a lot
    brntbeer    np!
    Jeremy      Are we going to push those back up?
    brntbeer    :) yep!
    Santosh B.  does push update other branches apart from the active branch of my workspace.
    brntbeer    yep, it'll push all branches that have remote tracking branches that need to be pushed.
                that's why im always explicit with the push command: "git push <where> <which branch am i on> "
                the <where> is almost always origin
                and the <which branch am i on> is well..the branch you're on
    Santosh B.  that's more safer one..
    brntbeer    there's configuration to make it always push only your current branch, and it'll become the default in git 2.0
                yep! definitely safer to be more explicit
    matthewmccullough   git remote add brent https://github.com/brntbeer/hellogitworld.git
    Mike S.     If I have a file in my local repo that isn't the same version as the file on the server and I make changes to that local file and attempt to push my changes to the server, what happens? Will it present a conflict and ask me to merge using a pull?
    brntbeer    Mike S.: if there are commits on the server, on the branch you're attempting to push to, it'll tell you to pull those changes down first
                does that make sense? So it ensures you grab things from the upstream repository first, then if there were conflicts, you'd have to resolve them, then send your local changes to the server (syncing things up)
    Mike S.     What happens to the changes I've already made to my local file? Does the pull overwrite those changes or does it make me resolve them after the pull command?
    brntbeer    it would attempt to just merge them
    Mike S.     Ah... Thanks!
    Casey       can he re-open readme.md?
                After the abort is it really merged or not?
    Santosh B.  rebase can be used with remote branches?
    brntbeer    Santosh BR: remote tracking branches. definitely.
                it's just a point in our graph structure of commits
                to say "rebase and put the branch im on now, as if i had branched off from THIS point in my history"
                instead of the branch name, you can say "git rebase -i a21wqfes" where "a21wqfes" is the start of a commit hash
    Santosh B.  Thx
    brntbeer    then, once that happens, we can merge that change in, prompting for a fast forward!
    Mark T.     How would I get a locally changeable copy of a remote branch?
    brntbeer    if you have a branch like "origin/my-new-feature" but not a branch just called "my-new-feature"
                you could say "git checkout my-new-feature" and it would create the local branch and set it to track origin/my-new-feature
                because origin/my-new-feature is just that special read-only type of branch that's on your laptop that acts as a reference point to what is on a remote server like github.com
    Avneet K.   How can I preserve local changes while pulling new code/changes from remote repository
    brntbeer    Avneet Kaur: the best way to do that is with just a "git fetch"
                that'll only update the remote tracking branches but NOT do the merge
                so, you could one at a time do merges of the tracking branch pairs
                or do a `git merge origin/my-new-feature --no-commit` to see what the merge would do, but dont actually complete the merge
    Avneet K.   suppose I have to deploy code from git to QA and qa made some changes to a.txt and never wants to push those to repo.it is only for their testing purpose.
    brntbeer    they should just not commit the change
                so never type "git add a.txt" or "git commit -- a.txt"
                similarly, if it's ALWAYS that file name, it could just get added to the projects .gitignore
                so that it never gets added
    Avneet K.   situation here is little complicated, we can't add file to gitignore because we want only that one line not to change, but if developer has made some changes to rest of the file we still need those
    brntbeer    ah, yeah then in that case it would just be to ensure you dont commit it
    brntbeer    there's other workflow things to do to get around it though that may take a bit longer to explain =)
    Avneet K.   for eg in a.txt there is variable called color=red. After we brind down the code for the first time we modify the file locally to a=Yellow, and I don't want that one thing to get changed with subsequest pulls
                I mean sorry color=yellow
    Santosh B.  Does it makes good practice to keep master branch for main release and ifso how to control commits to the master branch.
    brntbeer    Santosh BR: in an organization structure, you can control who has push and pull access with teams and ensure that everyone works off forks. and then you have ONE repo that has the state at which things are deployed from, and people can send pull requests to your repository's master
                otherwise, you can just build a culture around always sending pull requests from branches within the same project from a feature branch to master
                just as "use humans to solve the problem" type of approach
    Santosh B.  Thx.
    brntbeer    Avneet Kaur: im not sure i can really follow without understand the reason why you would be doing this, which may take a bit longer to explain. it sounds strange since it's such a customized thing that QA needs to manually change a file's variable and not commit it for others to see
                that could possibly just be fixed through your development process and not a version control thing. since you dont seem to really care about the file a.txt having any sort of version control from the QA perspective
    Avneet K.   :) I know it is a fault in coding. Actually they have some values hard coded and if we deploy code as it is in qa, the qa server will start hitting production data which is risky.
    brntbeer    ah
    Avneet K.   there is not just one file , there are many which has some local modifications and it is not possible to make those changes after every deployment
    brntbeer    there's possibly ways to always ensure git helps...but it doesnt seem like the right way to do thing to me
    Avneet K.   at this moment I figured out something called stash. But I am not very clear about it
    brntbeer    ah, yeah
                hold on to a stash and always apply that change, will attempt to always change those characters/values since it's like a change set
    matthewmccullough   git reset --hard origin/master
    Avneet K.   I am getting this error message :Cannot apply to a dirty working tree,
    brntbeer    Avneet Kaur: yep, you gotat make sure the changes in the working directory (the red lines!) aren't necessarily the same changes you're trying to apply your stash to
    Mark T.     Does the same functionality happen if people are given access via Teams?
    brntbeer    yep!
                absolutely Mark T. great catch
    Mark T.     Is it possible to disable the SVN interface for an organization or repo?
    brntbeer    Mark T.: not that i know of. because it's not going to clutter the repository with anything since GitHub is going to do the converting of objects to git objects
                so the only problem is people not breaking their old habits
    John W.     that is the problem, yes.
    brntbeer    Thank you guys for your questions! was great helping you
    Tariq       can we get the chat log as well?
    brntbeer    yep!
    Santosh B.  Thanks You Matthew & Brent :)
    Adam B.     thanks guys
    Tariq       awesome to learn from both of you
    PamelaSF    Thanks a lot! :)
    James A.    Any chance I could get some pointers for workflow?
    Avneet K.   Thanks
    John W.     Thanks guys. Excellent session.
    Chris F.    thanks all, great training session!
    Jeremy      gracias
    matthewmccullough   Thanks everyone! Really enjoyed your questions!
    brntbeer    James A.: that'd actually be a great question for the feedback repo over at https://github.com/githubtraining/feedback. similarly. take a look at some old closed issues as well https://github.com/githubtraining/feedback/issu...
    matthewmccullough   James, those workflow questions: Can maybe hit some here, but would LOVE to have them in office hours on Monday if you are willing to bring them there. Makes the discussion lively.
                Brent's spot on.
    brntbeer    OR yeah office hours
                those are great opportunities for questions
    James A.    Absolutely! Thanks for the refs.
                Thanks again fellas for the great sessions.

