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
* [git-p4 Perforce Script](http://kb.perforce.com/article/1417/git-p4)
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
    matthewmccullough   http://teach.github.com/presentations/git-found...
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
    aroben  Wout: you can find the slides here if you want to look at what you missed: http://teach.github.com/presentations/git-found...
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
    matthewmccullough   https://github.com/githubstudent/hellogitworld/...
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
