---
layout: bare
title: Git and GitHub Foundations
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
eventdate: 2012-11-15
---

# Git/GitHub Foundations Online
on 2012-11-15 through 2012-11-16

Taught by:

* Led by Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Supported by Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
* [Unix watch command](http://en.wikipedia.org/wiki/Watch_(Unix))
* [SHA-1 Hash Collisions](http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1)
* [NPD Git Cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [More Git Cheatsheets](http://teach.github.com/articles/git-cheatsheets/)

## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.ANYTHING, but can have issues with HTTPS credential prompting.
* Best is 1.7.10 or higher

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


## Day 1 Q&A Transcript

    A: After we have this. Type ""git diff"" to see what the most latest change that are under the section ""changes not staged for commit"". feel free to copy/paste this into the chat window to show me after you've commited, and then done a ""git diff""
    A: Ah. yes you need to do these commands one at a time. So after you type: 'git commit -m""initial commit"" ' all one one line. hit enter and then type ""git status"" again and paste me the results
    A: After we see this log. We're basically all up to date from where we are now. Everyone else only has text in a file as well. We're going over some .gitignore stuff but it's not super important in the grand scheme of things.
    A: Awesome!! So if we type ""git commit -m'initial commit' "" we can add this first commit.
    A: Well the main idea is that git has this way of tracking changes to some files that we've told to to watch. And we tell it to watch files by ""adding"" it with git add. then after we've added a file, we make a commit to describe the changes we've just made.
    A: I assure you you are though! After class you can review the notes to go back over it as well. And if you have any questions about things that you'd like to ask me personally you could email me at brent.beer@gmail.com or training@github.com to continue discussions. I wouldn't mind continuing to help offline!
    Q: this concept of ""sameness"" is used when trying to show you the history with the -M?  If it is ""the same"" then show it, if not then dont?
    A: If i understand you correctly, yes. The ""then dont"" part is simply saying ""just show it as two new files"" when the move happens. Does that make sense still?
    Q: If you git log on a mv'ed file does it give you the entire history?
    A: git log by default will give you the entire history, however i believe tim is about to show a command to allow us to show renamed files. we could do something like ""git log -1 -M -p"" to show the latest commit, show renames, and the differences
    Q: can you have user.name/email per repo? and can this be regex? if i'm in my ""work"" stuff use this info, etc...
    A: Totally! The local config is totally for that. I've had to do this for setting my username/email for work myself in the past. If we don't touch on this tomorrow when Tim is switching between users, remind us and ask again please ! :)
    Q: less plumbing, more porcelin, more realworld examples, please.
    A: Got it. Tomorrow will be intensive collab tools. I think you'll be pleased.
    Q: Can you information about the shell setup that's being displayed (i.e. Multiple panes, etc)?
    A: Yeah, good question. I'm using iTerm2 on the Mac, and the split plane awesomeness is accomplished with CMD-D. Then I use the loglive alias that will eventually be in the show notes.
    Q: how to show just one commit?
    A: the -1 will work, or -NUMBER :)
    Q: Need to train new ppl in the future, any guidance on layout of agenda and how detail to go?
    A: You could also take advantage of some of the materials inside of http://teach.github.com/ !
    Q: ran ""git log""  got error ""fatal: bad default revision 'HEAD'""
    A: Yep! This actually happens when we havent commited anything ;) We'll get to that in just a few short minutes
    A: Why is . for everything? Well in unix, the ""."" stands for the current directory, and git sees this and says ""grab everything in the entire directory? ok!"" where as the ""*"" is a regular expression that unix will say ""grab all files in this directory"". make more sense now?
    Q: wild card command is "".""?  for example:  git add .
    A: It just gets everything in this entire project! not just the current directory. Hope Tim's explanation in audio was sufficient as well!
    A: Hope that answers it well enough, let me know if i need to dive deeper. ""."" would also get something if it was in another subfolder in your project, where as ""*"" would not.
    Q: in the command linke after echhoing things I get "">"" and can't git etc
    A: I think there's probably a trailing "" that you forgot to close and now it thinks you're typing a multi-line message. can you either type another "" or control-c to quit out of this.
    Q: how do I get back to the $ in my command line from >
    Q: what was save and exit?
    A: Escape out of insert mode, then `:wq`
    Q: how do I exit vim? i hit vi
    A: :q should quit you out
    Q: What was that --stat  ""-M"" switch?
    A: The -M is just a way of saying ""find renames""
    Q: What is the -m pip in the commit command?
    A: That's just a flag for the commit command to say ""message"" the thing that follows is just that message.
    Q: VI is good for me… Have basic knowledge on linux and OSX. Im OSX
    A: Good! If you have any questions for us about vim just let us know =)
    Q: Where do linked application Databases fit into GIT source control?
    Q: Do hardcore programmers succesfully use a GUI for their source control using GIT? Ive seen one on windows… Is that a bad way to use GIT?
    A: I think this was answered in audio, however, I know plenty of guys who use the windows powershell to do git, but the github for windows should work just fine as well.
    Q: Can you set that setting for git globally? -M85
    Q: free second time???
    A: Yep! we invite anyone who's been to  once to come back as many times as they want.
    Q: what happens if you add .gitignore to .gitignore
    Q: Can you have a global .gitignore, or is it just local?
    Q: What does --pretty do? Output looks the same.
    A: pretty can actually take a number of additional types of content. oneline, raw, full, etc!
    Q: What's the command for fixing the colors again?
    A: git config --global color.ui auto
    Q: if I use git commit -m message caesar.txt, then I don't need to git add -- is that normal behavior?
    A: I think Tim touched on this. but we generally like to explicitely add files to ensure we know what we're going to be making a commit for.
    Q: I must not have committed, just staged the file before moving
    A: Maybe! Glad to get it sorted out now though.
    Q: Even when I used the ""git mv"" command
    A: have you added a file like ""junk.txt"" with only 1 line of text. commited that. and then in a seperate step done the move?
    Q: Specifically in ""git status""
    Q: On windows, I do not see files renamed with the => operator.  What am I doing wrong?
    Q: Yes, let me attempt again
    A: Good, again we can just have one line of text in this junk file. Im just wondering if the move happened before it was added, where git wouldn't care to track that it was renamed.
    Q: I see it now.  I think I simultaneously moved/renamed.  Should that yield the same results?
    A: Unfortunately not. because the file hadn't been added to git's tracking yet, after we moved it, git really didnt know about its previous state (when we first added it). so we want to add it first, commit it. And then do ""git mv"" on it afterwards. The way we did it in class was to simply demonstrate how this happens in the wild.
    Q: Would you please share your ""lg"" alias?
    Q: how do I clear/remove a git config alias?
    A: This can be done with a ""git config --unset alias.value"" depending on what alias you have.
    Q: are you covering branches today or friday?
    A: Branching should be covered today near the end, and picked back up with tomorrow for sure!
    A: Welcome! take a look for more at http://www.kernel.org/pub/software/scm/git/docs/git-config.html
    Q: will you cover git-flow?
    A: Also, github-flow may poke its head out a bit more tomorrow as we discuss collaboration when we're working on github.com, keep an eye out for it!
    Q: This is mine/our first source control system. Hoping to get this up and running here after this class
    A: Definitely! feel free to ask tons of questions. thats what im here for!
    Q: if you move a file does the Mac GUI pick it up automatically?
    A: Yes, it should! If it doesn't let us know.
    Q: hrm, brew not found.
    A: Are you on osx? Homebrew doesnt come by default sadly. But details about it can be found here: http://mxcl.github.com/homebrew/
    Q: how can you install Tree on MAc osx?
    A: brew install tree
    Q: If you are a single developer working on a project do you need to branch? what's best practice?
    A: Typically i love branching any time i'm doing something new. Tim hints at this with the ""feature"" as a branch name. It helps me keep things isolated from whats on master. Furthermore it's super fast anyways!

    

## Day 1 Command History

    git --version
    ls
    pwd
    git init newproject
    ls
    cd newproject
    ls
    ls -la
    tree .git
    git config --list 
    git config user.name
    git config user.email
    git config user.emaill
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    cat .git/config
    vi ~/.gitconfig
    git log
    pwd
    ls
    vi caesar.txt
    ls
    git status
    git add caesar.txt
    git status 
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "Tide of times"
    l
    git status
    vi caesar.txt
    git diff
    git add caesar.txt
    git diff 
    git status
    git diff --staged
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git status
    git diff
    git diff --staged
    git diff HEAD
    vi caesar.txt
    git diff HEAD
    git diff --staged
    git diff
    vi caesar.txt
    git diff
    git diff --color-words
    git diff --word-diff 
    clear
    git status
    git diff HEAD
    git diff HEAD --color-words
    git status
    git diff --staged --color-words
    git commit -m "Costly blood"
    git status
    git diff --color-words
    git add caesar.txt
    git commit -m "Dumb mouths"
    git status
    vi caesar.txt
    git diff
    vi caesar.txt
    git status
    git diff
    git diff -w
    vi caesar.txt
    git diff
    git status
    git log
    git lgo
    git log
    git log --stat 
    git log --patch
    git log --patch --color-words
    git log --patch --color-words -1
    git log --stat -2
    git log --stat -738
    git log --pretty=full
    git log --pretty=raw
    git log --pretty
    git log --pretty=raw
    git log --pretty=raw -1 
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline --abbrev-commit --graph
    git lg 
    git status
    ls
    mkdir target
    echo "CLASS FILE" > target/Java.class
    echo "angry monkey" > console.log
    git statu
    git status
    tree
    vi .gitignore 
    git status
    git add .gitignore
    git status
    git add *
    git commit -m "Added a .gitignore"
    git status
    ls
    rm -rf target
    rm console.log
    ls
    git config core.excludesfile
    vi `git config core.excludesfile`
    vi ~/.gitignore
    generaterandomfiles 5 junk txt
    ls
    git status
    git add .
    git status
    git commit -m "Added some files prepared for destruction"
    ls
    git rm junk1.txt
    ls
    git status
    rm junk2.txt
    git status
    git rm junk2.txt 
    git status
    open .
    git status
    git add . 
    git status
    git add -u . 
    git status
    git commit -m "Deleted all of the junk"
    ll
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    ls -l
    git status
    git add .
    git status
    git commit -m "Created some files to move around"
    git log --stat -1 
    git log --stat -3
    ls
    mkdir files
    tree
    git status
    git mv file1.txt files/
    tree
    git status
    tree
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
    git commit -m "Moved the five 'file' files"
    git log --stat
    git log --stat -1
    git log --stat -1 -M 
    git log --pretty=raw -1
    tree
    git status
    tree
    vi listing.txt
    git diff
    git diff --word-diff
    git mv listing.txt files/
    git status
    git add -A .
    git status
    git commit -m "Moved and changed content--tempting fate"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M85
    git log --stat -1 -M80
    git log --stat -1 -M60
    git log --stat -1 -M95
    git log --stat -1 -M
    git log --stat -- files/listing.txt
    git log --follow --stat -- files/listing.txt
    git log --follow --stat -M80 -- files/listing.txt
    git log --follow --stat -M85 -- files/listing.txt
    git help config
    git rev-parse HEAD
    git log -1
    git log --pretty=raw -
    git log --pretty=raw -1
    git ls-tree 05117ccdf05930f647814ed0b8d0f200fdc3de3d
    git ls-tree e1f4947e42728b1f08c99de41c578b79901fb2f9
    git cat-file -p 6db7dbc8436c140de5f90095525c49e097349b43
    git lol
    git log --graph --pretty=oneline --abbrev-commit
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    git lol
    git config alias.lg
    git lg
    git status -u -s
    git config --global alias.s "status -u -s"
    git s
    git log HEAD
    git rev-parse HEAD
    tr.git
    cd scratch/newproject
    git loglive -15
    git status
    git branc
    git branch
    git lg
    git branch feature 
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    cat .git/HEAD
    git branch
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    cat caesar.txt
    git checkout feature 
    git status
    git branch
    cat caesar.txt
    vi caesar.txt
    vi tolkien.txt
    git status
    git add .
    git status
    git commit -m "New Shakespeare plus some aweXome Tolkien"
    git lg
    ls
    cat caesar.txt
    git checkout master
    ls
    cat caesar.txt
    git branch
    git merge feature -m "Merged in the feature branch"
    git lg
    git log --pretty=raw -1
    git lg
    git branch -d feature
    cat caesar.txt
    cat tolkien.txt
    git config alias.lg


## Day 2 Q&A Transcript

    STUB

## Day 2 Command History

    STUB
