---
layout: bare
title: Online Foundations Class
description: Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-03-18-online-foundations-class.md
eventdate: 2013-03-18
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Ben Straub ([Twitter](http://twitter.com/benstraub), [GitHub](https://github.com/ben))

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
* [Open Source Git Ignores](https://github.com/github/gitignore)
* [Ship of Theseus - Related to Similarity Index](http://en.wikipedia.org/wiki/Ship_of_Theseus)
* [git-p4 Perforce Script](http://answers.perforce.com/articles/KB_Article/Git-P4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix\))
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
* [Course Slides](http://teach.github.com/articles/course-slides/)
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command History

    git init newproject
    ls
    cd newproject
    ls
    ls -la
    tree .git
    open .
    open .git
    git config --list
    git config --global --list
    git config --local --list
    cat .git/config
    vi .git/config
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config user.name
    git config user.email
    git config --global color.ui auto
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Noblest man"
    git status
    ls
    ls -la
    ll
    vi caesar.txt
    git status
    git diff
    git add caesar.txt
    git diff
    git status
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff --staged
    git diff
    git diff --word-diff
    git diff HEAD
    git diff HEAD --word-diff
    git diff --stat
    git diff --stat HEAD
    git status
    cat caesar.txt
    git commit -m "Costly blood"
    git status
    git diff git add caesar.txt
    git status
    git commit -m "Added an accent to maintain iabic pentameter ng"
    git log
    git log --format=full
    git log --format=fuller
    git log --format=raw
    git log --stat
    git log --patch
    git log --patch --color-words
    git log --patch --word-diff
    git log --patch --word-diff -1
    git log format=raw -2
    git log --format=raw -2
    git log --graph
    git log --graph --pretty=oneline git log --graph --pretty=oneline --abbrev-commit
    git log --graph --pretty=oneline --abbrev-commit --decorate  git log --graph --pretty=oneline --abbrev-commit --decorate --
    git lol
    it config --global alias.lol "log --graph --pretty=oneline --vcommit --decorate --all"
    git lol
    history
    git lol
    ls
    generaterandomfiles 6 random txt
    ls
    cat random1.txt
    cat random2.txt
    git status git add .
    git status
    git commit -m "Added six files I'm just going to delete anyway
    git lol
    git log --stat
    git rm file1.txt
    git rm random1.txt
    ls
    git status
    rm random2.txt
    git status
    git rm random2.txt
    git status
    open .
    git status
    git add -u .
    git status
    l
    git rm --cached random6.txt
    l
    git status
    git commit -m "Removed all dat cruft"
    git log --stat-2
    git log --stat -2
    history
    git lol
    ll
    rm random6.txt
    ll
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    vi listing.txt
    git status
    git add .
    git commit -m "Added files for moving"
    git log --stat -1
    mkdir files
    git status
    ll
    ll files
    git status
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Moved most of our files"
    git log --stat -1
    git log --stat -1 -M
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Move and change a file"
    git log --stat -M -3
    git log --stat -M80 -2
    git log --stat -M50 -2
    tree
    vi files/listing.txt
    git add .
    git commit -m "Changed listing"
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M80 --follow -- files/listing.txt
    git log --stat -M78 --follow -- files/listing.txt
    history
    mkdir build
    ll ~ > build/output.jar
    ll /Users > build/Demo.class
    ll ~ > console.log
    git status
    git status -u
    ls
    vi .gitignore
    git status
    git add .gitignore
    git commit -m "Added a .gitignore"
    git lol
    tr.git
    cd scratch/newproject
    git loglive
    git loglive
    cat `which git-loglive`
    git branch
    git status
    ll .git
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/HEAD
    git branch feature
    git lol
    tree .git/refs
    ll .git/refs/heads
    git branch
    vi caesar.txt
    git add .
    git commit -m "Voice and utterance"
    cat caesar.txt
    git checkout feature
    cat caesar.txt
    vi caesar.txt
    git status
    git add .
    git status
    git commit -m "Added a title"
    git lol
    git branch
    git checkout master
    cat caesar.txt
    git merge feature -m "Merged the feature branch"
    cat caesar.txt
    git branch
    git checkout feature
    cat caesar.txt
    git checkout 33a0bec
    git lol
    ls
    cat caesar.txt
    git checkout master
    tre .git/refs
    tree .git/refs
    git branch -d feature
    git lol
    tree .git/refs
    git branch feature2
    git branch
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git checkout feature2
    vi caesar.txt
    git status
    vi tolkien.txt
    git status
    git add .
    git status
    git commit -m "Buggy Shakespeare, incomplete Tolkien"
    git lol
    git checkout master
    cat caesar.txt
    git merge feature2
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit
    git branch -d feature2
    history
    git lol
    git log --format=raw 6609
    git log --format=raw 6609 -1
    git lol
    git branch feature3
    git checkout feature3
    vi tolkien.txt
    git add .
    git commit -m "Deep roots"
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git lol
    git checkout master
    git merge feature3
    git branch -d feature3
    vi tolkien.txt
    git add .
    git commit -m "Ashes waking up"
    git branch 96f3e40
    git branch -d 96f3e40
    git branch feature4 96f3e40
    vi caesar.txt
    git status
    git checkout feature4
    cat caesar.txt
    git status
    git checkout master
    git checkout feature4
    git status
    vi caesar.txt
    git diff
    git diff master
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git lol
    git checkout master
    git merge feature4
    ls
    cat tolkien.txt
    cat caesar.txt
    git reset --hard 70f2e36
    cat caesar.txt
    git status
    git checkout feature4
    vi tolkien.txt
    git add .
    git commit -m "This will cause a conflict"
    cat tolkien.txt
    git checkout master
    git merge feature4
    git status
    git merge --abort
    git status
    git merge feature4
    git status
    vi tolkien.txt
    git status
    git add tolkien.txt
    git status
    git commit
    git lol
    git branch -d feature4
    git branch feature5
    vi tolkien.txt
    git add .
    git commit -m "Crownless king"
    git checkout feature5
    ll
    vi caesar.txt
    git add .
    git commit -m "Choked pity"
    git lol -10
    git rebase master
    cat caesar.txt
    git checkout master
    cat caesar.txt
    git merge feature5
    git branch -d feature5
    git checkout -b feature6
    git branch
    git loglive -15
    git loglive -20
    tree
    cd files
    generaterandomchanges 10 random txt
    ls
    git rebase -i HEAD~10
    vi random7.txt
    vi random5.txt
    vi random4.txt
    vi random3.txt
    git status
    git add .
    git rebase --continue
    git show feature6
    git log feature6 --stat -1
    git log feature6^ --stat -1
    git rebase -i HEAD^^
    git checkout master
    git lol -10 git merge feature6
    git branch -d feature6
    git remote add origin https://github.com/githubteacher/poetry.
    git remote
    git remote -v
    git remote show origin
    git push -u origin master
    git config --unset --global branch.autosetuprebase
    git config --unset --local branch.master.rebase
    cd ..
    cat .git/config
    git lol -10
    git branch -a
    git fetch
    ls
    ls -;
    ls -l
    git remote show origin
    cat /etc/ssh_config
    ll ~/.ssh
    cat /etc/ssh_config
    pwd
    ssh-keygen -f ../github
    ls -l ..
    ssh-keygen -f ~/github
    ssh-keygen -f ~/github-yahoo
    vi ~/.ssh/config cat ~/github-yahoo.pub
    ssh -T git@github.com
    git remote set-url origin git@github.com:githubteacher/poetry.
    git remote -v
    git pull
    git fetch
    vi caesar.txt
    git add .
    git commit -m "Caesar Rage"
    git status
    git push
    git pull
    git push
    git branch -a
    export PS1="$ "
    tr.git
    cd scratch
    ll
    ls
    rm github
    rm github.pub
    ls
    pwd
    git clone git@github.com:githubstudent/poetry.git
    cd poetry
    ls
    git lol
    git remote
    git remote -v
    git remote show
    git remote show origin
    git branch -a
    ls
    git config user.email "training+githubstudent@github.com"
    git config user.name "GitHub Student"
    vi raven.txt
    git add .
    git commit -m "Dying embers"
    git push
    vi raven.txt
    git add . git commit -m "Eagerly wished"
    git push
    git remote set-url origin https://github.githubstudent/poetry.git
    git push
    git pull
    git loglive -18
    ls
    cat untitledc.txt
    cat jetang.txt
    cat raven.txt
    git pull https://github.com/githubstudent/poetry.git master
    git status
    vi raven.txt
    git add raven.txt
    git commit
    git push
    git pull
    git loglive -15
    git pull
    git lol git remote
    git remote -v
    git remote add upstream git@github.com:githubteacher/poetry.
    git remote -v
    git fetch upstream
    git lol
    git branch -a
    git pull upstream master
    ls
    cat raven.txt
    git lol
    git push
    git lol
    git loglive -12
    git remote -v pwd
    cd ..
    git clone git@github.com:githubteacher/poetry.git teacher-ry
    cd teacher-poetry
    pwd
    ll
    git remote -v
    vi caesar.txt
    git add .
    git commit -m "Cry Havoc\!"
    git push
    git pull
    git push
    git pull && git push
    git pull
    git loglive -8
    git loglive -9
    git pull
    gitk --all
    git lol
    git pull
    git lol
    git config --global branch.autosetuprebase always
    git config branch.master.rebase true
    git config --local --list
    git pull
    vi caesar.txt
    git add .
    git commit -m "Keep calm and carrion."
    git push
    git pull
    vi caesar.txt
    git add caesar.txt
    git rebase --continue
    git pull
    git status
    git pull
    git push
    git pull
    git push
    git pull
    git loglive -15
    git pull
    ls
    git log --stat -1
    cat untitledc.txt
    git pull
    cat raven.txt
    git pull
    git checkout -b tlberglund
    ll
    vi raven.txt
    git add .
    git commit -m "Complete second stanza"
    git push -u origin tlberglund
    git branch -a
    vi raven.txt
    git add .
    git commit -m "Rustling"
    git push
    git fetch
    git branch -a
    git checkout jeffhuang
    git remote show origin
    git branch
    ls
    git diff master
    git log --stat -1
    vi raven.txt
    git add .
    git commit -m "Midnight dreary"
    git push
    git branch -a
    git checkout master
    git merge jeffhuang
    vi raven.txt
    git add .
    git commit
    git push
    git pull
    vi raven.txt
    git add .
    git rebase --continue
    git push
    git branch
    git branch -r

## Chat History
	Jeff O.	i have 1.7.12. is the hub gem required?
	ben	Nope. Not at all.
	Jeff O.	cool
	charla	has entered the room
	ellie c.	has entered the room
	pychen	has entered the room
	Amanda	has entered the room
	chanyash	has entered the room
	cliff	has entered the room
	8:10 PM
	benstraub	has left the room
	Jeff O.	if you have RHEL 6, the tree command is available
	8:15 PM
	balduran	has entered the room
	Neal	has entered the room
	emaadm	has entered the room
	aaron	View paste 
	queensoon-lm:newproject aaronwu$ git config --global --list
	fatal: unable to read config file '/Users/aaronwu/.gitconfig': No such file or directory
	ben	Hah.
	If you do "touch ~/.gitconfig", it should be happy. :)
	What's your git --version, out of curiosity?
	aaron	View paste 
	queensoon-lm:newproject aaronwu$ git --version
	git version 1.7.10.2 (Apple Git-33)
	ben	Ah yeah, mine (1.8.10) does that too.
	aaron	touch do the trick, just nothing print out.
	ben	You're saying "give me the configuration stored in ~/.gitconfig", but the file doesn't exist.
	aaron	ah, got it.
	8:20 PM
	ben	Aww, shucks. 
	Miller	has entered the room
	wcpan	has entered the room
	Damodharan R.	has entered the room
	Babu M.	has entered the room
	Larry K.	has entered the room
	Jeff O.	awesome! stripping ASCII 19 is an annoyance for me in Linux
	8:25 PM
	ben	If you want a longer read on line endings, here's the full story: https://help.github.com/articles/dealing-with-line-endings
	ares	git config --global core.autocrlf input
	Jeff O.	can git be told to strip 'smart quotes' and other Microsoft chars?
	ben	There's a way to do that, but it's not easy. :)
	Jeff O.	ah well
	params	git status gives me
	fatal: This operation must be run in a work tree
	ben	What tim said. Did that help?
	8:30 PM
	Jeff H.	has entered the room
	ben	Jeff O: here's the feature you'd use (clean and smudge filters). http://git-scm.com/book/en/Customizing-Git-Git-Attributes#Keyword-Expansion
	Jeff O.	thanks!
	ben	It's not easy to set up, and it's even harder to share with the whole team, but it *is* possible.
	Good luck!
	8:35 PM
	Jeff O.	looks very similar to 'svn diff'
	8:40 PM
	Miller	has left the room
	owen	has entered the room
	beckie	has entered the room
	Jeff O.	what is the "[master <hexadecimal>]" message on commit?
	8:45 PM
	tlberglund	http://teach.github.com/presentations/git-foundations.html#/7
	ben	NO TRAVELING TO THE FUTURE
	Jeff O.	ben: if you do, add THEN commit
	srinivas	has entered the room
	Hemanth	has entered the room
	8:50 PM
	Jeff O.	looks like a singly linked list to me
	ben	Cookie for you, Jeff!
	Jeff O.	can you repeat the option that showed commit and parent?
	ben	git log --format=raw
	Jeff O.	thanks
	9:00 PM
	tlberglund	git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit --decorate --all"
	srinivas	View paste 
	I got this - $ git lol
	Expansion of alias 'lol' failed; 'git' is not a git command
	Damodharan R.	how can I check all the alias I have ?
	ben	Probably the easiest way is "cat ~/.gitconfig"
	9:05 PM
	ben	Look for the [alias] section
	tlberglund	git config --list | grep "alias\." works too. :)
	Jeff H.	srinivas: maybe you have alias.log "git log..."
	srinivas	never min - my bad
	Jeff H.	you need to use alias.log "log .."
	Ratan H.	has entered the room
	ben	 git — bash.jpg

	Here's what "git lol" gives you with the source code for git itself. :)
	9:20 PM
	Jeff H.	disconnected ?
	tlberglund	No, you're all still in the class. Screen sharing is just paused.
	Jeff H.	Thanks
	Miller	has entered the room
	Jeff O.	how does 'git diff' handle binary files that have changed?
	ben	The diff algorithm doesn't handle it terribly well. On the command line you'll likely get junk.
	9:25 PM
	ben	Most graphical clients will do better, depending on the format.
	BTW, if anybody wants examples of useful diffs, check this out:
	https://github.com/matthewmccullough/dotfiles/blob/master/gitconfig
	9:30 PM
	Jeff H.	View paste 
	I have try diff binary file, you will get this message: Binary files a/convert and b/convert differ
	ben	Nice. Real helpful, git.
	9:35 PM
	ben	Young Yang asked: "any way we can checkout the folder with all random txt files from git history?"
	Yes. Tim will get to this, but you can always do "git checkout <sha>"
	Where <sha> is the full 40-character hash, or just the first 6 or 7 characters.
	young	has entered the room
	9:40 PM
	Miller	has left the room
	9:45 PM
	ben	Ratan: your hand is raised in GoToTraining. Did you have a question?
	9:50 PM
	Jeff O.	svn does something very similar, i think
	ben	I believe you have to tell svn specifically that the file moved. If you just do the delete/add, it may not pick up that it's the same file, especially if the contents change at the same time.
	10:00 PM
	chanyash	has left the room
	10:05 PM
	Jeff O.	what was the " | 0" at the end of the Move lines?
	ben	It's analogous to the "| 8 ++------" at the end of the others.
	It means that 0 lines changed, it was just a rename.
	Jeff O.	ok
	10:10 PM
	jia	has entered the room
	jia	has left the room
	ben	Here are some recommendations for .gitignore files for various project types: https://github.com/github/gitignore
	Jeff O.	this .gitignore will be very useful for keeping our package builds out of the repo
	ben	Yeah, it makes it so your "git status" only shows stuff you care about.
	10:15 PM
	Jeff H.	extra info:(local ignore) http://stackoverflow.com/questions/1753070/git-ignore-files-only-locally
	ben	Yeah, .gitignore lives alongside your source files. If you want to ignore stuff *only on your machine*, use info/exclude.
	10:20 PM
	wcpan	has left the room
	10:25 PM
	Jeff O.	I got a merge commit
	View paste 
	-bash-4.1$ git merge feature -m "Merged the feature branch with master"
	Auto-merging ceasar.txt
	CONFLICT (content): Merge conflict in ceasar.txt
	Automatic merge failed; fix conflicts and then commit the result.
	Jeff H.	what's the diff between $ git pull feature and $ git merge feature ?
	ben	They should act the same in this context.
	Ratan H.	i got a merge failure
	got it
	ben	If you open your file in vi, you should see markers that git has left showing where the conflict is.
	10:30 PM
	ben	This happens a lot in examples, where you're just adding lines to the end of the file
	Not so much in code, though.
	10:45 PM
	params	at the end of the session, can we have a transcript of all the commands (history)? Thanks!
	ben	Young just asked: "after git commit, feature2 also update the conflict file?"
	The answer is no; the HEAD was pointing to master, so only the master branch is updated when a new commit is made.
	So feature2 would still be pointing to 9c57992 (if Tim hadn't deleted it).
	10:50 PM
	params	whats the difference between git push and git commit?
	are you going to cover these commands as well?
	thanks!
	Jeff T.	has entered the room
	Hemanth	What happens if we have uncommitted changes on a branch and we try to switch to a different branch
	10:55 PM
	Jeff H.	you need to $ git commit or git stash .. before you can checkout another branch
	ben	Git tries really hard to keep your changes. It actually runs a merge behind the scenes.
	Of course, you can make it easy on git by stashing or commiting. Then you'll DEFINITELY have no problems.

	Jianhui H.	has left the room
	Neal	Thank you! :)
	aaron	thank you, Tim and Ben.
	Yiwei C.	 Thank you!!
	beckie	thanks!!
	ellie c.	thank you!!
	Jeff H.	Thanks!!
	ben	Great questions, everyone. Good luck!
	
	brntbeer	One thing to notice there is the movement of HEAD in the livelog. we can see that where HEAD, master and feature4 are both stem from the same commit of 96f3e40
	pychen	has entered the room
	cliff	has entered the room
	brntbeer	so master and feature4 both have individual different commits. And now if on this feature branch, we make an edit to something that already exists in master, git is going to stop us when that merge happens
	and Git will say "wait a minute, both of these hunks appear like the same type of change, which should i use?"
	Babu M.	has entered the room
	8:20 PM
	Jeff O.	what would be a git equiv. of the 3-way merge?
	is the recursive merge basically that?
	Neal	has entered the room
	beckie	has entered the room
	brntbeer	a recursive merge is a 3-way merge for "ours", "theres", and "base" where "ours" is the current branch, "theirs" is the branch coming in, and "base" is the single point both branches come from
	8:25 PM
	Jeff O.	octopus sounds potentially destructive
	brntbeer	Jeff Orr: For every time that there could be a merge conflict between two branches in a standard merge, an octopus merge expands upon that. I think i've only tried to merge more than one branch in 2 or 3 times in my entire history of using git
	totally up to your workflow
	Ratan H.	has entered the room
	Rax	has entered the room
	8:30 PM
	params	has left the room
	8:35 PM
	srinivas	has entered the room
	8:40 PM
	balduran	has entered the room
	Rax L.	has left the room
	Yiwei C.	Say someone committed in master in the meantime, are "git rebase -i 0413" and "git rebase -i master" still the same?
	8:45 PM
	brntbeer	the only difference at that point would be master would have one commit that featuer6 doesnt know about. so specifying master in that case would ensure we're doing the rebase, and all the differences. I'll make tim go over that very quickly right after this. it's like a combination of the rebase and rebase interactive example
	thank you!
	8:50 PM
	Hemanth	has entered the room
	srinivas	fast forward
	brntbeer	Bingo!
	9:00 PM
	cliff	has left the room
	9:05 PM
	Jeff O.	i think something is missing from my git setup. i am getting "fatal: Unable to find remote helper for 'https'"
	Yiwei C.	(so this remote thing is per project directory, not a global setting right?)
	Jeff O.	git version 1.7.12
	brntbeer	Yiwei Chen: the remote is per git repo yep!
	Jeff Orr: can you tell me the command you typed? could be 1 of 2 things. Also are you behind a firewall?
	Jeff O.	View paste 
	brntbeer: -bash-4.1$ git remote -v
	origin  https://github.com/aatheus/aatheusrepo.git (fetch)
	origin  https://github.com/aatheus/aatheusrepo.git (push)
	git push -u origin master
	we are using a Y! built package version of Git. they may have left SSL out
	9:10 PM
	brntbeer	yep. was just going to suggest updating your version of git because of where it was built
	Jeff O.	how would you edit 'origin' after it's added to use a different URL?
	brntbeer	you could type `git remote rm origin` and then re-add it as a different url
	Jeff O.	our version is missing http as well. hmm.
	brntbeer	so, jeff, to do that you could change the origin url to be git@github.com:aatheus/aatheusrepo.git
	and that'll end up using ssh
	the only problem with that is needing to add your ssh key to github.com
	Jeff O.	git remote add origin git@github.com:aatheus/aatheusrepo.git ?
	brntbeer	yep. but i want to hold off on having you use ssh. Is anyone else having similar problems?
	9:15 PM
	brntbeer	kind of surprised about this only being an isolated issue.
	Ratan H.	having that issue as well
	Jeff O.	i may just be using a minimal Yahoo!-specific client
	Ratan H.	git version 1.7.12
	Jeff O.	View paste 
	$ yinst ls | grep git
	git-1.7.12_Y1.4.1.2
	Jeff H.	it works for me: git://github.com/githubteacher/poetry.git
	brntbeer	Jeff Huang: but can you push to your own fork?
	Hemanth	yeah using git protocol instead of https works fine
	brntbeer	that seems to be githubteacher's repository
	Jeff H.	yes..let me try..bcz I got the same ssh issue
	Jeff O.	new keypair would be best
	so there is no Yahoo! data uploaded
	9:20 PM
	young	has entered the room
	Hemanth	Use the existing keys with the github enterprise ?
	Jeff O.	sounds fine to me
	Jeff H.	View paste 
	git init
	git remote add origin git://github.com/jeffhuangtw/new_project.git
	git remote -v
	git pull origin master
	works for me
	Jeff O.	is there a good way to tell git to look at a different file than ~/.ssh/id_rsa.pub globally?
	ssh-keygen -f github
	let's see if I can
	yes
	tlberglund	View paste 
	Host github.com
	  IdentityFile ~/.../github
	9:25 PM
	tlberglund	ssh-keygen -f ../github
	ssh-keygen -f ~/github-yahoo
	vi ~/.ssh_config
	vi ~/.ssh/config
	View paste 
	Host github.com
	  IdentityFile ~/github-yahoo
	cat ~/github-yahoo.pub
	9:30 PM
	Jeff O.	would a DSA key also work, or just RSA?
	brntbeer	I'm not totally 100% sure
	tlberglund	ssh -T git@github.com
	Jeff O.	push and fetch are now working for me. awesome!
	brntbeer	So glad to hear it!
	thank you jeff
	Jeff O.	my RSA public key (the one I just generated) works
	srinivas	do we need to create a repo as well..or after break?
	and clone it
	k thx
	brntbeer	srinivas: Right after break we'll create a fork and go from there
	young	did on github.com not in yahoo git corp? git.corp.yahoo.com??
	9:35 PM
	tlberglund	young: Yes, on github.com. You probably already have access to your internal GitHub.
	But we don't, so we use github.com for the class.
	brntbeer	exactly right. just for the purposes of this class is why we're setting that ssh key
	Jeff O.	they also don't want to accidentally steal our code
	brntbeer	^
	9:40 PM
	Jeff T.	I suppose by adding existing RSA (or DSA) public key into the same ssh key setup page just demo, we can skip new key generating / ssh config things and use the existing ssh key to access git@github.com. Or is there an issue?
	Jeff O.	public key is probably ok, now that i think about it
	it's useless without the matching private key
	9:45 PM
	brntbeer	public key is actually incredibly FINE. there's been quite a few people who have tried to complain to us about the public keys and well...that's a long winded argument to basically say "its called public for a reason"
	Jeff O.	derp... realized I had the wrong headphones on
	brntbeer	ha!
	better than being away from the computer when class starts! whoops.
	Jeff O.	in this case, do we need to a 'fetch' before we do the 'pull'?
	9:50 PM
	brntbeer	Jeff Orr: we could do a fetch and then a merge, but a pull will do both
	a fetch is merely a way to update our understanding of what's on github.com (or wherever our remote is)
	i always fetch
	Jeff O.	oh ok
	brntbeer	doing a pull after a fetch isnt bad. it'll do the same thing in the end
	9:55 PM
	srinivas	I got this
	View paste 
	Cloning into 'poetry'...
	ERROR: Hi pointly, it's GitHub. We're doing an SSH key audit.
	Please visit https://github.com/settings/ssh/audit/1193173
	to approve this key so we know it's safe.
	Fingerprint: b1:c1:09:bc:9d:ee:34:27:08:68:7f:f1:b9:a4:3e:60
	fatal: The remote end hung up unexpectedly
	brntbeer	ah perfect. that's just us ensuring that you authorize this key on your github account
	srinivas	it says all ssh keys are verified
	but my clone wont work
	10:00 PM
	brntbeer	i'm seeing that you dont actually have any ssh keys to that account
	can you go over to https://github.com/settings/ssh and add the ssh key like we showed earlier? we just copied the key that was in the file at ~/github-yahoo.pub and saved it under that settings section
	young	View paste 
	bettercloth-lm:dev youngbe$ git clone git@github.com:imyoungyang/poetry.git 
	Cloning into 'poetry'...
	Permission denied (publickey).
	fatal: The remote end hung up unexpectedly
	srinivas	also not sure why it's saying pointly..I added my ssh keys to my account settings > SSH
	Jeff O.	poetry network graph. very Zen
	srinivas	my user is chini21
	brntbeer	ah.ok. double checking
	Ok. i see you've added that. and typing "ssh -T git@github.com" works?
	10:05 PM
	srinivas	yes
	View paste 
	dhcpx-206-227:git-training sraovasu$ ssh -T git@github.com
	Hi pointly! You've successfully authenticated, but GitHub does not provide shell access.
	young	solved. put the private key in the same directory
	Jeff O.	MarkDown is awesome. we used it for docs generation at my previous company
	brntbeer	young: you mean the private key in the same directory as the public key?
	srinivas: wondering if your ~/github-yahoo.pub and ~/github-yahoo file are in the same directory?
	srinivas	yes
	brntbeer	and could you type a "git config --local --list" ?
	Jeff O.	you may need to set github-yahoo mode 600. i know RHEL is very picky about file permissions
	brntbeer	that could be it too
	young	Oops! githubteacher:master is already up-to-date with imyoungyang:master Try a different branch?
	brntbeer	srinivas: also, you may need to remove that key from your settings and re-add it. i know this may be a pain to do but it may have been copied slightly wrong
	10:10 PM
	Ratan H.	has left the room
	srinivas	ok let me try
	brntbeer	thank you. sorry for the confusion. the copying of the file could be difficult too if it's copied slightly improperly
	young: try again, your master should definitely be outof date with githubteacher:master after he's accepted a PR
	srinivas: the other thing im curious about is it calling you "pointly"
	srinivas	that didn't work either
	yeah not sure what that means either
	brntbeer	can you type "git config --local --list" for me? i think your username may be improperly set
	or user.name and user.email
	it assentially thinks you're this user "pointly"
	srinivas	oh I got this - fatal: unable to read config file '.git/config': No such file or directory
	Jeff H.	$ git init
	brntbeer	sorry, git config --global --list
	please don't type git init
	Jeff H.	sorry :p
	brntbeer	we dont need to create a local project where we're at
	10:15 PM
	srinivas	View paste 
	dhcpx-206-227:git-training sraovasu$ git config --global --list
	user.name=Srinivas Raovasudeva
	user.email=sraovasu@yahoo-inc.com
	alias.lol=log --graph --pretty=oneline --abbrev-commit --decorate --all
	brntbeer	are you familiar with the user pointly?
	srinivas	it was for another project long time ago..not sure if there are remnants of that
	brntbeer	sorry. not sure if that's important. i'd be sure that the user account you're attempting to interact with is chini21, and the ssh key you uploaded was to chini21 and not pointly
	srinivas	yes to chini21
	brntbeer	also, that you have a config file at ~/.ssh/config that reads:
	View paste 
	Host github.com
	  IdentityFile ~/github-yahoo
	Damodharan R.	has entered the room
	Jeff O.	can you re-fork the githubteacher poetry repo without having to do any command-line pulls and merges?
	essentially rebase the entire repo?
	Yiwei C.	After you (teacher) fixed the merge conflict, why there's no log about what you (teacher) did in the student's pull request?
	I see, thanks!
	10:20 PM
	brntbeer	srinivas: i believe after we have that host file set, we'll ensure we're using the correct ssh file, and github.com won't think you're pointly
	srinivas	I have the right ~/.ssh/config file as above
	brntbeer	ok. one moment
	tlberglund	git remote add upstream git@github.com:githubteacher/poetry.git
	10:25 PM
	Hemanth	git push
	Jeff O.	my origin/master is still 9 commits behind upstream/master
	think i missed a step
	d7699ed (HEAD, origin/master, origin/HEAD, master) Added local file newf
	tlberglund	git pull upstream master
	Jeff O.	aha
	i'll try that
	brntbeer	yep!
	Tim nailed it
	Jeff O.	View paste 
	-bash-4.1$ git pull upstream master
	From github.com:githubteacher/poetry
	 * branch            master     -> FETCH_HEAD
	Updating d7699ed..49cdc15
	Fast-forward
	 jetang.txt    | 1 +
	 raven.txt     | 8 ++++++++
	 untitledc.txt | 3 +++
	 3 files changed, 12 insertions(+)
	 create mode 100644 jetang.txt
	 create mode 100644 untitledc.txt
	looks good
	10:30 PM
	brntbeer	srinivas: sorry it's taken me so long. i believe i found the problem
	i'd love it if you could regenerate the key and do so with the rsa algoritm by typing "ssh-keygen -t rsa -f ~/github-yahoo"
	10:35 PM
	Jeff O.	make these changes in teacher-poetry?
	brntbeer	srinivas: and then `pbcopy < ~/github-yahoo.pub` this copies it to your keyboard if you are on linux or osx (i believe)
	then we can insert that key to the settings/ssh url of github.com. ensure that the first line of this is "ssh-rsa" after the paste
	Jeff Orr: yep, we're attempting to make changes to the clone of githubteacher repo. so a `git clone git@github.com:githubteacher/poetry.git teacher-poetry` to get that down locally. `cd teacher-poetry` and then make a change, do a pull, do a push and try to keep pushing
	tlberglund	git config --global branch.autosetuprebase always
	10:40 PM
	tlberglund	git config branch.master.rebase true
	srinivas	ok trying it
	brntbeer	srinivas: awesome. totally fine with getting you caught up on other things as well. dont stress if you feel behind =)
	srinivas	brent I tried that..but get the same problem
	young	View paste 
	bettercloth-lm:poetry-teacher youngbe$ git rebase --continue
	No rebase in progress?
	brntbeer	`git config --system --list` srinivas ?
	10:45 PM
	brntbeer	young: only need to type that if we're in a merge conflict
	during a rebase
	srinivas	I get this - fatal: unable to read config file '/usr/etc/gitconfig': No such file or directory
	Jeff O.	View paste 
	error: Ref refs/heads/master is at 5233a1fc1e54c8f19144c57d3f3ee15e382a774a but expected e9fbd0522f88762b63f3befd78465e5196d40f77
	remote: error: failed to lock refs/heads/master
	To git@github.com:githubteacher/poetry.git
	 ! [remote rejected] master -> master (failed to lock)
	error: failed to push some refs to 'git@github.com:githubteacher/poetry.git'
	someone pushed right as I was pushing
	pulling again
	brntbeer	srinivas: ok. just checking. a different yahoo employee had had a system level setting that was causing and error like this.
	srinivas	when I do ssh -vT git@github.com
	I see this, which maybe the problem
	View paste (3 more lines) 
	debug1: Offering RSA public key: /Users/sraovasu/.ssh/id_rsa
	debug1: Server accepts key: pkalg ssh-rsa blen 277
	debug1: Authentication succeeded (publickey).
	Authenticated to github.com ([207.97.227.239]:22).
	debug1: channel 0: new [client-session]
	debug1: Requesting no-more-sessions@openssh.com
	debug1: Entering interactive session.
	debug1: Remote: Forced command: gerve pointly b1:c1:09:bc:9d:ee:34:27:08:68:7f:f1:b9:a4:3e:60
	debug1: Remote: Port forwarding disabled.
	debug1: Remote: X11 forwarding disabled.
	debug1: Remote: Agent forwarding disabled.
	debug1: Remote: Pty allocation disabled.
	debug1: Remote: Forced command: gerve pointly b1:c1:09:bc:9d:ee:34:27:08:68:7f:f1:b9:a4:3e:60
	debug1: Remote: Port forwarding disabled.
	debug1: Remote: X11 forwarding disabled.
	...
	Jeff O.	srinivas: sounds like you have SSH Verbose on
	young	View paste 
	bettercloth-lm:poetry-teacher youngbe$ git pull
	You are not currently on a branch. Please specify which
	branch you want to merge with. See git-pull(1) for details.

	    git pull <remote> <branch>
	brntbeer	Jeff Orr: debugging to find why ssh isnt working
	srinivas	is it picking the wrong key? /Users/sraovasu/.ssh/id_rsa
	brntbeer	srinivas: you need to have a config file at ~/.ssh/config
	srinivas	I have it set for ~/github-yahoo
	yes I do - here it is
	brntbeer	if you have that there. it'll be read first.
	View paste 
	[/scratch/teacher-poetry]$ ssh -vT git@github.com
	OpenSSH_5.9p1, OpenSSL 0.9.8r 8 Feb 2011
	debug1: Reading configuration data /Users/brntbeer/.ssh/config
	debug1: /Users/brntbeer/.ssh/config line 1: Applying options for github.com
	debug1: Reading configuration data /etc/ssh_config
	debug1: /etc/ssh_config line 3: Applying options for *
	debug1: /etc/ssh_config line 7: Applying options for github.com
	debug1: Connecting to github.com [207.97.227.239] port 22.
	debug1: Connection established.
	debug1: identity file /Users/brntbeer/github-yahoo type 1
	debug1: identity file /Users/brntbeer/github-yahoo-cert type -1
	debug1: identity file /Users/brntbeer/github/ssh/id_github type -1
	debug1: identity file /Users/brntbeer/github/ssh/id_github-cert type -1
	srinivas	View paste 
	Host github.com
	  IdentityFile ~/github-yahoo
	brntbeer	can you type `ssh-add ~/github-yahoo` ?
	10:50 PM
	brntbeer	and then try the ssh -vT again and see if it reads the config
	srinivas	yes that I think worked
	at least I see chini21 and not pointly
	brntbeer	holy smokes.
	ok. haha. lets try that clone
	srinivas	yep worked this time
	brntbeer	that's so...crazt
	im so sorry for the run-around and complications
	the thing to do now is to be in your scratch directory and type "git clone git@github.com:githubteacher/poetry.git teacher-poetry" now
	srinivas	np..thx for ur help
	brntbeer	to create this teacher-poetry repository that you have push and pull access to
	and we can make changes to your master branch, you can `git pull origin master` and then `git push origin master` to push your changes up there
	or to do a fetch like Tim is doing now, and we can checkout a branch and make some changes on it and make some changes with it and push that back to the remote as well
	10:55 PM
	young	where I can get today training video link?
	Jeff T.	tim, could you show us your command history again?
	tlberglund	young: We don't record these classes.
	Hemanth	In a large complex project, how do we choose to use a new repo against a new folder in an existing repo. Which is a better practice?
	young	Oops.. I lost in the middle of today training..
	11:00 PM
	brntbeer	Thanks guys!~
	tlberglund	training@github.com
	Jeff H.	thanks
	young	thanks
	srinivas	thx brent and tim
	Yiwei C.	Thanks!
	Jeff T.	thank you
	ares	thank you.
	Jianhui H.	has left the room
	Neal	has left the room
	Hemanth	Thanks a lot!
	iwolf c.	Thank you
	Rax	Thanks a lot. :)
	Jeff O.	Thanks Time and Brent. good stuff!
	now to try to remember it all!
	er, Tim, not Time. it's late
	brntbeer	Jeff Orr: if it helps we'll have class notes with command line history!
	Jeff O.	awesome. thanks again, and good night/afternoon
