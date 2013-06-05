---
layout: bare
title: Git and GitHub Basics
description: Git/GitHub Basics Free Online Class Notes
tags: [notes, online, class]
path: classnotes/2012-11-05-git-github-basics-online.md
eventdate: 2012-11-05
---

Held on November 5, 2012

* Taught by Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Supported by Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))

<iframe width="480" height="360" src="http://www.youtube-nocookie.com/embed/pIGYELKPeog?rel=0" frameborder="0" allowfullscreen></iframe>


## Installation
* Git Installation
    * [The Git-SCM Web Site (All Platforms)](http://git-scm.com)
    * [The GitHub for Windows Client and Command Line](http://windows.github.com)
* Minimum is 1.7.10, but can have issues with HTTPS credential prompting.
* Best is 1.8.X or higher

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

## Tools, Tips, Shortcuts

* [ghi gem](https://github.com/stephencelis/ghi)
* [hubgem](https://github.com/defunkt/hub)
* [gist gem](https://github.com/defunkt/gist)
* [gitg](http://git.gnome.org/browse/gitg) instead of gitk
* [tig](http://gitready.com/advanced/2009/07/31/tig-the-ncurses-front-end-to-git.html)
* [Matthew's shell scripts](https://github.com/matthewmccullough/scripts)
* [Matthew's Git aliases](https://github.com/matthewmccullough/dotfiles) (in the gitconfig file)

## Resources

* SSL Certificates
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


## Q&A Transcript from Git and GitHub Basics

* Q: are pull requests github specific or is this possible to do this in command line on arbitary (non github) repos?
* A: Yep, this is a GitHub feature! Previously people would send patches or diffs of the changes around via email and it was a very manual process, haha

* Q: Are we going to discuss converting svn --> git at all?  It is doable with git svn but it is verrrry slow for a very large repo with lots of branching/tagging.  svn2git does not seem that much faster and is more buggy.  Perhaps this is better left for office hours but thought I'd throw it out there.
* A: I do not believe so. Matthew will be able to handle questions in office hours afterwards however.

* Q: Can you cover the differences between git revert, git checkout, git reset and git cherry-pick and the subtelties between them?

* Q: Currently I'm ending my 1st year as junior tester. Could I join a project as a tester, throuth git? (for any type of white box testing)

* Q: do we need to have git open?
* A: If you'd like to follow along it'd be good to have a terminal window open. If you're on Windows and have downloaded github for windows (window.github.com) you can open the shell environment that is downloaded along side of that,

* Q: excellent opening point, a dev/business ""why""

* Q: where do i find the commands to paste into terminal to commit the first changes to github?
* A: They will be shown after class/office hours to the repository: http://teach.github.com/classnotes/2012-11-05-git-github-basics-online

* Q: is this version control limited to non-graphic projects only?
* A: Not exactly. GitHub has some features within itself to see diffs of images, however git itself is meant to track changes to text files mostly.

* Q: hi, it may have been asked before, but which shell / configuration is used to have the repo (branch) at the prompt
* A: Ah, we didn't talk about it, but that's just a configuration matthew has set up, i actually don't have that on my own.

* Q: holy crap image diff!
* A: IT'S AMAZING. There's a blog post about it here: https://github.com/blog/817-behold-image-view-modes
* Q: what's the mac equivelant of tree?
* A: it is a mac command as well.

* Q: how can we tell if we can push our created branches to github.. if we have privillages for this
* A: We could look at the repo on github and see the ""Read+Write access"" part of that HTTP/SSH/git where that origin is posted. Do you see this on repos? If it only says ""read"" then that means we cant push to that repo and would need to be a collaborator or admin of that repo.

* Q: How do you change the default git directory so it's not in the users folder, but in my documents folder?
* Q: How do you get master access, or is that standard and my mac just doesn't show it?
* A: Master is the default branch that is started whenever you create a new repo. you can see this by typing ""git branch""

* Q: How do you change the default git directory so it's not in the users folder, but in my documents folder?
* A: It's just a matter of wherever you've typed ""git init"". you could have hundreds of git repos locally as they're at a folder level. Make sense?

* Q: i cant do tree command on windows
* A: Yeah. I'm not quite sure if this is what you'd be looking for, but for windows: http://www.computerhope.com/treehlp.htm

* Q: I could not get the things very clear. my goal is to get the files of PureData from the website, there will not be teamwork or something. what are the main commands that i should know?
* A: I'd start here: http://git-scm.com/book/en/Getting-Started with the basics of git! Or ask this question in office hours and we can address it there.
* A: You actually just need git! This comes installed on osx 10.8 by default. so you should be good to go. If you want to play around on github, you can go to github.com/signup/free

* Q: I was always curious about how Git handled image differences, since all the emphasis is on code. Wow, image diffs are insane. 
* Q: How was your command prompt colorized? 
* A: I believe that can be found here: https://github.com/matthewmccullough/dotfiles

* Q: I'd like to have more infor, or pointed to the right direction, if there is a Fork of my project, and they make changed I would want, can I merge those changes to my master?

* Q: If I give a freelancer right to fork our private project, is it going to be public on his end?
* A: Nope! only if he explicitly marked it as public of his fork. the permissions carry across on forking

* Q: is there a difference between training.github.com and teach.github.com?
* A: Yep! teach.github.com is more of a resource center, where training.github.com is our site explaining our work and workshops.

* Q: what is the -u in the push command?
* A: the -u is just a good flag to add when you're pushing for the first time. As you may be able to see, it'll set up remote tracking. That way if something happened on the remote, you're local branch could know what it was missing after a ""git fetch"" on that remote. it also allows pushing to be a little easier

* Q: just want to make sure I don't mess antying up with my other reposititory - should be ok?
* A: ah, yeah each git repo is local to its own folder, impossible for you to screw anything else up
* Q: it says git remote add orgigin ... fatal: remote origin already exists. would love to be able to connect
* A: Ah, ok, can you type a ""git remote -v"" and paste the results here for me?
* Q: origin  https://github.com/hellomcenerney/project1.git (fetch)
origin  https://github.com/hellomcenerney/project1.git (push)
* A: Perfect! so, your origin is set up correctly =) You should be able to just ""git push -u origin master"" and youll update github with your local changes to master. if you wanted to add a new branch (ie, like novclassfeature) after adding a commit to that branch, you could say ""git push -u origin novclassfeature"". Does that make sense?

* A: No need to hesitate on asking questions, but we do have office hours afterwards that you could continue to ask questions in without falling behind if you want!
* Q: should I be doing these git commands on my local machine?
* A: Only if you wish to follow along. Depending on your level of knowledge and familiarity it may be a bit fast. Up to you!

* Q: any quick reason to know why get romote add origin gives fatal http request failed?
* A: did you mis-type it as ""get"" or ""git""? Otherwise you need to do something in the form of ""git remote add origin <URL_FOR_ORIGIN>"" since origin acts as sort of a ""pointer"" to that url for origin

* Q: My mac does not respond to tree
* A: Tree isn't actually installed by default, if you have homebrew, you can type ""brew install tree""
* Q: Not responding to mate
* A: tree isnt something that is piped into mate, it'd pipe it into cat/more/less

* Q: so what's the use of getting data of all other branches.
* Q: we created new branch based on master so do we really need data from all other branches?
* A: Well, as he's talking about now. Sometimes you add things to a branch that you dont have on master, but however, because we branched FROM master, we have everything that master had up until that point. Does that make sense? This current part of the video may explain it a bit as well.

* Q: what if you dont have homebrew, how can you install tree?
* A: tree isn't really the most important part of this session :) it's just a convenience for his teaching, you can find it here for osx though. http://shaunchapman.me/post/329270449/how-to-install-the-tree-command-on-mac-os-x

* Q: what is the name of the visual studio git plug in name that Mathew just mentioned about? I see so many... :-(
* Q: so git add is similar to svn add?
* A: yep. If i recall correctly. It tells the repository about that file/folder to be tracked in the index.

* Q: What's the best way to migrate a website from SVN to GIT?

* Q: When an pull request cannot be automatically merged how do I fix it?
* A: That would just mean you need to update your fork/branch with some of the changes that have been updated to the repo you're sending a pull request for. If you want to carry that question over to office hours i think it'd be an amazing one to walk through!

* Q: when i tried to commit i got 0 files changed, 0 insertions...
* A: That would depend if you have added a file, and had some lines of code inside of it. can you do a `git log -1 -p` and see if there were any lines recorded?

* Q: what's the command to create the novclassfeature branch?
* A: ""git branch novclassfeature"" will create it =)

* A: But notes will be available over here: http://teach.github.com/classnotes/2012-11-05-git-github-basics-online

* A: You're welcome! Let me know if my explanation isnt as clear as you'd like. We could also chat in office hours afterwards to have this demonstrated to you.
* Q: So where can the trainer add comments on the code which the student can see and review?
* A: If on the pull request, you look at the files changed and mouse over some of the text/code, you may see a text bubble to the left. You can actually add comments to lines of code in a pull request (or general commit message). This comment is actually shown under the discussion of the pull request as well, but also at that file context!
* Q: how does the trainer do a code review for the student
* A: Through the same way that he's demonstrating of viewing the changes that come through in the pull request actually!

* Q: Yeah, I tried restarting terminal and I still have the same result
* A: Hmm, im not totally sure, but could you follow us on to the office hours afterwards to ask this quesiton agian?
* Q: I installed version 1.8 of git, but git --version still lists 1.7.10.2, is there anything else I need to do to update?
* A: If you just installed it, you'd just need to reset your terminal so that the new version of git is loaded into your $PATH. If you reload terminal and check again, let me know if it updates! :D

## Q&A from Office Hours

Many questions were answered visually with demonstrations.

* Q: Are there best practices in setting up a STAGE and PRODUCTION environment within GIT and GITHUB? If so, can you explain?
* Q: Can you cover the differences between git revert, git checkout, git reset and git cherry-pick and the subtelties between them?
* Q: Hey, I'm trying to convert several very large svn repos with lots of branching to git.  We're considering making GitHub Enterprise our corporate SCM solution but that requires said svn --> git repo conversions.  I've got git-svn working and converting repos but this is running extermely slow.  svn2git (what GitHub recommends) isn't much faster and is rather buggy.  Is there any faster/easier way to convert our svn repos to a GitHub friendly (e.g. git) format?
* A: http://teach.github.com/articles/lesson-git-interoperability-with-subversion/
* Q: How can I undo an accidential commit and push that contains sensirive data e.g. a password?
* Q: how does a github server (i.e. private github installation) manage comitters and how does that work with something like gitolite?
* Q: I was specifically looking at Apache mahout on github, the wiki says they use svn & on github it says read only does that mean I cannot anything to this open source software
* Q: what are read only Git - mirrors
* Q: Thanks to both of you for the amazing presentation and QA 
* A: Welcome! Our pleasure!
* Q: So the whole point of github is also contributing to open source; how does one choose which opensource software to contribute to, I have read a lot of blogs which say one contributes to the OSS one has used and thinks he can contribute...but what about novice programmers like me who want to learn more about OSS, interact with good software developers and at the same time contribute?
* Q: Is creating an orphan branch the only option for creating an independent developmet branch?
* Q: is it possible to bypass github and only pull and push from one computer to another?
* Q: Thanks guys, that was really good. Have a good day.
* A: Our pleasure!
* Q: Okay. But, How could I keep my all project on one server?
* A: If you're wanting to just preseve both projects under the same repo, that is certainly possible by having a ""git init"" in a parent folder. if your php project was under ""phpproject/"" folder and java project in ""javaproject/"" folder and both of them existed in a Projects/ folder. you could simply ""git init"" inside of ""Projects/"" and that project would watch all changes to those two projects under the same umbrella. Does that make sense?
* Q: I am java developer and using eclipse ide and I get my code from SVN ""Subclipse"" then I am working on requirements one by one. But, till my all requirenment is not doen,  I don't need to check out on SVN. So, I am planning to have my own Git/ github so, after one requirenment done I'll check out on my git/github and by this way I can have my changes and I won't mass. Could you guide me how could I work with both (SVN & Git/Github)
* A: Well, git-svn is a great tool to help bridge the two. However, as you're making changes to the project, you can ""git add"" those files, and push it to github since it's a git repo also. you can have both git and svn work in the same project.
* Q: Can I preserve my PHP and JAVA both project in same Git?
* A: If they were separate projects, you'd want to make different repositories for each project to keep them distinct, typically.
* Q: Thanks a lot. That was terrific!
* Q: Could you give an sample about pull request that cannot be automatically merged and how to proceed when things like that happen?
* A: Hope this helped! Don't forget about that (i) in that page explaining the steps to work on =)
* Q: Thanks guys.
* A: Our pleasure. Thansk for your valuable time.
* Q: How easy is it to add existing code to a new repository? I have an existing application with a few hundred files which now I want to manage using GitHub. Do I just create a new local repository and paste all the files into that directory and it will be automatically detected/tracked?
* A: You could actually just type ""git init"" in that project, then ""git add ."" to add all those files to git's index and go through the process of pushing to that repo. Does that make sense?
* Q: Yes, I think so. I'm on windows. So would need to ""git init <projectname>"", then add all the files to that project, then ""git add ."" to add all the existing files?
* A: yep. exactly. Just create the current folder/project as a git repo. once you do a ""git add ."" then ""git commit -m 'commit message about adding project' "" makes the most sense,
* Q: In terms of best practice, is it better to create a new branch for each new feature (sort of encapsulating each new feature)? Or is it better to have a 'master' branch and say a 'development' branch, where 'master' serves as the stable version and 'development' is just updated daily with new code and revisions?
* A: http://scottchacon.com/2011/08/31/github-flow.html
* Q: What does ""Oops! githubtraining:master is already up-to-date with keveritt:master Try a different branch?"" mean and how do I fix/avoid this?
* Q: what's so special about git when it comes to merging?
