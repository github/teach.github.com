---
layout: bare
title: Git and GitHub Foundations Online (Private)
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2013-02-06-online-class.md
eventdate: 2013-02-06
---

on 2013-02-06 through 2013-02-07

Teachers

* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

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
    * [The GitHub for Mac Client](http://mac.github.com)
    * [The GitHub Eclipse Plugin](http://eclipse.github.com)
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

## Day 1 Command History

    git init newproject
    cd newproject/
    ls
    ls
    ls -a
    ls .git
    ls .git -p
    ls -p .git
    git config --local -l
    cat .git/config
    ls -p .git
    cat .git/HEAD
    cat .git/refs/heads/
    ls .git/refs/heads/
    git status
    mvim first.txt
    git status
    git add first.txt
    git status
    git commit -m "my first commit"
    git status
    git status
    git add first.txt
    git status
    git reset HEAD first.txt 
    git status
    git diff
    git status
    git add first.txt 
    git status
    git diff
    git diff --staged
    git diff --staged
    git status
    git status
    git diff --staged
    git diff
    git status
    git diff HEAD
    git status
    git commit -m "change from last to third"
    git status
    git diff
    git add first.txt 
    git status
    git diff --staged
    git commit -m "added a new ending line"
    echo $EDITOR
    echo EDITOR
    git config --global -l
    git config --global core.editor mvim
    gs
    git status
    git add .
    git status
    git commit
    ls .git/
    cat .git/COMMIT_EDITMSG 
    git status
    git config --global core.editor vim
    git commit
    git log
    git log --stat
    git log --stat
    git log --stat -2
    git log --stat -1 -p
    git log --stat -1 -p --word-diff
    git log --stat -1 -p --color-word
    git log --stat -1 -p --color-words
    git log --format=medium -1
    git log --format=short -1
    git log --format=fuller -1
    git log --author=Brent
    git log --author=Matthew
    cd ~/github/teach.github.com/
    git log --author=Jordan
    git log --author=Jordan --format=oneline
    git log --author=Jordan --format=oneline --abbrev-commit
    cd ~/scratch/
    git log
    cd newproject/
    git log
    git status
    echo "cruft" > cruft_file.txt
    ls
    git status
    git add .
    git status
    git diff --staged
    git status
    git commit -m "prepping a cruft file"
    git status
    git log -1
    mvim cruft_file.txt 
    git rm cruft_file.txt 
    ls
    git status
    git commit -m "removed cruft_file"
    git status
    ls
    git status
    git add .
    git commit -m "more cruft"
    gs
    rm cruft_file.txt 
    git status
    git diff
    ls
    git rm cruft_file.txt
    git status
    git commit -m "finally removing cruft. Dont return"
    git status
    ls
    git log -4 --stat
    ls ~
    ls -pl
    ls -pl ~
    cat ls -pl ~ > home_dir.txt
    ls -pl ~ > home_dir.txt
    git status
    git add home_dir.txt 
    git commit -m "home directory listing added"
    ls
    git status
    mv home_dir.txt home_directory.txt
    git status
    git add -A .
    git status
    git commit -m "renamed home_directory"
    mv home_directory.txt home_directory_listing.txt
    git status
    vim home_directory_listing.txt 
    git status
    git add -A .
    git status
    git commit -m "renamed home_directory for the last time"
    git log -1
    git log -1 --stat
    git log -1 --p
    git log -1 -p
    git log --stat -M
    git log --stat -M -1
    git log --stat -M -1
    git log --stat -M70 -1
    git log --stat -M62 -1
    git log --stat -M60 -1
    git status
    echo "ssh_keys.id_pub" > ssh_keys.txt
    git status
    vim .gitignore
    git status
    git add .
    git status
    git commit -m "ignore tmp files, and ignore ssh keys"
    git status
    ls
    echo "additional_key" > ssh_keys.txt 
    git status
    echo "more_keys" > ssh_key_generator
    git status
    mkdir logs
    git status
    ls -p
    cd logs/
    ls
    echo "production data" > production.log
    echo "development data, useful information for staging" > development.log
    git status
    cd ..
    git status
    git status -- logs/
    ls -a
    cd logs/
    vim .gitignore
    cd ..
    git status
    git status -- logs/
    cat .gitignore
    cat logs/.gitignore
    vim .gitignore
    git status
    git status -- logs/
    git status
    git status -l
    git status -v
    git status -- logs/
    git status
    git status
    git add logs/
    git status
    git add .
    git status
    git commit -m "Added some files to gitignore, and kept some specific files as well"
    git config --global --list
    git status
    echo "best last line ever" > first.txt 
    git status
    git checkout first.txt 
    git status
    git branch
    git branch
    git branch feature1
    git branch
    git branch feature3
    git branch feature3 feature5 topic
    git branch feature5
    git branch topic
    git branch
    git checkout feature1
    git status
    cat .git/HEAD
    git log -1
    git checkout master
    git log -1
    cat .git/HEAD
    cat .git/refs/heads/master
    cat .git/refs/heads/feature1
    git checkout feature1
    ls
    vim Make
    vim build.rb
    git status
    git add .
    git status
    git commit -m "Make file for fun. Also a ruby file for building"
    git status
    git checkout master
    ls 
    git status
    git log -1
    git log -1 -p
    cat .git/refs/heads/feature1
    cat .git/refs/heads/master
    git show d7992
    git status
    git log -2
    echo "#python code needed for build" > build.py
    git status
    git add .
    git commit -m "python build script"
    git log -1
    git checkout feature1
    git log -1
    ls
    git status
    git log feature1...master
    git log feature1..master
    git log feature1..master
    git log feature1..master -p
    git log master..feature1
    git log master..feature1 -p
    git log --graph
    git checkout master
    git log --graph --oneline --decorate
    git branch --contains 20cc5
    git branch --contains 20cc5
    git checkout -b experiment 
    git branch
    ls
    echo "all new lines" > second.txt
    git status
    git add .
    git commit -m "added a new file called second"
    git status
    ruby build.py 
    touch testfile.sql
    touch wallet.sql
    git status
    git add .
    git commit -m "new sql files"
    git log -2 
    git checkout master
    git log -2
    git status
    git merge experiment
    git log
    git log --graph --oneline --decorate
    git log master..feature1
    git log feature1..master --oneline --decorate
    git status
    git merge feature1
    git log --graph --oneline --decorate
    git log -2
    git log -4 --oneline
    git log -4 --oneline feature1
    git log -5 --oneline
    git branch
    echo "cruftfile lives again" > cruft-file-lives.txt
    gs
    git add .
    git commit -m 'cruft file lives again!'
    git rm cruft-file-lives.txt 
    gs
    git commit -m "nevermind about cruft"
    gs
    git log -2 --oneline
    git log -2 --oneline --stat
    git branch cruft-branch f978a34
    git branch
    git log cruft-branch
    git log master..cruft-branch
    git log master..cruft-branch
    git log cruft-branch..master
    git checkout cruft-branch
    ls

## Day 1 Chat Transcript
    8:45 AM
    Jordan M.	Welcome Rick. Great to have you aboard for the class.
    brntbeer	Hi Rick!
    Rick C.	Thanks guys
    brntbeer	Rick, for feedback purposes, how was Jordan's audio just now?
    Rick C.	sorry I just got my headphones on.
    brntbeer	oh ok, we'll be doing another check in 4 minutes
    8:50 AM
    Jordan M.	Welcome everyone. Please let us know if the audio check at 9:50 sounded good for you. Thanks!
    Rick C.	sounds great for me guys
    brntbeer	awesome!
    Alex G.	Sounds excellent
    8:55 AM
    Joe W.	audio sounds great
    Jordan M.	Joe, thanks for letting us know. Glad to hear it.
    9:00 AM
    9:05 AM
    Jordan M.	View paste 
    For anyone sharing the link with colleagues, please provide them with this URL:
    githubtraining.campfirenow.com/9d4ed
    Scott B.	One of my machines is a Mac, which currently has Apple Git 1.7.7.5 on it. Will I need to update this installation?
    Jordan M.	Class materials will need anything higher that 1.7.2, so you should be set.
    Jordan M.	There's great new features in Git 1.8, so when you have the opportunity, certainly feel free to upgrade.
    9:10 AM
    Jordan M.	Local only applies to a Git repository, whereas the --global and --system provide configuration that would apply to all repositories.
    9:15 AM
    Jordan M.	We'll always want a user.name and user.email set for the rest of the class.
    9:20 AM
    Jordan M.	If you installed git via the Git-SCM or GitHub installers, the BASH provided will have POSIX command support
    View paste 
    https://windows.github.com
    https://mac.github.com
    http://git-scm.org
    9:35 AM
    Trevor H.	I am not seeing the red text in cygwin even tho git specifically says it supports cygwin and it seems to otherwise work in the cygwin window does support color normally
    Jordan M.	View paste 
    Please try:
    git config color.ui
    If already set, it should return "auto", if nothing, then you can set by using:
    git config --global color.ui auto
    Trevor H.	yeah, it says auto but I still don't get color
    Barett M.	Trevor, do you have the git package installed in cygwin or is it calling the windows one?
    Trevor H.	it's calling the windows one. The installer said the windows version would work in cygwin.
    which it seems to, otherwise
    Barett M.	yeah that's the better way to go
    Jordan M.	I cannot speak directly to Cygwin's support, however, during our mid-class break, I would advocate using the GitHub Git installer or the Git-SCM.org one.
    I'm checking if there's a quick solution as well. Thanks for asking and stay tuned.
    9:40 AM
    Barett M.	fyi jordan, cygwin colors are working for me
    Jordan M.	Thanks Barett. Can you confirm "git config color.ui" is set to "auto"?
    Barett M.	it was not, still showed colors in cygwin regardless
    9:45 AM
    Barett M.	setting it didn't break the colors
    Jordan M.	If there are Cygwin peculiarities, would you mind trying the installer at https://windows.github.com
    Trevor H.	I think I'm using a different shell window than Barett
    I'm using mintty 1.0.3
    Jordan M.	The BASH provided by the installers suggested above should resolve that. Thanks for your patience on this and trying the alternative.
    9:50 AM
    Jim W.	does the editor you choose have to be a command line editor?
    Jordan M.	Not at all! It merely has to be on your system path/environment variables.
    For windows, for example, you could set core.editor to notepad, if you prefer.
    9:55 AM
    Trevor H.	if I type git commit it just locks up until I hit ctl-c
    Jordan M.	Are you on Mac or Windows?
    (just so I can step you through the steps specifically)
    Joe W.	if you are using notepad.exe you need to save and close the editor to get your shell back
    Trevor H.	cygwin
    Jordan M.	Thanks Joe! Great catch.
    Trevor H.	not sure who you are talking to
    Barett M.	He's on cygwin on windows
    Joe W.	i was talking to Trevor
    Jordan M.	Trevor: typing "git commit" without the -m should bring up the default editor for the commit message.
    Trevor H.	Yeah, I think it's failing at starting the editor
    Jordan M.	A commit message is required or, if the commit message is saved without text, the commit will be aborted.
    10:00 AM
    Jordan M.	View paste 
    Trevor: As an alternative, you could set the core editor to bring up Notepad:
    git config --global core.editor notepad
    Trevor H.	no, after I unset the editor it still locks up
    Jordan M.	Trevor: unset? Let's try setting the "core.editor notepad" and see if that helps. Keep me posted.
    Trevor H.	yeah, that works
    Jordan M.	Excellent!
    Trevor H.	except then I have notepad running... :b
    10:10 AM
    Trevor H.	Then it committed .first.txt.swp even though I never added it to the commit set... I'm causing all sorts of issues by not running notepad +windows for this
    oh it's cause we did git add .
    guess that's a dangerous command
    Jordan M.	No, not at all. However, "git add ." will recursively add all files. So if Notepad made a swap file, the recursive add will stage all files.
    Trevor H.	yeah, so you'll end up with lots of temp stuff committed
    probably not what you want
    10:15 AM
    Jordan M.	True, which is why, for this early in the class we advocate using only the specific file name. However, very soon we'll learn to ignore files.
    10:20 AM
    Jordan M.	Trevor: We're getting up to the place which will address your concern about a file commited you don't wish to Git-track.
    10:25 AM
    Trevor H.	Right... BTW the answer to my earlier question is mintty isn't supported by Windows git and you should use cygwin's git if you want color in mintty.
    Jordan M.	Thanks for sharing. Appreciate that feedback.
    Jim W.	View paste 
    C:\workspaces\temp\newproject>git rm cruft_file.txt
    fatal: pathspec 'cruft_file.txt' did not match any files
    10:30 AM
    Jim W.	View paste 
    C:\workspaces\temp\newproject>ls
    cruft_file.txt  first.txt
    Jordan M.	Jim: Reviewing...answer momentarily.
    Was the cruft_file.txt added and commited for starters?
    Barett M.	try pasting yer git status
    Jordan M.	If the file is not in Git as a tracked file, git rm will not be able to remove, as it doesn't "see" the file.
    Jim W.	ahh mistype in the add
    10:35 AM
    Jordan M.	Any questions regarding RM before we move on? Please feel free to ask! I'm here to answer any and those inquiries.
    Trevor H.	How do I recover the deleted file without changing other files to the revision associated with the commit that last had the deleted file?
    Jordan M.	Ah, coming up in materials soon. For now, rest assured that it is recoverable. Brent will walk us through that process.
    Trevor H.	I'm sure it is. :)
    10:40 AM
    Jordan M.	If you're working along with Brent, our object is to have a text-heavy file that's been commited, and making some small changes to that file after that.
    Scott B.	Wasn't the percentage actually the percentage that remained unaltered?
    10:45 AM
    Jordan M.	The percentage represents the similarity index. So the files were 61% similar.
    Slightly different than "changed" vs. "unchanged"
    Scott B.	Right, the distinction is important
    Jordan M.	Git's -M (no number supplied) will default to a similarity index value of 50% similarity for comparative purposes.
    brntbeer	if anyone feels liek forfeiting the break to chat let me know
    Jordan M.	I'm here, so fire away with any questions.
    The break is more for the benefit of our students to just grab a drink, top up on coffee, etc.
    10:55 AM
    Nathan S.	does git have something similar to perforce's multiple concurrent change lists?
    11:00 AM
    Jordan M.	Can you explain a bit more? Concurrent and "different" commit history?
    Jordan M.	If, by means of different and possibly divergent commit histories, yes, by means of branching.
    Nathan S.	so if I am working on several things at the same time. I want to group some of the files so I will commit them seperatly. It also lets me keep track of what I am working on for a specific feature / change
    Jordan M.	Absolutely! Git branching will exactly what you're looking for.
    That's right around the corner in our materials, once we have our Ignore setup.
    11:05 AM
    11:10 AM
    Nathan S.	do child ignores inherit the behavior of their parent directory?
    Jordan M.	Yes, they certainly do.
    Let me bring that up on audio for the class...
    11:15 AM
    Jordan M.	Great question. Thanks for asking.
    11:20 AM
    Jordan M.	This brings us back to an earlier question of how to "see" changes, deleted and moved files, and the "snapshot" of the working directory from history.
    11:30 AM
    Jordan M.	If you're following along and have any branch questions, please feel free to ask them here. I'll bring them up on audio if we need to adjust pace or address them.
    Trevor H.	So you need to commit all files before switching branches
    Jordan M.	It's not mandatory, but certainly advised to avoid confusion or commiting changes unexpectedly to the wrong branch.
    Trevor H.	right, otherwise the uncommitted files follow you to the new branch
    Jordan M.	There are other caveats, as well. Including if the file exists or does not exist in the "other" branch you would be checking out to.
    11:35 AM
    Jordan M.	New files, which are not Git-tracked, would simply sit in the working directory. So if you create a new file you intend on commiting to a different branch, that's a safe operation.
    Gonzalo I.	Isn't it really dangerous to be able to work on multiple branches with files that are on a single directory on the user's machine? It's really easy to get confused and change the file in the wrong branch, isn't it?
    Jordan M.	Let me bring this up on audio... great question!
    Trevor H.	looks like if you add the file to git tracking it still follows you until you commit it
    Gonzalo I.	Thanks
    11:40 AM
    Jordan M.	My pleasure. Glad to hear that answered your question.
    View paste 
    "git checkout -b <branchname>" is the shortcut for:
    git branch <branchname>
    git checkout <branchname>
    11:45 AM
    Steve F.	git help <command> brings up a MAN page in your browser. 'git help log' for git log MAN page.
    Jordan M.	Excellent point Steve! Thanks for letting everyone know.
    Nathan S.	is there a way to put the merge into working instead of having it commit?
    Barett M.	--no-commit
    Jordan M.	Ah, do you mean staging it, but not finishing the merge commit? Yes!
    git merge --no-commit
    Thanks Barett!
    11:50 AM
    Jordan M.	When a recursive commit occurs, a commit message is required.
    11:55 AM
    Barett M.	is rewind the opposite of a fast forward?
    (joking)
    Jordan M.	Good one Barett.
    12:00 PM
    Trevor H.	so how do you move just the cruft file back into master ?
    Jordan M.	A git merge would do the trick!
    git checkout master
    git merge cruft-branch
    Trevor H.	but that would merge everything
    not just the file
    Jordan M.	True.
    Understood...
    That will bring us to tomorrow's topic of rebase.
    Trevor H.	heh ok
    Jordan M.	if you want ALL changes that have since happened in master, but still want to recover those other changes. There are other options as well including git revert.
    Great question.
    Barett M.	<3
    Lei Z.	Hi Jordan, did you say you would distribute the scripts from chatroom later?
    Scott B.	I've installed GitHub on my Mac, but the old Apple Git is found on the path first. Which of the many instances of 'git' should I path to first?
    brntbeer	scott, i believe with GitHub:Mac it installs git binary to /usr/local/bin/git. i think if you set your $PATH to checking /usr/local/ first this will take care of that
    12:05 PM
    Scott B.	What about the instance in the GitHub bundle?
    Jordan M.	Scott, if you update your $PATH as Brent suggested, you'll be pointing to the GitHub Git release bundle. Does that answer your question?
    Scott B.	OK, thanks!
    Jordan M.	Let me know if I missed the question. ;-)
    brntbeer	im not 100% sure on where it installs the git command on a github for mac install. if you ask this question over at https://github.com/githubtraining/feedback i can answer it there in a few minutes. i think as more and more people use github:mac and the like, having this on the issues repo will be more helpful!
    Jordan M.	Transcript of the chat and commands will certainly be available after class.
    Lei Z.	Thanks!
    12:10 PM

    brntbeer	Thanks all for the class. I'll be re-joining this room tomorrow at 830am PST!

## Day 2 Command Line History

    git diff --staged
    git commit -m "newfile with thing1 and thing2"
    git status
    git checkout master
    ls
    git status
    git add .
    git commit -m "added things 1 and thing 2"
    git status
    git merge cruft-branch
    git status
    git log -p
    git checkout cruft-branch
    git status
    git commit -am "newfile, last few lines of code"
    git status
    git checkout master
    git status
    git commit -am "fixed the last line of newfile"
    git merge cruft-branch
    git status
    git diff 
    git status
    git add newfile
    git status
    git commit -m "resolved merge conflict from cruft-branch"
    git status
    git log --graph --oneline --decorate
    git status
    git log -3 --oneline
    git log
    git status
    echo "new stuff in this file" > dontaddme.txt
    git status
    git add newfile
    git status
    git reset HEAD newfile
    git status
    git commit -a -m "newfile and change to first"
    git status
    rm dontaddme.txt 
    git status
    git reset --hard HEAD~3
    git status
    git log -1
    git status
    git add newfile
    git status
    git commit -m "newfile end of file lines added"
    git config --local merge.tool "p4merge"
    git status
    git config --local -l
    git merge cruft-branch
    git mergetool
    git status
    git commit -m "conflict resolved from p4merge"
    git status
    rm newfile.orig
    git status
    git status
    git branch bugfix
    git checkout bugfix
    git branch
    git status
    git status
    git status
    git add build.
    git add build.py 
    git status
    git commit -m "python build instructions"
    git checkout master
    generaterandomchanges 5 random txt
    git status
    git status
    git checkout bugfix
    git rebase master
    git status
    git checkout master
    git status
    git merge bugfix
    git status
    git checkout bugfix
    generaterandomchanges 1 bugfix rb
    git status
    git checkout master
    git merge bugfix
    git status
    git log --graph --oneline
    git log --graph --oneline -3
    git log --graph --oneline -3
    git reset --soft HEAD~1
    git status
    git log --graph --oneline -3
    git diff --staged
    git commit -m "A random change of 12546 to bugfix1.rb"
    git log --graph --oneline -3
    git reset 462d00b
    git status
    git status
    git log --graph --oneline -3
    git reset d7c0a3e
    git status
    git status
    git add bugfix1.rb 
    git status
    git commit -m "new bugfix text, with nonrandom"
    git log --graph --oneline -3
    cd ..
    git clone https://github.com/githubtrainer/poetry.git
    ls
    cd poetry/
    git status
    cd ..
    mkdir student
    cd student
    git clone https://github.com/githubstudent/poetry.git
    git status
    cd poetry/
    git status
    git config --global user.email
    mvim .
    git log -1
    git remote -v
    git branch -r
    git branch
    git branch brntbeer
    git branch
    git checkout brntbeer
    git log -1
    git status
    git log --author=githubstudent
    git config --local user.email training+githubstudent@github.com
    git config --local user.email
    gut config --local user.name "GitHub Student"
    git config --local user.name "GitHub Student"
    touch brntbeer.txt
    git status
    git add brntbeer.txt 
    git status
    git commit -m "hello from brent beer"
    git status
    git remote -v
    git remote add trainer https://github.com/githubtrainer/poetry.git
    git remote -v
    git checkout master
    git status
    git fetch
    git branch -r
    git pull trainer/master
    git pull trainer
    git branch -r
    git log -1
    git pull trainer master
    git log -1
    git status
    git push -u origin master
    git status
    git branch
    git checkout brntbeer
    git status
    git status
    git add .
    git commit -m "goodbye from brent beer"
    git status
    git log -3
    git rebase master
    git status
    git push -u origin brntbeer
    git status
    cd ..
    cd ../poetry/
    git status
    git branch brntbeer
    generaterandomchanges 4 brntbeer md
    git status
    git log -4 --oneline --decorate
    git log -5 --oneline --decorate
    git reset --hard 21e7db8
    git status
    git log -5 --oneline --decorate
    git checkout brntbeer
    generaterandomchanges 4 brntbeer md
    git status
    git push -u origin brntbeer
    cd ../student/poetry/
    git status
    git branch master
    git checkout master
    git pull trainer master
    git push origin master


## Day 2 Chat Transcript
    8:55 AM
    Justin R.	Good morning, Brent
    Jordan M.	For those who have joined us again here in the chatroom, welcome!
    9:00 AM
    Jordan M.	If you have specific workflow concepts at REI, or personal thoughts on best practices with Git, let us know. We're here to answer those questions.
    9:05 AM
    jlawles	Can one of you talk about what the benefit is to the "two phase" commit?
    JamesH	two phase commit is awesome! ... says the Oracle dba :)
    Jordan M.	Do you mean by segmenting commits for clarity/units that make more cohesive sense?
    Jordan M.	Or more in line with the three-stage thinking of git add, staging, and commiting?
    jlawles	I was thinking staging and then commiting... what is the benefit to staging?
    9:10 AM
    Jordan M.	There are alternatives, to skip the "Adding" stage, with options flags on "git commit", and I'd be happy to discuss why the two methodologies.
    jlawles	ok
    Jordan M.	That is an excellent question. Let me bring that up on audio after Brent's example here.
    Jordan M.	Short answer for three-stage thinking and the addding-staging enforces uniform and cohesive commit units.
    Therefore, you can work on many files/changes, "stage" and prepare a commit from just a few of those changes, and commit.
    jlawles	I see...
    Jordan M.	This permits developers to work in as much as a they wish, but commit logical changes even if there is widespread change.
    jlawles	would another branch do the same thing?
    Jordan M.	Brent is using the "shortcut" right now, to circumvent the "add" using git commit -am"your message"
    jlawles	thanks for anticipating my next question
    9:15 AM
    Jordan M.	The adding-commiting pattern applies to any branch. Any work and commits only apply to one branch, the one you are actively on (which can be found out by typing "git branch" and noting the one with the * next to it)
    Jim W.	on screen font size is a bit small in VI
    Jordan M.	Thanks for letting us know. Should be larger now.
    9:20 AM
    Jim W.	it looks better thanks
    9:25 AM
    Justin R.	Sorry, I missed the platforms for gitk - Mac?
    I got it the second time. It got an error on my Mac the first time.
    brntbeer	gotcha
    Chris A.	Honestly, I believe most of the developers in our environment will be using EGit from within Eclipse, not the command line tool.
    9:30 AM
    Jordan M.	That's good to know Chris. We like to provide insights into the fundamentals of Git itself, as some IDE plugins do not expose the core operations and features of Git.
    --global if you wish for this to be across your user account.
    Otherwise, this config will be project/Git-repository specific.
    9:35 AM
    Jeff S.	is there a way to do an equivalent of git add -A with the commit command
    Jordan M.	-a is the one option to circumvent git add for modified files.
    Otherwise, as git commit does not "see" new or deleted files.
    9:40 AM
    Jordan M.	So the only shortcut for staging and committing applies to modified, tracked files in Git.
    One correction, tracked-deletions will be included.
    Justin R.	Is there a shortcut to reset all the way back to the first commit of head or a branch?
    Jordan M.	Yes, there is. Much along the lines of Brent's example. Let me bring that up on audio and discuss the repercussions. Thanks for the question.
    Will discuss right after our mergetool conflict resolution.
    9:45 AM
    Jordan M.	A much friendlier interface than the inline text of <<<<< ====== and >>>>>> that we showed earlier on the conflict markers.
    Scott B.	Can I queue up multiple file sets to be committed, or is there only one staging area?
    9:50 AM
    Scott B.	Also, what about the -i (--include) option or 'git commit'?
    Jordan M.	There is only one staging area. The typical flow is to stage and prepare for a commit, make that commit, staging another logical unit of staged changes, commit that.
    There are many strategies, should your working directory have things you don't want to see/don't want to lose, and that would be the Git stash command. if time allows, we'll visit that near end of class today.
    9:55 AM
    Jordan M.	--include is a somewhat older pattern for staging additional filepaths.
    It's much simpler, and straightforward, to utilize "git add <file>" before making the commit against the staged content.
    Scott B.	The manpage for 'git commit' indicates that --include can be used to conclude a conflicted merge.
    Jordan M.	MAN pages will note it's a way of including files that would be conflicted, but is at the core the same as resolving a conflict, performing a git add <conflict-file> to restage the resolution, and proceeding with the commit.
    Somewhat of a redundant helper option, and nothing wrong with it. As an instructor, I would advocate the "git add" policy simply for remember the pattern and not requiring memorizing of more commit options.
    Let me know if that makes sense.
    10:00 AM
    Nathan S.	how do you revert changes in your work area?
    Jordan M.	View paste 
    If you have a "dirty" file and you wish to get it back to a good commit state, use:
    git checkout <yourfilename>
    This will restore the file's contents to the state they were in from the last commit.
    10:05 AM
    Justin R.	Is there such a thing as a rebase conflict? Or will conflicts only show up at the merge?
    Jeff S.	why would I choose to rebase instead of just merging?
    Chris A.	We want to make sure, during this training, that we talk about exactly what certain terms mean: pull, fetch, push.
    brntbeer	definitely Chris =) coming right up after the Reset command
    Chris A.	Thanks.
    Scott B.	You'd rebase if you're not done making your changes but want to sync up with the latest code.
    Chris A.	Another important topic is how to share code with another developer.
    Jeff S.	so in the SVN world you would merge from trunk into the branch, would you not do that in git?
    brntbeer	Good point scott! Especially if the branch is long living
    10:10 AM
    Jordan M.	Exactly Scott. Good call.
    Jeff: when we want our "feature" or "bugfix" branch to catch up (have the same commit state) of master, we rebase.
    So in a way, yes, you are "merging" master into your feature, but in a way that keeps the history of the rebase-against branch behind your own changes within your feature branch.
    10:15 AM
    Jordan M.	Brent is "resetting" us to one step prior to the last commit so we can revisit what happened in the very last commit.
    10:20 AM
    Jordan M.	View paste 
    HEAD is most recent
    HEAD^ is one before most recent
    HEAD^^ two before most recent, etc.
    Shorthand for the ^ symbol is represented by ~
    HEAD~2 is the same as two before most recent commit.
    Trevor H.	so the old commit is gone forever now?
    10:25 AM
    Jordan M.	As Brent is pointing out, it is _possible_ to recover, but for the time being, assume it's mostly gone.
    As Brent is addressing...
    https://github.com/signup/free
    Please sign up, if you do not already have an account, so we can all participate in collaborative, social coding practice. Thanks!
    10:35 AM
    Nathan S.	after I reverted the head of my bransh to a previous version why are files still around in that branch that dont belong?
    Jordan M.	Revert or reset?
    10:40 AM
    Jordan M.	As there are two commands. The one we just wrapped up was reset. Let me know and I'll help out.
    Jordan M.	If you perform a reset --hard, the working directory should only reflect the changes of your last commit (and no "dirty" working directory)
    --mixed and the reset commist will showed as staged changes and leave your working directory untouched.
    Nathan S.	so I did a reset --hard with an earlier hash that didn't have some files. Why do the files show up in my workspace even after I re-checkout the branch?
    Jordan M.	So the files were present in your current state, but you performed a reset --hard, which restored all files to the commit state, but you're seeing your files you created from a newer commit?
    Nathan S.	yes
    10:45 AM
    Jordan M.	Hmmm... Unless the file was not in tracking, the reset --hard should restore your working directory to the state/appearance it was at that reset-passed reference.
    Can you do a "git status" and see that this file is not listed as "not tracked"?
    Nathan S.	the file is in the not in tracking state
    Jordan M.	Ah, so git reset --hard will not touch untracked files. Only files in your working directory that are tracked by Git. So Git does restore your working directory to "look" like the state of the reset-based-hash, however, if Git is not tracking a file, it leaves that untouched.
    Nathan S.	but shouldn't it reset all files to the state of the branch including removing files that don't exist in the branch?
    the file is committed in the master branch but in my reverted branch it shouldn't exist.
    Jordan M.	Only those that Git "knows" (i.e. tracks). It does not perform invasive file system modification on files it does not track.
    Hope that sorts out and clarifies why you're seeing the untracked files not be modified/removed by Git.
    Thanks for asking. Great workflow and operations question.
    10:50 AM
    Jordan M.	Here, we're trying to act as a "repo owner" in the blue browser window, and in the gray one, as a student.
    (Student == little Mario character in upper right; Teacher == little Jedi cloaked character in upper right)
    Visit:
    https://github.com/githubtrainer/poetry
    (your name should appear when logged in at the upper right)
    10:55 AM
    Jordan M.	Please ensure you are copying the URL from _your_ account, not the githubtrainer. That'll give you read+write access.
    https://github.com/&lt;youraccount&gt;/poetry
    Gonzalo I.	Could you please post the link to the student page again.
    Jordan M.	View paste 
    You will want to fork from:
    https://github.com/githubtrainer/poetry
    11:00 AM
    Jordan M.	Click the "fork" button, and you will then possess a "poetry" repo within your own account.
    11:00 AM
    Jordan M.	Your page will read "<yourname>/poetry" - forked from "githubtrainer/poetry"
    at the top of the page.
    Nathan S.	Under my account it does't appear to give me read write access
    Jordan M.	Please check the address bar. Is the address your URL such as github.com/<yourname> or github.com/githubtrainer?
    Nathan S.	https://github.com/schaffernm/poetry.git
    JamesH	need to have own account from github. takes like 30 seconds
    Gonzalo I.	Thanks. I had to be logged out to start with when going to the student page.
    Joe W.	make sure you set your user.email to the email address you setup with github
    brntbeer	thank you joe! definitely going to bring that up
    Jordan M.	Awesome. Let me know if there's anything else for the forking-process then.
    11:05 AM
    JamesH	I didn't get the same results from the log command...
    View paste 
    $ git log -1
    commit 21e7db8ae9298eb81f2041771d0e7d27b2b7eb9b
    Author: GitHub Trainer <training+githubtrainer@github.com>
    Date:   Thu Jan 31 14:38:38 2013 +1100
        Added a symlink
    Jordan M.	Can you provide the output of "git remote -v"
    Just for comparative purposes for starters?
    JamesH	View paste 
    $ git remote -v
    origin  https://github.com/jameshuff/poetry.git (fetch)
    origin  https://github.com/jameshuff/poetry.git (push)
    Jordan M.	Checking...
    Brian C.	I had the same result
    Jordan M.	I am seeing the same.
    11:10 AM
    Jordan M.	One moment, bringing this up on audio.
    Nathan S.	can you show us how to update to head now
    11:15 AM
    Jordan M.	As our astute class pointed out, we want our config's email to match so we have a match between our local repo and the one we forked that we're working against.
    11:20 AM
    brntbeer	https://github.com/githubtrainer/poetry
    11:25 AM
    Jordan M.	We have successfully updated from a read-only repo, now we're push-ing our up-to-date repo to our own accounts repo for poetry to get it up to date.
    11:30 AM
    Jordan M.	Any questions, please ask. This is the fundamentals of making Git a social VCS, so please let us know how we can help make all this work for you.
    11:35 AM
    Justin R.	View paste 
    warning: LF will be replaced by CRLF in justinspoetry.
    The file will have its original line endings in your working directory.
    I keep seeing these warnings. Did I miss a config setting yesterday?
    Jordan M.	View paste 
    Make sure you have:
    git config --global core.autocrlf input (for mac) or true (for windows)
    Justin R.	Thanks!
    Jordan M.	git config --global core.autocrlf input
    git config --global core.autocrlf true
    Certainly!
    11:45 AM
    Chris A.	Not likely to be using pull requests here.
    Jeff S.	we have the option, stash supports them as well
    11:50 AM
    Jeff S.	it's sort of a replacement for crucible code reviews
    11:50 AM
    Chris A.	@Jeff, we should discuss it.
    Thanks for going over use of pull requests as a workflow to enforce code reviews. That's helpful.
    Jordan M.	More to come shortly.
    Thanks for sharing and letting us know.
    12:00 PM
    Jordan M.	I'll stay on chat for 10 more minutes, any remaining questions or lingering ideas on Git are welcome.
