---
layout: bare
title: November Open Enrollment GitHub Foundations
description: November Open Enrollment GitHub Foundations Class Notes
tags: [notes]
path: classnotes/2013-11-13-november-open-enrollment-github-foundations.md
eventdate: 2013-11-13
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
    git config --global user.name "Tim Berglund"
    git config user.name
    git config --global user.email "tlberglund@github.com"
    git config user.email
    git config --global color.ui auto
    git init project
    cd project
    ls -la
    tree .git
    git commit -m "Pardon me"
    git commit -m "Tide of times"
    git diff
    git diff --color-words
    git diff --word-diff
    git diff HEAD
    git diff HEAD --color-words
    git commit -m "Costly blood"
    git diff --staged
    git commit -m "Iambic pentameter FTW"
    git log
    git log --format=raw
    git log --format=raw --graph
    git log --format=raw --graph --decorate
    git log --oneline --graph --decorate
    git log --oneline --graph --decorate --all
    git config --global alias.lol "log --oneline --graph --decorate --all"
    cd
    tr.git
    cd scratch/project
    pwd
    git loglive
    generaterandomfiles 6 cruft txt
    git add .
    git commit -m "Junk to delete"
    git rm cruft1.txt
    rm cruft2.txt
    git rm crunk2.txt
    git rm cruft2.txt
    open .
    git add -u .
    git statsu
    git rm --cached cruft6.txt
    git commit -m "Cleaned up"
    cat cruft6.txt
    vi .gitignore
    git add .gitignore
    git commit -m "Git Ignore"
    generaterandomfiles 5 file txt
    ls -l ~ > listing.txt
    git commit -m "Files to move"
    mkdir files
    git mv file1.txt files/
    mv file2.txt files/
    tree
    git rm file2.txt
    git add files/file2.txt
    git commit -m "Moved some things"
    vi listing.txt
    git diff
    git add -A .
    git commit -m "Moved and changed"
    git log --stat
    git log --stat -M
    git log --stat -M80
    vi files/listing.txt
    git add .
    git commit -m "Changed after move"
    git log --stat -M -- files/listing.txt
    git log --stat -M --follow -- files/listing.txt
    git log --stat -M80 --follow -- files/listing.txt
    git log --decorate --graph
    git branch feature
    git commit -m "Ruby lips"
    git checkout feature
    git add
    git commit -m "Title"
    git merge feature -m "Merged"
    git branch -d feature
    git branch feature2
    git commit -m "Cursed limbs"
    git checkout feature2
    git commit -m "Civil strife"
    git merge feature2
    git commit -m "Merged w/conflict"
    git branch -d feature2
    git mergetool
    git branch feature3
    vi README.md
    git add README.md
    git commit -m "Added a README"
    git checkout feature3
    vi caesar.txt
    git add caesar.txt
    git commit -m "Blood and destruction"
    vi ozymandias.txt
    git add ozymandias.txt
    git commit -m "Ozymandias was here"
    git rebase master
    git lol -6
    history
    cat ozymandias.txt
    cat README.md
    cat caesar.txt
    git lol -5
    git merge feature3
    git branch -d feature3
    git checkout -b feature4
    git branch
    rm cruft6.txt
    cd files
    generaterandomchanges 10 random txt
    git loglive -20
    ll
    git rebase -i HEAD~10
    git log --stat
    git status
    git reset --hard f1c37e4
    ls
    cat random6.txt
    git reflog
    git reset --hard HEAD@{1}
    git checkout master
    git merge feature4
    git branch -d feature4
    git remote add origin https://github.com/githubteacher/poetry.git
    cd ..
    cat .git/config
    git push --set-upstream origin master
    git lol
    git clone https://github.com/githubstudent/poetry.git
    cd poetry
    ls -l
    git commit -m "Choked Pity"
    git commit -m "Caesar rage"
    cat antony.txt
    cat asdhnidisa.tgxt
    cat kevinwuzhere.txt
    cat ozymandias.txt
    git pull https://github.com/githubstudent/poetry.git master
    git add caesar.txt
    git remote add teacher https://github.com/githubteacher/poetry.git
    git remote -v
    git pull teacher master
    cd ..
    git clone https://github.com/githubteacher/poetry.git teacher-poetry
    cd teacher-poetry
    git checkout -b tlberglund
    git commit -m "Havoc, finally"
    git lol -5
    git config --global credential.helper cache
    git push --set-upstream origin tlberglund
    git lol -6
    history
    git checkout origin/febaisiBranch
    git diff master
    git checkout tlberglund
    ls
    vi caesar.txt
    git commit -m "Carrion men"
    git loglive -13
    git loglive -109
    git loglive -8
    git config branch.tlberglund.rebase true
    git commit -m "despair lol"
    while :\ndo\ngit pull\nsleep 1\ndone
    git loglive -20
    git loglive -25
    git loglive -23
    git config --global branch.autosetuprebase always
    git reflog
    git reset --hard e1a96c1
    git reset --hard 9d62e3c
    git reset --hard 693c935
    git reset --hard b449de7
    git reset --hard 4678b62
    git reset --hard 3c7c445
    git checkout master
    git merge tlberglund
    vi README.md
    git commit
    git loglive -15
    git branch -d tlberglund
    git push
    git lol
    git branch
    git push --delete origin tlberglund
    git fetch
    git fetch --prune
    git pull
    git loglive -10
    git pull --prune
    git branch -a
    cd ~/Desktop/poetry
    ll
    vi ozymandias.txt
    git add .
    git reset
    git status


## Chat History
* `Kevin Umbach`: hi
* `jordanmccullough`: Welcome.
* `tlberglund`: Yo! Hi, Jordan.
* `Ginny Lee`: can Tim make his pointer larger? thx
* `Ginny Lee`: accessibility options
* `Felipe Baisi`: itss okk .. 
* `Vinicius Camargo`: too big right now :)
* `mlowin`: looks the same size for me
* `jordanmccullough`: Yes, same here mlowin.
* `jordanmccullough`: We'll try to address during break. Apologies if GoToTraining isn't rendering the cursor larger. We'll look into this.
* `jordanmccullough`: `git push -u origin master` and `git push --set-upstream origin master` are equivalent.
* `jordanmccullough`: If you've seen either option switch used.
* `tlberglund`: git config --global push.default simple
* `Cheryl Court`: Is there an easy way to see all your config settings?
* `jordanmccullough`: Most definitely, `git config --global --list`
* `jordanmccullough`: For all global configurations.
* `jordanmccullough`: If you want to see the configurations apply specifically to the current repository you're working on:
* `jordanmccullough`: `git config --local --list` while in your project directory.
* `Cheryl Court`: thanks :)
* `Júlio César Costa Marcondes`: When you use "git push", you don't need to commit your changes ?
* `jordanmccullough`: Julio C.: Git push will only transmit committed changes.
* `Júlio César Costa Marcondes`: hum...ok...Thks
* `jordanmccullough`: So when we concluded class session yesterday, the push sent to the GitHub.com repository any commits Tim had made to his local repository.
* `jordanmccullough`: Does that help clarify, Julio C.?
* `Júlio César Costa Marcondes`: yes...thks
* `Jason Ewasiuk`: is there still audio?  I don't hear anything
* `jordanmccullough`: Yes, Tim is currently talking.
* `jordanmccullough`: Anyone else having audio issues?
* `Felipe Baisi`: No . its ok here .. 
* `Jason Ewasiuk`: this is through the phone
* `jordanmccullough`: Jason E.: Still no audio? Or is it working for you now?
* `Jason Ewasiuk`: it keeps saying it's invalid
* `Jason Ewasiuk`: trying to redial in
* `Jason Ewasiuk`: are you doing something on your end because it's acting very strange
* `jordanmccullough`: Hmmm... Nothing being changed on this side.
* `jordanmccullough`: There should be a telephone number and then an access code for telephone option.
* `Jason Ewasiuk`: had to use the alternate phone number
* `Cheryl Court`: is there a reason why Tim is using pull instead of merge after the fetch?
* `jordanmccullough`: So `pull` performs a `fetch` and `merge`
* `Cheryl Court`: yeah
* `jordanmccullough`: whereas `fetch` only retrieves the upstream branch.
* `jordanmccullough`: So just demonstrating that there are two approaches to integrating the upstream changes and workflows. :-)
* `Cheryl Court`: ah, okay
* `jordanmccullough`: The two-in-one command option `pull` or more carefully retrieving, assessing, then merging when ready approach.
* `Júlio César Costa Marcondes`: How to delete a remote branch ?
* `jordanmccullough`: Excellent question.
* `jordanmccullough`: Several ways, which I'll let Tim address...
* `jordanmccullough`: One, though, is to delete on GitHub.com...
* `jordanmccullough`: once we have "topic" branches.
* `jordanmccullough`: Questions? I'm here... :-)
* `Júlio César Costa Marcondes`: Ok...thks
* `tlberglund`: https://github.com/githubteacher/poetry
* `mesmael`: how can i delete the remote address from the cmd line
* `jordanmccullough`: The remote as in "origin" of the repository you created?
* `mesmael`: yes
* `jordanmccullough`: Yes, `git remote rm <your-remote-name>`. But before you do, consider why you'd want to remove the remote for "publishing" your changes.
* `jordanmccullough`: Be sure to maintain complete separation of the project you created since yesterday and pushed to GitHub.com and the Fork that Tim just had you clone.
* `mlowin`: seeing an error when I attempt to clone: Malformed value for push.default: simple 
* `mlowin`: "Must be one of nothing, matching, tracking or current."
* `jordanmccullough`: Let's unset that and try again.
* `jordanmccullough`: `git config --unset --global push.default`
* `mlowin`: did it, solved it
* `jordanmccullough`: :-)
* `mlowin`: thanks
* `Ginny Lee`: git remote -v gave:
* `Buddy Ellis`: Im assuming you're using iterm, how do you make the pane that is 'out of focus' not 'gray out' when you switch focus, I've created a loglive script, but when I focus on the other pane, it loses all color etc
* `Angie Reyes`: can you ask tim to display the commands again
* `Felipe Baisi`: cd poetry
* `jordanmccullough`: Buddy E. Yes, that's iTerm. Will have to follow up on that.
* `Martin Karle`: fatal: unable to access ...
* `jordanmccullough`: Angie R. We did a `git clone` of the URL of your fork.
* `Ginny Lee`: Thanks Felipe B
* `jordanmccullough`: Ginny L. Did you `cd poetry`
* `jordanmccullough`: to change directory into the newly cloned repository?
* `jordanmccullough`: Martin K.: What command was used when that issue showed?
* `mesmael`: remote: Repository not found
* `Júlio César Costa Marcondes`: I tried to clone my own repository in other project, but I didn't have permission...Is there any extra parameter that I should use ?
* `jordanmccullough`: Mesmael: Can you provide the URL you are using to clone from?
* `jordanmccullough`: Just so I can double check it?
* `jordanmccullough`: Julio C.: So when we're cloning a new repository (the Poetry one) we want to be outside the directory of our other repository project.
* `mesmael`: https://github.com/autodeveloper/poetry.git
* `mesmael`: do we need to create a student folder as well
* `Ginny Lee`: yes. i saw Felipe's response
* `jordanmccullough`: Mesmael: It does not look like your account has a fork of the Poetry repo.
* `jordanmccullough`: Can you try visiting the main URL of the Teacher's repository and clicking the "Fork" button: https://github.com/githubteacher/poetry
* `Ginny Lee`: Are we going to get a config so we don't have to type username/password for pushing?
* `jordanmccullough`: Definitely.
* `jordanmccullough`: Martin K.: Looking....
* `jordanmccullough`: Hmm... Just tried. Cloned successfully. Can you try again for me?
* `jordanmccullough`: Then let me know?
* `jordanmccullough`: mesmael: To your question, a directory that helps you keep your original project separate from the Fork clone of Tim's repository would be a good idea.
* `Martin Karle`: ok, i try it again
* `mesmael`: that worked.  i hadn't "forked"
* `mesmael`: thanks
* `jordanmccullough`: Excellent. Glad to hear of the success.
* `Martin Karle`: still the same error
* `Mike Robbert`: Are pull requests specific to github or are they relevant with other git servers?
* `jordanmccullough`: Martin K.: Are you behind a firewall or know of any port blocking?
* `jordanmccullough`: Pull Requests are specific to GitHub.com and our pattern for collaboratively contributing to repositories.
* `jordanmccullough`: There are other ways to use Git to contribute, integrate, and share commits, but Pull Requests are the most seamless.
* `Martin Karle`: Yes, I think the firewall is causing problems
* `jordanmccullough`: Martin K. If you are behind a firewall, set the proxy for Git like this: `git config --global http.proxy <yourproxy>`
* `jordanmccullough`: Martin K.: How's the clone coming now with the proxy configuration in place?
* `jordanmccullough`: So, let's try to create a new file, commit it on your local repo....
* `jordanmccullough`: then `git push`
* `jordanmccullough`: create a Pull Request from your account's Fork.
* `jordanmccullough`: Everyone good so far now?  Let me know so I can help out if necessary. :-)
* `Paul Scofield`: Hi Jordan,
* `jordanmccullough`: Hi Paul!
* `jordanmccullough`: How can I help?
* `Paul Scofield`: I am getting an error when trying to clone from the https://github.com/github/pscofiel/poetry fork.  It says that the get: commnad is not found.
* `jordanmccullough`: Can you copy paste the full command you're running?
* `jordanmccullough`: it should look like this:
* `jordanmccullough`: git clone https://github.com/github/pscofiel/poetry
* `jordanmccullough`: Correction....
* `jordanmccullough`: There's a few too many things in that URL :)
* `jordanmccullough`: I'm betting....
* `Júlio César Costa Marcondes`: I'm not having permission to push my changes...
* `Paul Scofield`: get clone https://github.com/pscofiel/poetry.git
* `jordanmccullough`: not sure how the `github` snuck into the url.
* `jordanmccullough`: `git clone https://github.com/pscofiel/poetry.git`
* `jordanmccullough`: substitute the "e" for an "i"
* `jordanmccullough`: `git` instead of `get`
* `jordanmccullough`: How's  that? That should work, but let me know!
* `Paul Scofield`: Says the repository does not exits
* `jordanmccullough`: Paste in the full command you're running again and I'll see... 
* `Paul Scofield`: git clone https://github.com/github/pscofiel/poetry
* `Cheryl Court`: could you also get the submitted to resolve the conflict before accepting instead?
* `Cheryl Court`: submitted => submitter
* `jordanmccullough`: The URL has some info that doesn't need to be in there ;)
* `jordanmccullough`: Try this:
* `jordanmccullough`: git clone https://github.com/pscofiel/poetry
* `jordanmccullough`: The `/github/` in the URL was not needing to be in there.
* `jordanmccullough`: An easy way to always get the right URL, and not have to type it either, is to copy it from the URL box in the lower right of the repository page.
* `jordanmccullough`: Below the right side navigation. :)
* `jordanmccullough`: Cheryl: Yes, most definitely.
* `Paul Scofield`: no such file but I can see it on the web.
* `jordanmccullough`: The Fork repository owner could merge in changes from the original (Teacher's) repository, resolve the conflict, push the commits to the branch the Pull Requests refers, and viola, conflict resolved.
* `jordanmccullough`: Paul, let's try this: Visit this page in a web browser: https://github.com/pscofiel/poetry
* `jordanmccullough`: On the right side navigation scroll down to the "HTTPS" URL box. Click the copy link button to obtain the URL to your repository.
* `Paul Scofield`: Yep, it exists
* `jordanmccullough`: Now, open up your terminal/command line.
* `jordanmccullough`: and type: git clone <paste-in-copied-url>
* `jordanmccullough`: Hit enter. The repository should then clone successfully.
* `jordanmccullough`: That resolve it Paul S.?
* `Paul Scofield`: Yep, it worked.  many thanks.
* `jordanmccullough`: Excellent. Glad we got you setup and that working.
* `tlberglund`: git remote add teacher https://github.com/githubteacher/poetry.git
* `Lucas Carvalho`: conflict hehehe
* `Lucas Carvalho`: ok thanks!
* `jordanmccullough`: git clone https://github.com/githubteacher/poetry
* `tlberglund`: git clone https://github.com/githubteacher/poetry.git teacher-poetry
* `Ryan Frueh`: can you rename an existing branch?
* `jordanmccullough`: Definitely.
* `Jason Ewasiuk`: hmmm, my log looks significantly different, past c2c6d64
* `jordanmccullough`: `git branch -m <branch-name> <new-name>`
* `tlberglund`: git config --global credential.helper cache
* `jordanmccullough`: Jason E.: If your log looks different...
* `jordanmccullough`: it's likely because you have (I assume) made local commits that have not yet been pushed. Each commit is unique to you locally in this case.
* `Jason Ewasiuk`: I've made one commit
* `Jason Ewasiuk`: but I'm seeing merges from other people
* `jordanmccullough`: So first you need to pull to retrieve all commits from the upstream.
* `jordanmccullough`: Easiest way is a `git pull`
* `mlowin`: did that, still same error
* `jordanmccullough`: Which branch are you on? Master? Your own new topic branch?
* `jordanmccullough`: You can check by typing `git branch`
* `mlowin`: my own - mikelow
* `jordanmccullough`: the one that is green and with the * indicates your current branch
* `jordanmccullough`: Ah, so your branch shouldn't have anyone else's commits (at least not yet)
* `jordanmccullough`: So you should be able to push your topic branch...
* `jordanmccullough`: `git push -u origin mikelow`
* `mlowin`: oh duh, did hte push command wrong.. thanks
* `jordanmccullough`: No worries. That's why I'm here.
* `Aram`: Hey could you show the last few commangs where he switched to tlberglund branch?
* `jordanmccullough`: Aram: So Tim created and checked out to his branch using `git checkout -b tlberglund`
* `jordanmccullough`: to create a new branch called "tlberglund" and to checkout to it in one step.
* `Aram`: hmm hwen I try git push I get error: src refspec tlberglund does not match any
* `jordanmccullough`: Right, you want to push your branch
* `jordanmccullough`: So tell me what you have with this command: `git branch`
* `jordanmccullough`: You should have a branch named after you.
* `Aram`: yep
* `jordanmccullough`: We want everyone creating a branch, in this situation, using your name for your local branch.
* `Aram`: yep I have done that
* `jordanmccullough`: So you want to be pushing your branch (with your name) to the upstream remote.
* `Aram`: but havent pushed it
* `tlberglund`: git checkout tlberglund
* `jordanmccullough`: Aram: Ah, let's do that for starters. `git push -u origin <your-branch>`
* `jordanmccullough`: Ah, you probably have not yet fetched. So run `git fetch origin`
* `Ginny Lee`: opps spelled berglund wrong
* `tlberglund`: Ginny: :)
* `jordanmccullough`: Good catch!
* `jordanmccullough`: :-)
* `Aram`: ok so pushed my branch
* `Vinicius Camargo`: it's tlberglund
* `jordanmccullough`: Everyone all set now?
* `jordanmccullough`: Do let me know if there's any other issues showing up. We'll get them resolved!
* `Aram`: hmm no :( but kinda lost now,I'll just try and follow in screen
* `jordanmccullough`: Aram: Alright, but if you need assistance happy to help.
* `Aram`: ok thanks
* `mlowin`: I'm doing git pull; git push
* `jordanmccullough`: mlowin: So in this case we're kind of in a race-condition, if you will, with other contributors.
* `jordanmccullough`: Again, this is a big "team" of 57, but in this situation....
* `jordanmccullough`: just run `git pull`
* `jordanmccullough`: then `git push` again.
* `mlowin`: still not working... tried a number of times
* `jordanmccullough`: So let's check a few things to make sure I have a good picture of your situation...
* `jordanmccullough`: 1) What branch are you on?
* `mlowin`: tl berglund
* `mlowin`: *tlberglund
* `jordanmccullough`: Excellent.
* `jordanmccullough`: Good good.
* `jordanmccullough`: So just run `git pull` and tell me what happens.
* `mlowin`: pulled one change to README.md
* `jordanmccullough`: It should show that the history his updated. Excellent!
* `jordanmccullough`: So far so good!
* `Craig Ballantyne`: I'm getting credential-cache is not a git command
* `jordanmccullough`: Again, we've got this massive number of people contributing in this situation, so there are still commits coming in that you don't have, so the `push` gets rejected.
* `jordanmccullough`: Craig B.: What version of Git do you have?
* `jordanmccullough`: `git --version`
* `Craig Ballantyne`: 1.8.0
* `mlowin`: hmm, but i've done git pull; git push many times and to no avail
* `mlowin`: eh looks like it made it in at some point. not sure why the push error message is still appearing though
* `Rafael Chagas`: git: 'credential-cache' is not a git command. See 'git --help'.
* `jordanmccullough`: Craig B.: Can you tell me what this shows: `git config --global credential.helper`
* `jordanmccullough`: Ah, the hyphen!
* `Craig Ballantyne`: cache
* `jordanmccullough`: Hmmm.... `credential.helper` or `credential-helper`?
* `Craig Ballantyne`: credential.helper
* `jordanmccullough`: If there's a hyphen it should be a "."
* `jordanmccullough`: Hmmm.
* `Craig Ballantyne`: doesnt matter, just means I need to enter the password every time
* `jordanmccullough`: Could you copy-paste the whole thing from your command line?
* `jordanmccullough`: Sorry about that Craig. Happy to help debug.
* `tlberglund`: git config branch.tlberglund.rebase true
* `Aram`: ok just trying to catch up now
* `Aram`: Still don't have the tlberglund branch
* `jordanmccullough`: Ah, ok....
* `jordanmccullough`: so 1) `git fetch origin`
* `jordanmccullough`: 2) git checkout tlberglund
* `jordanmccullough`: 3) git branch
* `jordanmccullough`: to confirm you are checked out to the tlberglund branch
* `jordanmccullough`: Aram: Let me know how those three steps go.
* `Aram`: great thanks
* `Ginny Lee`: which dir should we be in now?
* `jordanmccullough`: Ginny L.: The teacher-poetry repository.
* `jordanmccullough`: The "clone" of the authoritative, original repository which, over break Tim and I made everyone collaborators. In other words, you don't need to work on your fork.
* `Ginny Lee`: OK... I'm in teacher-poetry. I'm still getting the crazy 'git lol' with multiple wiggley lines... not sure what i missed?
* `jordanmccullough`: Ginny L.: So now run `git pull`
* `jordanmccullough`: You'll gut a new, updated history. Some contributions are being "rebased" with the config, but we're all still relatively good.
* `Steve Ardern`: In my git lol I have both an origin/master and origin/HEAD - both are in-sync with each other
* `Steve Ardern`: Huh?
* `Steve Ardern`: Is this okay?
* `Steve Ardern`: Just HEAD is a step behind
* `jordanmccullough`: Steve A.: So that's just saying hey, the upstream is ahead of what you have on your local. But let me look into this. Trying to grab this locally so I can inspect in case I'm missing something. :)
* `Steve Ardern`: thx
* `Ginny Lee`: I did a bunch of 'git pull's.  Should 'git lol' still give us all the wiggley lines?
* `Ginny Lee`: Oh, nevermind.
* `jordanmccullough`: Well, some pushed commits were not rebased.
* `jordanmccullough`: So the graph history got a little messy again.
* `jordanmccullough`: Steve A.: To your question, yes, that's "OK"!
* `jordanmccullough`: So the origin/HEAD is simply a marker showing what the default branch most recent commit points to.
* `Steve Ardern`: aha ... thanks
* `jordanmccullough`: Great questions everyone. Lots going on here, so keep them coming!
* `Paul Scofield`: is git push --delete origin <name> the correct syntax?
* `jordanmccullough`: That would be way of deleting the branch, from the command line, off of the remote (GitHub)
* `jordanmccullough`: In the situation Tim setup, we used GitHub.com to delete the branch, and then `git fetch --prune` to remove the local remote tracking branches from our repository.
* `jordanmccullough`: Two sides to the same coin, if you will.
* `Paul Scofield`: i get an unable to delete branch remote ref does not exist message
* `jordanmccullough`: Ah, did someone else already possibly delete the branch you were trying to delete then?
* `Paul Scofield`: Coule be.  Thanks.
* `jordanmccullough`: If the ref does not exist, as the message says, that's saying the label (or branch in this case) not longer lives on the upstream.
* `Rafael Chagas`: Jordan, I tried the command 'git config --global credential.helper cache' but when pushing I get git: 'credential-cache' is not a git command. See 'git --help'.
* `Renato Ikeda`: the same here
* `jordanmccullough`: And just to be sure, can you let me know your Git version?
* `Renato Ikeda`: 1.8.4
* `Rafael Chagas`: git version 1.8.3.msysgit.0
* `jordanmccullough`: Ah! You're on Windows.
* `jordanmccullough`: :-) Let me get you the appropriate setting value, one moment...
* `Rafael Chagas`: yes
* `tlberglund`: s/50
* `tlberglund`: https://github.com/githubteacher/poetry/issues/50
* `jordanmccullough`: `git config --global credential.helper wincred`
* `jordanmccullough`: Should do the trick. Let me know.
* `jordanmccullough`: Also, the credential helper should work for caching on Windows, but the install with MySysGit may be introducing a variable I'm not aware of preventing the cache daemon from working.
* `Rafael Chagas`: Now it's ok. Thanks!
* `jordanmccullough`: Yay!
* `Ryan Frueh`: my e-mail is exploding with messages from GitHub. Can I turn these e-mails off?
* `Ryan Frueh`: rfrueh
* `jordanmccullough`: Any questions?
* `jordanmccullough`: Questions? Any lingering concepts you'd like us to cover to wrap things up?
* `Yuri Csapo`: How do I get to a future instance of the course?
* `jordanmccullough`: http://training.github.com/web/free-classes/
* `Yuri Csapo`: thanks :)
* `jordanmccullough`: http://training.github.com/web/git-foundations/
* `Yuri Csapo`: what was that e-mail again?
* `jordanmccullough`: http//teach.github.com
* `Cheryl Court`: does the advanced class pick up where this one leaves off?
* `jordanmccullough`: This class' presentation deck:
* `jordanmccullough`: teach.github.com/presentations/git-foundations.html
* `jordanmccullough`: Thanks everyone! Had a great time, best of luck, see you soon.
* `Cheryl Court`: Thanks so much!
* `Rafael Chagas`: Thanks!
* `Munir Ahmad`: thank you!!!
* `Lucas Ferreira`: thanks
* `Ricardo Rainha`: Thanks!
* `Ricardo Popi`: Thanks Tim and Jordan
* `Elisandro Vidotto`: Thanks a lot
* `Thiago Carvalho`: Thank you!
* `Douglas Fukuhara`: Thanks Tim and Jordan!
* `Júlio César Costa Marcondes`: Thanks a lot for the class...
* `Ryan Frueh`: ^
* `jordanmccullough`: Of course.
* `jordanmccullough`: Certainly welcome. Thanks for attending.
* `Washington`: Thank you very much guys! see you!
* `Buddy Ellis`: Thanks all, have a good day.
* `Pablo Guimarães`: Thanks guys! See you soon in here, Jordan.
