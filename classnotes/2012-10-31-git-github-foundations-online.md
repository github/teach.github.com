---
layout: bare
title: Git and GitHub Foundations
description: Git/GitHub Foundations Online Class Notes
tags: [notes, online, class]
---

# Git/GitHub Foundations Online
on 2012-10-31 through 2012-11-01

Taught by:

* Led by Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Supported by (Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Supported by Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

## Resources

* [http://kb.perforce.com/article/1417/git-p4](http://kb.perforce.com/article/1417/git-p4)
* [https://github.com/github/gitignore](https://github.com/github/gitignore)
* [http://teach.github.com/articles/book-authoring-using-git-and-github/](http://teach.github.com/articles/book-authoring-using-git-and-github/)
* [https://help.github.com/articles/post-receive-hooks](https://help.github.com/articles/post-receive-hooks)
* [http://training.github.com/resources/videos/](http://training.github.com/resources/videos/)
* [http://carl-topham.com/theblog/post/using-git-media-temple/](http://carl-topham.com/theblog/post/using-git-media-temple/)
* [https://github.com/githubtraining/feedback/issues?state=open](https://github.com/githubtraining/feedback/issues?state=open)
* [https://github.com/blog/1227-commit-status-api](https://github.com/blog/1227-commit-status-api)
* [http://teach.github.com/articles/lesson-git-credential-cache/](http://teach.github.com/articles/lesson-git-credential-cache/)
* [http://teach.github.com/articles/github-issues-cheatsheet/](http://teach.github.com/articles/github-issues-cheatsheet/)
* [https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)

## Installation
* Git Installation
    * [http://git-scm.com](http://git-scm.com)
    * [http://windows.github.com](http://windows.github.com)
* Minimum is 1.7.ANYTHING
* Best is 1.7.10 or higher

## Suggested Books, Articles
* ProGit: [http://git-scm.com/book](http://git-scm.com/book)
* Getting started with Version Control: [http://teach.github.com/articles/lesson-new-to-version-control/](http://teach.github.com/articles/lesson-new-to-version-control/)
* Git Workflows: [https://github.com/zkessin/dvcs-workflows](https://github.com/zkessin/dvcs-workflows)
* Cheat Sheets: [http://teach.github.com/articles/git-cheatsheets/](http://teach.github.com/articles/git-cheatsheets/)

## Course Materials, Links
* Training Materials: [http://teach.github.com](http://teach.github.com)
* Slides: [http://teach.github.com/articles/course-slides/](http://teach.github.com/articles/course-slides/)
* Post-event Git and GitHub questions: [https://github.com/githubtraining/feedback/](https://github.com/githubtraining/feedback/)
* Free Office Hours Sessions: [http://training.github.com/web/free-classes/](http://training.github.com/web/free-classes/)


## Day 1 Q&A Transcript

    Q: Can you use regular expressions in the .gitignore file?
    A: Not exactly. It has a way of getting file globs. Like a "*" or something like "*.log", etc. Some examples of general git ignores could be found at https://github.com/github/gitignore for specifics per language project.
    Q: git --help     is quick and dirty.
    A: Indeed.
    Q: Any chance of displaying caesar.txt for us slow typers?
    A: --unanswered--
    Q: Maybe you could pipe your command lines using tee to this window as well?
    A: Richard – Constantly thinking of how to do that. Bummer is that the webinar solutions are not very scriptable.
    Q: Maybe you could pipe your command lines using tee to this window as well?
    A: Not sure i completely follow what you're asking?
    Q: git --help     is quick and dirty.
    A: Good point.
    Q: What if you just want to copy a file somewhere?
    A: There's a `git cp FILENAME` if you want to copy
    Q: If an attendee opened the session on a desktop, but wants to transition to a laptop, is that possible?
    A: You bet. Just log out and log back on with the same login info
    Q: if you have two files of very simliar or identical content, but they are at different locations and purposed for different applications, git maintains separation in that instance?
    A: Yep! feel free to even try this out. by copying a file and placing it in a new directory. add that file, then see that it's not a rename. =) even if it's the same content!
    Q: i'm in bay area
    A: Keep us apprised. We'll do whatever we can! 3/60 students reporting choppiness, but better now.
    Q: my sound is getting choppy
    A: --unanswered--
    Q: hi i'm signed back in - i'm a little lost as to what's going on now. could you send me the commands that were used to navigating with moving around files?
    A: http://githubtraining.s3.amazonaws.com/github-git-training-slides.pdf
    Q: what's the protocol for resolving any merge conflicts before merching branches?
    A: This is something we'll touch on tomorrow, in the morning, but there's a number of tools to use to resolve merge conflicts as well as just plain text editors.
    Q: random question: i've used a git+svn tool which allowed me to use git-like commands for my SVN repo, was wondering if there exists one for perforce such that i could use "git-perforce"?
    A: There is indeed git-p4. I'll grab a link.
    Q: random question: i've used a git+svn tool which allowed me to use git-like commands for my SVN repo, was wondering if there exists one for perforce such that i could use "git-perforce"?
    A: Lauren: http://kb.perforce.com/article/1417/git-p4
    Q: hi i'm signed back in - i'm a little lost as to what's going on now. could you send me the commands that were used to navigating with moving around files?
    A: Slide 213 in that deck for moving files around
    Q: what exactly is ""git cat-file"" doing
    A: cat-file is looking at the contents (making it human-readable) of any hashed object. This could be a file (a blob) or a tree (a folder) or a commit
    Q: since i lost sound should i try to re sign in?
    A: Yes. Definitely! And know we'll catch you up and you can join a future instance of the class too.
    Q: what's the resulting number?
    A: The "SHA-1"s that you see emitted (40 hex characters) are globally unique identifiers for each commit transaction, much like a revision number in say, Subversion.
    Q: hi i'm signed back in - i'm a little lost as to what's going on now. could you send me the commands that were used to navigating with moving around files?
    A: Sure thing. In fact, I can do even better. One sec.
    Q: i think i'm experiencing web connectivity issues on my end actually
    A: Oh. Bummer.
    Q: can I find out whether a value is from system, global or local
    A: yep! "git config --global --list" vs "git config --local --list"
    Q: I'm running 1.8.0, but pretty=fullest returns fatal: invalid --pretty format: fullest
    A: That's actually not a format. The only that are similar are: "full" and "fuller"
    Q: will we be covering branch vs tag tomorrow and when to use vs the other?
    A: Absolutely. We'll probably do tags after merge conflicts.
    Q: what happens if you git checkout 12345 and there are two hashes that start out with that sequence?
    A: It will just ask you to be more specific, since it wont know what you mean. :)
    Q: is a mic required? I couldn't get one in time at work and I didn't want to sit on the phone for 3 hours. I figure I can ask questions I might have on here...
    A: No worries. Just text will be fine. No mic required.
    Q: no problems in MD
    A: Jaosn - Thanks. That helps!
    Q: so copies of files that ARE changed are saved everytime?
    A: They are from the user perspective. Ultimately, this last thing that Tim is mentioning about compression at the reop level, there's a savings on space that makes it seem like it doesn't from a disk consumption standpoint.
    Q: awesome, thanks
    A: --unanswered--
    Q: is the last line every time in the txt file a blank line, or are the lines with text the only //actual// lines?
    A: That's just a product of his text editor. they're actually not additional lines. pretend they're not there!
    Q: if you have more than one, which one has more control if they have contridicting info?
    A: As specified in the audio, the further down into a folder of a git project, the more control overwriting control. let us know if you have more questions about this!
    Q: In the context of Hash, then the 'add' command doesn't matter?
    A: Not sure i follow. sorry for the delayed response! when git-add'ing something, you wouldnt specify a hash traditionally
    Q: I'm using version 1.7.5.4, is that ok?
    A: That being said. That was around the same version I was using, so we'll just work with you to get through it.
    Q: I'm in Sunnyvale, CA.  But it's crystal clear now. Thanks
    A: Interesting. Keep us posted! Thanks.
    Q: looks like I'm losing audio, not sure if it's the same for others.
    A: You are the only report of it. Checking with the other 60 folks...
    Q: I'm using version 1.7.5.4, is that ok?
    A: Fabio - You will likely have a little challenge using the interactive HTTPS username/password prompting with GitHub.
    Q: FYI, It was a bit hard to follow all the move command, mainly because of the audio loss and some of the scripts that auto-created the files.  But not a big deal, I can watch it again later.
    A: Ok, well if you have any questions, please feel free to ask.
    Q: I'm in Sunnyvale, CA.  But it's crystal clear now. Thanks
    A: Okay. Keep us apprised.
    Q: As I understand, I only look for the hash info when I do a commit; on a 'git add' I don't care about the hash.
    A: That's correct. No commit hash is generated when you add. You only get one when committing, and only care about them when looking at history, merging, checking out, etc.
    Q: are we in a break?
    A: Yup. Tim just annouced that until half-past the hour. About 8 more minutes. :)
    Q: ignoring why I want this to happen, just for the sake of discussion, let's say I have a repo with one 100 MB file in it. I change 1 byte, commit/push -- the repo is now taking up ~200 MB?
    A: It is, temporarily, but it will get compressed and made more efficient as Git house-keeps the history periodically.
    Q: the reason for asking is that ""."" marks a file as hidden in unix. but in windows that's not hidden. you have to add an attribute to the file to mark it as hidden so it doesn't show up in commands like ""dir""
    A: David - Actually will always show up on Windows -- no real Git-flavored way to suppress them from showing in the Explorer or dir listings
    Q: will git automatically mark .gitignore files as hidden in windows?
    A: Git treats .gitignores as ""source code"" until you ignore it on all platforms. No different treatment between Win/Mac/Linux
    Q: it's still theoretically possible to have a collision w/ your hash. how does git handle collisions?
    A: Well, as you get longer and longer with your hash, it becomes harder and harder. The linux repo itself, with its unbelievable amount of commits has only ever had 1 collision i believe, and matthew can back me up on this, but it may have only been because of 7 digit hashs. thats why often times on github.com, you only really need to specify 7 digits. Eventually there may be a time when a hash becomes non-unique, but most repositories will not reach this.
    Q: Yes, it's highly unlikely, but it's *possible* -- so does git then do nothing about collisions?
    A: Correct. Does nothing about them in terms of re-using. Let me send you a link to some data about that. Recently discussed.
    Q: ""watch git lg"" would work similarly
    A: Yes, but watch isn't universally present on all systems. My script works everywhere Git is found. :)
    Q: What does the @@ mean? 
    A: Making a guess here in terms of seeing that in patch output, that's a marker around the filenames and blocks of changes.
    Q: What does the @@ mean? 
    A: Not sure! Where are you seeing this?
    Q: If I make a change and I run ""git diff"" the difference has @@ -6,3 +6,4 @@...then it shows the diff results
    A: ah, As far as i know it's just a seperator for that line. to give a summary of the line changes.
    Q: Tim's volume also seems to have gone down
    A: If it seems to get worse and not recover, let us know. Seems it was poor for a few people for a bit.
    Q: watch -n 2 git log …..       would do the same thing
    A: haha, true! however do all systems have watch? Not sure if that works on windows!
    Q: Oh, don't worry about that. I'm very willing to ask questions :D
    A: Couldn't be happier to hear, haha
    Q: Fancy $PS1
    A: Chanel/Hermes level fancy.
    Q: A good amount of Mercurial use here
    A: We'll do our best to answer some of the questions you may have from hg to git. Any that we can't, we'll be sure to point you in the right direction!
    Q: A good amount of Mercurial use here
    A: Cool. I can help speak to Mercurial too. Have used it a bit in my work efforts.
    Q: reduces git loglive to an alias
    A: Yeah, I know about watch. I'd use it, but it creates an extra dependency that isn't present on all systems. My loglive script requires only Git. :)
    Q: git config --lovsl
    usage: git config [options]
    A: You seem to have mispelled --local!
    Q: Tip - you can save all the commands you type for later review by running something like script /tmp/git-training
    A: Definitely!
    Q: Is there a way to include other ""gitignore"" files so that I can have .gitignore that includes .gitignore-vim and .gitignore-symfony for example?
    A: I don't believe .gitginores nest yet. The gitconfig files can though.
    Q: btw, you can use ""watch"" instead of a loop+sleep - http://en.wikipedia.org/wiki/Watch_(Unix)
    A: Sweet. The sleep was to make it work on some obscure system where watch wasn't working
    Q: Funny it's called cat-file instead of cat-blob...
    A: Shahar: Supporting Brent - That also derives from the fact that each hash for tree or blob is stored as a file in .git/objects
    Q: I've never found the git log --stat feature useful. From your experience, when is this feature useful?
    A: Could be useful for finding the biggest change you have. to allow you to find a commit you want to run --patch on for example, or just getting a higher, more abstract, view of a commit
    Q: Funny it's called cat-file instead of cat-blob...
    A: Well, git tries to stay as close to just those unix comands: git-rm, git-cp, etc. It tries to abstract to the user what you're ""cat""ing
    Q: I have git 1.8.0. Why do I get the usage message when I type git config --local?
    A: did you get this squared away? You don't actually need the --local flag
    Q: I assume that --abbrev-commit will shorten to longer than 7 if 7 is not unique for that repo?
    A: Furthermore, looking at the description of --abbrev-commit: ""Instead of showing the full 40-byte hexadecimal commit object name, show
               only a partial prefix. Non default number of digits can be specified with
               ""--abbrev=<n>"" (which also modifies diff output, if it is displayed)."" So, if you noticed duplicates, you could make it show more on a second pass.
    Q: I assume that --abbrev-commit will shorten to longer than 7 if 7 is not unique for that repo?
    A: Shahar - Actually it will not adapt. It is a hard 7 chars.
    Q: Sounds good
    A: --unanswered--
    Q: The downside of excludes file is that it's not part of the repo so it won't get shared when people clone your repo
    A: Precisely. Good point.
    Q: can you paste that link?
    A: You bet.
    Q: I have git 1.8.0. Why do I get the usage message when I type git config --local?
    A: Hmmm.  Shouldn't get a usage message on --local. Can you copy and paste exactly from the command line and Brent and I will look?
    Q: Read http://git-scm.com/book/ch6-1.html#A-SHORT-NOTE-ABOUT-SHA-1 if you are concerned with collisions
    A: Yes! Thank you =)
    Q: What's that thing that runs on the right side of the screen?  How do you get it to update automatically?
    A: That's a little script I wrote call log live. I'll send a link.
    Q: You are specifying --date=relative but the dates are still absolute in the output. Why?
    A: Shahar - Some option switches are dominated by others. Relative is one that is often superceded by things like raw
    Q: do you HAVE to set user name and email?
    A: Yes indeed. It will complain if you do not when you commit. Those name and email strings are saved into the contents of each commit.
    Q: What's the point of the staging area?  Why a native directory AND a staging area?
    A: As he's about to point out, the staging area is pretty important, and the use of it becomes more and more important as our project gets larger and larger, depending of our workflow. Sometimes we want to bundle up changes with other, similar files. You will definitely see this shortly.
    Q: Hi MAtt
    A: Howdy Mikhail!
    Q: can we specify the commit hashes that we can merge?
    A: Cherry-pick is your alternate command that does precisely that. :)
    Q: its cutting in and out
    A: --unanswered--
    Q: now the sound is back on
    A: whew! Tim is just  going over the 4 architectural parts of git
    Q: thanks
    A: --unanswered--
    Q: would we go over cherry pick tomorrow?
    A: I'll make sure we do.
    Q: thanks
    A: --unanswered--
    Q: and do I need to get a key and drop it to my github account ahead of time?
    A: We'll actually use HTTPS for all of the class to make it as smooth as possible.  So no worries about the key as long as you have a GitHub account.
    Q: on the IDE side, is it possible to take a look at the GIT integration with the Visual studio? thanks
    A: Mikhail, it likely won't be part of the class (not part of the planned outline), but I can cheerfully point you at the right resources!
    Q: I just had a question about ignoring files that are already tracked (I don't want them deleted)
    A: So, if you track a file and then ignore, it will still show them as tracked.
    Q: again
    A: Mikhail - Can you dial in from a land line? You're currently the only of 60 students reporting that. But we want the experience to be good for you.
    Q: missed all the sound from the last slide
    A: Are you all caught up now?
    Q: an example of the good "cheat sheet" will be really appreciated, if there is one
    A: http://ndpsoftware.com/git-cheatsheet.html
    Q: I just had a question about ignoring files that are already tracked (I don't want them deleted)
    A: Ah. Complex question. So, Git "values" keep track of a file over ignoring it.
    Q: I just had a question about ignoring files that are already tracked (I don't want them deleted)
    A: So the tactic is to ""untrack""the file with git rm FILENAME, then commit that, then the ignore will kick in.  You can even git rm --cached to preserve the file on disk, but remove it from being tracked.
    Q: basically how do I share branches, can I share them with a particular team member?
    A: We'll go over branch sharing tomorrow. Lots to say about that. :)
    Q: an example of the good "cheat sheet" will be really appreciated, if there is one
    A: http://teach.github.com/articles/git-cheatsheets/
    Q: well the video is good and the sound seems to be back in
    A: Hmm, everything sounds fine for me. Are you on wireless?
    Q: question- can we do add * ?
    A: We can! but as you may see Tim do later, we generally tend to do ""git add ."" if we wanted to add everything in the current directory (the ""."" is the current directory). however, we generally want to explicitely add a file name when we add it.
    Q: as currently  i don't hear anything
    A: There's a choice of audio output on the menus of this app
    Q: like if we don't want to merge the latst commit of the feature branch with the latest of the master, but we want to merge the one before last to the master
    A: You can use the ""cherry-pick"" command to accomplish what I hear you asking for. Cherry pick is a more specific merge that lets you choose individual commits to merge in to another branch rather than the entire branch.
    Q: if I push my local repo to the public, would all the branches be pushed as well, or can I specify that?
    A: You actually *have* to specify the branches you want to share. You push them one by one. We'll do that tomorrow.'
    Q: when you branch with unstaged edits do they end up in your new branch
    A: As matthew answered this in audio, absolutely!
    Q: can you include something ignored at the global .gitignore?
    A: Yes indeed you can. Just !THEFILENAME and it reverses a previously seen ignore.
    Q: isn't he actually typing poetry?
    A: Yep. Tim is quite the poet! Fortuntately for us, he knows it.
    Q: did he just say the F word? lol
    A: haha not sure. Whoops if he did!
    Q: will you be sharing your slides after the class?
    A: Most certainly! The follow up email has all of that and more. Book links. Cheat sheets. Etc.
    Q: isn't he actually typing poetry?
    A: Greg - True. ;)
    Q: the halt is atomic?
    A: Yes.
    Q: oh so a .gitignore in a subfolder completely replaces the global ignores
    A: Greg - Supplements them. They literally get ""concatenated"" to one another.
    Q: what did he just type
    A: "git log --stat"
    Q: I thought it was later tomorrow?
    A: Nope, same time same place. a link should be sending out later today.
    Q: is .gitignore folder specific or rep specific
    A: It's actually directory specific. For example, in more recent ruby on rails projects, every folder that is automatically created when you start a project has it's own ".gitignore" file. The one in a specific folder takes the most presidence, next in importance is the app directory one, then --global as the least presidence (easiest to overwrite at a more specific level). Sound good?
    Q: done.
    A: Did you find a .git folder in C:\?
    Q: Is the chat session going to be sent out as well?
    A: You bet.
    Q: i'm not sure if i add git to my path though, can i just add git to my path and then use my command line?
    A: Yes indeed.  If the git binaries are on your path, you can use them in any prompt.
    Q: fixed. thanks for your help
    A: Beautiful. Rely on us for anything to catch up. The summary is ""create a file"", then ""git add it"" then ""git commit -m""My Commit""""
    Q: $ git add caesar.txt
    fatal: pathspec 'caesar.txt' did not match any files
    A: Ah. go ahead and create that file, and then add the text to it and save it, before adding it. we need to create the file first.
    Q: Is it possible to share a common file between multiple branches?
    A: If the file is going to be on the new branch just as it was on master. I wouldnt think of it manually sending a bunch of files from one to another, as you branch off of a branch to another branch, that file is still being tracked
    Q: pwd = /e/git/newproject
    A: David - It is very possible that your ""git init"" was run at the top level of your disk though.  Git looks upwards recursively for a .git folder. Can you check with say, a Windows Explorer on your directories upwards?
    Q: djkasper@CRP16553 /e/git/newproject (
    $ git status
    # On branch master
    #
    # Initial commit
    #
    # Untracked files:
    #   (use ""git add <file>..."" to inclu
    #
    #       AUTOEXEC.BAT
    #       CONFIG.SYS
    #       Documents and Settings/
    #       GNATPRO/
    #       IO.SYS
    #       Intel/
    #       LotusPre85/
    #       MSDOS.SYS
    #       MSOCache/
    #       NTDETECT.COM
    #       NVIDIA/
    #       Perl/
    #       Pinnacle/
    #       Program Files/
    #       Python26/
    #       Python27_/
    #       RECYCLER/
    A: David - A troubleshooting workaround. Can you install from http://windows.github.com? If you download that installer and isntall it will give you a new icon on the desktop. If you then open ""GitHub""
    Q: I am using gitbash. i'm not sure if i have the installer any longer. I can quickly reinstall it quickly.
    A: open this same ""newproject"" folder in Windows explorer and check if there's a .git folder there.  Then go to C:\ and if there is a .git folder in C:\, delete it
    Q: So, the idea is to 'merge' between the branches, if the file needs to be in both branches?
    A: Supporting Brent on this.  Right. The branches ""contain"" the differing changes and let them stay in ""hold"" until you are ready to combine them.
    Q: :( the file exists.
    A: can you type a ""git status"" as well as a list of the files in your current directory for me?
    Q: pwd = /e/git/newproject
    A: In short, we need to verify that you don't have that magic .git folder existing any place but this newproject directory (definitely no .git in any directory more upwards, including C:\)
    Q: there isn't a .git in c:\, but there is in the git install directory. C:\Program Files\Git\.git
    A: Ah! Clean that. Delete that .git folder
    Q: So, the idea is to 'merge' between the branches, if the file needs to be in both branches?
    A: Yes, or in general, if you want the changes in the branch, you have to merge it in. Could be new files, changed files, deleted files, moved files, etc.
    Q: pwd = /e/git/newproject
    A: Can you paste us the first little bit of the git status output? We may be able to puzzle about it a bit better with that
    Q: I think i will reinstall during the break, since it will kill the presentation.
    A: Okay. We will continue helping. :)
    Q: trying to catch up.
    A: Glad to help. Just let Brent and I know.
    Q: i'm doing  search for .git directories.
    A: --unanswered--
    Q: djkasper@CRP16553 /e/git/newproject (
    $ git status
    # On branch master
    #
    # Initial commit
    #
    # Untracked files:
    #   (use ""git add <file>..."" to inclu
    #
    #       AUTOEXEC.BAT
    #       CONFIG.SYS
    #       Documents and Settings/
    #       GNATPRO/
    #       IO.SYS
    #       Intel/
    #       LotusPre85/
    #       MSDOS.SYS
    #       MSOCache/
    #       NTDETECT.COM
    #       NVIDIA/
    #       Perl/
    #       Pinnacle/
    #       Program Files/
    #       Python26/
    #       Python27_/
    #       RECYCLER/
    A: David - This is rather unusual. Brent is right in that there's a difference between what your shell thinks current directory is and what git thinks current directory is
    Q: I am using gitbash. i'm not sure if i have the installer any longer. I can quickly reinstall it quickly.
    A: No need to reinstall. Just trying to mentally build a model of what's up.
    Q: $ git add caesar.txt
    fatal: pathspec 'caesar.txt' did not match any files
    A: Ah. just create a ""caesar.txt"" file with the text that tim has posted into chat. and any additional 2 lines you wish to add
    Q: my git status show my entire C:\ contains. How can i make it use only the newproject contains?
    A: are you inside of your ""newproject"" directory?
    Q: djkasper@CRP16553 /e/git/newproject (master)
    $ git status
    # On branch master
    #
    # Initial commit
    #
    # Untracked files:
    #   (use ""git add <file>..."" to include in what will be committed)
    #
    #       AUTOEXEC.BAT
    #       CONFIG.SYS
    #       Documents and Settings/
    #       GNATPRO/
    #       IO.SYS
    #       Intel/
    #       LotusPre85/
    #       MSDOS.SYS
    #       MSOCache/
    #       NTDETECT.COM
    #       NVIDIA/
    #       Perl/
    #       Pinnacle/
    #       Program Files/
    #       Python26/
    #       Python27_/
    #       RECYCLER/
    #       Rational/
    #       SRC/
    #       Temp/
    #       Tools/
    #       UDC Output Files/
    #       VAPSXTDTD/
    A: Looking and pondering. Are you using a Git Bash Prompt? Which installer did you use? (Just gathering facts to try and sort this out)?
    Q: there isn't a .git in c:\, but there is in the git install directory. C:\Program Files\Git\.git
    A: We truly only want one .git folder for now, just in the newproject directory
    Q: Seems like the audio has gone out for a few of us. :(
    A: Keep us posted if it doesnt come back!
    Q: Audio sounds crystal clear from Upstate NY
    A: Bradley – High bandwidth in upstate NY for the win.
    Q: Rome, NY...near Syracuse.
    A: Not to be distracting, but I love Rome. Gorgeous area, IMHO.
    Q: Audio sounds crystal clear from Upstate NY
    A: I'm in San Francisco and I'm also not hearing any problems. Thanks!
    Q: I have someone next to me waiting for approval from the organizer to join
    A: Approved!
    Q: easy to repeat how he put up the live log?
    A: Kind of, Matthew will get a link for this and it will surely be shared after the class. More importantly, Tim is just using it as a presentation helper to show how things change in respect to branching
    Q: --word-diff appears to implly -w as well
    Q: Also, Tim is getting quiet again...
    A: Hmmm. Will check. Level meter shows 3/4 of the way.  Doing what we can…  Only report of that so far.  :)
    Q: tree didn't work for us...is that not windows? or is it 1.8 only?
    A: Ah. Tree is a nice unix utility that you can install that shows a list of files and folders. What OS are you using today?
    Q: tree didn't work for us...is that not windows? or is it 1.8 only?
    A: Kyle - I just went to my Windows 7 machine and tested tree from the command line. I next need to ask what Shell/Command window you are in.  Is it a Git Bash prompt or a regular Windows Command prompt or PowerShell?
    Q: tree didn't work for us...is that not windows? or is it 1.8 only?
    A: sounds like i mispoke! it works in CMD! sorry Kyle :)
    Q: We are on Windows over here
    A: Do you have github for windows installed? http://windows.github.com/ it will install a shell for you (and a shortcut to it put on your desktop) that should set you up to follow along
    Q: Tim's getting quieter by the minute
    A: Better?
    Q: Please have Tim announce out loud the commands he is typing...we've missed a few while we are typing and then they were already scrolled off screen. 
    A: --unanswered--
    Q: no problem :)
    A: --unanswered--
    Q: tree didn't work for us...is that not windows? or is it 1.8 only?
    A: it's a unix command, unfortunately.
    Q: Can you turn up Tim's volume?
    A: Will remind him. Seems pretty loud for about the 10 that responded to our check, but will see what we can do.
    Q: I got an error pathspe when trying to commit my new files... ""dig not match any files known to git""
    A: --unanswered--
    Q: oh nevermind had a space  between - and m
    A: Whew. :)
    Q: We were in Git Bash, not windows command prompt
    A: --unanswered--
    Q: tree didn't work for us...is that not windows? or is it 1.8 only?
    A: You can use ""brew install tree"" or ""port install tree"" to load it on a mac or ""apt-get tree"" (or your own package manager) on many Linux distros
    Q: Sunnyvale (California). Might be realted to my network. Let me double check that
    A: Okay. Let us know. We'll do whatever we can.
    Q: I just lost the audio
    A: Just curious, where are you located?
    Q: And audio is back for me
    A: Okay. Good. Still only 3/60 reporting choppiness but let Brent and I know how it goes.
    Q: And audio is back for me
    A: glad to hear! keep us posted =)
    Q: sounds good here too
    A: Super. Welcome and good morning!
    Q: I could hear fine.  I am dialed in using a land line if that makes a difference.
    A: Plain old telephone system (POTS) for the win.
    Q: I see a blank screen right now, is that intentional?
    A: haha yes, he was preping a slide :)
    Q: what was the command for the live listing?
    A: Here you go: https://github.com/matthewmccullough/scripts/blob/master/git-graphlive
    Q: how do you call that philosophers' problem?
    A: If you're asking what it's called, it's called the Ship of Theseus. http://en.wikipedia.org/wiki/Ship_of_Theseus
    Q: HI
    A: Howdy!
    Q: I ran the commands as asked however using two machines.  Linux box not on the network.  Windows box for Webinar.  
    A: Sounds like that will work fine. Will you be able to reach the internet with the linux box for pushing and pulling to GitHub repos?
    Q: When I use the diff command it always takes me to something that looks like a ""vi"" window?  CTRL z to exit?  
    A: Douglas - I've not seen diff invoking VI in any default out-of-box install. What OS and installer did you use for Git? You'll not want to ctrl-z as that suspends vi. I think it is better to ESC :q
    Q: how do you install tree on Mac?
    A: If you have homebrew or mac ports, just a `brew install tree` or `port install tree`
    Q: is it possible to share the slide? Slideshare is fine
    A: You bet. Resources and slides all going out this afternoon
    Q: I got a conflict while merging. Can we discuss that really quickly?
    A: As mentioned in audio, that's the first thing we'll touch on in the morning! Stay tuned ;)




## Day 1 Command History

    git init newproject
    ls
    cd newproject
    ls
    ls -la
    tree .git
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config color.ui
    git config --global color.ui auto 
    tree
    pwd
    ls -la
    l
    ls
    vi caesar.txt 
    ls
    git status
    git add caesar.txt
    git status
    git commit -m "Initial commit"
    git status
    pwd
    ls -la
    tree .git
    ls
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    pwd
    ls -la
    git status
    git commit -m "Costly blood"
    git status
    ls
    vi caesar.txt
    git diff
    git add caesar.txt
    git diff
    cat caesar.txt
    git diff
    git diff --staged
    git status
    vi caesar.txt
    git diff
    git diff --staged
    git diff HEAD
    git status
    git add caesar.txt
    git status
    git diff --staged
    git commit -m "Dumb mouths"
    git status
    vi caesar.txt
    git diff
    git diff --word-diff
    git diff
    vi caesar.txt
    git diff
    git diff -w
    git diff -w --word-diff
    vi caesar.txt
    git diff --word-diff
    git add caesar.txt
    git commit -m "Fixed line four so it scans as iambic pentameter"
    git log
    git log --stat
    git log --patch
    git log --patch --word-diff
    history
    git log -p 
    git log -p -1
    git log --pretty=full
    git log --pretty=fuller
    git log --pretty=fullest
    git log --pretty=raw
    git log --pretty=oneline
    git log --pretty=oneline --abbrev-commit
    git log --pretty=oneline --abbrev-commit --graph
    git lg 
    ls
    tree
    echo "Log file content" > console.log
    ls
    mkdir build
    echo "angry" > build/monkey.dat
    tree
    git status
    ls -la
    touch .gitignore 
    ls -la
    vi .gitignore
    git status
    git add .gitignore
    git add *
    git status
    git commit -m "Added a .gitignore file"
    history
    git config core.excludesfile
    vi ~/.gitignore 
    ll
    mkdir files
    cd files
    touch .gitignore
    tree ..
    ls -la
    pwd
    cd ..
    ll
    rm -rf build
    rm console.log
    ls
    ls -la
    generaterandomfiles 5 file txt
    ls
    git status
    rm -rf files
    git status
    git add .
    git sttus
    git status
    git commit -m "Add some files prepared for destruction"
    ls -la
    git rm file1.txt 
    ls -la
    git status
    rm file2.txt
    ls -la
    git status
    git rm file2.txt 
    git status
    open .
    git status
    git add .
    git status
    git add -u . 
    git status
    git commit -m "Destroyed those files I said I prepared for destruction"
    git status
    git log --stat
    ls
    tree
    mkdir files
    generaterandomfiles 5 file txt
    git status
    tree
    git add files
    git status
    git add .
    git status
    git commit -m "Five fresh files to move"
    tree
    ls -la ~
    ls -la ~ > listing.txt
    ls
    git status
    git add .
    git commit -m "Prepared a long-ish file for ADVANCED MOVING"
    ls -la
    ls -l
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    cat files/file1.txt
    cat files/file2.txt
    git status
    git add -A .
    git status
    git commit -m "Moved FIVE WHOLE FILES around. Tired now."
    git log --stat -1 
    git log --stat -1 -M 
    tree
    vi listing.txt
    git diff
    git status
    git add -A .
    git status
    git commit -m "Moved a thing while changing it"
    git log --stat -1
    git log --stat -1 -M
    git log --stat -1 -M92
    git log --stat -1 -M94 
    git log --graph --pretty=oneline --abbrev-commit
    git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit"
    git lol
    git config alias.lg
    git lg
    history
    git log --pretty=raw -1
    git log --pretty=raw -2
    git log --pretty=raw -1
    git ls-tree 0aa662f0655c010e8021f28d688d0613e70b8710
    ls -la
    ls ls-tree a3d3c097e44c922d0de3ca457df2ebcbc1c61b7a
    git ls-tree a3d3c097e44c922d0de3ca457df2ebcbc1c61b7a
    git cat-file -p ef03217dca2bce8bf43c63fb481b26c386c15204
    git cat-file -p f6f64bcb9681f45edb0a0d495f6ad22b33def7de
    git cat-file -s f6f64bcb9681f45edb0a0d495f6ad22b33def7de
    git help cat-file
    tr.git
    cd scratch/newproject
    git loglive
    tree .git/refs
    git status
    git branch
    git branch feature
    tree .git/refs
    cat .git/refs/heads/master
    cat .git/refs/heads/feature
    git branch
    git checkout feature
    git branch
    vi caesar.txt
    git status
    git add .
    git commit -m "Added a title to Caesar"
    vi tolkien.txt
    git add .
    git commit -m "Added poem about Aragron"
    git branch
    ls
    cat caesar.txt
    git checkout master 
    ls
    cat caesar.txt
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git lg
    git merge feature
    git log --pretty=raw -1
    git lg
    cat ~/scripts/git-loglive
    vi ~/scripts/git-loglive
    git-loglive
    git loglive

## Day 2 Q&A Transcript

    TODO


## Day 2 Command History

    TODO
