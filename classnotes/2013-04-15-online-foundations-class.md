---
layout: bare
title: Private Online Foundations Class
description: Private Online Foundations Class Class Notes
tags: [notes,private,online]
path: classnotes/2013-04-15-online-foundations-class.md
eventdate: 2013-04-15
---

## Teachers
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))
* Adam Roben ([Twitter](http://twitter.com/aroben), [GitHub](https://github.com/aroben))

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

# Chat Transcript Day One

    Jason L.    can we also get a copy of the slides?
    aroben  <---- This is Adam Roben. Hi everyone!
    Jennifer V. This is Jenny Vu. Hi everyone
    matthewmccullough   http://teach.github.com/presentations/git-foundations.html
    Jason L.    anyone else from lego? :)
    Ander   Hi Matthew, I was unable to run the yum command when I tried to pull down the dependencies. are we covering this?
    aroben  what command, Ander? maybe I can help you.
    yum install curl-devel expat-devel gettext-devel \ openssl- devel zlib-devel
    Steven F.   are we to download anythiung for the class?
    Jason L.    rhel4 box? Also did you do it in a yroot?
    aroben  Steven: I don't believe so.
    Arjan S.    fellow lego-er here
    aroben  Ander: are those the dependencies for compiling Git?
    Ander   it's what was included in the pdf for this course
    Raymund R.  are we going to use the yahoo git version 1.7 or 1.8 for this course?
    aroben  Raymund: I'm not sure; I've only just heard about the special Yahoo Git now. Maybe Ander knows?
    aroben  Ander: sounds like Jason L. might be able to help you.
    aroben  Raymund: looks like matthewmccullough is using git 1.8
    Raymund R.  ok
    Rich R. I missed the instructions for installing github, can someone cut-and-paste those instructions?
    matthewmccullough   http://git-scm.com
    Rich R. tks, 1.8.2 oin mac
    Rich R. oh, i have git 1.7.10, tks
    aroben  Rich: the instructions for installing the "hub" wrapper that Matthew mentioned will be available after the class.
    aroben  Hello, newcomers! This is Adam Roben. I'll be assisting Matthew today. Feel free to ask any questions you have in here and I'll try to help you out.
    Rich R. nothing appeared after i did "% git config --list"
    aroben  Rich: sounds like you're a brand new Git user. :-)
    Jason L.    if its a fresh install, thats correct. you will have to add your user and email (the pdf had the info on that)
    Ankit J.    this is what is see:
    View paste 
    dollarwheel-lm:~ ankit13$ git config --local --list
    fatal: unable to read config file '.git/config': No such file or directory
    dollarwheel-lm:~ ankit13$ git config --global --list
    user.name=Ankit Jhalaria
    dollarwheel-lm:~ ankit13$ git config --system --list
    fatal: unable to read config file '/usr/etc/gitconfig': No such file or directory
    Bao L.  same here. Guess it means that you have nothing local or system set yet.
    aroben  yes, that's right
    --local will only work when you've cd'ed into a git repository on your machine
    matthewmccullough   View paste 
    $ git config --global user.name
    Matthew McCullough
    $ git config --global user.email
    matthew@github.com
    joonkim are we supposed to use our work github account or a public github account?
    Jason L.    create a public one so he can see
    Raymund R.  public github
    Steven F.   what was the name and email you want it set to?
    I am a build master I have already have it set for inside yahoo
    Kevin K.    easy to change it back after class
    Steven F.   yes I set it on each build
    Wout v. i missed the start
    what were we supposed to set up?
    Jason C.    where are the global settings saved?
    aroben  Wout: you should install Git if you don't already have it installed. you can get it from git-scm.com
    Jason: on Mac and Linux, they're saved in ~/.gitconfig
    Rich R. Hi Adam, when I did "git config --list" the first time, nothing appeared. now I just see the two setting i set:
    View paste 
    $ git config --list
    user.name=Rich Razon
    user.email=rrazony@yahoo.com
    aroben  Wout: you can find the slides here if you want to look at what you missed: http://teach.github.com/presentations/git-foundations.html
    Rich R. Should I see more than that?
    aroben  Rich: That looks great!
    aroben  Rich: nope, you should only see settings that you've set. Matthew has a lot of settings from previous classes and work. It's expected you'll only see those two.
    aroben  Jason: on Windows, they're saved in %USERPROFILE%\.gitconfig
    Angie B.    i can't create an account, it always saying Login is already taken
    Jason C.    on a mac: thanks so all local and global setting are ~/.gitconfig?
    aroben  Angie: Is there a different username you can try?
    Jason: only global settings are in ~/.gitconfig
    aroben  local settings are stored within each repository
    (specifically, in that repository's .git/config file)
    Jason C.    thanks
    Angie B.    i tried many different name, still can't create an acount
    Ander   actually could we get audio a little louder?
    Ander   ok, no problem
    that's fine
    aroben  Angie: I'll try creating an account and see if I have the same problem
    Angie B.    thanks
    aroben  Angie: I just created an account named "aroben1234" without problems. What's the specific error message you're seeing?
    Angie B.    i m on the https://github.com/users and enter the Username/email address/
    when i click Create an account, i got There were problems creating your account
    aroben  Angie: what username are you trying to use?
    Angie B.    i tried like abode, aabb, ....
    aroben  Angie: Can you try "angiegithubtraining"?
    Angie B.    created...
    aroben  Yay!
    Angie B.    i changed diff username
    thanks
    Jason L.    Will that add hidden files as well?
    Bao L.  By legacy project, are we implying that it is a "git" legacy project?
    Jason L.    ie if we did this in a svn repo, would it grab all those files we no longer want
    cool thanks
    aroben  Bao: by "legacy" we just mean that these source files are not already in a git repository
    Bao L.  I see. Thanks
    Arun W. View paste 
    $ git status
    fatal: Not a git repository (or any of the parent directories): .git
    What setting am i missing?
    nope
    I missed the project1 setup
    matthewmccullough   git init project1
    cd project1
    git status
    vim first.txt
    git add first.txt
    git status
    Arun W. thank you
    Bao L.  how do we make it ignoring .DS_Store file (I am on a Mac)?
    I just want my output to look like what you showed :-). Mine just keeps listing that file as untracked file. Thanks
    :-)
    joonkim so has this commit actually been pushed to the Git repository? you mentioned you can work on your git repository even if you don't have a network connection
    aroben  joonkim: the commit is recorded in the local git repository on your own machine
    it has not been pushed to any other server yet
    joonkim tx
    aroben  Bao: so you can either create and commit a .gitignore file like Matthew described, or you can just do "rm .DS_Store" for now to get that file out of the way
    joonkim: this is one of the nice things about git. you can make commits locally and then only later choose to push them to a server if you want to share them with others.
    Jason L.    so we have to re add files over and over anytime we edit it?
    aroben  Jason: yes, whenever you want to commit those changes
    Kevin K.    goes git allow 'add' to be skipped? (edit -> commit)
    aroben  Kevin: yes. "git commit -a" will commit all changes even if you haven't added them. as Matthew said it's best used sparingly
    Kevin K.    thanks, just curious.
    matthewmccullough   s = split
    3 hunks
    y/n
    y
    n
    sejal s.    I don't get to see "s" option
    matthewmccullough   y
    aroben  sejal: you will only see it if you had some unchanged lines in between the lines that you changed
    sejal s.    Stage this hunk [y,n,q,a,d,/,e,?]?
    yeah
    I've two lines unchanged
    added a space in the first line
    git version 1.7.12.4
    aroben  sejal: can you run "git diff" and paste the output in this chat room?
    Rich R. How do I cat the committed version of this file?
    Max K.  Hi, I got the following error message on Linux when I did "git add -p first.txt" :
    View paste 
    [kislikm@awayjoinhello:maxgit]git add -p first.txt                 [~/git/project1]
    fatal: 'add--interactive' appears to be a git command, but we were not
    able to execute it. Maybe git-add--interactive is broken?
    Bao L.  Mine somehow checks in all 3
    matthewmccullough   Rich R: git show HEAD -- F<ILENAME>
    Bao L.  View paste (4 more lines) 
    ble$ git status
    # On branch master
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #   modified:   first.txt
    #
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    #   modified:   first.txt
    #
    ble$ git commit -m "Part one of the changes" first.txt 
    [master ece5c7d] Part one of the changes
    ...
    Ander   is anyone getting this: "warning: LF will be replaced by CRLF in first.txt."
    Rich R. I
    Bao L.  View paste 
     1 file changed, 3 insertions(+), 3 deletions(-)
    ble$ git status
    # On branch master
    nothing to commit (working directory clean)
    ble$
    Rich R. I'm not sure if my messages here are being seen, yt?
    Ander   i can see your message Rich
    Jason L.    View paste 
    Quick question on the first commit earlier.
    create mode 100644 first.txt
    Im assuming 644 is the file chmod.  Whats the 100 about?
    aroben  Max: it looks like you have a permissions problem. it sounds like a file is not marked executable.
    Raj C.  Is there git option to open a GUI interface for code review?
    aroben  Max: it sounds like an installation problem to me.
    Rich R. How would I cat the committed version of a file?
    aroben  Rich: matthewmccullough tried to answer you earlier; perhaps you missed it
    Rich: git show HEAD -- <FILENAME>
    Rich R. ah. yah, I had to reload campfire, tks
    aroben  Ander: are you on Windows? you'll see that message sometimes when making changes using Windows text editors.
    Ander: that message is actually telling you that the core.autocrlf config option that Matthew mentioned a while back is taking effect.
    the file has CRLF line endings in your working directory, but is being converted to LF line endings when you commit it
    Rich R. k, "git show HEAD first.txt" shows the diff, how would I see the whole committed file?
    Angie B.    View paste 
    if i do $ git commit -m "My first commit"
    do i suppose to see "first.txt" file on the web //github.com?
    Steven F.   no
    Max K.  I followed the instructions given to install git on RedHat Linux. This is what I see when I look around:
    View paste (183 more lines) 
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized value in concatenation (.) or string at /home/y/lib/perl5/s    ite_perl/Yahoo/Root.pm line 2616.
    Use of uninitialized
    ...
    aroben  Rich: sorry, I gave you the wrong command
    Rich: git show HEAD:<FILENAME>
    notice the colon
    Steven F.   you have not done a remote push and we have not even done a git push origin master
    aroben  Angie: no, "git commit" doesn't push any files up to github.com
    Angie B.    got it. thanks
    Max K.  Sorry, the previous paste had wrong stuff. Here's what I see on RedHat Linux:
    View paste 
    [kislikm@awayjoinhello:maxgit]git --version                        [~/git/project1]
    git version 1.7.12
    [kislikm@awayjoinhello:maxgit]which git                            [~/git/project1]
    /home/y/bin/git
    [kislikm@awayjoinhello:maxgit]ls /home/y/bin/git*                  [~/git/project1]
    /home/y/bin/git               /home/y/bin/git-upload-archive
    /home/y/bin/git-receive-pack  /home/y/bin/git-upload-pack
    /home/y/bin/git-shell
    [kislikm@awayjoinhello:maxgit]                                     [~/git/project1]
    Does that mean that "git add -p" doesn't work on Linux? I tried "git add" prior to the above error, and it worked just fine.
    aroben  Max: can you try this?
    ls -l /home/y/libexec/git-core/git-add--interactive
    aroben  my guess is that that file is not marked executable
    Raymund R.  max: git add -p works on fedora16 for me
    aroben  and that's causing your error
    Raymund R.  View paste 
    [raymund@nothingheat-dl project1]$ ls -l first.txt 
    -rw------- 1 raymund users 127 Apr 15 09:02 first.txt
    [raymund@nothingheat-dl project1]$ ls -ld .
    drwx------ 3 raymund users 4096 Apr 15 09:02 .
    Max K.  I see the following (looks executable to me):
    View paste 
     [kislikm@awayjoinhello:maxgit]                                     [~/git/project1]
    [kislikm@awayjoinhello:maxgit]ls -l /home/y/libexec/git-core/git-add--interactive
    -r-xr-xr-x  2 root wheel 36678 Jan 16 00:15 /home/y/libexec/git-core/git-add--interactive
    [kislikm@awayjoinhello:maxgit]                                     [~/git/project1]
    Karthigeyan D.  can we have all these chat transcripts for our reference?
    aroben  Karthigeyan: I believe Matthew said at the start of class that they'd be available to you
    Karthigeyan D.  thanks
    aroben  Max: hm, that is interesting
    aroben  Max: you can get git to print out a bunch of debugging information like this:
    matthewmccullough   Hi everyone! Indeed. All chat transcripts and
    all command line history
    aroben  GIT_TRACE=true git add -p first.txt
    matthewmccullough   are saved and captured for your consumption after class
    aroben  that might give us a clue as to what's going wrong
    Max K.  Here's what I get with GIT_TRACE:
    View paste 
    [kislikm@awayjoinhello:maxgit]GIT_TRACE=true git add -p first.txt  [~/git/project1]
    trace: built-in: git 'add' '-p' 'first.txt'
    trace: run_command: 'add--interactive' '--patch' '--' 'first.txt'
    trace: exec: 'git' 'add--interactive' '--patch' '--' 'first.txt'
    trace: exec: 'git-add--interactive' '--patch' '--' 'first.txt'
    trace: run_command: 'git-add--interactive' '--patch' '--' 'first.txt'
    fatal: 'add--interactive' appears to be a git command, but we were not
    able to execute it. Maybe git-add--interactive is broken?
    [kislikm@awayjoinhello:maxgit]                                     [~/git/project1]
    aroben  Max: maybe you have another copy of git-add--interactive on your PATH somewhere? try running: which git-add--interactive
    matthewmccullough   View paste 
    git reset --hard
    # BE CAREFUL
    Steven F.   git clean -d -f -f
    matthewmccullough   change that text file
    Rich R. "get reset --hard" will even destroy staged changes right?
    Steven F.   also removed any files that is not checked in when you branch
    aroben  Rich: yes
    Steven: yeah, that's useful too!
    but also dangerous :-)
    Ameya N.    What is the diff between git diff and git add -p ?
    aroben  Ameya: "git diff" just shows you changes that you haven't staged yet. "git add -p" both shows you those changes *and* lets you stage them.
    Rich R. View paste 
    $ github
    -bash: github: command not found
    Max K.  It seem like git-add--interactive is not in my path:
    View paste 
     [kislikm@awayjoinhello:maxgit]which git-add--interactive           [~/git/project1]
    /usr/bin/which: no git-add--interactive in (/usr/kerberos/bin:/home/y/bin:/home/y/bin64:/usr/local/sbin:/sbin:/usr/sbin:/usr/local/bin:/bin:/usr/bin:.:/home/kislikm/bin:.:.:/home/kislikm/bin:.)
    [kislikm@awayjoinhello:maxgit]                                     [~/git/project1]
    aroben  Rich: you'll only have that command if you've installed GitHub for Mac
    Rich: you can get it at http://mac.github.com
    Rich R. tks
    Arjan S.    I think it's that git add -p will actually stage commits if you tell it to.
    Raj C.  View paste 
    historybag-lm:project1 rchopde$ github
    -sh: github: command not found
    aroben  Max: boy, I am stumped!
    Raj C.  why is that?
    Arjan S.    git diff is just a diff'er
    aroben  Raj: you need to install GitHub for Mac: http://mac.github.com
    Angie B.    i got command not found for github
    View paste 
    $ github
    -bash: github: command not found
    matthewmccullough   windows.github.com
    Max K.  I didn't do it on a PC (starting my work on Linux). How do you install it on PC ?
    aroben  Max: you can either install the program that Matthew is showing right now from windows.github.com, or you can install just the command-line tools from git-scm.com
    Steven F.   That is the big stupid thing of git
    that there is no version number
    Wout v. version numbers make little sense when you have multiple repositories
    Steven F.   to get a version number you need to do this now
    git rev-list --abbrev-commit HEAD | wc -l | awk '{print $1}' | awk '{print $1}' | sed 's/^[ \t]*//;s/[ \t]*$//'
    HEAD can be changed to name of your branch too
    Raj C.  git loh -s <search> -- can this serach be Author, Date, commit or commit msg in git log?
    aroben  Raj: -S (capital S) only searches for text in the patch itself
    if you want to search for author names, you can do : git log --author=Adam
    Raj C.  I see. Okay.
    aroben  if you want to search commit messages, you can do: git log --grep=<search text>
    running this command will show you all the options: git help log
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    matthewmccullough   View paste 
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    View paste 
    git clone git@github.com:githubteacher/hellogitworld.git hgwteacher
    # for yahoo specific git build
    Raj C.  View paste 
    historybag-lm:Scratch rchopde$ git clone git@github.com:githubteacher/hellogitworld.git hgwteacher
    Cloning into 'hgwteacher'...
    The authenticity of host 'github.com (204.232.175.90)' can't be established.
    RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48.
    Are you sure you want to continue connecting (yes/no)? yes
    Warning: Permanently added 'github.com,204.232.175.90' (RSA) to the list of known hosts.
    Permission denied (publickey).
    fatal: Could not read from remote repository.
    Please make sure you have the correct access rights
    and the repository exists.
    historybag-lm:Scratch rchopde$
    Jason L.    same
    sejal s.    View paste 
    fatal: Could not read from remote repository.
    Please make sure you have the correct access rights
    and the repository exists.
    I get the error pasted as above
    sejal s.    yes I've the same errors as Raj
    Jason L.    View paste 
    Permission denied (publickey).
    fatal: Could not read from remote repository.
    Please make sure you have the correct access rights
    and the repository exists.
    yahoo build
    joonkim i have the same issue
    Cecilia T.  I have that error if i use ssh, but it looks ok when i use http
    matthewmccullough   View paste 
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    Ameya N.    Make sure the public rsa key is in git user profile
    Arun W. http works
    sejal s.    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher works!
    joonkim https doesn't work for me
    Raj C.  https option worked for me
    Arjan S.    they might have to add their SSH keys to their account
    Ameya N.    yes
    sejal s.    I've one already for my corporate account. when tried adding ssh keys again, I was asked if overwrite is okay.
    Jason L.    Yeah the pdf had us do it on the corp github
    aroben  sejal: try giving the SSH key a different name
    Jason L.    done and fixed for me
    aroben  sejal shah:
    Raj C.  What is the difference between clone and init? init for creating new repo and clone to copy existing repo?
    aroben  are things working for you now?
    Raj: exactly
    joonkim ssh key fixed my access problem
    aroben  joonkim: excellent! 
    Raj C.  Why do I get different message?
    View paste (2 more lines) 
    historybag-lm:hgwteacher rchopde$ git push
    warning: push.default is unset; its implicit value is changing in
    Git 2.0 from 'matching' to 'simple'. To squelch this message
    and maintain the current behavior after the default changes, use:
      git config --global push.default matching
    To squelch this message and adopt the new behavior now, use:
      git config --global push.default simple
    See 'git help config' and search for 'push.default' for further information.
    (the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
    'current' instead of 'simple' if you sometimes use older versions of Git)
    ...
    aroben  Raj: are you on a 1.7.x version of Git?
    some defaults changed between 1.7 and 1.8
    Raj C.  View paste 
    historybag-lm:hgwteacher rchopde$ git --version
    git version 1.8.2
    aroben  Raj: you can run the command it suggests there to get rid of the warning
    View paste 
    git config --global push.default simple
    Bao L.  How do I reset only one (or a few) file while leaving other modified files untouched?
    Raj C.  now I get similar but in addition this
    View paste 
    historybag-lm:hgwteacher rchopde$ git config --global push.default matching
    historybag-lm:hgwteacher rchopde$ git config --global push.default simple
    historybag-lm:hgwteacher rchopde$ git push
    error: git-credential-osxkeychain died of signal 11
    Username for 'https://github.com':
    Bao L.  Thanks.
    aroben  Raj: something is causing git-credential-osxkeychain to crash. I'm not sure what
    I think you can probably ignore it for the purposes of this class
    matthewmccullough   View paste 
    git reset --hard origin/master
    aroben  git-credential-osxkeychain is a helper program that Git uses to store usernames/passwords in the OS X keychain
    Jason L.    Does it get it to the absolute latest of the origin/master or does it return it to the revision we checked out at originally?
    Raj C.  okay.
    matthewmccullough   https://github.com/githubteacher/hellogitworld
    aroben  Jason: the revision you checked out originally
    aroben  Jason: technically, it returns you to whatever revision you last fetched from the server
    you can run "git fetch origin" to fetch new commits from github.com; after doing that "git reset --hard origin/master" would take you to the latest commit you've fetched.
    Angie B.    i dont have popup window when i click fork
    k
    Max K.  I lost you ages ago.
    I can't create a fork from Linux because I can't log in.
    matthewmccullough   Max: Let me see if I can get you Yahoo help from Linda at the end of class today
    I will try my best!
    Bao L.  I assume that there will be a section later on covering how to pull some change from a forked repository (after code review, for instance) back to the main one?
    Max K.  thx
    Kevin K.    did i miss how to fork from cli?
    aroben  Kevin: there's no way to fork from the CLI; you have to do it on the website
    Kevin K.    forked via webui. ok thanks, had someone stop in cube. thanks.
    matthewmccullough   @githubstudent
    Angie B.    how to get this page?
    matthewmccullough   https://github.com/githubstudent/hellogitworld/pulls
    Jason L.    Whats the best practice here for cloning? Should it be cloned for every task for instance? IE Im adding a new feature should I clone, then fixing a bug from the origin/master should I clone again?
    aroben  Jason: generally you'll only clone each repository once
    you'll create a fork of the repository on github.com
    then you'll clone your fork down to your local machine
    and then you'll use the clone of your fork for whatever changes you make
    Jason L.    so you will just sync your fork up every now and then?
    Jason L.    back to the origin/master essentially
    aroben  Jason: yes, exactly. I imagine we'll cover that tomorrow.
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
    matthewmccullough   https://github.com/githubteacher/hellogitworld/...
    View paste 
    https://github.com/githubteacher/hellogitworld/pull/5
    Rich R. Can a repo have more than one owner? or more than one approver?
    Jason L.    How long till it makes it in? Still don't see it over at https://github.com/githubtraining/hellogitworld
    Raymund R.  i see it in https://github.com/githubteacher/hellogitworld
    Max K.  How do I contact Linda?
    Noshir P.   How would that have worked if there had been conflicting changes in the "teacher" repo?
    aroben  Rich: each repo has only one owner, but the owner can give other people permission to push to that repo
    Bao L.  As a repo owner, how do I back out from a merge on a pull request I recently did (change of mind, perhaps) ?
    aroben  Noshir: if there are conflicts, the "Merge Pull Request" button that Matthew clicked would be disabled and there would be instructions for how to resolve the conflict
    Jason L.    jlundy
    aroben  Bao: undoing a merge is possible, though a little tricky. particularly because someone may have fetched your repository before you undid the merge and thus will have the merge in their local copy of the repository.
    Rich R. How do i pull down the new fix.txt to merge with my local fix.txt?
    matthewmccullough   training@github.com
    matthew@github.com
    Max K.  thx
    Steven F.   git pull
    Raymund R.  is another pull request needed to go from githubteacher to githubtraining?
    Rich R. k, tks
    Raymund R.  ok thanks
    Bao L.  thanks. Bye.
    Raymund R.  thanks
    Jason L.    cya
    matthewmccullough   Feedback is always welcomed and every email is read at training@github.com
    matthewmccullough   See you all tomorrow!
    matthewmccullough   Same Bat-time, Same Bat-channel.
    matthewmccullough   Oh yeah. I so just did that cultural throwback.
    Rich R. Still there Matthew?
    I was looking for where I could see those steps to update my fork
    matthewmccullough   Rich: Indeed. One sec.
    Let me get you that resource.
    https://help.github.com/articles/syncing-a-fork
    And anything that still needs to be clarified after that happy to address tomorrow
    A tidbit of that is in the core curriculum

# Command Line History Day One

    git --version
    git config --list
    git config --global user.name
    git config --global user.email
    git config --global user.name "Matthew McCullough"
    git config --global user.email "matthew@github.com"
    git init project1
    cd project1
    git add first.txt
    git commit -m "My first commit"
    vim .gitignore
    rm .gitignore
    git add -p .
    git reset HEAD first.txt
    cat first.txt
    git add -p first.txt
    git commit -m "Part one of the changes"
    git commit -m "Part two of the changes"
    git reset --hard
    github
    vim first.txt
    git diff
    git diff --color-words
    git diff --word-diff
    git diff --stat
    git diff HEAD
    git log
    git log --format=raw
    git log --stat
    git log --patch
    git log --patch --color-words
    git log -1
    git clone https://github.com/githubteacher/hellogitworld.git hgwteacher
    cd hgwteacher
    git log -2
    git add .
    git commit -m "Small changes"
    git push
    git status
    git reset --hard origin/master
    git checkout origin/master -- fix.txt
    git checkout origin/master -- src/
    git checkout origin/master -- src/ fix.txt
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git hgwmatthew
    cd hgwmatthew
    vim fix.txt
    git add fix.txt
    git commit -m "Matthews change as a student"
    git push 
    
# Chat Room History Day Two


    matthewmccullough   http://teach.github.com/classnotes/2013-04-15-online-foundations-class.html
    matthewmccullough   View paste 
    http://teach.github.com/classnotes/2013-04-15-online-foundations-class.html
    Jason L.    Is there good apis for controlling this or files that can be edited for this? We have hundreds of developers that we will have to maintain across different 50sh different repos.
    matthewmccullough   View paste 
    https://github.com/githubteachingorg/testrepo1
    https://github.com/githubteachingorg/testrepo1
    aroben  matthewmcullough: can you add swapnilz too when you get a chance?
    Max K.  what is the address?
    matthewmccullough   https://github.com/githubteachingorg/testrepo1.git
    Jason L.    odd I dont have that ble_test.txt file...
    joonkim same here
    aroben  Jason: did you see any errors when doing the clone?
    Ameya N.    same here
    Jason L.    nope
    Brock   only got 3 objects
    Jason L.    I got the README fine
    Ameya N.    no error
    matthewmccullough   git pull
    Jason L.    got it
    joonkim same got it now
    aroben  Great!
    Steven F.   you really need to do a git clean -d -f -f to really get rid of any files from a branch
    matthewmccullough   View paste 
    git push -u origin bugfix-matthewm
    Max K.  Hi, I'm completely stuck: I think I did not set up a password. how do I set up a password for Git for Windows?
    aroben  Max: what error are you seeing?
    Raymund R.  https://github.com/githubteachingorg/testrepo1/ ?
    aroben  if Git asks you for a password you should use the one from your GitHub account
    Raymund: yep!
    matthewmccullough   https://github.com/githubteachingorg/testrepo1
    Max K.  404
    Bao L.  Sorry, I removed my test file in the main repo
    aroben  Max: we might need to add your user to the org
    Max: what is your GitHub username?
    Max K.  my username is kislikm
    aroben  Max: you should be able to view the repo now
    and clone it to your machine
    Max K.  I can follow the link. Thanks.
    aroben  
    Jason L.    why dont those branches show in the git branch command?
    Bao L.  ran "git pull", but when I did "git branch", I can only see 2 (master and my branch)
    Raymund R.  is there a way to save my credentials? i have to enter them every pull
    Karthigeyan D.  View paste 
    for me, I see git branch
    * bugfix-karthidiraviam
      master
    Karthigeyan D.  i have pulled all branches
    Max K.  Now I think I need to set up a password, since it fails when I enter the password, and I don't remember setting up a password.
    aroben  Max: I believe you should have set up a password when you created your GitHub account; a password is required
    If you don't remember it you can reset it
    Max K.  Yes, but I set it up on Linux, and I kept having problems all day yesterday, so I gave up and installed the Windows Git so I can continue with class today.
    aroben  Max: the password should be the same no matter what machine you're using
    Max: what error are you seeing? can you paste it in here?
    Raj C.  how do I get commits that only belongs to my bug fix-rchopde13 branch?
    aroben  Raj: I'm not sure what you mean by "get commits"; if you want to see a log in your terminal you can type: git log bugfix-rchopde13
    Raj C.  by commits I meant changes
    aroben  Raj: are you wanting to see them in your terminal? in the gitk GUI matthew is demoing? somewhere else?
    I'm just trying to understand your question so I can help. :-)
    Raj C.  in my terminal
    aroben  View paste 
    git log bugfix-rchopde13
    that will show you the commits on your branch
    if you also want to see the lines you changed you can use this command from yesterday:
    View paste 
    git log -p bugfix-rchopde13
    the "-p" option tells git to show you a patch for each commit
    Max K.  I changed my password and then I'm trying to clone using the Windows GUI and it fails. I'm going to try again.
    aroben  Max: if it fails again can you paste the error into this chat room?
    joonkim trying to find the place to reply in browser
    matthewmccullough   https://github.com/githubteachingorg/testrepo1/...
    https://github.com/githubteachingorg/testrepo1/...
    Ameya N.    cannot see ble_test.txt after fetch
    ok
    Bao L.  when we do "git checkout", we do not use prefix origin
    Jason L.    is there good apis or files you can edit for controlling access to the repos?
    Raj C.  if I want to undo change after merge is that possible?
    Bao L.  if I use it, it landed me in an unknown branch
    Karthigeyan D.  does clone bring all branches from repository? is there a way to bring selected branches?
    aroben  These are great questions!
    Bao L.  is it a requirement to add "origin" prefix when merging?
    Raj C.  In other words can I undo 'git merge'?
    Other question is -- after merge if I want to identify origin branch of changes ?
    Rich R. I joined late today, can you give me access to the githubteachingorg project that we just worked with? i'd like to clone, branch locally, and send it upstream.
    aroben  Raj: the gitk tool we saw earlier is a good way to see what happened during a merge
    Steven F.   no it doesn't if there is submodules
    aroben  just run "gitk --all&" like before
    aroben  and you'll see how the two branches were merged
    Jonathan K. Could you please repost the transcript/notes url?
    Steven F.   git clone --recurse-submodules
    will bring down all code
    Kevin K.    http://teach.github.com/classnotes/2013-04-15-online-foundations-class.html
    Jonathan K. thanks!
    Steven F.   if you want the latest code in the submodulkes you will need to do
    git submodule foreach git pull origin master
    Rich R. razon@yahoo-inc.com
    github username: rrazony
    Raymund R.  workflow q: when do you delete a branch?
    Rich R. cool, tks
    Karthigeyan D.  files in different branches are physical copy in disk or are those pointers to one instance in disk?
    Angie B.    on the git web, how to go to my branch? or change different branches?
    Karthigeyan D.  cool. thanks
    matthewmccullough   https://github.com/githubteachingorg/testrepo1
    Angie B.    ag
    aroben  Raymund: I typically delete branches when either 1) I've merged the branch into master, or 2) I've decided I want to throw away all the work I've done on that branch (maybe because it's no longer applicable)
    Raymund R.  ok
    i asked because the webui suggested #1 after i merged
    aroben  Raymund: yes, after merging a branch there's really no need to keep it around, so the web UI suggests you delete it just so you don't have a bunch of old branches sticking around forever
    matthewmccullough   Hey all! Just a reminder once again in case any of you have to leave early that all notes are up at: http://teach.github.com/classnotes/2013-04-15-online-foundations-class.html
    I will append to that URL today, but that's the one and only URL for class
    with CLI history, slides, and chat room notes
    Jason L.    Does it matter which branch you have selected when you fork?
    aroben  Jason: it does not matter; all branches get copied into your fork
    Jason L.    thanks
    Rich R. MAtthew, in what directory are you in now? pwd
    tks
    Bao L.  But "master" branch on a forked repo and official repo can be different. How do we know which master we are on when "git checkout master"?
    Jason L.    Your branch is ahead of 'origin/master' by 3 commits.
    seems fine after the pull
    Rich R. Jason, what did you have to do?
    i'm also getting "Your branch is ahead of 'origin/master' by 2 commits."
    Jason L.    do the git pull after
    Rich R. hm, already did. tks, nm!
    matthewmccullough   git reset --hard origin/master
    Rich R. okay, all good
    oh, i think it was because my branch hasn't been merged into master.
    Bao L.  How do I handle the merge at a more granular level if there is conflict? ie. accept my change (and throw away the change on the server), accept only server change (and throw away mine), manually resolve, etc?
    aroben  Bao: I think we'll get to that shortly.
    matthewmccullough   git config --global credential.helper 'cache --timeout=300'
    Paul    If you are using ssh then you don't really need this right? :D
    aroben  Paul: that's correct
    Jason L.    seems kind of annoying that it shows all the merge messages in the log
    Raj C.  why is this happening?
    View paste 
    historybag-lm:testrepo1 rchopde$ git pull
    M   bugfix-jkusa.txt
    U   bugfix-rchopde13.txt
    M   bugfix-wout.txt
    A   new-file-wout.txt
    Pull is not possible because you have unmerged files.
    Please, fix them up in the work tree, and then use 'git add/rm <file>'
    as appropriate to mark resolution, or use 'git commit -a'.
    Jason L.    yeah Im using ssh-agent Paul for that
    Karthigeyan D.  git push is hanging
    View paste 
    git push
    Counting objects: 23, done.
    Delta compression using up to 8 threads.
    Compressing objects: 100% (15/15), done.
    Writing objects: 100% (15/15), 1.96 KiB, done.
    Total 15 (delta 7), reused 0 (delta 0)
    aroben  Raj: it sounds like you ended up with a merge conflict at some point; hopefully Matthew will describe how to resolve conflicts before we finish
    Karthigeyan: You can try pressing Ctrl-C to abort and trying again
    maybe there was a network hiccup or something
    Karthigeyan D.  ok ctrl-c and tried again .. worked.
    thanks
    Raj C.  but I didn't change those files?
    Jason L.    so if we pull before we add do we still have the same merge messages, etc?
    matthewmccullough   git reset --hard origin/master
    git merge --abort
    Jason L.    but then your commit would go with the merge right?
    Kevin K.    what do the + represent? ex:
    Jason L.    instead of separated in the log
    Kevin K.    View paste 
    bugfix-ble.txt            |    1 +
     bugfix-brock.txt          |    2 ++
     bugfix-ctsoy.txt          |    1 +
    2 vs 1
    aroben  Kevin: the numbers are telling you how many lines were changed in each file
    Kevin K.    thanks
    aroben  Kevin: you'll see + and - symbols to show you lines added vs. lines removed
    Kevin: you can see something similar if you run: git log --stat
    Jason L.    cool
    Raj C.  but all the local changes will be lost with git reset?
    Rich R. What is recursive about the "recursive method" ?
    Karthigeyan D.  how do we merge from a specific revision of personal branch to master?
    Raj C.  git reset can be used to undo git pull, but not git fetch. is that correct?
    aroben  Raj: that's right. git fetch just updates the local cache, while git reset changes your local branches and working directory
    Raj C.  thanks
    Rich R. tks
    Noshir P.   Is the commit message an input into the hash for the unique identifier for a version?
    Karthigeyan D.  use case: just one change done by another user pulled in personal branch, i want it in master as well
    aroben  Noshir: yes, it is
    Noshir P.   So identical bits in files for two branches but with different last commit message would mean the need for a "recursive merge" instead of a "fast forward"?
    (Thinking of scenario where for some perhaps bogus reason someone's making identical changes in two branches.)
    aroben  Noshir: yes, it will use a recursive merge (though of course the merge will be very easy, since the files are identical on each branch)
    Noshir P.   Sure.
    Is a timestamp an input as well?
    So even identical changes with identical commit message would be a recursive merge?
    aroben  Noshir: yes, it is. in fact, everything you see in "git log --format=raw" is an input
    Noshir P.   Thanks.
    Rich R. "fatal: cannot do a partial commit during a merge."
    View paste 
    $ git status
    # On branch master
    # Your branch and 'origin/master' have diverged,
    # and have 1 and 1 different commit each, respectively.
    #
    # Changes to be committed:
    #
    #   modified:   README.md
    #
    View paste 
    $ git add !$
    git add README.md
    View paste 
    $ git commit README.md 
    fatal: cannot do a partial commit during a merge.
    Ameya N.    View paste 
    aroundthink-lm:testrepo1 ameyan$ git status
    # On branch master
    # Your branch is ahead of 'origin/master' by 2 commits.
    #
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #   README.md.BACKUP.9071.md
    #   README.md.BASE.9071.md
    #   README.md.LOCAL.9071.md
    #   README.md.REMOTE.9071.md
    #   README.md.orig
    Raj C.  View paste 
    historybag-lm:testrepo1 rchopde$ git status
    # On branch master
    # Your branch is ahead of 'origin/master' by 2 commits.
    #   (use "git push" to publish your local commits)
    #
    # Untracked files:
    #   (use "git add <file>..." to include in what will be committed)
    #
    #   README.md.orig
    nothing added to commit but untracked files present (use "git add" to track)
    historybag-lm:testrepo1 rchopde$
    Rich R. ah
    why did i have to leave off the filename? what if i had other files that i didn't want to commit?
    Raj C.  two individuals causing conflicts will have to work together in resolving the conflicts. isn't it?
    Rich R. oh, i'm committing what i have staged! ahhhh sorry
    Jason L.    and the git log will maintain the time it was staged as opposed to committed in case you commit multiple fixes at once but staged separately right?
    kk. so all the files with both fixes will go into one log
    at commit time
    Rich R. oh, the parent (master) branch is on the bottom.
    Ameya N.    yes
    Noshir P.   In the exact case shown right now... Would a fast forward merge to the master branch lose change 9f1?
    (Because d19 is effectively reversing it.)
    ?
    (Seems like you would have needed to merge 9f1 before rebase.)
    Not what I mean.
    d19 doesn't include contributions from 9f1.
    Helps to toggle to prev slide.
    But then it would have a new unique ID after the rebase, right?
    Ameya N.    fast forward merge can only happen in the case of that diagram
    Noshir P.   It would no longer be d19.
    Noshir P.   Ok.
    That's what was unclear.
    (I'd suggest updating those slides...)
    Raj C.  so, rebase is basically combining two commits in one?
    aroben  Raj: in this diagram there aren't any commits being combined; just two commits being moved
    Jason C.    Since that creates a new hash, will that cause an issue if others have that branch checked out?
    aroben  Jason: it will cause an issue if you use rebase to modify commits that have already been pushed to a remote server
    for the reason you mentioned
    if you're rebasing commits that only exist on your local machine (you've never pushed them anywhere) then you don't need to worry
    Jason C.    so we should avoid rebasing on branches that have been commited?
    aroben  Jason: we generally don't talk about "committing branches", so I'm not sure I understand what you mean; can you try asking it a different way?
    Jason C.    I have checked in code that is in branch created from master, others users are also modifying that code. Rebase from this point on will cause issues with other users
    Raj C.  If I have 10 commits and after a while I want to revert 5th, will it cause any conflicts or issues?
    aroben  Jason: the way I think of it is this
    if I've made some commits on my machine, but I haven't run "git push", then those commits exist *only* on my machine
    no one else has seen them yet
    so I'm free to rebase them as much as I want
    I can't possibly affect anyone else because these commits are still "private" in a sense
    once I run "git push", now those commits exist on a remote server
    Jason C.    ok, thanks
    aroben  which means other people may have fetched or cloned them down to their own machine
    and so rebasing at this point is generally a bad idea
    aroben  Raj: you can use "git revert" to revert that 5th commit
    matthewmccullough   http://teach.github.com/classnotes/2013-04-15-online-foundations-class.html
    View paste 
    http://teach.github.com/classnotes/2013-04-15-online-foundations-class.html
    aroben  it's possible you'll run into the same kind of conflict you saw when we were merging, but it shouldn't cause any other issues
    Paul    Was the class video session recorded for later reference?
    Nick P. Thanks Matthew and Adam. It was a lot knowledge to transfer. Well done!
    Ankit J.    Would you be sharing the slide deck?
    Raj C.  Are the notes downloadable?
    Karthigeyan D.  Thanks a lot.
    Ankit J.    thank-you
    Arun W. Thanks Matthew & Adam
    Ameya N.    Thanks!
    Joe C.  Thanks, great class!
    sejal s.    Thank you....good information
    Anish M.    Thank you Matthew & Adam
    Victor T.   10q
    Bao L.  Thank you. It's a very informative class.
    Angie B.    thanks
    Kevin K.    thanks for the great class.
    Mayur M.    Thank you
    Rich R. Thanks great training
    Ankit J.    thanks.. great class.
    Arjan S.    Good class. Thanks a bunch.
    David T.    ditto
    Raymund R.  Thanks
    matthewmccullough   Thanks all!
    matthewmccullough   Hope you had a great time of learning with Adam and I
    We love teaching. Hope it shows!
    aroben  Bye everyone! 
    Jason C.    When will the commands from day 2 appear on the class notes page?
    matthewmccullough   Late today. :)
    Jason C.    thanks
    Rich R. k
    Jason L.    Thanks again for the course
    Seems like a good intro but git itself seems like its pretty complicated, so we probably need a lot of policy
    Raj C.  Thanks, informative class..
    matthewmccullough   Jason L.: I'd agree that it can be daunting at first. But I think some patterns from Yahoo that fit well with Yahoo plans and culture have been said to be super helpful to our last classes.
    There's a massive use of Git and GitHub at Y! so it is helpful to me to
    know that those resources are there internally as each team ramps up and converts.
    Raj C. : Our pleasure.

# Command Line History Day Two

    git clone https://github.com/githubteachingorg/testrepo1.git
    cd testrepo1
    git branch bugfix-matthewm
    open .
    git commit -m "Bug fix by Matthew"
    git checkout -
    git push -u origin bugfix-matthewm
    git branch 
    git checkout bugfix-JasonL
    git checkout bugfix-matthewm 
    git checkout bugfix-JasonL 
    git log -1
    git log -2
    git log -3
    gitk --all&
    git fetch
    git log --format=raw
    git submodule update
    git pull --recurse-submodule
    git pull --recurse-submodules
    git remote add personal https://github.com/githubstudent/testrepo1.git
    git fetch personal 
    pwd
    git remote -v
    git branch -r
    git merge personal/master
    git merge origin/master
    git branch
    git branch -vvv
    git push 
    git rev-parse origin/master
    git rev-parse master
    git rev-parse personal/master
    git statush
    git add bugfix-matthewm.txt
    git commit -m "Matthew did this on master to show merge by recursive"
    git config alias.cc-on
    git config alias.cc-cache
    git config --global --unset credential.helper
    vim bugfix-matthewm.txt
    git stash 
    git push
    git config --global credential.helper 'cache --timeout=60'
    git checkout master
    git fetch origin
    git reset --hard origin/master
    ls
    git commit -m "Matthew put his name in"
    git pull
    cat README.md
    git mergetool
    vim README.md
    git add README.md
    git commit 
    git status
    clear
    git reset --hard 284a4bf
    git reset --hard 1bdfaee
    git reflog
