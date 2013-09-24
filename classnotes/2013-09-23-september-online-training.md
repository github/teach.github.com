---
layout: bare
title: September Online Training
description: September Online Training Class Notes
tags: [notes]
path: classnotes/2013-09-23-september-online-training.md
eventdate: 2013-09-23
---

## Teachers
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
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
* [Post-event Git and GitHub questions](https://github.com/githubtraining/feedback/)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command History

    git --version
    git config user.name
    git config --global user.name "Tim Berglund"
    git config user.email
    git config --global user.email "tlberglund@github.com"
    git config --global color.ui auto
    git config color.ui
    git init new-repo
    ls -la
    tree .git
    vi caesar.txt
    git commit -m "Initial Commit"
    git commit -m "Noblest man"
    git diff HEAD
    git diff HEAD --color-words
    git diff HEAD --word-diff
    git diff
    git diff --color-words
    git commit -m "Costly blood"
    git commit -m "Iambic pentameter"
    git help log
    git log
    git log --format=raw
    git log --format=raw --graph
    git log --format=raw --graph --decorate
    git log --format=oneline --graph --decorate
    git log --format=oneline --graph --decorate --abbrev-commit
    git log --format=oneline --graph --decorate --abbrev-commit --all
    git config --global alias.lol "log --format=oneline --graph --decorate --abbrev-commit --all"
    git lol --stat
    git lol -2
    pwd
    cd new-repo
    git loglive
    generaterandomfiles 6 junk txt
    git add .
    git commit -m "Created cruft"
    git rm junk1.txt
    rm junk2.txt
    ls
    git rm junk2.txt
    open .
    git add -u .
    git rm --cached junk6.txt
    git commit -m "Removed cruft"
    vi .gitignore
    git add .gitignore
    git commit -m "Added .gitignore"
    git log --stat -3
    rm junk6.txt
    generaterandomfiles 5 random txt
    ls -l ~ > listing.txt
    ls -l ~
    cat random1.txt
    cat listing.txt
    git commit -m "Files to move"
    mkdir files
    tree
    git mv random1.txt files/
    mv random2.txt files/
    git rm random2.txt
    git add files/random2.txt
    git add -A .
    vi listing.txt
    git add -A .
    git commit -m "Moved things"
    git log -2 --stat
    git log -2 --stat -M85
    git log -2 --stat -M
    vi files/listing.txt
    git commit -m "Change after move"
    git log --stat -3 -M
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M85 --follow -- files/listing.txt
    git branch feature
    tree .git/refs
    cat .git/refs/heads/feature
    cat .git/refs/heads/master
    git status --staged
    git diff --staged
    git commit -m "Ruby lips"
    git branch
    git checkout feature
    git commit -m "Added a title"
    git lol
    git merge feature -m "Shipped feature"
    git log --format=raw -1
    git branch -d feature
    git branch feature2
    git commit -m "Cursed limbs"
    git checkout feature2
    git commit -m "Civil strife"
    git merge feature2
    git add caesar.txt
    cat caesar.txt
    git commit -m "Shipped another feature"
    git branch -d feature2
    git status
    git branch feature3
    ls
    vi README.md
    git commit -m "Added a README"
    git checkout feature3
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git rebase master
    git lol -5
    git checkout master
    git merge feature3
    git branch -d feature3
    vi README.md
    git commit -m "README update"
    cd files
    generaterandomchanges 10 file txt
    git log --stat
    git log --oneline --decorate --graph
    git rebase -i HEAD~10
    git rebase master
    git lol -5
    git reset --hard 4513623
    git reflot
    git reset --hard 3b90d43
    cat file6.txt
    git reflog
    git reset --hard HEAD@{2}
    git reset --hard HEAD@{1}
    git merge feature
    export PS1="$ "
    tr.git
    cd scratch
    ls -la
    tree -L 2 .git
    tree -L 1 .git
    git remote add origin https://github.com/githubteacher/foundations.git
    git push -u origin master
    git branch -a
    git pull
    cat caesar.txt
    git commit -m "Fell deeds"
    git fetch
    git lol -10
    git --version
    git commit -m "Shattered visage"
    git config --global push.default simple
    cat .git/config
    git branch feature
    git checkout feature
    git checkout master
    git branch -d feature
    git clone https://github.com/githubstudent/foundations.git
    cd foundations
    git branch
    git remote show origin
    git commit -m 'Caesar Rage'
    git commit -m "Cry Havoc"
    cat markberry.txt
    cat wibble.txt
    cat Tom.txt
    vi markberry.txt
    git commit -m "Training newline for Mark"
    git pull https://github.com/githubstudent/foundations.git master
    git add caesar.txt
    git commit
    git remote
    git remote add teacher https://github.com/githubteacher/foundations.git
    git remote -v
    git pull teacher master
    cd ..
    git clone https://github.com/githubteacher/foundations.git teacher-foundations
    cd teacher-foundations
    ll
    git config credential.helper cache
    git config --global credential.helper cache
    git commit -m "Carrion men, yo"
    git loglive -12
    git loglive -10
    git config --local branch.master.rebase true
    git config --global branch.autosetuprebase always
    git add ozymandias.txt
    git commit -m "Sneer or command"
    git commit --amend
    git pul
    git loglive -15
    git loglive -17
    vi caesar.txt
    git loglive -20
    git loglive -19
    git checkout -b ozymandias-work
    vi ozymandias.txt
    git add
    git commit -m "Lifeless things"
    git push -u origin ozymandias-work
    git pull
    git lol
    git checkout best-branch-evar
    ls
    git status
    git diff master
    git show HEAD
    vi foo.txt
    git add .
    git commit -m "Fixed spelling error"
    git push
    git branch -a



## Chat History

* `Jordan McCullough`: Good morning. Welcome Bernard.
* `Bernard Opic`: Goopd morning Jordan
* `Jordan McCullough`: Thanks for joining us, everyone.
* `Jordan McCullough`: At any point during class today, if you have any questions, raise them here in chat. I can get things answered, or even bring them up on audio with Tim during the course of this session.
* `Jordan McCullough`: Once again, welcome everyone.
* `Jordan McCullough`: We'll be getting started here momentarily.
* `tlberglund`: Tim Berglund - teacher and Java/web developer.
* `tlberglund`: <3 Clojure, Groovy
* `Derrick Jackson`: I'm a Python Developer
* `Brock R`: Software Developer: C, Perl & Ruby
* `Mark Berry`: I'm Mark Berry and I'm a PHP developer
* `Matt Woodward`: Python developer
* `Jordan McCullough`: Jordan McCullough - trainer, JS developer, designer.
* `Bernard Opic`: Bernard Opic - C Developer
* `Peter Moloney`: Peter M. Python developer
* `Marty`: Developer - mostly Java web development with some Python
* `Brad Ford`: Software developer in C, Java, Python.. sad that I cannot work this from Linux easily :(
* `Ryan M`: .NET/C#, bash, java
* `Jason G Taylor`: Sr Dev - Java web, Groovy/Grails, NodeJS, whatever I feel like at the moment
* `Marcus Bates`: Java developer
* `Brock R`: +1 to Brad's comment
* `Brad Ford`: VMs rock
* `Bernard Opic`: @Brad: https://help.ubuntu.com/community/CitrixICAClientHowTo
* `Jason G Taylor`: command line rocks
* `Brad Ford`: Bernard Opic: thanks, I'll try for tomorrow
* `Jordan McCullough`: Jason, yes it does!
* `Matt Woodward`: pretty comfortable, looking to become an expert :-)
* `Ryan M`: brand new, zero experience
* `Roland`: brand new
* `Derrick Jackson`: been using it about 3 months
* `Brock R`: Brand new
* `Jason G Taylor`: writing confluence pages on Git
* `Mark Berry`: I've successfully ruined 2-3 git installations :)
* `Jordan McCullough`: Mark, do you have Git installed and running right now?
* `Bernard Opic`: mostly commit, push, and sometime pull ... I'm want more
* `Brad Ford`: hack'n arround with git for the last few months
* `Mark Berry`: yes
* `Marcus Bates`: Limited experience, comfortable with the basics.
* `Eric Penfold`: comfortable with common operations
* `Jason G Taylor`: git version works too (no dashes)
* `Jordan McCullough`: Indeed so, Jason. Thanks for pointing that out.
* `Jordan McCullough`: If I recall, earlier versions don't support with the option flag, so playing it safe with `git --version`
* `Jordan McCullough`: http://teach.github.com/presentations/git-foundations.html
* `Jason G Taylor`: Thank you for open sourcing the presentation
* `Jordan McCullough`: Jason G. You're certainly welcome. Here to help everyone learn in-class and anytime with the available resources.
* `Roland`: please slow down a bit
* `Jordan McCullough`: Roland, also please post any questions as they come up...
* `Jordan McCullough`: Happy to review and provide insight as we go along.
* `Brock R`: where are these committing to?
* `Jordan McCullough`: Locally. All work so far is only local to our machine, and all commits are saved to the .git folder.
* `Brock R`: thanks
* `Jordan McCullough`: The big take away right now is that all Git version control is local for all staging (adding) and commiting.
* `Bernard Opic`: not 2 insertions
* `Jordan McCullough`: Did your committed file have one line change or two?
* `Jordan McCullough`: Or that particular commit?
* `Jordan McCullough`: contain two new lines?
* `Bernard Opic`: then
* `Jordan McCullough`: Sounds right then Bernard.
* `Bernard Opic`: 1 line added
* `Jordan McCullough`: The first commit contained one new line.
* `Bernard Opic`: ok, i get it: thx
* `Jordan McCullough`: Then, you edited the file, staged (added) it, then commited.
* `Jordan McCullough`: So one line for the next commit.
* `Jordan McCullough`: :)
* `Bernard Opic`: understood
* `Derrick Jackson`: is "stage" a 1.8 option
* `Derrick Jackson`: i ask because i get "invalid option: --stage"
* `Brad Ford`: staged
* `Derrick Jackson`: ahh
* `Derrick Jackson`: thanks Brad
* `Jordan McCullough`: Ah, yes. So if you get that error...
* `Jordan McCullough`: Try `git diff --cached`
* `Jordan McCullough`: `git diff --staged`
* `Derrick Jackson`: yeah i thought i heard "stage"  should have looked at the screen. thanks all
* `Jordan McCullough`: As Tim just pointed out.
* `Jordan McCullough`: How's everyone doing so far? Pace good now?
* `Derrick Jackson`: perfect
* `Brad Ford`: Pace is good here
* `Ryan M`: I like the pace
* `Mark Berry`: fine with me
* `Bernard Opic`: very nice
* `Jordan McCullough`: Great! Staging area and process of diff-ing modified vs. modified staged files all making sense?
* `Ryan M`: so far, yes
* `Bernard Opic`: absolutely
* `Jason G Taylor`: On Windows, git help log will fire up your browser
* `Jordan McCullough`: Correct. Thanks for pointing that out Jason.
* `Jordan McCullough`: This situation of author/commiter differences will also occur on `rebase` of others' commits. We'll visit the repercussions of that when we visit that topic.
* `Jordan McCullough`: The commit IDs may also be described as a "ref".
* `Jason G Taylor`: I thought HEAD was the latest commit of the current branch?
* `Jordan McCullough`: Yes, but there is only one HEAD at any time
* `Jordan McCullough`: Great question!
* `Joel Glovier`: Hello
* `tlberglund`: git config --global alias.lol "log --format=oneline --graph --decorate --abbrev-commit --all"
* `tlberglund`: Joel: Hey!
* `Jordan McCullough`: You can also now use `git lol` and include additional options.
* `Jordan McCullough`: Drop us those `git log` questions.
* `Bob Fields`: Might be good to simply point to the log command reference page http://git-scm.com/docs/git-log
* `Jordan McCullough`: Bob, Yes, the Git-SCM site is a great resource. We'll have links in the class notes, but thanks for sharing as well.
* `Jordan McCullough`: We'll see you back here in 10 minutes. Have those questions ready about anything we've covered so far.
* `Brandon`: is there a URL I can pull up the training slides now?
* `tlberglund`: http://teach.github.com/presentations/git-foundations.html
* `tlberglund`: All yours, Brandon! :smile:
* `Jordan McCullough`: Welcome back, everyone!
* `Joel Glovier`: HEYO!!!
* `Jessica`: hello
* `Jordan McCullough`: Hello Joel.
* `Jordan McCullough`: Hi Jessica.
* `Bob Fields`: For the slides - mention the Ctrl-C and Esc shortcuts to see preview/toc - it's not obvious
* `Jordan McCullough`: Bob, good catch once again.
* `Jordan McCullough`: Hash / Ref / Commit ID are equivalent when we speak about points of commit history.
* `Joel Glovier`: @Tim - "a'parent'ly" - #rimshot
* `Stephen Roy`: I'm not able to retrieve the slides. Is there another way to get them?
* `Jordan McCullough`: Stephen: The slides are HTML for viewing in the browser. However, if you want to grab the source, visit this page and grab the repository:
* `Jordan McCullough`: https://github.com/github/teach.github.com/
* `Stephen Roy`: Thanks
* `Jordan McCullough`: We'll be reviewing, in class, how to get repositories from GitHub as well. :-)
* `Jordan McCullough`: You can run the slides locally that way.
* `Stephen Roy`: Ok. I may be missing a plugin that I'm unable to install
* `Jason G Taylor`: My inner geek is very happy
* `Jordan McCullough`: The README should describe the dependencies. However, you'll need Jekyll for starters.
* `Jordan McCullough`: Check out this part of the README:
* `Jordan McCullough`: https://github.com/github/teach.github.com/blob/gh-pages/README.md#developing
* `Bernard Opic`: What's the git command version you use?
* `Jordan McCullough`: Bernard, we're usually running on the latest stable release.
* `Bernard Opic`: :-)
* `Jordan McCullough`: For example, I'm using v1.8.2 right now.
* `Jordan McCullough`: Newest stable is good. :-)
* `Jordan McCullough`: Does that help answer your question?
* `Bernard Opic`: you answered
* `Bernard Opic`: thx
* `Brad Ford`: Anything special if the moved file has a different name?
* `Jordan McCullough`: Ah, yes, there might be some differences between 1.8.+ and 1.7.2+. If there are any snags, let me know and we'l resolve them.
* `Jordan McCullough`: Brad, no. Which is the fantastic thing about Git.
* `Brad Ford`: Still able to pick it up as a move via -M etc?
* `Jordan McCullough`: Git is tracking the content, not the file name distinctly. So the rename of a file will change the tree, so therefore staging the "deleted" (missing) and "new" (relocated) file will infer a move.
* `Jordan McCullough`: Yes.
* `Jordan McCullough`: So the "rename" or "move" is the same whether the change changes of just the filename changes.
* `Jordan McCullough`: Brad, does that help explain how it works?
* `Brad Ford`: I think so... I'll probably try a few variations :)
* `Jordan McCullough`: Be sure to ask if you need clarification.
* `Bob Fields`: For windows: tree .git/refs /F
* `Bob Fields`: To show files underneath directories
* `Jordan McCullough`: Thanks Bob.
* `Jordan McCullough`: The -1 limits the log output to only the last commit
* `Jordan McCullough`: Therefore, any integer value allows log limiting.  For showing, for example, the last 5...
* `Jordan McCullough`: git log -5
* `Brian Burridge`: I missed how he's getting the `git lol` to continually update in his 2nd console window.
* `Brad Ford`: you might be able to try 'watch -n 1 git lol'
* `Jordan McCullough`: Brian, we have a bash script that loops. Link:
* `Jordan McCullough`: https://github.com/matthewmccullough/scripts/blob/master/git-graphlive
* `Jordan McCullough`: Bash script with one second refresh loop.
* `Jordan McCullough`: :-)
* `Brock R`: 2 second... :)
* `Brian Burridge`: Ok, great. I think running that constantly in a window while working could really help reinforce all that we are learning here. I'm going to try to do that for the next few weeks. Thanks.
* `Jordan McCullough`: Great!
* `Jordan McCullough`: We'll also point out some other GUI tools that ship with Git that might help.
* `Jordan McCullough`: Brock: 2 seconds, indeed. :-)
* `Jason G Taylor`: Did you want to cover configuring Git to use a GUI tool for merge/diff commands?
* `Jordan McCullough`: We typically cover this in second session.
* `Jordan McCullough`: :-)
* `Mark Berry`: daleks :)
* `Mark Berry`: Exterminate
* `Mark Berry`: not destory
* `Jason G Taylor`: We didn't cover fast-forwards
* `Jordan McCullough`: Jason, fast forwards will make sense once we have rebases captured.
* `Jordan McCullough`: I'll be sure we do.
* `Bob Fields`: Is there a keyboard commend to show the animations when viewing the presentation?
* `Bob Fields`: command
* `Jordan McCullough`: The build steps are controlled by the arrow keys.
* `Jordan McCullough`: Up and down. :-)
* `Bob Fields`: Actually - left arrow and right arrow. Thanks
* `Jordan McCullough`: Ah, there's a trick to that, those work, but I'd suggest up down so you don't finish a build-step diagram and jump to the next chapter. :-D
* `Jordan McCullough`: Hope that makes sense Bob.
* `Bob Fields`: up and down moved to the next screen, no animations, didn't work
* `Jordan McCullough`: Hmm... I'll need to look into that. Thanks for flagging Bob. Might I ask what browser and version? (Should be able to fix for tomorrow's session)
* `Bob Fields`: Chrome on Win7
* `Jordan McCullough`: Thanks.
* `Jordan McCullough`: Jason: Does that help clarify fast forward merges?
* `Jordan McCullough`: Any questions, please post! 
* `Jordan McCullough`: Which scenarios would you like us to re-run through?
* `Bob Fields`: If I want to rebase after sharing a branch what is the recommended approach?
* `Ryan M`: can you use regex in the ignore file?
* `Jason G Taylor`: are there times when you don't want to use ff?
* `Bob Fields`: new branch?
* `Jordan McCullough`: .gitignore uses glob patterns.
* `Ryan M`: ok, thanks
* `Jordan McCullough`: So they're similar to regex, but simpler.
* `Jordan McCullough`: Jason: If you want a recursive merge, or merge-commit, you can prevent a fast forward using `git merge --no-ff`
* `Mark Berry`: is there a built in git command for preventing you commiting the merge conflict comments?
* `Jordan McCullough`: You can customize what the default commit message is for Git's basic usage. I'll need to grab the reference page for that.
* `Jordan McCullough`: Typically, it's best to go with the default message (including the # comments)...
* `Brock R`: how do we look at the log for actual changes in a file?
* `Jordan McCullough`: to remind you what the commit message needs to be.
* `Jordan McCullough`: `git log --patch`
* `Mark Berry`: yeah already got a pre-commit script
* `Jordan McCullough`: Will show the log, and include the patch diff output as well.
* `Mark Berry`: ta
* `Brock R`: thanks


* `Jordan McCullough`: Welcome. If there were any questions needing answered before session begins, do let me know.
* `Jordan McCullough`: Looking forward to helping out, explaining any of the topics covered yesterday, etc.
* `Jordan McCullough`: Welcome back!
* `Jordan McCullough`: We're just about to begin part two of GitHub Foundations. Thanks for joining us.
* `Jason Taylor`: ready to go
* `Jordan McCullough`: Great to hear Jason.
* `Eric Penfold`: so, file6.txt is still in local git, just not referenced?
* `Bob Fields`: Could you explain the implications of 'git config --global branch.autosetuprebase always'. Many blogs I see recommend overriding the default to set this value to always, and to always do 'git pull --rebase' to avoid merge commits.
* `Jordan McCullough`: Great questions.
* `Brad Ford`: still questioning advantages (not mechanics) of rebase vs merge of a branch
* `Jordan McCullough`: We encourage the thought process of "rebase" as preparation of a merge.
* `Joel Glovier`: One of the benefits of rebase is in workflows where a linear commit path is prefered, rather than broken out trees. Rebase allows your commit history to look "branchless"
* `Jordan McCullough`: Excellent description Joel G.
* `Joel Glovier`: merge commits come with the risk of file conflicts, which require resolution, which takes more attention and time.
* `Joel Glovier`: :thumbsup:
* `Jordan McCullough`: The recursive merge "bubbles" also help team members see the integration points of branches/feature merges.
* `Joel Glovier`: lol to :drink:ing "that beautiful page in"
* `Joel Glovier`: * :martini:ing
* `Joel Glovier`: * :cocktail:ing
* `Jordan McCullough`: https://github.com/signup/
* `tlberglund`: https://github.com/signup/free
* `Jason Taylor`: I use it all the time for .gitignore files for shared projects
* `Jordan McCullough`: Jason T.: Excellent.
* `Jordan McCullough`: Merge type? Thoughts anyone?
* `tlberglund`: git config --global push.default simple
* `Jordan McCullough`: "Just the branch your on" being the branch you are "checked out" to.
* `Jordan McCullough`: Questions?
* `Bob Fields`: Good place to talk about filemode also
* `Bob Fields`: in .git/config
* `Jordan McCullough`: Bob, could you clarify a bit more on filemod and the content of .git?
* `Jordan McCullough`: or the local repository's config, that is?
* `Mark Berry`: push and pull from somethjing other than master?
* `Jordan McCullough`: Ah, excellent question Mark B.
* `Mark Berry`: say a branch 
* `Bob Fields`: filemode = true/false to set cr/lf when moving between local and remote
* `Jordan McCullough`: Ah, line endings. Definitely.
* `Jordan McCullough`: git config --global core.autocrlf 
* `Bob Fields`: It's part of .git/config he just displayed
* `Jordan McCullough`: "true" value for Windows, "auto" for Unix/Mac boxes.
* `Eric Penfold`: strictly, fileMode != line endings
* `Bob Fields`: Yes. Thanks
* `Jordan McCullough`: I see that now, sorry about the confusion folks!
* `Bob Fields`: Big worry for us internally
* `Bob Fields`: Nuild servers are Linux, developers are Windows
* `Bob Fields`: Build servers
* `Jordan McCullough`: "the way in" being the "input".
* `tlberglund`: https://github.com/githubteacher/foundations/
* `Joel Glovier`: FORK ALL TEH THINGS!
* `tlberglund`: git clone https://github.com/githubstudent/foundations.git
* `Jordan McCullough`: Copy the URL of YOUR account's Fork.
* `Jordan McCullough`: So the URL will look similar to above, but needs to be your repository.
* `Jordan McCullough`: :)
* `Bob Fields`: At some future point - could you talk through the options so that it doesn't ask for github password every time.
* `Jordan McCullough`: Sure. Happy to point that out.
* `Jordan McCullough`: git config --global credential.helper cache
* `Jordan McCullough`: Will use Git's daemon to store the credentials for 15 minute (default) durations.
* `Jordan McCullough`: Alternatively, you can use "osxkeychain" for Mac, or "wincred" for Windows.
* `Jason Taylor`: I realize this is advanced topic: what's your recommendation when using Git within the firewall of a company using GitHub Enterprise: SSH passphrase or not?
* `Jordan McCullough`: https://help.github.com/articles/working-with-ssh-key-passphrases
* `Jordan McCullough`: :)
* `Jason Taylor`: Thanks, I've read that article too. We've had some internal debate over it.
* `Bob Fields`: BTW our internal GitHub enterprise does LDAP authentication, apart from any SSH authentication.
* `Joel Glovier`: truth is I just used the webflow, which auto-created the branch for me
* `Joel Glovier`: :thumbsup:
* `Bob Fields`: Because I wanted to follow the rename workflow
* `Jordan McCullough`: Sorry, did I miss the question?
* `Jordan McCullough`: Regarding the rename workflow?
* `Bob Fields`: No just commenting on the submitted pull request he just accepted
* `Jordan McCullough`: Gotcha.
* `Jordan McCullough`: Just making sure.
* `Jordan McCullough`: :)
* `Bob Fields`: Now - for fun - I'll create a branch from the previous commit before the rename, make a change to the file, and submit that pull request
* `Bob Fields`: i.e. some internal content, before the rename
* `Jordan McCullough`: Sounds like a plan Bob.
* `Bob Fields`: Remind me again - the command to move current head back 1 commit?
* `Jordan McCullough`: Ah...
* `Jordan McCullough`: to discard the commit entirely...
* `Jordan McCullough`: git reset --hard HEAD^
* `Bob Fields`: No, just want to create a branch starting from HEAD-1
* `Jordan McCullough`: which will discard the current commit and reset your branch one commit prior.
* `Jordan McCullough`: Oh.
* `Jordan McCullough`: From which branch? The one you are on?
* `Jordan McCullough`: Ah...
* `Bob Fields`: yes master
* `Jordan McCullough`: so if you are on a branch already....
* `Jordan McCullough`: and you want a branch from one prior to the most recent on master branch...
* `Jordan McCullough`: git branch <your-new-branc> <older-point-in-history>
* `Jordan McCullough`: The older-point being a ref, or a relative name like HEAD^
* `Jason Taylor`: Great, now how do we update our own forks of the new contributions?
* `Jordan McCullough`: You can then `git checkout <new-branch-name>` to begin working from that point.
* `Jordan McCullough`: Ah...
* `Jordan McCullough`: so if you have made additional commits to a branch that is already part of a Pull Request, simply push the new commit(s)
* `Jordan McCullough`: The Pull Request page will automatically update on the Teacher's Foundation repository page and Tim will see your additional (new) commits.
* `Brock R`: wow, why am I getting emails for a pull requests to a project that I pulled from?
* `Jordan McCullough`: Default in your Account Settings is for email notifications on projects you have contributed to.
* `Jordan McCullough`: Let me bring this up on audio momentarily.
* `Brock R`: ah thanks
* `Jordan McCullough`: Will just let Tim finish on Fork updates via the remote he's describing.
* `Stephen Roy`: Hi
* `Jordan McCullough`: Hello Stephen.
* `Jordan McCullough`: Question time, folks!
* `Bob Fields`: So how do I get everybody else's changes into my cloned repository. It says 'up to date' when I do git pull.
* `tlberglund`: git remote add teacher https://github.com/githubteacher/foundations.git
* `Jordan McCullough`: Everyone that forked. If you aren't on the list, drop me your username...
* `Jordan McCullough`: and I'll add you in.
* `Tom`: tmack74
* `Bob Fields`: bobfields
* `Jordan McCullough`: Tom, you're added!
* `Stephen Roy`: I joined late but I'm sroy66
* `tlberglund`: https://github.com/githubteacher/foundations
* `Jordan McCullough`: Bob, you're added.
* `Jordan McCullough`: Stephen, added as well.
* `tlberglund`: git clone https://github.com/githubteacher/foundations.git teacher-foundations
* `tlberglund`: git config --global credential.helper cache
* `Bob Fields`: git: 'credential-cache' is not a git command. See 'git --help'.
* `Jordan McCullough`: Bob, the command you'll need is `git config`
* `Jordan McCullough`: git config --global credential.helper cache
* `Bob Fields`: No I get that result when I run git push
* `Jordan McCullough`: Hmmmmm....
* `Jordan McCullough`: Could you copy paste the entire output for me?
* `tlberglund`: git config --local branch.master.rebase true
* `Jordan McCullough`: Then we'll get this figured out.
* `tlberglund`: git config --global branch.autosetuprebase always
* `Bob Fields`: After I ran git config command
* `Mark Berry`: Bob Fields: I get the same
* `Jordan McCullough`: Let's check your config.
* `Jordan McCullough`: `git config --global --list`
* `Jordan McCullough`: and paste in what that shows.
* `Tom`: I get the same error as Bob.
* `Jordan McCullough`: If anyone can share their `git config --list` output I'll try to diagnose.
* `Jordan McCullough`: Thanks Mark....
* `Bob Fields`: It doesn't stop the git commands, just requires that you retype id and password each time
* `Jordan McCullough`: examining....
* `Jordan McCullough`: What version of Git do we have running?
* `Jordan McCullough`: `git --version`?
* `Bob Fields`: 1.8.4
* `Jordan McCullough`: Alright...
* `Jordan McCullough`: ha!
* `tlberglund`: I've seen this before, but I regret that I don't remember the cause!
* `Mark Berry`: 1.8.4.msysgit.0
* `Jordan McCullough`: Sorry folks. Think we've got a typo in the instructed config.
* `tlberglund`: if the credential cache is causing problems, we can unset it and move on. You'llj ust have a tiny bit more typing to do. :grinning:
* `Mark Berry`: ok np
* `Bob Fields`: To unset?
* `tlberglund`: git config --global --unset credential.helper
* `Bob Fields`: Probably a Windows issue
* `Bob Fields`: I saw something related in the 1,8 release notes
* `Bob Fields`: about using Windows credential cache
* `Jordan McCullough`: Also, to stop credential caching from running the daemon entirely:
* `Jordan McCullough`: git credential-cache exit
* `Jordan McCullough`: Does that seem to resolve the issue? Bob? Mark?
* `Bob Fields`: git: 'credential-cache' is not a git command. See 'git --help'.
* `tt`: what happens if there are conflicts when you pull with those config settings?
* `Jordan McCullough`: This message is showing on the `git push`?
* `Jordan McCullough`: On a pull, if there is a conflict, you must resolve, commit the resolution, then push.
* `Bob Fields`: No, on 'git credential-cache' command above
* `Jordan McCullough`: Hmmm. Did you `git config --global --unset credential.helper` at least?
* `Jordan McCullough`: TT: This always puts the burden of resolution on the retrieving repository and the developer performing the `pull`
* `Bob Fields`: Nope, still asking for username each time
* `Bob Fields`: But no error on credential-cache
* `Jordan McCullough`: Yes, Bob, seems like that will be necessary as the credential helper is having an issue.
* `Jordan McCullough`: Good, glad we got past that.
* `Jordan McCullough`: We'll be sure to look into the current release and see if something is up with the credential helper.
* `Bob Fields`: Updated to 1.8.4 yesterday, before that it didn't ask for password each time
* `Bob Fields`: 1.7.11 previously
* `Jordan McCullough`: Were you using SSH or HTTPS?
* `Jordan McCullough`: for your repositories?
* `Bob Fields`: ssh
* `Bob Fields`: Ahh I cloned teacher-foundation with https
* `Jordan McCullough`: That would be why. For SSH the private key is on your machine, the public key on GitHub.
* `Bob Fields`: D'oh
* `Jordan McCullough`: For HTTPS you'll need to authenticate each time, or when the credential.helper works, cache the login values.
* `Jordan McCullough`: :)
* `Bob Fields`: Yep
* `Bob Fields`: So to change remote from https to ssh.....
* `Jordan McCullough`: You would update the origin remote's URL from HTTPS to SSH. So instead of the url looking like...
* `tlberglund`: git remote set-url origin git@github.com:githubteacher/foundations.git
* `Jordan McCullough`: https://github.com/youraccount/repository.git
* `Jordan McCullough`: It would be git@git.comm:accountname/repo.git
* `Jordan McCullough`: Does that help make sense?
* `Bob Fields`: Thx
* `Jordan McCullough`: `git remote set-url origin <new-url>
* `Bob Fields`: Yep. MAchine grinding to a halt. Does that occasionally. git pull going on several minutes now.
* `Brock R`: what is the command again to push to my personal repository?
* `Jordan McCullough`: Your remote for your repository should be origin.
* `Jordan McCullough`: So...
* `Brock R`: nvm I got it
* `Jordan McCullough`: `git push`
* `Jordan McCullough`: as the branch is already setup to track via that remote.
* `Brock R`: I was missing the branch name
* `Jordan McCullough`: You can review what remotes you have with:
* `Jordan McCullough`: git remote
* `Jordan McCullough`: git branch -vv 
* `Jordan McCullough`: will show your branches and which remotes they track-against.
* `tlberglund`: https://github.com/githubteacher/foundations/pull/18
* `Brad Ford`: is there an easy location to see all the items that I am watching (so I can selectively unwatch all in one location)
* `Jordan McCullough`: Yes!
* `Jordan McCullough`: https://github.com/watching
* `Kyle McPherson`: I've noticed that when working in a fork, when I create a pull request - if I go back and make some more pushes; the one pull requests will take the multiple pulls. Is there any way around that or would I have to "cherrypick"
* `Bob Fields`: Kyle is talking about git-flow from develop -> master
* `Kyle McPherson`: Yes - getting around the multiple commits
* `tt`: what is the relationship between pull requests and issues?
* `Kyle McPherson`: if I just wanted the original from the pull request
* `Tom`: Not necessarily a git flow issue.  Just wanting to take the pull request as it was at the point in time the request was made.  
* `Mark Berry`: I'm not getting the concept difference between forking and branching? It seems as though a fork is just a branch by a different means? whats the work flow difference and feature benefits of forking?
* `Jason Taylor`: Forking is when you don't trust the contributors
* `Mark Berry`: what about incompetence? best to branch or fork?
* `Mark Berry`: We use 3rd party devs - there not that good
* `Jason Taylor`: we use some off shore folks -- forking is ideal for that
* `Mark Berry`: great thanks
* `Mark Berry`: ta jason
* `Mark Berry`: I'll try that
* `Jason Taylor`: Also, our devop team wants to keep the "golden" repository -- so all updates go through PR from development shared repos.
* `Jordan McCullough`: Jason T.: In that case then, forking and pull requests would be optimal for a review process.
* `tlberglund`: https://github.com/watching
* `Mark Berry`: git hub specific - if you fork a private repo does it stay private?
* `Mark Berry`: on the ofrk that is?
* `Mark Berry`: ta
* `Jason Taylor`: The Borg are here
* `Mark Berry`: The Git Borg - they merge - not assimilate
