---
layout: bare
title: HTML5 Dev Conf GitHub Foundations Class
description: HTML5 Dev Conf Git and GitHub Foundations Class Class Notes
tags: [notes,public]
path: classnotes/2013-04-03-html5devconf-github-foundations.md
eventdate: 2013-04-03
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



# Chat Room Transcript

    Will S.	View paste 
    http://teach.github.com/presentations/git-foundations.html#/
    https://githubtraining.campfirenow.com/room/545942
    ArcTanSusan	Thanks!!
    9:15 AM
    Chrissie	has entered the room
    brntbeer	I went ahead and put the url up on the board if there's people around you who may be missing out
    9:30 AM
    Jean K.	has entered the room
    9:35 AM
    Jamund F.	has entered the room
    Jamund F.	What was the URL to the slides?
    9:40 AM
    brntbeer	http://teach.github.com/presentations/git-foundations.html is roughly where we're at now Jamund Ferguson
    Jamund F.	Thanks
    brntbeer	np!
    Ravid T.	for commit messages, basically, why instead of what right?
    Kristin M.	I get this often :
    View paste 
    warning: LF will be replaced by CRLF in first.txt.
    The file will have its original line endings in your working directory.
    We have this all the time working with files...am I missing something or a command that I didn't implement to remove these?
    Jamie	has entered the room
    brntbeer	Also, make sure your sound is off while in campfire =)
    Robert D.	has entered the room
    John G.	has entered the room
    brntbeer	Kristin Markell: and a `git config --global --list` shows nothing like "core.autocrlf=input" ?
    So, to sum up what we've done already:
    Kristin M.	core.autocrlf=true
    needs to change to input?
    brntbeer	run `git config --global core.autocrlf=input` and see if we still get that
    9:45 AM
    Kristin M.	error: invalid key: core.autocrlf=input
    brntbeer	`git config --global --unset core.autocrlf`
    it may complain about trying to overwrite that particular key
    so if we run the --unset command, we can re-set it with `git config --global core.autocrlf=input`
    John G.	"git config --global color.ui auto" has no effect on my windows 7 box
    Kristin M.	It hates me. LOL! error: invalid key: core.autocrlf=input
    brntbeer	can you copy/paste the entire instruction real quick to me?
    Kristin M.	View paste 
    sfs-wifi-aruba-dhcp-130-212-140-94:project1 kmarkell$ git config --global --unset core.autocrlfsfs-wifi-aruba-dhcp-130-212-140-94:project1 kmarkell$ git config --global core.autocrlf=input
    error: invalid key: core.autocrlf=input
    sfs-wifi-aruba-dhcp-130-212-140-94:project1 kmarkell$
    brntbeer	John Grandy: if you're on github for windows, you should be taken care of so long as you're using Git Bash (the shortcut that gets installed on your desktop after installing GitHub for windows
    ah
    Kristin Markell:, no = sign, TOTALLY my fault
    `git config --global core.autocrlf input`
    9:50 AM
    Kristin M.	Thank you!!!
    We get this ALL the time at work
    Hopefully this won't happen anymore when I work on files.
    brntbeer	for anyone keeping up so far, we started out at http://teach.github.com/presentations/git-found... (and then moved down the line that line with the down arrow. then on the next side, http://teach.github.com/presentations/git-found... where we created a new project in some directory that we can play along in
    10:00 AM
    tanuja a.	has entered the room
    Derick J.	has entered the room
    brntbeer	so again, http://teach.github.com/presentations/git-found... for following along with our slides. we're up to http://teach.github.com/presentations/git-found.... so far we've created a git project `git init project` in a directory that was ok for us to make changes to. added a file and added some text to it and then run `git add .` and `git commit -m 'initial commit'`
    we then started looking into `git diff` to see changes that we want to look at as we make additional edits, added those edits again with `git add .` and then to compare the changes from staging area to previous commit with a `git diff --staged`
    10:05 AM
    brntbeer	If anyone wants me to come back to their laptop to ask a question, would be no problem at all! totally what im here for
    `git log` is a command that allows us to see those previous things we've made commits about with some additional meta data
    10:10 AM
    John G.	"git graphlive 10" gives error "git: 'graphlive' is not a git command. See
    brntbeer	graphlive if a command that matthew has configured for himself, we'll be sharing that after class
    10:15 AM
    John G.	"1 line adds whitespace errors" -- is trailing whitespace always considered an "error" even though it allowed the add to stage ?
    Will S.	Is "git add -p" in the slides?
    brntbeer	John Grandy: it's just a warning, because it's extra characters not really needed at the end of a line
    Will So: it isn't, it's a slightly more advance option
    matthew likes to tease with it =)
    Will S.	heh, thx
    10:20 AM
    renata	has entered the room
    renata	hello
    brntbeer	hi renata !
    John G.	"git commit -v" invoked a command-line version of vim .. how do i exit ?
    ( besides killing it )
    brntbeer	John Grandy: you can type ":q" to JUST quit, but " will save and quit
    and if that just appeared as an emoji, i typed ":x"
    Ray G.	Hi How do you change default editor from vim to sublime?
    John G.	ok but how do i get out of edit mode ? right now anything i type is an edit to the text
    Jamund F.	so if you have no message and do :wq or :x it will not save, but if you do type a message (or there is one by default) is there any way to cancel the commit from the editor (without commenting out or deleting the lines)?
    brntbeer	you can change it with a `git config core.editor` and setting it to somethign like "mate -w" like matthew is showing on the screen to set it to textmate
    John Grandy: ah! sorry. if you hit escape first, you'll get out of insert mode
    10:25 AM
    brntbeer	then :wq
    10:25 AM
    brntbeer	Jamund Ferguson: if you don't type anything (and there's only lines that start with '#' ) there won't be a commit since we need a message. If there's one and you want to back out, you can delete all of the text on the screen or make sure all lines start with '#' and it'll fail the commit
    Jamund F.	Right, I guess you can do :q! as well in some situations
    James	Hey Brent --- I'm getting a fatal error. Can I get a hand at break?
    brntbeer	right, if you havent saved yet. absolutely
    Gabriela Z.	has entered the room
    brntbeer	yeah, be right there james
    the graphlive command is at https://github.com/matthewmccullough/scripts/
    James	Thx dude
    Kristin M.	Thank you so much!
    10:30 AM
    matthewmccullough	https://github.com/matthewmccullough/scripts
    Those are my history tailing scripts
    Gabriela Z.	Perfect! thanks
    10:40 AM
    Robert D.	has left the room
    10:45 AM
    Robert D.	has entered the room
    brntbeer	For anyone wanting "sublime" as their commit editor of choice. check that you can run the "subl" command first by saying "subl -w ." and it should either complain that it's not a program, or it'll open a new window
    Kristin M.	Bummer, doesn't work for me
    I have it installed too
    Ravid T.	is sublime free?
    Kristin M.	Yes!
    brntbeer	And again, this is for Mac right now. if that doesn't work you need to run: `ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /bin/`
    Ravid T.	cool, thanks
    Kristin M.	http://www.sublimetext.com/2
    brntbeer	View paste 
    ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /bin/
    Jean K.	Nope. Sublime is not free. I think it's something like $79 USD.
    brntbeer	rather, we need to "sudo" that command, so run:
    View paste 
    sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /bin/
    and enter your computer's password.
    Ravid T.	ah okay, thanks
    Kristin M.	permission denied dang it
    brntbeer	after we do that and copy that to that director
    Kristin M.	Its free, you just get prompted
    but still can download and have
    brntbeer	Kristin Markell: type that command with "sudo" instead, sorry
    Kristin M.	No trial expiration
    brntbeer	after we do the copy, we can type: git config --global core.editor "subl -w"
    Kristin M.	Got it brntbeer
    tanuja a.	has left the room
    Kristin M.	Worked
    Gabriela Z.	with "subl -w ." its telling me : command not found
    tanuja a.	has entered the room
    brntbeer	this means every time we do a commit, a new sublime window will open for us to type into. we can type our message, save it, and then (and this is super important) we can close that tab/window with (cmd+w) or clicking the 'x' on the tab
    Gabriela Zamudio: you have sublime installed already, correct?
    10:50 AM
    Gabriela Z.	yep
    10:50 AM
    ArcTanSusan	Thanks Brent! it all works now
    Gabriela Z.	View paste 
    should I put  git config --global core.editor "subl -w"
    ?
    brntbeer	Gabriela Zamudio: we need to ensure that we can run `subl -w` first though
    Gabriela Zamudio: and past that, that we have sublime text 2 installed.
    if you do, you should be able to type:
    View paste 
    sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /bin/
    type your password, then set that git config
    Kristin M.	Awesome! That works! It launches Sublime Text 2
    Gabriela Z.	perfect! that works
    thanks!
    Kristin M.	Again, thank you!
    brntbeer	Gabriela Zamudio: glad to hear it
    Kristin Markell: yep. and so now if we don't supply a commit message, sublime text 2 opens, and then we can start typing a commit message at the top of that file. save it, then close the window
    or close the tab (depending on what it opens)
    Ray G.	what is a dangling blob?
    I got this after running git fsck
    View paste 
    Checking object directories: 100% (256/256), done.
    dangling blob 235ce4f44f2c0d0020527dbf888ac2403860db61
    10:55 AM
    brntbeer	a dangling blob is just a git commit that's un-referenced and able to be picked up by garbage collection. totally ok
    Gary	Not sure if this applies but does git store the initial file and apply diffs to get final file state or store the final file and work backwords to get the initial file?
    brntbeer	nope, git doesnt store diffs. it computes them
    11:00 AM
    Gabriela Z.	View paste 
    afte doing the git log --format=raw
    how can i go back to the main page of my terminal? ESC doesnt work
    thanks =)
    brntbeer	np!
    Ravid T.	doing gitk, worked, but got this error in command line, what does it mean?
    View paste 
    2013-04-03 11:00:56.662 Wish[2573:707] CFURLCopyResourcePropertyForKey failed because it was passed this URL which has no scheme:
    brntbeer	Ravid Te: which operating system are you on?
    Ravid T.	mac
    osx 10.8
    brntbeer	i get the same error. this is why i don't use gitk =)
    its just a warning, nothing to actually be worried about
    Ravid T.	hah okay
    thanks
    11:05 AM
    Kristin M.	Where does this graphlive script need to be saved to?
    Jamund F.	what's the difference between git reset filename and git reset HEAD filename
    brntbeer	somewhere in our $PATH
    11:10 AM
    brntbeer	so, i save mine under /usr/local/bin
    Kristin M.	Ok cool
    11:15 AM
    Ray G.	How does git reset --hard impact the git log file?
    brntbeer	because we havent said any additional commands after `git reset --hard` it's not effecting the log, just wiping out whats currently being worked on in the working directory or staging area
    Kristin M.	so to run the graphlive? What command?
    brntbeer	git graphlive
    because we save the file as something like "git-graphlive" it is saved as a git command
    Kristin M.	git: 'graphlive' is not a git command. See 'git --help'.
    11:20 AM
    brntbeer	hmm
    can you open a new terminal tab and try it
    wondering if it needs to reload that it knows of that file
    Kristin M.	Yeah, did it that way in a new tab, drilled down to the project
    brntbeer	hmmm
    not sure, we can check over break. not too important right now!
    i don't use graphlive, so we may need to just pay around with a thing or two
    Kristin M.	Sounds good :)
    11:25 AM
    Jamund F.	any suggestions for getting some power in the middle here
    brntbeer	Jamund Ferguson: i can track down the conference organizer during lunch for that.
    11:30 AM
    Jamund F.	it's cool. my friendly neighbor is sharing :)
    matthewmccullough	https://help.github.com/articles/set-up-git#password-caching
    Ravid T.	dumb question, git vs github? Git = local version control system, GitHub = public Online version control system?
    brntbeer	Ravid Te: not a dumb question! Git itself is the tool that you're interacting with on your laptop, as well as the underlying technology that drive github.com. github.com is simply a better interface to interacting with more git repositories
    Ravid T.	cool, thanks for the clarifcation
    brntbeer	Ravid Te: GitHub could also have private repositories that only you, or only your company, or only people you give permissions to, to use
    11:35 AM
    Ravid T.	ah okay, got it
    John G.	on windows 7 how do i cache credentials ?
    Jamund F.	last week someone did
    git push --force
    from a feature branch
    matthewmccullough	View paste 
    push.default=matching
    $ git config --unset push.default
    brntbeer	Jamund Ferguson: never push -f =)
    Derick J.	I'm getting 403 error when trying to push...
    View paste 
    The requested URL returned error: 403 while accessing https://github.com/derickj2004/project1.git/info/refs

    fatal: HTTP request failed
    brntbeer	John Grandy: Paul betts has some good instructions here: https://github.com/blog/1104-credential-caching-for-wrist-friendly-git-usage
    we can go over that during lunch if you'd like as well
    Derick Johnson: can you type "git remote -v" for me?
    Derick J.	View paste 
    origin	https://github.com/derickj2004/project1.git (fetch)
    origin	https://github.com/derickj2004/project1.git (push)
    brntbeer	perfect. good! just checking
    11:40 AM
    brntbeer	can you try to just push again and re-type username/password
    matthewmccullough	git remote add matthew https://github.com/githubstudent/project1.git
    Mars	has entered the room
    Derick J.	I get the same error
    never asks for username
    brntbeer	mind if i come over? you're right in front of me right?
    John G.	i was emailing Paul about this last night , but it actually caches within github for windows -- isn't there a way to cache credentials to universally available to all git clients including the command line , e.g. in the windows credential store ?
    brntbeer	Derick Johnson: also, take a look at https://help.github.com/articles/generating-ssh-keys, this is essentially what we'll be following
    Derick J.	ok cool
    Thanks!
    brntbeer	ah, interesting John Grandy one second while i look into that
    11:45 AM
    brntbeer	np! doesnt take too long but we can totally run through that stuff
    John Grandy: are you using Git Shell?
    John G.	not sure what i am using lol ... it says "Command Prompt with Ruby and Rails" ... guess i got that with railsinstaller ... ( i'm new to all this stuff )
    brntbeer	we're going to want to use "git shell" which should be a shortcut added to your desktop. it looks like a github icon in black and white
    11:50 AM
    brntbeer	this is also openable from the settings tab of your GitHub for Windows
    there's a menu item under Tools for it
    that's the command line utility you're going to want to always use when doing git operations
    John G.	ok i'm in Git Shell now -- looks like it's a PowerShell extension or something ?
    brntbeer	essentially, yes
    so now you should be able to push a lot more easily =)
    Derick J.	View paste 
    Warning: Permanently added 'github.com,207.97.227.239' (RSA) to the list of known hosts.
    Hi derickj2004! You've successfully authenticated, but GitHub does not provide shell access.
    student@marabuntu:~/project1$ git push
    error: The requested URL returned error: 403 while accessing https://github.com/derickj2004/project1.git/info/refs
    11:55 AM
    brntbeer	ah. one last step
    you're going to want to change that remote-url
    John G.	what's the command to see all my remote branches for my current local repo ?
    brntbeer	so, Derick Johnson, go a head and run: `git remote set-url origin git@github.com:derickj2004/project1.git`
    John Grandy: `git branch -r` will list just remote branches (all prefixed by `origin/` for now) and a `git branch -a` to list local and remotes
    Derick J.	Cool, that worked. Thanks!
    brntbeer	nice!
    and just in time
    12:00 PM
    matthewmccullough	https://github.com/githubteacher/hellogitworld
    View paste 
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    12:05 PM
    matthewmccullough	https://github.com/githubteacher/hellogitworld
    12:10 PM
    Mars	has left the room
    12:15 PM
    brntbeer	So now that we've done a "git clone https://github.com/githubteacher/hellogitworld.git hgwteacher" and "cd hgwteacher", we can go to https://github.com/githubteacher/hellogitworld and click the "fork" button in the upper right-hand corner of the screen. this creates the copy on to our own user profile on github.com that we can make changes to
    after we click that fork, we can add a remote like we've done previously from our fork, this url is in the middle of the screen. `git remote add YOURNAME https://github.com/YOURNAME/hellogitworld.git` where YOURNAME is your github username
    if anyone needs some more information past that, let me know and i can continue explaining or come by your laptop if you'd like
    12:20 PM
    Ravid T.	i keep getting an error
    View paste 
    git fetch vid401t
    fatal: 'vid401t' does not appear to be a git repository
    fatal: Could not read from remote repository.
    vid401te is my username
    brntbeer	Ravid Te: can you type "git remote -v" and show me what it has?
    Ravid T.	View paste 
    git remote -v
    origin	https://github.com/githubteacher/hellogitworld.git (fetch)
    origin	https://github.com/githubteacher/hellogitworld.git (push)
    ravid	https://github.com/vid401te/hellogitworld.git (fetch)
    ravid	https://github.com/vid401te/hellogitworld.git (push)
    matthewmccullough	http://git-scm.com/docs/git-branch
    brntbeer	Ravid Te: the fetch command needs to match to that remote name of "ravid"
    Ravid T.	ohh ok
    yep that worked thanks
    brntbeer	so when we say "git remote <REMOTE>" we say which specific remote to update from. by default it checks origin
    nice! no problem
    Ravid T.	yah confused my username for the remote name
    brntbeer	np!
    happens often
    savicas	View paste 
    origin	https://github.com/githubteacher/hellogitworld.git (fetch)
    origin	https://github.com/githubteacher/hellogitworld.git (push)
    brntbeer	for me (brntbeer vs brentbeer)
    savicas	gettin problems having my branch
    brntbeer	savicas: at this point, you just need to type: git remote add sandra https://github.com/savicas/hellogitworld.git
    and then: git fetch sandra
    so, we create a remote that we are telling our local copy to talk to
    Jamund F.	same as git checkout -b feature_image matthew/feature_image ?
    12:25 PM
    brntbeer	Jamund Ferguson: yes
    except "matthew" is your username
    matthewmccullough	View paste 
    git branch feature_image --track YOURREMOTE/feature_image
    Ravid T.	i'm having trouble with this command:
    View paste 
    git branch feature_image --track ravid/feature_image
    fatal: A branch named 'feature_image' already exists.
    John G.	i get "fatal : not a valid object name 'john/feature_image'
    brntbeer	John Grandy: i suspect we need to type "git fetch john" first in that case
    Jamund F.	John, did you "git fetch john" first?
    John G.	ok 'git fetch john' sets my local repo to point to john remote repo ?
    Jamund F.	I think no.
    brntbeer	ravid which version of git are you on? depending on that we have two different commands we could type
    John Grandy: it just updates those remote tracking branches local on your computer
    12:30 PM
    Ravid T.	running 1.8.0
    brntbeer	cool
    type for me: git branch feature_image --set-upstream-to ravid/feature_image
    or you can use the `-u` flag instead of `--set-upstream-to`
    Ravid T.	View paste 
    git branch feature_image --set-upstream-to ravid/feature_image
    Branch feature_image set up to track remote branch feature_image from ravid.
    brntbeer	yep
    Mars	has entered the room
    12:35 PM
    brntbeer	so, we're on our feature branch, we've made an additional commit (make a change, git add that change, git commit to describe what our change was, and then `git push YOURNAME YOURBRANCH`
    savicas	where I have to git puch?
    push, sorry
    brntbeer	to the remote we created earlier that points to your fork
    so, git push sandra BRANCHNAME
    whichever branch you're currently on (we can see this with `git branch` and it shows and asterick next to our current branch
    savicas	it doesn't work to me
    brntbeer	i'll come by
    12:40 PM
    matthewmccullough	https://github.com/githubteacher/hellogitworld/...
    12:50 PM
    12:55 PM
    matthewmccullough	https://github.com/githubtraining/feedback/issues
    1:00 PM
    2:00 PM
    matthewmccullough	https://github.com/githubteacher/hellogitworld/...
    2:10 PM
    Jamund F.	Any sane way to do "pull requests" without github?
    2:35 PM
    ArcTanSusan	I do have gitk installed. :(
    *not
    brntbeer	Jamund Ferguson: the only way to propose changes outside of github that i know of is by emailing patches to one another
    this is how the linux and i believe Git core teams work
    ArcTanSusan: can you type `git --version` for me?
    Sara R.	has entered the room
    brntbeer	and let me know what it says
    ArcTanSusan	git version 1.7.12.4 (Apple Git-37)
    John G.	goes gitk kind of suck on windows ?
    2:40 PM
    brntbeer	gitk should come installed by default, mine doesnt work quite the same way as matthews either
    2:45 PM
    brntbeer	again this script is something that matthew has for himself
    it's not something you can all type
    2:50 PM
    Jamund F.	Any guidelines for "right-sizing" repos for big companies?
    (We migrated from SVN and store TONS OF THINGS in a single repo)
    brntbeer	the migration from svn to git will by design be smaller
    Ray G.	Here is my scenario ... I have 30 branches that contain linear changes from branch 1 to branch 30 ... How would I propagate a change in branch 1 to all the branches ahead (up to branch 30)?
    brntbeer	Jamund Ferguson: there's really no "right size" for them
    Jamund Ferguson: but, i think, git will always be smaller than your svn repository simply because of not storing diffs
    Ray Gutierrez: you could switch to each branch and say "git merge branch1"
    Jamund F.	RIght, I guess in node-land you're used to splitting everything into super small packages/repos, but at work we have only a few repos for hundreds of employees, so the history is super confusing and unrelated. Wondering about guidlines/best practices.
    brntbeer	and merge branch1 into each branch
    Jamund Ferguson: you can definitely split off internal sections into a new project, with preserved history for those changes. this is definitely more advanced but doable
    Ray G.	will the merge only use the latest change when merging with the other branches?
    2:55 PM
    brntbeer	when we say "git merge branch1" we're merging the most recent state of branch1 into the current branch we're on
    you can pull specific commits over if thats what you want
    Ravid T.	so to get a high-level understanding again, people create branches for new ideas, and when that idea is worked on and completed, they usually do a branch merge back to master?
    brntbeer	exactly Ravid Te
    Ravid T.	okay, thanks
    Ray G.	yes ... How would I pull a specific commit from branch 1 and merge it with other branches (branches 2-30)?
    John G.	what's the full gitk command Matthew used ?
    brntbeer	John Grandy: `gitk --all`
    Ravid T.	gitk --all&
    brntbeer	again, may not work well on windows.
    Ray Gutierrez: you can actually perform an octopus merge, it's very terrifying
    and i recommend you never merge more than one thing at a time
    3:00 PM
    Sara R.	has left the room
    brntbeer	ah wait. misunderstood. merge a specific commit onto each branch
    you would use the cherry-pick command
    matthewmccullough	https://github.com/githubstudent/hellogitworld/...
    View paste 
    https://github.com/githubstudent/hellogitworld/tree/feature_image
    Sara R.	has entered the room
    Chris S.	has entered the room
    brntbeer	it's not necessarily a merge, but it pulls over the changes from a given commit to your branch from another branch
    3:05 PM
    brntbeer	it's not the same as a merge and is a bit more advance
    Steven D.	has entered the room
    3:15 PM
    Jamund F.	probably a good idea to git fetch before resetting hard to origin/master
    brntbeer	Jamund Ferguson: definitely
    3:30 PM
    John G.	how come the git reflog ids are different length to the git rev-parse ids ?
    brntbeer	John Grandy: because reflog lives for only 60 days, the need to specify past 7 characters isnt necessary. past that some of the hashes are the same because they're the same point in history
    Jamund F.	How can you access the reflog that lives on the remote?
    brntbeer	the reflog is only a remote thing
    John G.	you mean if go back before 60 days it's possible to have dupes among first 7 chars of hash ?
    brntbeer	its only about the commands we've worked on
    John Grandy: i mean, in git in general it's possible to have the same 7 characters
    it's kinda crazy unlikely though
    but happens on multi-year long projects with hundreds of commits per week
    3:35 PM
    John G.	so even within 60 day window it's theoretically possible to gen hashes with identical first 7 chars , but so extremely unlikely that it's reasonable to only show 7 chars
    brntbeer	im getting slightly confused by your question. the generation of hashes has nothing to do with it being within 60 days. i meant that reflog is a local cache, similar to a bank ledger, that is showing you doing certain checkpoint operations
    you could go onto the git core project and see how many hashes have similar 4,5,6, or 7 characters etc
    and circling back to your question: yes, it's almost always only going to be necessary to show 7 characters of a hash
    this is why when i run log, i run `git log --oneline`
    which is a shorthand form of ` git log --format=oneline --abbrev-commit`
    renata	has entered the room
    3:50 PM
    Jamund F.	So Brent, someone at work accidently did git push --force and we lost a bunch of commits. Is the best place to go to "find" them the reflog on the server directly?
    brntbeer	you cannot view the reflog on the server, it's not a public thing
    Jamund F.	(not on github)
    brntbeer	the best case is to smack them.
    Jamund F.	yeah, we disabled it now :)
    brntbeer	=)
    ha! right. good
    3:55 PM
    brntbeer	the best place to find those commits would be someone else to re-force push it to a state that most people had
    im not sure what the best "support" answer is for that question, but the whole point of git being distributed is that you could/should have a copy up to that point before a force
    past that, contacting support about that would be good
    mac.github.com
    windows.github.com
    4:00 PM
    Jean K.	has left the room
    John G.	"git commit -a -m"top change" just gives me >> prompt
    brntbeer	make sure you don't have too many quotes
    or that you have something staged before typing -a -m
    the -a flag won't add any new files
    John G.	i'm confused -- so i don't need to do "git add" ?
    brntbeer	you do.
    if you're creating a new file, as matthew is doing, you' need to git add
    4:05 PM
    brntbeer	the `git commit -am"message here"` format only works for files that are marked as "modified" when we say "git status"
    Ray G.	git commit -a -m is combining both add and commit
    brntbeer	not exactly Ravid Te
    er Ray Gutierrez
    git commit -a won't grab new files
    only modified files
    similarly wont grab deleted files
    Ray G.	so it only adds modified files ... is that correct?
    John G.	View paste 
    C:\gitclass\hgwteacher [master +0 ~1 -0]> git status
    # On branch master
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #       modified:   README.txt
    #
    no changes added to commit (use "git add" and/or "git commit -a")
    C:\gitclass\hgwteacher [master +0 ~1 -0]> git commit -a -m"top change"
    >>
    brntbeer	strange. are you just hitting enter or shift enter?
    other than that, i'd say type: "-am" instead of -a -m
    John G.	View paste 
    C:\gitclass\hgwteacher [master +0 ~1 -0]> git commit -am"top change"


# Command Line History

    git --version
    git config --list
    git config user.name
    git config user.email
    git config --global user.email "matthew@github.com"
    git config --global user.name "Matthew McCullough"
    git config -e --global
    git config --global color.ui auto
    pwd
    clear
    git init project1
    open .
    cd project1
    git status
    clear
    git status
    vim first.txt
    git status
    git add first.txt
    git status
    git commit -m "My first commit"
    clear
    git status
    vim first.txt
    git diff
    git add first.txt
    git diff --staged
    git commit -m "Only the changes that I wanted"
    vim first.txt
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git log
    git graphlive 10
    to.scratch
    cd project1
    git graphlive 10
    git status
    git add -p first.txt
    git status
    git diff
    git diff --staged
    git commit -v 
    git status
    export $EDITOR
    echo $EDITOR
    git config core.editor
    git config --global core.editor "mate -w"
    git add .
    git commit -v
    git commit -a -m "Add and commit everything"
    clear
    git graphlive 10
    which -a historytailzsh
    cat /Users/mccm06/.dotfiles/scripts/historytailzsh
    history
    git log --format=raw
    git fsck
    git log --format=raw
    git log -p
    git log --graph
    git log --graph --oneline
    git log --graph --oneline --decorate --abbrev-commit
    git l2
    gitk 
    git log --graph
    open .
    git status
    git rm first.txt
    git status
    git reset HEAD first.txt
    git status
    git checkout -- first.txt
    git status
    ls
    git status
    git add -A .
    git status
    git reset --hard
    echo you just lost a bunch of things
    echo DANGER WILL ROBINSON
    git status
    git add -A .
    git status
    echo default is 50 percent
    git commit -m "Rename with changes"
    git log -1 --stat
    git log -1 --stat -M
    git remote add origin https://github.com/githubstudent/project1.git
    git push -u origin master
    git status
    git push -u origin master
    clear
    git push
    git config --list | grep push
    git config --unset push.default
    git push
    git --version
    git config --global --unset push.default
    git push
    git config --global  push.default "matching"
    git remote add matthew https://github.com/githubstudent/project1.git
    git fetch matthew
    git branch
    git branch -a
    vim TWOfirst.txt
    git commit -a -m"Changes"
    git push
    clear
    git fetch matthew
    git diff origin/master matthew/master
    git fetch --prune
    cd ..
    pwd
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    cd hgwteacher
    git branch
    git branch -a
    git remote add matthew https://github.com/githubstudent/hellogitworld.git
    git remote -v
    git help checkout 
    git checkout feature_subtraction
    git branch -a
    git branch -vvv
    git checkout feature_subtraction
    git fetch matthew
    git checkout feature_image
    clear
    git branch feature_image --track matthew/feature_image
    git remote -v
    git status
    git checkout feature_image
    git status
    pwd
    vim matthewmccullough.txt
    git add .
    git commit -m"Matthew was here"
    git push
    gitk --all
    gitk --all&
    git status
    git branch matthewmccfeature
    git checkout matthewmccfeature 
    vim matthewfeaturebranchfile.txt
    git checkout master
    git add matthewfeaturebranchfile.txt
    git checkout -
    mkdir thousands
    cd thousands
    generaterandomfiles 9001 sample txt
    git add .
    git commit -m"Nine thousand, over"
    git checkout -
    pwd
    cd ..
    pwd
    git checkout -
    git status
    git checkout master
    git status
    git log -1
    git checkout -
    git status
    git checkout matthewfeaturebranchfile.txt
    git checkout matthewmccfeature 
    git status
    git checkout feature_image
    git merge matthewmccfeature 
    git checkout matthewmccfeature 
    git checkout -
    git status
    git fetch
    git status
    hub browse
    git fetch
    git status
    git pull
    git checkout master
    git status
    git reset --hard
    git fetch
    ls
    git merge origin/master
    ls
    git branch -vvv
    git pull
    vim README.txt
    git commit -a -m"Mess"
    git reset --hard origin/master
    git reflog
    git reset --hard f21c66b
    git rev-parse origin/master
    git reset --hard origin/master
    git rev-parse origin/master
    git rev-parse master
    git merge origin/master
    git log --format=raw
    git merge this that
    git merge wrong right
    clear
    echo but why would you want to?
    echo some more traditional orgs do it
    git reflog
    git log --stat
    git checkout 446215a40959861ebdf524a1e651f76aea69daca -- README.txt
    git status
    git checkout master
    git rev-parse master
    git checkout RELEASE_1.0 -- README.txt
    git status
    git reset --hard
    git status
    git reset --soft RELEASE_1.0
    git status
    git commit
    git status
    echo NEW > newfile.txt
    git status
    git log -1
    vim matthew.md
    git log -2
    clear
    git status
    git fetch
    git checkout master
    git reset --hard origin/master
    vim README.txt
    git commit -a -m"Top"
    vim README.txt
    git commit -a -m"Middle"
    vim README.txt
    git commit -a -m"End"
    git log -3 --stat
    git revert eecea
    head README.txt
    clear
    git status
    vim matthew.md
    git status
    git stash
    git stash list
    git status
    git stash pop
    git stash
    git stash branch youcanmakeitabranch
    git add .
    git commit -m"Saved myself"
    git tag -a END_OF_CLASS
    git tag

