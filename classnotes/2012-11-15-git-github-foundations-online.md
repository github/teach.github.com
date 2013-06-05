---
layout: bare
title: Git and GitHub Foundations Online
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
path: classnotes/2012-11-15-git-github-foundations-online.md
eventdate: 2012-11-15
---

Held on November 15 & 16, 2012

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
    Q: My push failed and posted error
    A: Do this: "git config --global push.default matching
    Q: if you are doing bug fixes, would you branch or just edit the original repo?
    A: Personal preference. With git, branching is so fast and easy…i personally branch. Sometimes it just depends on how long it takes.
    Q: i missed the SSL part then
    A: git remote set-url origin git@github.com:USERNAME/poetry.git
    Q: where does the next commit go, to feature3 or the master timeline?
    A: Depends on the direction of the rebase! Since he was rebasing onto master (generally the behavior most people are going to do),
       this will remain on his branch. As shown, however, when you go onto master and merge feature3 back into master, it comes in easy
       without any merge conflicts. The conflicts would have been resolved in the rebase.
    Q: Is that the correct naming convention for tags? (capitals?)
    A: Again, git doesn't really care how you do it. If you notice on some projects on github.com, they use just numbers (0.0.15, etc).
       Othertimes people use capital letters like tim has shown.
    Q: Slightly off-topic: What terminal app is he using to get the nifty split-screening? Is that iTerm2?
    A: Yup!
    Q: Do you have a list of all the helpful customisations, gists and alias' for the way you work? Will you povide them for us in the notes
       please?
    A: Two list of different set of gitconfig's that we could use for examples are listed here:
       https://github.com/github/teach.github.com/blob/gh-pages/examples/gitconfig/dot-gitconfig.txt and
       https://github.com/github/teach.github.com/blob/gh-pages/examples/gitconfig/dot-gitconfig2.txt. There are some differences and
       similarities between the two, so be careful to not just copy all of these. The things in the [] are the keys, and the thing after the "." is the
       thing we're setting. So `git config --global alias.st status`. Hope this is helpful!
    Q: Yes cloned...
    A: Woo! good
    Q: Can you descibre a real world case for branching.
    A: Just wanting to cover this in chat: I use branching personally for any time i'm going to work on a new feature, some experimental
       idea, etc. Especially if i don't know if it'll work out really well.
    Q: How is "squash" different from simply deleting the previous commits?
    A: Another way to think of this is "combine" with the commit before it, depending on how you have specified your commands in your
       interactive rebase. If we're squashing one commit into another, one way to think about this is just "pretend i did work from here…inside
       of this commit". Hope that definition helps, but as always, feel free to ask in https://github.com/githubtraining/feedback to get more
       feedback from possibly matthew as well!
    Q: Can we have a quick refresher from yesterday's core material?
    A: Just wanted to also answer this in chat, but http://teach.github.com/classnotes/2012-11-15-git-github-foundations-online.html should
       have the material from yesterday if you want to look over it.
    Q: Does rm delete the file, or just from git history?
    A: I know Tim answered this in class, but rm is going to remove the file. However you could always undo this command because of how
       git works! Some of these tricks may have been shown a bit yesterday and may be shown a bit today (reset, revert commands)
    Q: will any of this remote stuff affect the remote connection i have with my work repo?
    A: Nope! The things we do here, are for this specific repository. Won't bother your work repo because your work repo is named
       something else. (not poetry)
    Q: how do you get the autorefreshing log on the side
    A: Thats called loglive, it lives in a gist over here: https://gist.github.com/3714970
    Q: are there any special characters you can't use in your git commit -m "message?!"
    A: Actually yes and no. It depends on your quotes. In your above example you're using double quotes, but if you used a single quote: '',
       you could include !?@#@ etc. :)
    Q: what's difference between fetch and pull?
    A: great question! a fetch is a way of updating your remote with what may be on the upstream (github.com). When we pull. this is
       actually two commands: fetch + merge. It's generally easier to just say "git pull" but for the purpose of this exercise we do the fetch first
       so we can see the changes we're about to merge in(pull in)
    Q: i cloned a repo into the poetry repo.. what did i just do?????
    A: So now you technically have a repo inside of a repo. you could delete this poetry repo and exit out to a higher project folder (outside
       of newproject for example) and type the clone command again.
    Q: When the git fetch was executed, does git assume that what you're fetching is a fork of the current project?
    A: yep! it defaults to your origin (there's a bit more to this, but essentially this is what is happening). It's usually good to be specific on
       which remote we're fetching from.
    Q: How was the annotated message displayed? Which command?
    A: Further, if you want to tag a specific commit, once you see the commit you want to tag(`git log --pretty=oneline` and find a specific
       commit you want to tag), then you could say something like `git tag -a BRENTS_FIX <COMMIT_HASH> where COMMIT_HASH is that
       series of letters and numbers that was returned in the log command
    Q: What happens if you fetch a repo that is not a fork of the repo you are currently working in?
    A: It works just fine, but there's just two completely distinct root nodes from this repo. It ends up being a complete mess. Typically we
    want to create different repositories for different projects. :)
    Q: Reflog: Does it contain orphaned commits?
    A: It can! It seems to be escaping us right now for how to do this, but if you could ask this question
       https://github.com/githubtraining/feedback, we would love to take it offline and answer it right there.
    Q: What is the syntax for the rebase "range" (i.e. HEAD~8)?
    A: It's merely however many commits you want to rebase on. For instance. If you're on branch "feature3" and want to rebase master,
       you would do: `git rebase -i master`. That last part of the command is just "which point do you want to touch back on. Remember from
       yesterday, branches are just pointers to a specific hash (long string of numbers and letters) and HEAD~4 would be the same reference
       pointer. We can even use this pointer explicitely if we find one (with a `git log` that we wanted to rebase against.
    Q: And what if you wanted to save the history, that the merge was wrong and was removed, but still go back in history?
    A: As Tim showed, the `git reflog` command can help us with this along side of `git reset`. There is caution when doing reset, so be sure
       you fully understand the commits we're reseting to from the reflog.
    Q: How do I grab all files from a specific tag?
    A: Tim grabbed this in audio, but you would checkout to a specific tag. This is one reason why those tag names can be so important.
       `git checkout <TAGNAME>` would get to that point. This is a little tricky, so I urge caution when doing this kind of move, but with a little
       bit of finesse it's not too bad.
    Q: when doing fetch don't have to specify branch.  do have to specify branch when using pull
    A: Definitely. Because the `git pull` command deals with a merge, we have to tell it specifically what to merge.
    Q: what do we need to do to see all of the master repo (yours) changes into our fork?
    A: Great question! Now that the githubtrainer repo is further up to date then our current fork. We need to do this fetch/pull procedure
       that tim is going through now, I'll be sure he shows this from the githubstudent project as well! Don't let me forget!
    Q: how are you tailing the git log?
    A: The command we're looking for here is https://gist.github.com/3714970 ! copy that, or by the end of class today you'll know how to
       pull that info down to your local machine (clone'ing it)
    Q: how can we get it to remember our login credientials to github?
    A: Because we cloned from https and not ssh (the git@github.com:username/repo format) it will always ask us our credentials
    Q: Will rebase "collect" the conflicts or will they need to be resolved one by one?
    A: It's one by one. As a rebase is applied, it steps through each of the commits when it's rebasing. When you resolve each merge
       conflict, you're able to `git rebase --continue` to move through these after you've created your merge conflict merges
       I don't want to mislead you here. When you continue, you're not making any merge conflict commits. You're continuing and adding
       the files after the conflicts. `git add` after the conflict has been resolved, then `git rebase --continue`
    

## Day 2 Command History

    git branch
    tree
    git status
    git add
    git commit
    git diff
    git rev-parse HEAD
    git ls-tree 42a38
    git cat-file HEAD:caesar.txt
    git loglive
    cat ~/scripts/git-loglive
    watch git lg
    watch tree -L 3 .git
    git lg
    git checkout 41ab965
    ls
    ls -l
    cat junk1.txt
    git lg
    git checkout a94da47
    ls -l
    git checkout 41ab965
    ls
    git checkout master
    git lg
    git branch feature2
    vi caesar.txt
    git status
    git add . 
    git commit -m "Blood and destruction"
    git lg
    git checkout feature2
    vi caesar.txt
    ls
    vi tolkien.txt
    git status
    git add .
    git commit -m 
    git commit -m "More Shakespeare plus Tolkien"
    git lg
    git checkout master
    git merge feature2
    git status
    vi caesar.txt
    git merge --abort
    git merge feature2
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit
    git lg
    git config --global core.editor emacs 
    git config --global core.editor "mate -w"
    git config --global --unset core.editor 
    git lg
    git branch -d feature2
    git lg
    git tag DELETED_FILES a94da47  
    git tag MERGE_CONFLICT_EXAMPLE 
    tree .git/refs
    cat .git/refs/tags/MERGE_CONFLICT_EXAMPLE
    git show DELETED_FILES
    git tag -a MOVED_FILES b1e8
    tree .git/refs
    cat .git/refs/tags/MOVED_FILES
    git show MOVED_FILES
    git tag -s SOOPER_SECURE 06f4
    git show SOOPER_SECURE
    git lg
    git branch feature2 67206b0
    git lg
    git help reset
    git reset --hard 0123b35
    git tag -d MERGE_CONFLICT_EXAMPLE
    git lf
    git lg
    git merge feature2
    vi caesar.txt
    git add .
    git commit
    git lg
    git checkout MOVED_FILES
    ls
    git checkout master
    ll
    git branch -d feature2
    git branch feature3
    vi caesar.txt
    git add .
    git commit -m "Smiley mothers"
    git checkout feature3
    ls
    vi ozymandias.txt
    git add .
    git commit -m "Shelly up in this"
    vi ozymandias.txt
    git add .
    git commit -m "Shattered visage"
    git lg
    git lg -10
    git rebase master
    git show 2f9c0
    git show 31ad
    git branch
    git checkout master
    git merge feature3
    vi caesar.txt
    git add .
    git commit -m "Caesar rage"
    ls
    vi README.md
    git add .
    git commit -m "Added a readme"
    git checkout feature3
    vi caesar.txt
    git add .
    git commit -m "trouble here..."
    vi ozymandias.txt
    git add .
    git commit -m "Sneer of cold command"
    git lg
    git rebase master
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git rebase --continue
    git lg
    git checkout master
    git merge feature3
    git lg
    git branch -d feature3
    tree
    cd files
    ls
    generaterandomchanges 8 random txt
    git rebase -i HEAD~8 
    git status
    ll
    vi random8.txt
    vi random3.txt
    vi random1.txt
    git status
    git add .
    git rebase --continue
    git rebase -i HEAD~2
    git lg
    git lg -10
    git log --stat -1
    git reflog
    git reset --hard HEAD@{12}
    git reflog
    git reset --hard HEAD@{1}
    git help reflog
    git reflog --all
    ll -a
    cd ..
    ll -a
    git remote add origin https://github.com/githubtrainer/poetry.git 
    git remote
    git remote -v
    git push -u origin master 
    git branch
    vi README.md
    git add .
    git commit -m "New improved README"
    git status
    git branch -a
    git lg
    git lg -10
    git branch -a
    git status
    git push
    git lg -10
    pwd
    ls
    git clone https://github.com/githubstudent/poetry.git
    ls
    cd poetry
    ls -l
    git help config
    ls -l ~/.ssh
    ssh-keygen -t rsa
    ls -l ~/.ssh
    cat ~/.ssh/id_rsa.pub
    history
    git remote -v
    git status
    git lg
    vi caesar.txt
    git status
    git add .
    git status
    git commit -m "Cry HAVOC"
    git status
    git push
    git config user.name
    git conig user.email
    git config user.email
    git config --local user.name "GitHub Student"
    git config --local user.email "training+githubstudent@github.com"
    git log -2
    git commit --amend
    git log -2
    git reset --hard HEAD^
    vi caesar.txt
    git commit -m "Cry havoc"
    git add .
    git commit -m "Cry havoc"
    git log -2
    git push
    git status
    git lg -10
    git branch -a
    git pull 
    git lg 
    git fetch https://github.com/githubstudent/poetry.git
    git fetch https://github.com/githubstudent/poetry.git master
    git diff FETCH_HEAD
    git fetch https://github.com/githubstudent/poetry.git
    git diff FETCH_HEAD
    git merge FETCH_HEAD 
    subl caesar.txt
    git add caesar.txt
    git status
    git commit
    git push
    git pull
    git push
    git lg -10
    git fetch
    git pull
    git fetch
    git loglive -10
    git merge origin/master 
    git lg -10
    git lg
    git remote
    git remote add trainer https://github.com/githubtrainer/poetry.git
    git fetch trainer
    git lg
    git pull trainer master 
    git lg
    git push
    git remote
    git status
    git fetch
    git show 7e520ee
    git branch -a
    git pull
    cat danny.txt
    git fetch
    git ls-remote origin
    git fetch origin refs/pull/1/head 
    git lg
    git log FETCH_HEAD
    git merge FETCH_HEAD
    git lg
    git revert 3a23650
    git lg
    git show 3a23650
    cat caesar.txt
    git show HEAD
    git reflog
    git reset --hard HEAD@{1}
    git lg
    git rebase -i HEAD~4
    git lg
    git push
    git pull
    git push

