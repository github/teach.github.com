---
layout: bare
title: Private Online Class
description: Private Online Class Class Notes
tags: [notes,online,private]
path: classnotes/2013-03-21-private-online-class.md
eventdate: 2013-03-21
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Austin Spires ([Twitter](http://twitter.com/austinspires), [GitHub](https://github.com/aspires))

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

    git config user.name
    git config user.email
    git config --list
    git config user.name
    git config --global user.name "Tim Berglund"
    git config user.name
    git config user.email
    git config user.email "tlberglund@github.com"
    git config --global user.email "tlberglund@github.com"
    git config --list --global
    git config --global color.ui auto
    git config --global --unset core.autocrlf
    pwd
    git init newproject
    ls
    cd newproject
    ls
    ls -la
    tree .git
    cat .git/config
    tree .git
    git status
    vi raven.txt
    git status
    git add raven.txt
    git status
    git config color.ui
    git commit -m "Initial commit"
    git status
    vi raven.txt
    git status
    git raven.txt
    git add raven.txt
    git status
    git commit -m "Eagerly wished"
    git status
    ls
    vi raven.txt
    git status
    git diff
    git diff --stat
    git diff
    git add raven.txt
    git status
    git diff
    git diff --staged
    git status
    vi raven.txt
    git status
    git diff
    git diff --staged
    git diff
    git diff --color-words
    git diff --word-diff
    vi raven.txt
    git diff --word-diff
    git status
    git diff HEAD
    git diff HEAD --color-words
    git diff --staged
    git diff
    git diff HEAD
    git status
    git diff HEAD
    git status
    git add raven.txt
    git status
    git diff
    git diff --staged
    git diff HEAD
    git commit -m "Surcease of sorrow"
    git status
    git help log
    git log
    git config user.name
    git config user.email
    git log --format=raw
    git log --format=raw -1
    git log --format=raw -2
    git log --stat
    git log --patch
    git log --patch --stat
    git log --patch --stat --color-words
    git log --patch --color-words -1
    git log --graph
    git log --graph --format=oneline
    git log --graph --format=oneline --abbrev-commit
    git log --graph --format=oneline --abbrev-commit --te
    git log --graph --format=oneline --abbrev-commit --te --all'\n'
    git log --graph --format=oneline --abbrev-commit --te --all
    git lol
    git config --global alias.lol "log --graph --=online --abbrev-commit --decorate --all"
    git lol
    git config --global alias.lol "log --graph --=oneline --abbrev-commit --decorate --all"
    git lol
    ls
    generaterandomfiles 5 cruft txt
    ls
    rm cruft*.txt
    generaterandomfiles 6 cruft txt
    ls
    git status
    git add .
    git status
    git commit -m "Set up my cruft to clean up"
    git log --stat -1
    ls
    git rm cruft1.txt
    ls
    git status
    mv cruft2.txt
    rm cruft2.txt
    ls
    git status
    git rm cruft2.txt
    git status
    open .
    git status
    git add -u .
    git status
    git commit -m "Cleaned up most of my cruft"
    ls -l
    git rm --cached cruft6.txt
    git status
    ls
    git commit -m "Cleaned up the rest of my cruft"
    ls
    git status
    vi .gitignore
    git status
    ls
    git add .gitignore
    git commit -m "Added a gitignore"
    cat .git
    cat .gitignore
    mkdir target
    ls -l ~ > target/junk.listing
    git status
    mkdir build
    ls > build/Monkey.class
    ll ~ > console.log
    ls
    ls -l
    git status
    vi .gitignore
    git status
    git add .gitignore
    git commit -m "Improved my gitignore"
    git status
    tree
    mkdir -p src/main/resources
    ll  > src/main/resources/listing.log
    git status
    vi src/main/resources/.gitignore
    git status
    git status -y
    git status -u
    tree
    git add .
    git commit -m "Added a second .gitignore"
    ls
    ls -l
    rm console.log
    rm cruft6.txt
    rm -rf build
    rm -rf target
    ls -l
    cat .gitignore
    git lol
    tree -L 1 .git
    tree .git/objects
    tree .git/objects | less
    ls
    rm -rf src
    git status
    git add -u .
    git commit -m "more cleanup"
    git status
    ls
    generaterandomfiles 5 file txt
    mkdir files
    git status
    ls
    git add .
    git commit -m "Files to move"
    git log --stat -1
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    open .
    git status
    git add -A .
    git status
    git commit -m "Moved files"
    git log --stat -1
    git log --stat -1 -M
    ls -l ~ > listing.txt
    cat listing.txt
    git add .
    git commit -m "Longer file"
    vi listing.txt
    git status
    git add -A .
    git status
    git commit -m "Moved AND CHANGED a file"
    git log --stat -m -2
    git log --stat - -2
    git log --stat -M -2
    git log --stat -M -1
    git log --stat -1 -M76
    git log --stat -1 -M74
    vi files/listing.txt
    git add .
    git commit -m "Moved after changing"
    git log --stat
    git log --stat -- files/listing.txt
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M80 --follow -- files/listing.txt
    git lol
    git commit --amend
    git lol
    git status
    export PS1="$"
    export PS1="$ "
    tr.git
    cd scratch/newproject
    tr.git
    cd scratch
    export PS1="$ "
    cd newproject
    ls
    while :\ndo\nclear\ngit lol\nsleep 1\ndone
    cat ~/scripts/git-loglive
    git loglive
    cat ~/scripts/git-loglive
    while :\ndo\nclear\ngit lol\nsleep 1\ndone
    git loglive
    git branch
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/HEAD
    git branch feature
    tree .git/refs
    git branch
    git status
    ls
    vi raven.txt
    git add .
    git status
    git commit -m "Nameless here"
    cat raven.txt
    git checkout feature
    git branch
    git status
    cat .git/HEAD
    cat raven.txt
    vi raven.txt
    git status
    git add .
    git commit -m "Quaint and curious"
    git lol -10
    git checkout master
    cat raven.txt
    git branch
    git diff feature
    git merge feature -m "Merged feature branch"
    cat raven.txt
    git branch -d feature
    git branch feature 2e8c
    git branch -d feature
    git branch feature 2e8c
    git branch -d feature
    vi raven.txt
    git add .
    git commit -m "Rusltling curtains"
    git commit --amend
    git branch feature2 60d533e
    git checkout feature2
    vi raven.txt
    ls
    vi tolkien.txt
    git status
    git add .
    git commit -m "Set up for conflict"
    git lol -10
    git checkout master
    git merge feature2
    git status
    vi raven.txt
    git status
    cat raven.txt
    git status
    git add raven.txt
    git status
    git commit
    git branch -d feature2
    git branch feature3
    git branch
    ls -l
    vi raven.txt
    git add .
    git commit -m "Nearly napping"
    git checkout feature3
    vi raven.txt
    git add .
    git commit -m "Some visitor"
    git checkout master
    git merge feature3
    git log --format=raw -1
    git branch -d feature3
    git branch feature4
    git checkout feature4
    vi tolkien.txt
    git add .
    git commit -m "Deep roots"
    ls
    vi README.md
    git add .
    git commit -m "Added a README"
    git lol -10
    git checkout master
    git merge feature4
    git loglive -15
    git loglive -20
    git branch -d feature4
    ls
    vi raven.txt
    git add .
    git commit -m "Gently rapping"
    git checkout -b feature5 ac678
    vi tolkien.txt
    git add .
    git commit -m "Fire"
    vi tolkien.txt
    git add .
    git commit -m "Light from shadow"
    cat raven.txt
    cat tolkien.txt
    git lol -10
    git lol -8
    git rebase master
    ls
    git checkout master
    git merge feature5
    git branch -d feature5
    git branch feature5
    git reflog
    vi tolkien.txt
    git add .
    git commit -m "Buggy Tolkien"
    cat tolkien.txt
    git reset --hard 9159
    cat tolkien.txt
    git reflog
    git reset --hard HEAD@{1}
    cat tolkien.txt
    git reset --hard HEAD^
    git reflot
    git reflog
    ll .git/objects/1e
    ls
    git checkout feature5
    cd files
    tree
    tree ..
    git loglive -15
    generaterandomchanges 10 random txt
    git lol
    git rev-parse HEAD~10
    git rebase -i HEAD~10
    git loglive -20
    vi random7.txt
    git status
    git add .
    git rebase --continue
    git rebase -i HEAD~10
    git log --stat -1
    git checkout master
    git merge feature5
    git branch -d feature5
    git rebase --abort
    cd newproject
    ls
    ll
    git remote
    git remote add origin https://github.com/githubteacher/poetry.git
    git remote
    git remote v
    git remote -v
    git remote show origin
    cd ..
    cat .git/config
    git push -u origin master
    ll ~/.ssh
    ssh-keygen -f ~/.ssh/monkey
    ll ~/monkey
    ll ~/.ssh/monkey
    ll ~/.ssh/
    rm ~/.ssh/monkey
    rm ~/.ssh/monkey.pub
    cat ~/.ssh/config
    cat /etc/ssh_config
    ssh-keygen -f github-class
    vi ~/.ssh/config
    ll
    rm github-class*
    ssh-keygen -f ~/.ssh/github-class
    cat ~/.ssh/github-class.pub
    ls
    vi tolkien.txt
    git add .
    git commit -m "Finished Tolkien"
    git branch -a
    git lol -10
    git status
    git push
    git remote set-url origin git@github.com:githubteacher/poetry.git
    git push
    git fetch
    git log -2
    git log origin/master -2
    git merge origin/master
    cat tolkien.txt
    ls
    vi raven.txt
    git add .
    git commit -m "Some late visitor"
    git pull
    git push
    pwd
    ls
    cd ..
    ls
    git clone git@github.com:githubstudent/poetry.git
    ll
    cd poetry
    ls
    ls -l
    git remote show origin
    vi ozymandias.txt
    git add .
    git commit -m "Shelly FTW"
    vi ozymandias.txt
    git add .
    git commit -m "SHelly conflict"
    git push
    git push
    git remote set-url origin https://github.com/githubstudent/poetry.git
    git push
    git fetch
    git status
    git diff origin/master --stat
    git diff origin/master -- README.md
    git diff origin/master -- raven.txt
    git pull
    git push
    git pull https://github.com/githubstudent/poetry.git master
    git status
    vi ozymandias.txt
    git add ozymandias.txt
    git commit
    git status
    git push
    git fetch
    git loglive -15
    git push
    git pull
    git push
    git lol
    git remote -v
    git remote add upstream git@github.com:githubteacher/poetry.git
    git pull upstream master
    git lol
    git status
    git push
    git remote -v
    cd ..
    git clone git@github.com:githubteacher/poetry.git teacher-poetry
    cd teacher-poetry
    ls
    vi ozymandias.txt
    git add .
    git commit -m "Lifeless things"
    git push
    git pull && git push
    git loglive -10
    git pull && git push
    git lol
    git pull
    git lol
    git config --global branch.autosetuprebase always
    git config --local branch.master.rebase true
    git pull
    vi ozymandias.txt
    git add .
    git commit -m "Fixed lines"
    git pull
    git push
    git pull
    git loglive -10
    git loglive -18
    git pull
    git loglive -15
    git pull
    git show 69d3
    git pull
    git push
    git pull
    git checkout -b tlberglund
    vi ozymandias.txt
    git mv ozymandias.txt ozymandias.md
    git add .
    git commit -m "MOAR Shelley"
    git push -u origin tlberglund
    git branch -a
    git fetch
    git loglive -20
    git loglive -18
    git fetch
    git checkout master
    git merge tlberglund
    git merge origin/philips
    git loglive -15
    git branch -a
    git checkout amberry
    git branch -a
    git remote show origin
    git log --patch -1
    vi foo.md
    git add .
    git commit -m "More markdowny"
    git push
    git branch -a


## Chat History
	Amit T.	Is this session getting recorded?
	tlberglund	Amit: No, it's not.
	8:05 AM
	technoweenie	brb
	Andy R.	has entered the room
	Maciek W.	london
	Vivek P.	India - bangalore
	Rick B.	Champaign, IL, USA
	Christopher S.	Lockport NY (north of buffalo)
	Jens J.	Richardson, TX
	Henry A.	Burbank
	ryan n.	has entered the room
	Philip S.	Champaign
	Aditya M.	bangalore, india
	Shilpa V.	Sunnyvale, CA
	Bao T.	sunnyvale, ca
	Vishal S.	Burbank, CA
	nikhil	bangalore
	Jackson	Sunnyvale, CA
	Jennifer D.	has entered the room
	Jennifer S.	i'm from Los Angeles, CA
	Adam B.	I work in Champaign, IL, but currently I'm in Evansville WI
	anwesha	Santa Monica, CA
	Sriram I.	Sunnyvale, CA
	technoweenie	i'm in south dakota
	Joe M.	burbank, ca
	Ann R.	Castle Rock, CO
	regis c.	sunnyvale, ca
	Jennifer D.	Sunnyvale, CA
	ryan n.	santa monica
	David B.	has entered the room
	Jeff B.	has entered the room
	Ray P.	sunnyvale, ca
	lalau	Santa Monica, CA
	Tony L.	has entered the room
	David B.	London,UK
	Sneha M.	Complete New
	Jennifer S.	new to Git.
	Joe M.	complete noob
	nikhil	new to Git
	Christopher S.	noob
	Jens J.	newb
	Ann R.	New to GIT
	Jennifer D.	A beginner, used a little bit.
	Vishal S.	noob
	Rick B.	some experience
	Sriram I.	noob
	Bao T.	some experience, coming from svn
	Vivek P.	some commit pushes ... and stash commands I use
	Adam B.	I've been working some with git, I think I'm like a 4/10
	Jeff B.	used the basics for a while
	ryan n.	A beginner, used a little bit.
	Henry A.	new to git
	Shilpa V.	used Git in the past
	Aditya M.	a little experience
	regis c.	know the basics 3/10
	Ray P.	some experiences
	Lars A.	has entered the room
	Dan M.	has entered the room
	Lambert M.	has entered the room
	8:10 AM
	Jan	has entered the room
	Philip S.	1.8.1.3
	Christopher S.	git version 1.7.5.4
	Jens J.	View paste 
	git version 1.7.9.6 (Apple Git-31.1)
	Rick B.	1.8.1.3
	Tony L.	1.8.1.3
	Maciek W.	1.7.5.4
	Vivek P.	git version 1.7.10.2
	Ray P.	git version 1.7.12
	Bao T.	git version 1.7.12.4 (Apple Git-37)
	Adam B.	1.8.2 from homebrew
	Henry A.	1.7.12
	Jeff B.	git version 1.7.10.2 (Apple Git-33)
	ryan n.	 1.7.12.4
	Shilpa V.	1.7.10.2
	anwesha	git version 1.7.12.4
	Lars A.	git version 1.7.10.2 (Apple Git-33)
	Jackson	git version 1.7.10.2 (Apple Git-33)
	Jennifer D.	View paste 
	git version 1.7.10.2 (Apple Git-33)
	lalau	git version 1.7.12.4 (Apple Git-37)
	Vishal S.	View paste 
	$ git --version
	git version 1.7.10.2 (Apple Git-33)
	David B.	git version 1.7.10.2 (Apple Git-33)
	Sriram I.	1.8.1
	Tony H.	git version 1.7.12
	Jennifer S.	1.8.1
	Aditya M.	git version 1.7.5.4
	Lambert M.	git version 1.7.12.4 (Apple Git-37)
	Jennifer D.	laptops :)
	Ray P.	git-1.7.12_Y1.4.1.2
	Pradipta	has entered the room
	ravilr	has entered the room
	regis c.	1.7.10.2 (Apple Git-33)
	8:15 AM
	Chuck S.	has entered the room
	Sneha M.	how do I install git?
	technoweenie	Sneha: what OS are you on?
	Sneha M.	linux
	Jennifer D.	if you go on your desktop you can install using yinst install git
	nikhil	If you have RHEL box, you can type yinst i git
	technoweenie	http://git-scm.com/download/linux
	Jennifer D.	'user configuration' == global configuration?
	Sneha M.	does it uninstall svnlite?
	technoweenie	Yes, global means across all of your git repositoires
	Sneha: I'm not sure, I don't see why it'd uninstall svnlite though
	Philip S.	could we get a copy of the notes?
	Sneha M.	View paste 

	yinst: ysubversion_perl-1.6.17_1_5.10: install pending ...
	yinst: svnlite-1.6.11_3: deactivating ... [OK]
	Jennifer D.	View paste 
	yinst:   X svnlite-1.6.11_4
	yeah you should create a new yroot
	Ann R.	Notes would be very helpful.
	Jennifer D.	if you can't have it uninstall svnlite
	Jennifer S.	should i see some screen, or what?
	i can't see any command, only the sound.
	Christopher S.	i see it
	Jennifer D.	yes see you typing stuff
	Andy R.	I do
	Tony L.	I see it
	regis c.	yes
	Henry A.	yes
	Ann R.	Yes
	Lambert M.	yes
	Rick B.	I see it.
	lalau	I see it
	David B.	yup
	Joe M.	yes
	8:20 AM
	Jennifer S.	where to see?
	Sneha M.	yes
	ryan n.	yep
	Amit T.	Yes, it opens up on a different window than your browser
	technoweenie	Ann: What notes specifically are you referring to?
	Jennifer S.	i got it
	Jennifer D.	what should we use for email configuration ? if we connect to multiple different repos some public some yahoo is there isolation here?
	Bao T.	\
	Jennifer S.	a black window, right?
	technoweenie	yes
	he swaps between slides and his terminal
	Jennifer D.	ie not wanting work email to show up in public repo interaction, yet people being able to know how to contact direct
	or does it even matter?
	technoweenie	Jennifer D: this is where you can setup a different configuration per repo if you want
	8:25 AM
	Christopher S.	yep
	Tony L.	how do you un-set it?
	technoweenie	git config --global --unset core.autocrlf
	totally ripping tim off here :)
	Tony L.	thx
	8:30 AM
	Christopher S.	seems 1.7.5.4 fills the current dir with files on mac
	technoweenie	what files?
	Christopher S.	my mistake, i think i know what these are
	8:35 AM
	tlberglund	View paste 
	Ah distinctly I remember it was in the bleak December
	And each separate dying ember wrought its ghost upon the floor
	8:40 AM
	Sneha M.	no need of ticket?
	Lars A.	lol
	Sneha M.	sorry
	technoweenie	Not every commit needs to reference a ticket
	It may be a good idea with your team's development workflow, but Git doesn't require anything like that
	tlberglund	Eagerly I wished the morrow -- vainly I had sought to borrow
	Jennifer D.	so 'add' is like a staging aspect
	technoweenie	Yes
	you can also do `git commit -am "..."` The -a lets you bypass the step of adding files manually
	Bao T.	\
	David B.	To get colors working in terminal on OS X I needed to:
	View paste 
	git config --global color.branch auto
	git config --global color.diff auto
	git config --global color.status auto
	git config --global color.ui auto
	Bao T.	I seem to be able to commit without adding, is that bad?
	8:45 AM
	Jennifer D.	what happens if you do git status after not adding?
	technoweenie	Bao: can you paste your full commit? you might have something in your config
	Bao T.	View paste 
	Baos-MacBook-Pro:newproject baotran$ vim raven.txt 
	Baos-MacBook-Pro:newproject baotran$ git commit raven.txt 
	[master 1283828] One test.
	 1 file changed, 1 insertion(+), 1 deletion(-)
	Baos-MacBook-Pro:newproject baotran$ git status
	# On branch master
	nothing to commit (working directory clean)
	technoweenie	your full config*
	git config --list
	Bao T.	View paste 
	Baos-MacBook-Pro:newproject baotran$ git config --list
	user.name=Bao Tran
	user.email=baotran@yahoo-inc.com
	color.ui=auto
	core.autocrlf=input
	core.repositoryformatversion=0
	core.filemode=true
	core.bare=false
	core.logallrefupdates=true
	core.ignorecase=true
	core.precomposeunicode=false
	technoweenie	bao: oh, you typed `git commit raven.txt`
	that will add and commit the file for you
	Bao T.	ahhh okay
	coming from svn :)
	tlberglund	Bao: Yup! That's a very SVN-y way to do it. Don't, though. :)
	Bao T.	thanks
	haha ok, will do
	Sneha M.	View paste 
	1 file changed, 1 insertion(+)
	 what is the 1 insertion means here?
	Vivek P.	how do you revert back the changes done before commit?
	technoweenie	so with git, you'd normally add every file manually, and make one commit for all the changes
	tlberglund	It works, but it will create bad habits here. :)
	technoweenie	sneha: it means you added a line to the file
	8:50 AM
	technoweenie	if you run `git show`, you can see the most recent commit:
	View paste (3 more lines) 
	$  g show
	commit 6fb9fe66d0c93c77a20a3f49d59c8c1e06e18c5e
	Author: risk danger olson <technoweenie@gmail.com>
	Date:   Thu Mar 21 09:46:59 2013 -0600

	    sup

	diff --git a/raven.txt b/raven.txt
	index 119558f..c2d5e12 100644
	--- a/raven.txt
	+++ b/raven.txt
	@@ -1,2 +1,3 @@
	 Ah distinctly I remember it was in the bleak December
	-And each separate dying ember wrought its ghost upon the floor
	\ No newline at end of file
	...
	View paste 
	1 file changed, 2 insertions(+), 1 deletion(-)
	The inserted lines have a + in the the front, and the deletions have a -.
	My example is a bit strange, it looks like I deleted and then re-inserted the line back in
	vivek: I believe Tim will be going over that. There are two ways to revert changes
	tlberglund	View paste 
	Ah distinctly I remember it was in the bleak December
	And each separate dying ember wrought its ghost upon the floor
	Eagerly I wished the morrow -- vainly I had sought to borrow
	From my books surcease of sorrow—sorrow for the lost Lenore
	technoweenie	`git revert` will basically commit a reverse of the commit. So if you added a line, reverting it would remove that line
	I think we should wait for Tim to get to this part of the training though
	Christopher S.	can you specify a diff to a certain file?
	Bao T.	yup
	git diff filename
	8:55 AM
	Christopher S.	thought it was simple like that
	technoweenie	yes, you can add the file name after --
	git diff {whatever} -- file.txt
	Sneha M.	--staged
	sorry
	Ann R.	I was taking notes - what is the diff btw $git diff and $git diff --staged?
	technoweenie	Ann: it shows the diff with what you have staged for the next commit
	Ann: after you use `git add` to stage a file for commit, `git diff` won't show anything. You'll have to use `git diff --staged` to show the the diff between what's staged and your most recent commit
	Yes, exactly what Tim is saying now :)
	Sneha M.	how do i see the file on stage and commit
	9:00 AM
	Vivek P.	git add
	Amit T.	git commit
	Bao T.	add again
	technoweenie	I'm actually not sure how to see the content in staging
	Sneha: you want to show the diff between staging and the history, leaving out any changes in the working directory?
	I'm looking around
	Tony L.	I have a raven.txt~ file from emacs... can I make git ignore it?
	Sneha M.	svn shows web view
	Andy R.	What's the difference between diff --stage and --cached?
	Sneha M.	does git has similar to that?
	technoweenie	Andy: those are aliases of each other
	Sneha M.	:)
	Vivek P.	what if i realize one of the commits that i have made is something i did not want to commit?
	Andy R.	:)
	regis c.	how to remove a file that has been staged?
	thanks
	technoweenie	Be very careful with `git reset` and use it *exactly* how git tells you :)
	9:05 AM
	technoweenie	Sneha: Git doesn't have a built-in web view, but there are lots of options
	Philip S.	if you do git add or git commit without specifying the file names, would git pick up all the relevant files recursively from the current directory?
	Adam B.	git add . right?
	Sneha M.	at what time is the session tomorrow? Do we need another registration?
	technoweenie	git commit can use -a
	but it won't commit new files, you always have to add those with `git add`
	Ann R.	I missed the command you entered to get help
	technoweenie	The Git docs are on the web too: http://gitscm.com/docs
	`git help log`
	you can do that with any git command
	Adam B.	how can i conifg to make diff/log etc write to stdout
	technoweenie	is it piping it to less or something?
	Amit T.	collaboration?
	Adam B.	because its distributed, not linear
	Tony L.	multiple users?
	9:10 AM
	Adam B.	and yes to less
	Jens J.	database free?
	Jeff B.	distributed development
	Bao T.	security
	Andy R.	Because each git commit is a snapshot.
	Adam B.	its not critical, but stdout would be nicer
	technoweenie	adam: try adding --no-pager
	Jeff B.	what's the probability of hash collisions?
	Jens J.	CS nerd
	technoweenie	adam: Git has some pager options you can set
	Jeff B.	sorry, but is there a collision resolution mechanism?
	technoweenie	adam: you can turn off the pager for everything with `git config --global core.pager ''`
	Adam B.	did that, and tried system, still piping to less. weird. Nevermind, I'll find the config later
	Ann R.	Do we configure name and email every time that we launch GIT?
	technoweenie	Adam: Check for GIT_PAGER or PAGER env vars
	Ann: nope. Once you set the --global config, it's saved forever on that machine
	Adam B.	PAGER is set to less
	thanks
	9:15 AM
	Sneha M.	linked list?
	Jennifer D.	git config --global core.pager cat
	Jens J.	more cs nerding
	;)
	Jennifer D.	:)
	Adam B.	thanks jennifer d
	Jens J.	for Jeff B.: nice answer: http://stackoverflow.com/questions/9392365/handle-a-sha-1-collision-on-a-blob
	Jeff B.	to Jens: thanks
	tlberglund	git log --patch
	9:20 AM
	tlberglund	git log --graph
	git log --graph --format=oneline --abbrev-commit
	Vivek P.	View paste 
	git log --graph --fromat=oneline
	fatal: unrecognized argument: --fromat=oneline
	technoweenie	vivek: you misspelled format
	tlberglund	git config --global alias.lol "log --graph --format=online --abbrev-commit --decorate --all"
	git config --global alias.lol "log --graph --format=oneline --abbrev-commit --decorate --all"
	9:25 AM
	Vivek P.	thanks technowenie
	Lambert M.	Is there a command to see what's in our alias settings? get a list of alias that I added?
	Ray P.	git config --global --list
	Vivek P.	git config --list should give you
	9:35 AM
	Lambert M.	cool, thanks Ray, Vivek
	technoweenie	Let's do this!
	9:40 AM
	tlberglund	Statistics nerdery!
	Adam B.	I think that looks normal with a small stdev
	Jennifer D.	lol :)
	Jens J.	the nierding way
	Vivek P.	lol is an alias now :)
	tlberglund	Jens: Dune nerdery.
	I can't believe that just happened.
	Ann R.	Since I am new, seeing those commands in contxt really helps.
	Jens J.	neird ^^2
	i cant write knuth up arrow notation here can i?
	tlberglund	Totes
	Adam B.	off by one error ;)
	9:55 AM
	Joe M.	is each rule in .gitignore read sequentially so that later rules may override previous ones?
	10:00 AM
	technoweenie	I believe so
	Joe M.	thanx
	10:10 AM
	Aditya M.	has left the room
	10:20 AM
	tlberglund	git log --stat -M --follow -- files/listing.txt
	10:25 AM
	Jan	Your last commit msg should have read: "Changed after moving" :)
	Vivek P.	what does 25 insertions mean?
	technoweenie	vivek: that's how many lines in the diff were added
	Vivek P.	ok
	Tony L.	 can you amend an earlier commit?
	10:30 AM
	Ann R.	MjMr918992
	tlberglund	View paste 
	$ while :
	 > do
	 > clear
	 > git lol
	 > sleep 1
	 > done
	10:35 AM
	Adam B.	hashes
	Vivek P.	the hash
	tlberglund	View paste 
	Ah distinctly I remember it was in the bleak December
	And each separate dying ember wrought its ghost upon the floor
	Eagerly I wished the morrow—vainly I had sought to borrow
	From my books surcease of sorrow—sorrow for the lost Lenore
	From that rare and raidiant maiden whom the angels named Lenore
	Nameless here forevermore
	10:40 AM
	tlberglund	View paste 
	Once upon a midnight dreary as I pondered weak and weary
	Over many a quaint and curious volume of forgotten lore
	Chuck S.	Which branch did the last commit go into?
	10:45 AM
	Bao T.	feature
	tlberglund	And the silky sad uncertain rustling of each purple curtain
	10:50 AM
	technoweenie	your commit msg has a typo :)
	yup
	tlberglund	View paste 
	Made me really really scared
	So that now to still the beating of my heart I stood repeating
	View paste 
	All that is gold does not glitter
	Not all who wander are lost
	Bao T.	oooo
	10:55 AM
	Joe M.	quick lesson on git clone?
	ah np :)
	Andy R.	Thank you!
	Joe M.	Thank you, see you tomorrow!
	technoweenie	Thanks everyone
	Tony L.	thanks!
	Ray P.	Thanks.
	Jennifer D.	Will you do samples of how teams can work together towards the end tomorrow?
	Ann R.	Great stuff!
	regis c.	has left the room
	Jennifer D.	guess I'll ask tomorrow :)
	Vivek P.	Gr888888
	11:00 AM
	tlberglund	Jennifer: You bet.
	That's all a part of what we do with GitHub tomorrow.
	Joe M.	has left the room
	tlberglund	It's not exhaustive in the Foundations class, but you'll have a good idea of how to begin.
	Jennifer D.	awesome. that's my big concern.. translating team workflow to github
	(From svn, etc)
	tlberglund	Right. Important to get that right.
	Jennifer D.	'best practices', etc.
	thanks!
	anwesha	has left the room
	tlberglund	You bet!
	Jennifer D.	looking forward to tomorrow's training!
	tlberglund	You guys were awesome. See you in 21 hours. :)
	Ann R.	has left the room
	11:05 AM
	Lambert M.	Thank you, see you tomorrow Tim.
	
	Jennifer S.	how can i have the class notes of today and yesterday?
	Lambert M.	has entered the room
	Tony H.	yesterday there was a link to the presentation materials. could you show us that link again?
	Jennifer D.	Jennifer S .. I think they said towards the end of today
	tlberglund	http://teach.github.com/presentations/git-foundations.html
	Vivek P.	has entered the room
	Jennifer S.	yes, got it, thanks,
	8:05 AM
	anwesha	has entered the room
	Henry A.	has entered the room
	ryan n.	has entered the room
	Jennifer D.	currently perl (service engineer),
	nikhil	RHEL
	Bao T.	objC
	Andy R.	Perl and Java
	Adam B.	Java with Hadoop and Eclipse
	Maciek W.	java, c++
	Vivek P.	PHP, JS, CSS, LESS, JADE
	Shilpa V.	developer: Java, Nodejs
	Jan	java
	Rick B.	Java/Hadoop
	Chuck S.	Perl
	Jennifer S.	perl
	Lars A.	Java
	Henry A.	linux c/c++
	Philip S.	java
	nikhil	PHP, Javascript
	Jens J.	bash!
	Tony L.	JavaScript, HTML, PHP, Obj C
	ryan n.	js,php
	Christopher S.	support scripting for sa service reliability
	perl
	Andy R.	Hadoop
	Ann R.	New Instructor getting an idea of tools our folks use.
	Jackson	JS, CSS, HTML, PHP
	Jennifer D.	<3 Jens!
	Lambert M.	java, objective-c
	aspires	Ruby's my main language over here at GitHub :)
	Ray P.	has entered the room
	Jeff B.	has entered the room
	Tony L.	colleague mentioned something called "cherry picking"
	Vivek P.	yeah even i have the same question
	Adam B.	any chance we could talk about merge strategies?
	Jennifer D.	Team collaboration, best practices but you mentioned later today would cover
	Dan M.	has entered the room
	8:10 AM
	Andy R.	View paste 
	1. Security best practices using Git/GitHub in prod.What's the main difference between Git and Mercurial(Hg)?
	Chuck S.	What determines the colors in the "graphical" merge diagram?
	8:15 AM
	aspires	Chuck S. Git comes with color configuration out of the box.
	I don't know if that what Tim has right now, but it appears so.
	http://git-scm.com/book/en/Customizing-Git-Git-Configuration#Colors-in-Git for more info
	Vivek P.	can you repeat that again
	Jens J.	i was just keeping quiet
	tlberglund	Jens: :)
	Vivek P.	yes the 2 parents part
	tlberglund	Jens: No need to keep quiet. :)
	8:20 AM
	Vivek P.	ok thanks
	tlberglund	View paste 
	All that is gold does not glitter
	Not all who wander are lost
	The old that is strong does not wither
	Deep roots are not harmed by the frost
	Adam B.	that explains [partly] the octocat
	aspires	Adam: Its definitely a factor :)
	8:25 AM
	tlberglund	As of someone gently rapping, rapping at my chamber door
	Chuck S.	Is "re-parenting" a fair synonym for rebasing?
	8:30 AM
	Vivek P.	but isn't not same as HEAD?
	tlberglund	From the ashes a fire shall awaken
	aspires	Chuck: not exactly. You can use rebase to re-parent, but you can do a lot of cool things with rebase. So, it's not a pure synonym
	tlberglund	A light from the shadows will spring
	Vivek P.	does rebase also merge?
	merge happened
	Adam B.	because the tree has changed, so the hash does
	Chuck S.	tree changed
	Vivek P.	and the hash changed
	aspires	Vivek: It's not quite a merge. Rebase actually rewrites history.
	8:35 AM
	aspires	It may look the same, functionally, but it's not identical.
	Dan M.	what will happen if there are conflicts?
	Tony L.	fast forward?
	Andy R.	fast forward
	Vivek P.	fast fow
	8:40 AM
	Vivek P.	what happens if someone else commits to master
	how do i get the updates?
	sure
	8:45 AM
	Jens J.	so what happened to that change, is it orphaned
	Amit T.	On a reset, does one lose the local changes too?
	Vivek P.	is it 60 days by default?
	Adam B.	so untracked files are unaffected by a reset?
	Vivek P.	what if i have stashed?
	what if i have stashed?
	aspires	Vivek: It is 60 days by default, but this can be changed
	Vivek P.	okay
	8:50 AM
	aspires	I do `rebase -i` just about every day for the very reason Tim talked about
	9:00 AM
	Ann R.	has left the room
	anwesha	has left the room
	Vivek P.	is this rebasing also known as cherry picking?
	Chuck S.	what if you forget what you were doing?
	Jennifer D.	this is like super awesome
	you can modify your local set of changes and tidy it all up
	Jens J.	yeah, i didnt see anything like rebase squashing in svn
	aspires	
	Jeff B.	is there a set of best practices somewhere for rebasing and flattening commits?
	9:05 AM
	Adam B.	what about squash v fixup?
	Jennifer D.	so git.corp.yahoo.com or something else?
	9:10 AM
	Jens J.	ahh cant get nothin done w/o those unicorns
	Jennifer D.	https://github.com/githubteacher/poetry
	tlberglund	Jens: Indeed no.
	Tony L.	can you paste the add origin command again?
	tlberglund	git remote add origin https://github.com/githubteacher/poetry.git
	9:15 AM
	Jens J.	so is "origin" just a name/alias?
	aspires	Jens: yes
	oops :)
	Jens J.	ok
	Rick B.	yep
	Tony L.	yes
	Vivek P.	yes
	Joe M.	yes
	Chuck S.	Where did "origin" come from?
	tlberglund	https://github.com/githubteacher/poetry
	aspires	Chuck: where did we get the server location, or where did the term "origin" come from?
	9:20 AM
	Jennifer D.	this is the exciting part!
	haha!
	Bao T.	lol
	Chuck S.	What does "origin" represent?
	Is it a reserved word? a name we gave something? a command?
	aspires	Origin is a common term for your main remote server
	but it can be anything
	often people will have several remote servers for a repository, and each can be named something unique
	when you do a git push or a git pull command, it will be oriented at a server
	Tim will go into that a bit more after the break
	9:25 AM
	Chuck S.	thx. I guess I missed the step in which we named it "origin".
	aspires	the command is `git remote add origin https://github.com/githubteacher/poetry.git`
	`add origin` is the naming step
	Chuck S.	thanks for that.
	9:35 AM
	Jennifer D.	did people actually make non-yahoo git hub accounts?
	Jens J.	sure - there are tons of cool non-yahoo projects
	tjtag for bus pirate ;)
	Jennifer D.	No, I mean I made one but have other people created theirs
	tlberglund	ssh-keygen -f github-class
	9:40 AM
	tlberglund	vi ~/.ssh/config
	View paste 
	Host github.com
	  IdentityFile ~/.ssh/github-class
	ssh-keygen -f ~/.ssh/github-class
	Christopher S.	why not move the file?
	tlberglund	cat ~/.ssh/github-class.pub
	Jennifer D.	the guide if you are lost .. https://help.github.com/articles/generating-ssh-keys
	aspires	github.com/settings/ssh
	9:45 AM
	Ann R.	has entered the room
	Ann R.	Hello
	aspires	Hi Ann!
	tlberglund	https://github.com/githubteacher/poetry
	9:55 AM
	Chuck S.	Is remote considered "upstream" from local git repository?
	Please define upstream and downstream relative to local and remote repos.
	Adam B.	merge
	Ray P.	git checkout origin/master
	Jennifer D.	git merge origin/master ?
	Vivek P.	merge origin/master
	Adam B.	git merge origin/master
	aspires	Chuck: we'll actually get to working with an upstream remote soon
	10:00 AM
	tlberglund	https://github.com/githubteacher/poetry
	Chuck S.	ok but instructor is referring to upstream and downstream for past several minutes - hard to follow without definition
	thx for definition
	why is README type md?
	Adam B.	its markdown
	which github supports
	Chuck S.	ok
	aspires	hit `m` anywhere on the site for a markdown cheatsheet
	Adam B.	thats cool
	10:05 AM
	aspires	theres all sorts of neat little things in GitHub
	tlberglund	git clone git@github.com:githubstudent/poetry.git
	Adam B.	m works on git.c btw as well
	for the cheatsheet
	Chuck S.	View paste 
	fatal: Unable to find remote helper for 'https'
	I think a typo in my userID caused this error.
	aspires	Chuck S can you paste in the command you just ran?
	Chuck S.	git clone https://github.com/cshedon/poetry.git
	but my userID should be csheldon
	aspires	ah
	Pradipta	Chuck, u clicked on HTTP
	aspires	run `git clone git@github.com:cshedon/poetry.git`
	Pradipta	get the SSH URL
	Chuck S.	got it
	aspires	
	Chuck S.	worked! thx
	10:10 AM
	Tony L.	View paste 
	When I pushed I saw "warning: push.default is unset; its implicit value is changing in
	Git 2.0 from 'matching' to 'simple'."  Is that something to worry about?
	Jennifer D.	cshedon or csheldon?
	Chuck S.	View paste 
	wait: fatal: Could not read from remote repository.
	View paste 
	Permission denied (publickey).
	maybe my acct is not setup right
	Vivek P.	for me The poetry network graph is not loading on the gui
	aspires	Chuck: did you set up an ssh publickey earlier in the lesson?
	Chuck S.	I guess not. Will look into that.
	aspires	Chuck I'll paste in the instructions
	Chuck S.	thx
	aspires	ssh-keygen -f github-class
	vi ~/.ssh/config
	tlberglund	ssh-keygen -f ~/.ssh/github-class
	First one was my mistake
	aspires	then include this:
	View paste 
	Host github.com
	  IdentityFile ~/.ssh/github-class
	10:15 AM
	aspires	pbcopy < ~/.ssh/github-class.pub
	that puts the key on your clipboard
	then add it to GitHub at github.com/settings/ssh
	Chuck S.	View paste 
	bash: pbcopy: command not found
	aspires	cat ~/.ssh/github-class.pub
	and copy/paste the old fashioned way
	10:20 AM
	Jennifer D.	what is the 'noone assigned' mean?
	Philip S.	what code review tool is supported by git?
	Adam B.	fisheye too
	Chuck S.	aspires: I copied manually and github settings show my public key but I still get perm denied.
	don't worry about it. I'll just listen for now.
	aspires	Chuck -- what happens when you use `ssh -T git@github.com`
	Adam B.	git pull
	Andy R.	git pull
	10:25 AM
	Tony L.	I don't see the new merges after I do a git fetch
	Chuck S.	View paste 
	aspires:  Permission denied (publickey).
	10:30 AM
	nikhil	has left the room
	Adam B.	could you rebase the remote commits?
	rather than pull?
	ryan n.	so to push to our remote origin, we need to pull from upstream. then push to origin
	?
	Adam B.	that was what I meant, ok
	Vivek P.	diff between origin and upstream ... i mean what it means?
	10:35 AM
	tlberglund	git remote add upstream git@github.com:githubteacher/poetry.git
	git pull upstream master
	Vivek P.	i got a conflict
	10:40 AM
	Jennifer D.	so when someone does a "pull request"
	who is 'pulling'
	so when you 'pull' you pulled in updates
	so you are a pull requestor when you provide an update
	Tony L.	can there be more than one owner of a repo?
	Andy R.	Can you pls repeat what you said about Y! API example? I lost the network for ~2mins.
	Jennifer D.	I hear people using the terminology and it's a little confusing sometimes.
	Andy R.	OK, thx!
	tlberglund	git clone git@github.com:githubteacher/poetry.git teacher-poetry
	Adam B.	so you meant clone, not fork
	10:45 AM
	Adam B.	could we have just switched out the remotes?
	ryan n.	do we start commiting, and pushing?
	aspires	Adam B: I wouldn't reccomend it
	Jennifer D.	lol. always behind.
	Vivek P.	my changes are in
	Adam B.	ok, thanks
	10:50 AM
	tlberglund	git config --global branch.autosetuprebase always
	git config --local branch.master.rebase true
	Maciek W.	has left the room
	Philip S.	on this page: https://github.com/githubteacher/poetry why are some people's checkin associated with their name while others their userid
	Jennifer D.	I love the panderers :)
	tlberglund	Jennifer: Me too!
	10:55 AM
	Adam B.	I think the display name depends on the user.name config we set yesterday
	aspires	Philip: that's generally due to when users don't have their Git config email in https://github.com/settings/emails
	tlberglund	git push -u origin tlberglund
	Philip S.	austin, i think you are right.
	11:00 AM
	Amit T.	has left the room
	Tony L.	thanks! great class!
	Rick B.	thanks!
	Andy R.	Thank you so much, Tim
	Bao T.	thx!
	Henry A.	Thanks
	Christopher S.	thanks man
	Vivek P.	thanks ... you are super awesome
	regis c.	thx
	Jennifer D.	You guys TOTALLY rock!
	Ann R.	Great course - thanks so, so much!
	Jennifer D.	this was great :)
	thank you :)
	Ray P.	Thank you.
	Jennifer S.	thank you so much
	Jens J.	thanks!
	lalau	Thanks!
	ryan n.	so happy to move to git
	tlberglund	Use this URL for further questions: https://github.com/githubtraining/feedback/issues
	Philip S.	thanks, great training!
	regis c.	has left the room
	tlberglund	Email us at training@github.com for any other questions.
	Adam B.	Thanks guys
	tlberglund	:)
	Shilpa V.	has left the room
	11:05 AM
	Pradipta	has left the room
	Christopher S.	short qestion
	is there a way to call back what aliases you have made?
	tlberglund	Oh yes.
	git config --list will show them (along with all the other config parameters).
	git config --list | grep alias to filter them
	Christopher S.	cool, thought it would be something simple like that, thanks
	tlberglund	You bet.
	Get meta-lesson: it's always built out of standard parts. :)
	11:10 AM
	Jennifer D.	so the class notes will arrive via email?
	11:15 AM
	tlberglund	Jennifer: Yes.
	I'll compile them this afternoon and Jessica (our training coordinator) will send them to one of your training coordinators (I don't know which :) )
	Jennifer D.	awesome. thanks!
	tlberglund	You betcha. Thanks for all your questions. Makes class 10x more fun for the teacher.
	Perhaps 11x.
	11:20 AM
	Christopher S.	another questions, less short: will git commit the contents of a symlink or the target files contents ?
