---
layout: bare
title: Git and GitHub Foundations Online
description: Git and GitHub Foundations Online Class Notes
tags: [notes,notes,online,class]
path: classnotes/2013-06-04-git-and-github-foundations-online.md
eventdate: 2013-06-04
---

## Teachers

* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brntbeer))
* Jordan McCullough ([Twitter](http://twitter.com/thejordanmcc), [GitHub](https://github.com/jordanmccullough))

## Resources

* [Open Source Git Ignore Templates](https://github.com/github/gitignore)
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
* [Merge Tool - Araxis](http://blog.ianbattersby.com/2012/08/04/git-mergetool-with-araxis-on-mac-os-x/)
* [Configure Merge and Diff Tools](http://teach.github.com/presentations/git-foundations.html#/20/3)

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
* [Course Slides](http://teach.github.com/presentations/git-foundations.html)
* [Free Office Hours Sessions](http://training.github.com/web/free-classes/)

## Command Line History Day 1

    git config --global user.name
    git config --global user.name
    git config --global user.name "GitHub Student"
    git config --global user.name "Brent Beer"
    git config --global user.email
    git config --local user.name
    git config --global color.ui
    git config --global color.ui auto
    git config --global --replace-all color.ui auto
    git init newproject
    cd newproject/
    git config --local --list
    git config --local user.name "GitHub Student"
    git config --local user.email "training+githubstudents@github.com"
    git config --list
    git status
    cd ..
    git status
    cd newproject/
    git status
    vim first.txt
    git status
    vim first.txt 
    git add first.txt
    git status
    git commit -m"first file created"
    git status
    vim first.txt 
    git status
    git add first.txt
    git status
    git commit
    vim first.txt 
    git status
    git diff
    git status
    git status
    git diff
    git add first.txt
    git status
    git status
    git status
    git diff --staged
    git diff
    git diff --staged
    git commit -m"expanded shorthand version of second"
    vim first.txt 
    git status
    git add .
    git status
    git diff --staged
    vim first.txt 
    git status
    git diff
    git diff --staged
    git status
    git diff HEAD
    git status
    git add first.txt
    git status
    git diff --staged
    git commit -m "added last line, and periods"
    git status
    vim first.txt 
    git diff --color-words
    git diff --word-diff
    git diff --stat
    vim second.txt
    git status
    git diff --stat
    git add second.txt
    git diff HEAD --stat
    git status
    git add .
    git status
    git commit
    git status
    git log
    git log
    git log
    git log --stat
    
    git log --stat > mvim
    git log --stat | mvim
    git log --format=raw
    git log --format=fuller
    git log --format=oneline
    cd ../git
    git log --format=oneline -5
    git log -5
    git log -5 --author=peff
    git log -1 --author=peff -p
    cd ../newproject/
    git log --graph
    git log --graph --oneline --decorate
    git log --grep="fixed"
    git log --grep="create"
    git log --grep="cre"
    git log --grep="fi"
    git log -S "last"
    git log -S "last" -p
    git log -S "1st"
    git log -S "1st" -p
    git config --global alias.s "status -s"
    git status
    vim mvim 
    mv mvim log.txt
    git status
    git s
    git add log.txt
    git s
    git status
    vim first.txt 
    git s
    git config --global alias.lol "log --graph --oneline --decorate --all"
    git lol
    git config --global --list
    git status
    git diff
    git commit -m "added log output to log file"
    git s
    git commit -am"remove last line of file"
    git status
    git status
    ls
    generaterandomfiles 1 delete_me txt
    ls
    git add delete_me1.txt
    git diff --staged
    git commit -m"commit file to be deleted"
    git rm delete_me1.txt
    git status
    git s
    ls
    git commit -m"remove delete_me file"
    git status
    generaterandomfiles 2 delete_now md
    git stauts
    git status
    git add .
    git status
    git commit -m "more files to be deleted"
    git status
    git status
    git rm --cached -- delete_now1.md
    git status
    ls
    git commit -m "delete_now is gone from tracking"
    git status
    ls
    git status
    rm delete_now2.md 
    git status
    git help add
    git help add
    git add -u
    git status
    git config --local alias.au "add -u"
    git status
    git commit -m"manually deleted delete_now2"
    git status
    git status
    ls
    vim second.txt 
    git mv second.txt greeting.txt
    git status
    git s
    git commit -m"second.txt became greeting.txt"
    vim log.txt 
    git log > log.txt
    git status
    git diff --stat
    git diff --word-diff
    git diff --color-words
    git status
    mv log.txt git-log-output.txt
    git status
    git add -A .
    git status
    git commit -m "changed log filename to git-log-output"
    git log -M20
    git log --stat
    git log --stat -1
    git log --stat -1
    git log --stat -1 -M40
    git log --stat -2 -M40
    git log --stat -2 -M40
    git s
    git status
    ls
    mkdir logs
    git status
    mv git-log-output.txt 
    mv git-log-output.txt logs/
    git status
    git status -u
    vim logs/git-log-output.txt 
    git add -A .
    git status
    git commit -m "doctored log output history"
    git log -1 -M92
    git log -1 -M92 --stat
    git log -1 -M91 --stat
    ls
    git status
    git add -u delete_now1.md
    git status
    git commit -m "delete_now 1 finally deleted"
    ls
    git log -- greeting.txt
    git log -- greeting.txt -p
    git log -- greeting.txt --stat
    git log --stat -- greeting.txt
    git log --stat --follow -- greeting.txt
    git log --stat --follow -- logs/git-log-output.txt
    git log --stat --follow -M40 -- logs/git-log-output.txt
    ls
    git status
    ls logs/
    vim logs/production.log
    git status
    vim .gitignore
    git status
    generaterandomfiles 5 logs/anything log
    git status
    ls logs/
    git add .gitignore
    git status
    git commit -m "begin ignoring certain files"
    ls
    generaterandomchanges 1 delete_please txt
    git rm --cached -- delete_please1.txt
    git status
    vim .gitignore 
    git status
    git add .gitignore
    git status
    git commit -m "remove delete_please from tracking
      generaterandomfiles 500 logs/delete_please txt
    ls logs/
    git status
    cd logs/
    vim .gitignore
    cd ..
    git status
    ls
    touch delete_please201.txt
    git status
    git add .
    ls logs/.gitignore 
    cat logs/.gitignore 
    git status
    git commit -m "save some log files please"
    git status
    git log
    git lol
    ls
    rm delete_please*
    git status
    ls
    git branch
    git branch feature1
    git branch feature2
    git branch faeture3
    git branch
    git lol
    vim greeting.txt 
    git status
    git commit -am"changed last line, update where i've been"
    git status
    git lol
    vim .
    cat greeting.txt 
    git checkout feature1
    git lol
    git log -2 --format=raw
    git log -2 --format=raw --all
    vim greeting.txt 
    git branch
    vim first.txt 
    git status
    git commit -am "added last line"
    git lol
    git checkout master
    git lol
    git checkout feature2 
    generaterandomchanges 2 welcome_home txt
    git status
    git lol
    git checkout master
    git branch -d feature2
    git branch -D feature2
    git lol
    git branch
    git branch -m faeture3 feature3
    git branch
    git lol
    vim .
    git branch feature_next HEAD
    git branch feature_next2
    git lol
    git branch feature1_next_level 2557af8
    git branch feature1_next_level_again feature1
    git lol
    git branch -m feature3 old_abandoned_feature
    git lol
    git branch -D feature1_next_level
    git branch -D feature1_next_level_again 
    git lol
    git checkout master
    git merge feature1 -m"bring in all the things from feature1"
    git lol -10
    git log --format=raw -1
    vim first.txt 
    git branch -d feature1
    git lol -10
    git branch -d master

## Command Line History Day 2

    git lol
    ls .git
    git branch test_branching
    git lol -5
    git branch -d old_abandoned_feature 
    git checkout test_branching 
    generaterandomchanges 2 random_branch rb
    git lol -8
    git checkout master
    git branch -d test_branching 
    git branch -D test_branching 
    git lol -8
    git config --local --list
    git config --global --list
    git help log
    git branch
    git branch -m master new_master
    git branch
    git branch -m new_master master
    ls .git/refs/heads/
    cat .git/HEAD
    git lol -5
    git branch
    git branch -d feature_next
    git branch -d feature_next2 
    git branch
    ls
    git checkout -b change-greetings
    git branch
    mv greeting.txt greeting.md
    vim greeting.md 
    git status
    git add .
    git status
    git add -u .
    git status
    git commit -m "change greeting to markdown, added text"
    git log -1 -M40
    git log -1 -M40 --stat
    git log -1 -M20 --stat
    git log -1 -M35 --stat
    git log -1 -M30 --stat
    git log -1 -M25 --stat
    git log -1 -M22 --stat
    git log -1 -M24 --stat
    git status
    mkdir greetings
    mv greeting.md greetings/
    git status
    git add -A .
    git status
    git commit -m "move greetings into a similar folder"
    git status
    git lol -10
    git checkout master
    ls
    ls logs/
    ls
    vim first.txt 
    git s
    git status
    git commit -am "added a better last line"
    git status
    git lol -10
    git merge change-greetings 
    ls
    ls -p
    ls greetings/
    git lol -10
    git lol -5
    git branch
    git branch testing_merge
    git branch
    git lol -5
    git checkout testing_merge
    generaterandomchanges 5 test_merge txt
    git lol -10
    git checkout master
    generaterandomchanges 3 test_master_merge java
    git lol -10
    git merge testing_merge 
    git log -1
    git log -1 --format=raw
    git lol -10
    git lol
    git lol -10
    git branch -d testing_merge 
    git checkout -b feature_ff
    ls
    git rm test_m*
    git status
    git commit -m "repo cleanup, remove test files"
    git status
    git lol -10
    generaterandomchanges 5 fast_forward pp
    git status
    git lol -10
    ls
    git checkout master
    git lol -20
    git checkout master
    git merge feature_ff 
    git lol -10
    git branch feature_ff 
    git branch -d feature_ff 
    git lol -10
    cd ../git/
    git lol -10
    git lol -25
    git lol
    cd ../newproject/
    git branch
    git checkout -b force_no_ff
    git lol -10
    generaterandomchanges 2 no-ff txt
    git lol -10
    git checkout master
    git merge force_no_ff --no-ff
    git lol -10
    git lol
    git branch
    git log force_no_ff..master
    git log master..change-greetings 
    git log change-greetings..master
    git log master..change-greetings
    git branch -d change-greetings 
    git lol -10
    git branch hotfix
    git checkout hotfix 
    ls
    vim fast_forward5.pp 
    git status
    git commit -am "added math.h to includes"
    git lol -10
    git checkout master
    vim fast_forward5.pp 
    git lol -10
    git merge hotfix
    git status
    git commit -am "include Math.h"
    git lol -10
    git merge hotfix
    git status
    vim fast_forward5.pp 
    git status
    git diff
    git add fast_forward5.pp
    git status
    git commit
    git lol -10
    git log -1 -p
    git status
    git lol
    git branch -d hotfix 
    git branch hotfix
    git checkout hotfix
    vim fast_forward4
    git status
    vim fast_forward4.pp 
    git status
    git commit -am "added more changes to fast_forward4"
    git checkout master
    vim fast_forward4.pp 
    git status
    git commit -am "fast forward fixed from master"
    git lol -10
    git merge hotfix
    git status
    vim fast_forward4.pp 
    git status
    git add fast_forward4.pp
    git status
    git diff --staged
    git commit
    git log -1 -p
    git lol -10
    vim fast_forward4.pp 
    git branch -d hotfix 
    git branch hotfix
    git help merge
    vim fast_forward3.pp 
    git status
    git commit -am "include my signature"
    git checkout hotfix 
    vim fast_forward3.pp 
    git commit -am "brntbeer wasnt here"
    git lol -10
    git checkout master
    git merge hotfix
    git status
    git diff
    git merge --abort
    git status
    git lol -10
    git diff master..hotfix
    cd ..
    ls
    git clone https://github.com/githubstudent/hellogitworld.git
    pwd
    ls
    ls -p
    cd hellogitworld/
    git status
    ls
    git branch -r
    git branch -a
    git branch
    git branch student_feature
    git checkout student_feature 
    ls
    vim github_student.txt
    git status
    git add github_student.txt
    git commit -m "add a student greeting file"
    git status
    git branch -a
    git push -u origin student_feature 
    git config --unset credential.helper
    git push -u origin student_feature 
    git config --unset-all credential.helper
    git push -u origin student_feature 
    git config --global --unset-all credential.helper
    git config --local user.name "GitHub Student"
    git config --local user.email "training+githubstudent@github.com"
    git remote -v
    git push -u origin student_feature
    git branch -a
    git branch -r
    git config --local --list
    git branch
    ls
    vim github_student.txt 
    git status
    git commit -am "apology for previous commit"
    git push origin student_feature
    git log -1
    git config --local user.email "training+githubstudents@github.com"
    vim github_student.txt 
    git commit -am "don't feel bad"
    git push origin student_feature 
    git branch -r
    git fetch
    git remote -v
    git remote add teacher https://github.com/githubteacher/hellogitworld.git
    git remote -v
    git branch -r
    git fetch teacher
    git branch -r
    git status
    git checkout master
    git merge teacher/master
    git log -10
    git status
    git push origin master
    git remote -v
    git branch
    git checkout -b fix-readme
    vim README.txt 
    git status
    git commit -m "fixed readme for markdown"
    git commit -am "fixed readme for markdown"
    git mv README.txt README.md
    git status
    git commit -m "renamed for markdown"
    git status
    vim README.md 
    git status
    git commit -am "add more text to greeting"
    git lol -10
    git lol -10
    git reset --soft HEAD
    git status
    git reset --soft HEAD~1
    git status
    git lol -10
    git status
    git diff --staged
    git commit -m "add more text to greeting"
    git status
    git lol -5
    git reset HEAD~1
    git status
    git lol -5
    vim github_student.txt 
    git diff
    git add github_student.txt
    git status
    git commit -am "more text to student greeting"
    git lol -5
    git reset --hard HEAD~1
    git lol -5
    git status
    git status
    git push -u origin fix-readme 
    git lol -5
    git reset --hard origin/master
    git lol -5
    git branch
    vim README.txt 
    git status
    git fetch
    git reset --hard origin/fix-readme
    git lol -5
    git checkout master
    git checkout -b reflog-savior
    generaterandomchanges 10 reflog md
    ls
    git status
    git lol -15
    git reset --hard origin/master
    git lol -15
    git lol -10
    git branch
    git reflog
    git checkout fix-readme
    git reflog -10
    git reset --hard 3e1e1fd
    git lol -15
    git reset --hard 079da97
    git lol -15
    git checkout reflog-savior 
    git reflog -10
    git reset --hard HEAD@{5}
    git lol -15

## Chat History Day 1

    Robert W.  Hello
    jordanmccullough  Welcome everyone.
    I'm Jordan McCullough, a trainer at GitHub, and will be helping here in the chatroom.
    Please feel free to ask questions any time during class today.
    brntbeer  welcome everyone!
    jordanmccullough  Thanks to everyone who has already joined us here in the chat room for Foundations class.
    Panagiotis T.  Hi guys
    jordanmccullough  We will be performing another quick audio check in about 3 minutes to just verify everything is in check and sounding great for everyone.
    Hello Panagiotis.
    Stefano M.  Hi All
    jordanmccullough  Hello Stefano. Thanks for joining us. Looking forward to sharing and teaching about Git today with our host, Brent Beer.
    Stefano M.  Hi Jordan, yes I look forward to it too.
    Kevin N.  hi all
    jordanmccullough  Welcome Kevin.
    Great to have you all here.
    Just as another reminder for anyone just joining in the chat, I'll be here in the chatroom during the entire duration of both class sessions. If you have any questions on topics, sticking points, etc., please ask and I'm happy to help.
    jordanmccullough  Welcome. Thanks for joining us here in chat.
    jordanmccullough  Please feel free to raise questions at any time during class here. I'm here to assist and answer.
    jordanmccullough  http://mac.github.com and http://windows.github.com
    Steven O.  If you follow Red Hat patches, how would you upgrade from 1.7.1? Or do I just compile myself?
    jordanmccullough  Red Hat's currently releases with 1.7.1? You could most certainly compile from the most recent stable release.
    jordanmccullough  http://git-scm.com/download/linux
    jordanmccullough  Steven O.: To compile, of course, you could grab the source and run `make install`
    Steven O.  Thanks. I can go into it after class. I appreciate it.
    jordanmccullough  `git config --list` is context-sensitive. So running this from the command line now will show what is accessible from configs.
    Until we have a repository setup, we'll just see the user.name and user.email settings set for the --global scope.
    jordanmccullough  https://help.github.com/articles/dealing-with-l...
    Andrew H.  Looks good for me
    Rodolfo M.  font size is good for me
    Dianna O.  Fine for me
    Devin C.  I find the font size in the presentation window a bit small. The prompt is fine.
    Tim L.  font is fine
    Panagiotis T.  looks good for me
    Nolan L.  I am having issues when creating git repo. Font size is fine.
    Kris C.  looks good
    Jan E.  The font in the slides is rather hard to read. it's small and the green on black doesn't help.
    jordanmccullough  Nolan...
    Nolan L.  Hi! :0
    jordanmccullough  Please let me know what's the sticking point on creating the repo, and I'll step you through it.
    Nolan L.  so i can create it through git init newproject
    jordanmccullough  On the command line, in any directory/practice area, you should be able to do two things:
    1) git --version
    to double check Git is installed.
    2) git init your-project-name
    Nolan L.  git version 1.8.1.msysgit.1
    jordanmccullough  To actually "enter" the newly created repository, you will need to change-directory `cd your-project-name`
    Keep me updated if that works for you.
    Nolan L.  so im inside the project. but i can't do the status command in it
    jordanmccullough  Can you paste in what this command returns: pwd
    And, can you verify there is a .git folder in that project? That would indicate that there is a Git repository for that folder.
    Nolan L.  View paste 
    Path
    ----
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion...
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion_317
    444273a93ac29_0001.0000_08490aa4380d2e54\s624fnaf0001.us624.corpintra.net\Homes$
    \launola\data\My Documents\GitHub\scratch\newproject1 [(unknown)]>
    Steven O.  Does the file automatically un-stage if you start editing again; or do you manually un-stage in that case?
    jordanmccullough  Ah! We'll be getting to that very shortly Steven.
    Nolan L.  unfortunatly this is a long path and i dont know how to change it. im on a corprate machine
    jordanmccullough  Nolan, so far so good.
    So what does `git status` say/do?
    An error message?
    Nolan L.  View paste 
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion_317
    444273a93ac29_0001.0000_08490aa4380d2e54\s624fnaf0001.us624.corpintra.net\Homes$
    \launola\data\My Documents\GitHub\scratch\newproject1 [(unknown)]> git status
    fatal: Not a git repository (or any of the parent directories): .git
    jordanmccullough  Hmmm... Let's try again, Nolan...
    1) cd ../
    2) git init nolan-project
    3) cd nolan-project
    4) git status
    Nolan L.  View paste (5 more lines) 
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion_317
    444273a93ac29_0001.0000_08490aa4380d2e54\s624fnaf0001.us624.corpintra.net\Homes$
    \launola\data\My Documents\GitHub\scratch\newproject1 [(unknown)]> cd ..
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion_317
    444273a93ac29_0001.0000_08490aa4380d2e54\s624fnaf0001.us624.corpintra.net\Homes$
    \launola\data\My Documents\GitHub\scratch> git init nolan-project
    fatal: insane git directory C:/Users/launola/AppData/Local/Apps/2.0/43ATYZWT.6OM
    /K17NLP7V.G5D/gith..tion_317444273a93ac29_0001.0000_08490aa4380d2e54/s624fnaf000
    1.us624.corpintra.net/Homes$/launola/data/My Documents/GitHub/scratch/nolan-proj
    ect/.git
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion_317
    444273a93ac29_0001.0000_08490aa4380d2e54\s624fnaf0001.us624.corpintra.net\Homes$
    \launola\data\My Documents\GitHub\scratch> cd nolan-project
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion_317
    444273a93ac29_0001.0000_08490aa4380d2e54\s624fnaf0001.us624.corpintra.net\Homes$
    ...
    jordanmccullough  All, please keep in mind you are welcome to use any text editor that you are most comfortable with.
    Nolan L.  View paste 
    C:\Users\launola\AppData\Local\Apps\2.0\43ATYZWT.6OM\K17NLP7V.G5D\gith..tion_317
    444273a93ac29_0001.0000_08490aa4380d2e54\s624fnaf0001.us624.corpintra.net\Homes$
    \launola\data\My Documents\GitHub\scratch\nolan-project [(unknown)]> git status
    fatal: Not a git repository (or any of the parent directories): .git
    jordanmccullough  Nolan, reviewing....
    Nolan L.  btw, is there a way to change the path name? there didn't seem to be an option when installing git.
    jordanmccullough  Actually, preferably, the Git install should be done from the Git-SCM.org installer, or via the http://mac.github.com or http://windows.github.com
    Jeff C.  did anyone else lose audio?
    jordanmccullough  Nolan: Still reviewing what is going on for your repo.
    Thanks for your patience.
    Steven O.  I can hear him.
    jordanmccullough  Jeff: Seems like audio is still on. Please let me know if I need to have Brent or I re-cover anything during that audio skip.
    Nolan L.  No worries. I'm currently looking over my colleague shoulder.
    jordanmccullough  Sorry about that. I am not seeing anything that stands out why the repo/folder is being created on `git init` but then when you cd into the directory, the repo is not recognized.
    Nolan L.  I'll try re-installing it.
    jordanmccullough  David, to answer your question, please verify you have opening and closing quotes for your commit message.
    David M.  View paste 
    I did the commit and all I see is a whole bunch of ">>" lines; seems that the commit hasn't completed yet
    jordanmccullough  git commit -m"your message"
    David M.  yes that's what I had
    jordanmccullough  you can also hit control+c to cancel and retry.
    David M.  nope it does the same thing every time
    did I miss a config setting?
    jordanmccullough  can you paste in the whole error/output?
    The commit should be fine, no matter the configuration.
    David M.  there is no error output, all I see is ">>"
    jordanmccullough  control + c
    then tell me what `git --version`
    If you don't mind.
    David M.  git version 1.8.1.msysgit.1
    jordanmccullough  Let's just try something else, for a momentary alternative.
    type just `git commit`
    David M.  now it opens a text file
    jordanmccullough  Ah!
    Ok, so for now so I don't distract with configurations to fix that, just type `git commit` for now, if you don't mind.
    Write the commit message in the txt file, then save.
    The commit will then complete.
    David M.  done
    jordanmccullough  :-)
    Awesome.
    David M.  strange, I saved the text file, and then closed it, then I got another error: Aborting commit due to empty commit message.
    jordanmccullough  Did you provide any text in the text file?
    Commits will abort without an actual message.
    This is to ensure users provide an explanation of each commit.
    So if the commit message was left blank in the text editor (other than the lines starting with #, which are comments)
    David M.  i put "#" at the beginning; didn't grok that it was just a comment!
    now it works
    jordanmccullough  Excellent!
    Nolan L.  Jordan, I have it up and running.
    jordanmccullough  Great news. Let me know if I need to recap anything to help you out now that it's all operational on your system.
    Jeff C.  audio is back
    last step I did was creating first.txt
    jordanmccullough  have you made any commits?
    Jeff C.  not yet
    jordanmccullough  If not, to "stage" and "commit" your first.txt...
    you will want to stage, or prepare the file for commit, by issuing this command:
    git add first.txt
    Dianna O.  Lost audio
    Andrew H.  Audio is good here.
    Braden C.  I can hear both of you
    Dianna O.  Back, thank you
    Jan E.  Audio works fine for me.
    jordanmccullough  Thanks for letting us know.
    David M.  Is this training recorded? I'd like to be able to go over what I missed earlier.
    jordanmccullough  View paste 
    Jeff C: Next step would be to make the commit, with this command:
    git commit -m"Your commit message"
    David, we'll have the class notes available, which includes all of Brent's command line input, the chatroom transcript, and access to the slide deck, as well as helpful notes.
    Students are welcome to join us for our free Office Hours http://training.github.com/web/free-classes as a follow up...
    jordanmccullough  and if you have a specific question, those can be posted for the Training Team's review here: http:github.com/githubtraining/feedback
    Andrew H.  What is the last line "\ No newline at end of file"?
    jordanmccullough  Ah! Unix based systems _typically_ expect a blank new file at end of file.
    Git is being friendly and reminding Brent that he simply hasn't provided that. It's not mandatory or required to have that extra line.
    Andrew H.  Got'cha', thanks!
    Andrew H.  also just curious...I've noticed he's not using a space between the -m flag and the commit message. Any special significance to that? I've always added a space.
    jordanmccullough  Either is acceptable.
    Simply the command is an option switch, the -m, and the value passed, the quoted commit message
    Jeff C.  I did my commit. I see "changes not staged for commit" message
    did I miss something?
    jordanmccullough  Did you "stage" them first?
    There are three "steps" to the process of a commit.
    1) Editing your file
    2) Staging the file with `git add <your-file>`
    3) Running `git commit` to commit the staged file changes into history.
    Jeff C.  I thought I created the files, added it and committed. I must have skippedd the add.
    I'll try again. thx
    jordanmccullough  Happy to explain the steps.
    The staging area provides a useful way of crafting many changes and which, selectively, are committed at any one time.
    Jeff C.  got it. thx.
    jordanmccullough  Slide for reference: http://teach.github.com/presentations/git-found...
    Steven O.  Is there a way to change the colors, for Red/Green color-blind people?
    Jeff C.  "503 connection timed out error" when following that link
    jordanmccullough  Steven: I believe so. Let me grab the resource link for that.
    Jeff C.  got it. works in chrome
    jordanmccullough  Steven, thanks for your patience on the question.
    Yes, you can certainly change the color definition, which would preferably be set in the `git config --global`.
    For example, `git config --global color.diff.<color-option> <color-value>`
    Micah  when you go into vim, how do you save and exit the file?
    Andrew H.  :wq or :x or ZZ
    brntbeer  Always forget about ZZ!
    Andrew H.  Type ESC when you're in edit mode to get to command mode
    a good one ;)
    Micah  i've never used vim so this editor is way over my head
    brntbeer  has to be capital right? thats what trips me up!
    Andrew H.  Yup
    brntbeer  Micah: no worries =) took me forever to just get used to hitting the ESC key to save and quit!
    Micah  sure
    jordanmccullough  For diff, the options could be configured such as this:
    View paste 
    [color "diff"]
      plain = normal
      meta = bold
      frag = cyan
      old = red
      new = green
      commit = yellow
      whitespace = normal red
    jordanmccullough  Micah: Please feel free to use your favorite text editor.
    Micah  jordan, it's tough to follow along if i have to switch to another text editor
    he's going pretty fast
    jordanmccullough  VI/VIM that Brent is using is just to keep us on the same interface. You are welcome to use whatever editor you are most comfortable with for editing text files and such.
    Steven O.  Welcome Ed.
    jordanmccullough  Micah: Happy to pont out the only actions for Vi necessary:
    1) `i` key for "input mode" to edit content
    Ed L.  I keep getting >> after I commit
    Jan E.  Can I diff between working area and history, leaving out the stage?
    jordanmccullough  2) ESC, `:` then `wq` to save and quite.
    Great question Jan. Not really...
    As effectively, the only way to compare is what is "in staging to history" or "all edits to history"
    jordanmccullough   or the most basic and default, "what is different in working directory changes to what is in staged"
    Great question Jan.
    Jan E.  k, thanks
    Andrew H.  Quick VIM cheat sheet if anybody would like: http://www.viemu.com/vi-vim-cheat-sheet.gif
    jordanmccullough  If you felt the need to ensure something was not commited, that is, remove from staging...
    git reset HEAD <filename>
    Thanks for sharing Andrew!
    Andrew H.  np!
    Stefano M.  Does git log sho only your local log or the log of all people that has worked on this project
    ?
    jordanmccullough  Stefano: Currently, everything is local. The repository, the history, the objects.
    So in short, the log is showing every point of version control history we have locally.
    Andrew H.  is there a quick way to open the log with a text editor?
    Stefano M.  Yes, I'm looking at a global scenario with project shared between people
    jordanmccullough  Once we step into remote repositories, that is, hosted on GitHub in our examples, we will be able to see what "other" contributors have commited.
    Elaine H.  how did he just clear the screen?
    Stefano M.  Ok, thans
    jordanmccullough  Andrew, by default the Log should pipe through LESS, which is likely the easiest way to scroll through (as there isn't any editing involved)
    cmd+k to clear screen.
    for `clear`
    Elaine H.  thx
    jordanmccullough  that is, or `clear`
    David M.  using the git log --stat command, I see a lot of "+++++"; does this have a different meaning than the usual "+++"?
    jordanmccullough  So the +++ and --- are relative indicators of the changes on the files.
    Line additions/removals, that is.
    jordanmccullough  So if you had a commit that contains a file with line removals/changes, you would also see - signs.
    Does that help explain --stat?
    It's a nice option to get a quick assessment of the changes involved over the history of the repository.
    David M.  so you're saying that "+++++" just means that there were "relatively" more insertions?
    jordanmccullough  The +++ and --- are actually matching the number of line changes, up to the default column-width limit of 80. Then the signs become proportional.
    Say, if you had 100 line insertions and 150 deletions, the signs would not be + times 100, but relative to the number of deletions.
    Again, a nice quick reference to see the changes involved. There's also the actual line change count just to the side of those indicators.
    David M.  okay
    Nolan L.  Are we able to download these slides that are being presented here today?
    jordanmccullough  All slide decks will be linked to in the class notes, but here is the link if you'd like to look at them now:
    http://teach.github.com/presentations/
    Nolan L.  Thanks.
    jordanmccullough  and
    http://teach.github.com/presentations/git-found...
    The ? key will provide help on the shortcuts to navigate the slides too.
    Nolan L.  Great thanks!
    David M.  is there a way to know what an alias is doing after you've created it?
    jordanmccullough  Absolutely.
    git config --global --list
    Kevin N.  how to remove alias
    jordanmccullough  git config --global --unset alias.<your-alias-name>
    Dianna O.  Jordan: any recommendations for a good reference book?
    jordanmccullough  Most certainly.
    Pro Git is free in online format here: http://git-scm.com/book
    Our slide decks are also a great reference point, as the demonstrated examples are all present and you can follow along any time there.
    We also have a GitHub YouTube channel with video tutorials...
    http://www.youtube.com/githubguides
    jordanmccullough  And of course, many other resources will be in the class notes to help get you continuing your journey with Git.
    Dianna O.  Fabulous, thank you.
    Ed L.  i got an error with lol "fatal: unrecognized argument: --online
    jordanmccullough  "--oneline"
    Ed L.  i know that's a misspelling but I checked that I typed it right
    jordanmccullough  (just the missing the "e" in the word, it looks like)
    In your alias, or all just on the command line?
    Ed L.  do I have to delete the alias and re-do
    jordanmccullough  For your `git lol` or just `git log --oneline`?
    Not at all! Just set it again with the same name.
    so....
    Ed L.  thanks
    jordanmccullough  git config --global alias.lol "log --oneline --graph --all --decorate"
    Nick H.  I just realized you can add parameters after an alias as well
    jordanmccullough  Ah, excellent point. Great for calling that out. Yes...
    Nick H.  so you can do git lol --grep="stuff"
    jordanmccullough  the aliases are just string representations of the command....
    jordanmccullough  so you can certainly tag on more option switches to enrich your alias when needed.
    Most definitely Nick.
    Dianna O.  I'm getting a fatal when trying to add "unable to create ... '.git'index.
    jordanmccullough  Hmmm....
    Dianna O.  .git.index.lock
    jordanmccullough  What operating system and Git release are you using?
    (Just trying to diagnose what might be going on)
    David M.  what if you do "rm delete_me.txt" instead of "git rm delete_me.txt"?
    jordanmccullough  Right around the corner for that example.
    We'll definitely speak to that. Thanks for surfacing that question!
    Dianna O.  Followed by If no other git process is currently running, this probably means that a git process crashed in this repository earlier.
    jordanmccullough  Dianna, what does `git status` report?
    Dianna O.  I'm using latest git (1.8.3?) on Windows 7
    jordanmccullough  Hmmm...
    what did `git status` return Dianna?
    (trying to still diagnose what happened)
    Dianna O.  #On branch master
    #Changes to be committed:
    Dianna O.  # (use "git reset HEAD <file>.." to unstage"
    for second.txt
    jordanmccullough  There are files staged to be committed then?
    Ok.
    Dianna O.  Changes not staged for first.txt
    then Untrack files for log.txt
    jordanmccullough  So let's try the commit again.
    just `git commit` if you don't mind.
    Then tell me what happens next.
    Dianna O.  same error Unable to create .../.git/index.lock: file exists
    jordanmccullough  Alright, can help at least tidy things up so you can return to the examples...
    if you would try these steps (which all will be explained as topics by Brent later)
    1) git reset --hard
    Dianna O.  sends same error
    jordanmccullough  2) rm .git/index.lock
    Dianna O.  I'll play around with this later; want to get caught back up.
    jordanmccullough  Sounds like one of the Git processes was aborted mid-point...
    which is the result of the index.lock file presence.
    Dianna O.  Is there a way to clear the lock?
    jordanmccullough  Deleting the file.
    jordanmccullough  (this is a rare circumstance)
    rm .git/index.lock
    Keep me updated, as always, here to help through these circumstances or topic explanations.
    Dianna O.  rm .git/index.lock returns same fatal error
    jordanmccullough  Hm.... not sure how the same error is coming back. One is a system-level command, one is a git operation.
    Just `rm .git/index.lock`
    Without any Git command.
    John K.   It would be helpful if you could echo commands that are entered as sometimes they move off the screen before I can type them.
    jordanmccullough  The full class command line input will be in class notes, so that should definitely help for any post-class review.
    Anything in particular I can re-reference for you John?
    Doug M.  after git add -A, I show the log file as a move
    jordanmccullough  Exactly! So the "deleted" file, and the new file are now both staged.
    Since the "fingerprint" and the content are similar enough for Git to infer, then it shows as a move/rename.
    John K.  Nothing specific - I just sometimes miss the commands
    Jan E.  So Git can only deduct moves by heuristics, it doesn't actually track directory tree changes, right? Like Subversion does.
    jordanmccullough  Correct. Tree objects reflect the structure, but fundamentally, Git is comparing file content, which is stored as blobs.
    jordanmccullough  As we start to rev up and change gear from just moving, removing, and logging, please feel free to surface any topics you need clarified.
    Maximilian B.  Having some issues with creating the .gitignore file on windows. "vim .gitignore" command doesn't seem to do the job.
    jordanmccullough  Feel free to use your favorite text editor.
    And just saving the .gitignore file in the root of your repository.
    Depending on how you installed the Git Bash/Shell on Windows, VIM may or may not be available.
    Try `VI` if you are still interested.
    Kris C.  whats the scope of the .gitignore? applies to files in same folder of gitignore and sub folders?
    jordanmccullough  Kris: Recursive from where it resides.
    So if in the root, it will apply recursively down to any subfolders.
    Braden C.  what if a subfolder has its own .gitignore? how is that handled?
    jordanmccullough  Excellent question!
    Kris C.  What if I need to override in subfolder?
    jordanmccullough  It would take precedence.
    Doug M.  Suppose i'm debugging and generating some output files locally and want to ignore them, but this isn't something I want to share with the rest of the project ... is there a 'local' version of .gitignore?
    jordanmccullough  Brent is explaining this now.
    Ah@
    jordanmccullough  Yes, most certainly. Let me bring this up on audio momentarily. There certainly is an option for that particular scenario Doug.
    In short, what will be configured it a `git config --global core.excludesfile <path>`
    For tailoring an ignore that would not carry along with your repository.
    We'll work though an example shortly.
    Jeff C.  can you show where you placed your 2 .gitignore files again please?
    jordanmccullough  So the first one, Brent saved in the root of the project.
    So this ensures the ignore patterns apply recursively down to all project files and sub directories.
    The second was placed in the /logs/.gitignore
    jordanmccullough  so that the sub-directory's ignore takes precedence over the one in the root.
    Jeff C.  thx
    jordanmccullough  Jeff does that help?
    Awesome.
    Keith  If you set a .gitignore in web root with a pattern such as *.log will that be recursive throughout the file system?
    jordanmccullough  Only recursive down from the current place in the repository.
    Keith  ok so if my gitignore is in webroot the file log/system/cc/blah/sys.log would be excluded?
    jordanmccullough  If the ignore pattern was in that .gitignore, yes.
    Jan E.  Since Git is only handling files, is there a way to add an empty directory to the tree? Say, I want an empty directory to be in the tree when checking out. Is there any other way than having at least one empty file in there?
    jordanmccullough  Such as *.log or sys.log
    To scaffold, we typically advocate just placing empty .gitignore files (therefore causing Git to track the Tree)
    Keith  Also is there an easy way to migrate global config files to another repo? Aliases for example?
    jordanmccullough  Ah, most certainly!
    You can always access ALL configuration as the text file...
    the --global lives in the OS user home directory, such as /document & settings/<username>/.gitconfig
    Keith  I see, then just copy the file over to the new server/repo
    jordanmccullough  for Windows, and ~/.gitconfig for Mac.
    Keith  how about centos?
    jordanmccullough  Centos?
    Keith, if you can clarify I'm happy to fill in more details about config.
    Keith  yup, if I have a git repo on a centos server and I want to move the config to a new centos server?
    would it reside in the .git directory?
    jordanmccullough  Ah, well there isn't any user-level or global-level configuration that carries with the project/repo itself.
    All the config is user specific.
    So that is one file that is not carried along when distributing the repository.
    Keith  i see. On my centos server I look in /home/keith (user home directory) and I do not see anything releated to git when using a ls -al
    David M.  i don't see the refs file
    jordanmccullough  try `git config --global -e`
    to edit the file and see where the file is located.
    Keep me posted if you need further assistance finding the file.
    David M.  this is all i see in a txt file when i type that command:
    View paste 
    [user]
      name = David McLeod
      email = ddmcleod@guidewire.com
    [alias]
      s = status -s
      lol = log --graph --oneline --decorate --all
    jordanmccullough  Try on the command line...
    David M.  that's what i did'
    jordanmccullough  find <your home dir path> -name ".gitconfig"
    David M.  typed it on the command line, got a text file opening
    jordanmccullough  Try this to "find" the file on the path:
    `find <your home dir path> -name ".gitconfig"`
    David M.  i just installed git this morning; how do i determine <your home dir path>?
    jordanmccullough  That should return the path of the specified file name, if it exists in the path.
    That would be what the path of your home/user account is.
    Windows or Mac?
    David M.  windows
    jordanmccullough  The `find` command should work.
    Your home directory....
    David M.  when i opened the git command prompt, it opened on "C:\Users\ddmcleod\Documents\GitHub\"; I have since created a new project called newproject
    jordanmccullough  Your home directory then is: C:\Users\ddmcleod
    View paste 
    Try this then:
    find C:\Users\ddmcleod -name ".gitconfig"
    Will provide some notes post-class as to where the .gitconfig is stored in windows.
    Also...
    you can see ALL files in the windows....
    (if you're using msysgit) using the DIR command.
    David M.  yes, i found that, but when I execute "git config --global -e", it just opens the text file which contains the text I pasted earlier
    jordanmccullough  Hmm...typically the editor showing the path at the bottom.
    David M.  well, my .gitconfig file doesn't contain any reference to the refs file.
    jordanmccullough  ?
    Keith  where would be .gitconfig exist on a linux server?
    jordanmccullough  This would be all local at this point.
    We haven't connected our repository to a server.
    --local is in the repository ./git/config
    and the --global in the home directory/.gitconfig
    Andrew H.  Thanks guys!
    Jeff C.  can you post the slides and commands entered during the exercises today? I'd like to review before tomorrow.
    lydia l.  how do you change the "root" default directory for the git bash?
    jordanmccullough  http://teach.github.com/presentations/git-found...
    Nolan L.  Just out of curiosity, did you guys have a flow chart for an example on branching and merging? I know you guys showed it on some topics.
    lydia l.  I hope you will cover conflict when merge.
    jordanmccullough  Not specifically a flow chart, but we'll be speaking to some branching flows tomorrow once we begin interacting with the remote repo.
    brntbeer  merge conflicts will be covered tomorrow for sure!
    jordanmccullough  Lydia, most certainly.
    Nolan L.  alright, great, thanks!
    lydia l.  thx
    jordanmccullough  Thanks for joining. Looking forward to tomorrow and seeing you here again.
    Jeff C.  please don't disconnect yet.
    having trouble accessing the slides and notes from today
    brntbeer  Is there something we can help with Jeff Clark ?
    jordanmccullough  Still here Jeff.
    Jeff C.  the link you posted is not working for me
    brntbeer  http://teach.github.com/presentations/git-found...
    jordanmccullough  http://teach.github.com/presentations/git-found...
    Also, you can access all slide decks from our Training Team...
    http://teach.github.com/presentations/
    brntbeer  yep, thats where all the slides will always be
    jordanmccullough  There's a helpful shortcuts tip if you press the `?` on your keyboard when you're viewing the slides.
    Dianna O.  Thanks Brent and Jordan, great class so far.
    jordanmccullough  Glad to hear it!
    Jeff C.  I can get to here: https://github.com/githubtraining/feedback
    but where are the slides and commands entered during the session?
    Jeff C.  all I see is readme.md
    brntbeer  Jeff Clark: the commands will be emailed to you later after class. the slides are just at http://teach.github.com/presentations/git-found...
    jordanmccullough  The CLI (command line inputs) will be in the class notes after the session tomorrow.
    brntbeer  once you go to that url, you can use arrows to move through the slide deck
    brntbeer  or hitting the "?" key to get more ideas
    closing down now, see you all tomorrow at this same room!
    Jeff C.  wait
    I'd like to review today's class again, before tomorrow starts
    is today's material available now?
    brntbeer  the slides are, the command line history is not, and will not be until after tomorrow's class
    Jeff C.  or can I only review day 1 after day 2 has completed?
    again, where are the slides?
    brntbeer  the slides are available 24/7 for you to go through, the command line history/chat is not until
    after tomorrow's class
    jordanmccullough  All the core commands and examples are in the slide decks, so that should be a great start Jeff.
    brntbeer  http://teach.github.com/presentations/git-found...
    this is the slide deck im reading from
    if you look on my screen, this is the URL im currently reading from right now
    teach.github.com/presentations/git-foundations.html
    going to that URL will give you exactly what i have, hitting the "?" key will give you an idea of how to move through the slide deck for you to use it in the same way i was
    jordanmccullough  Does that help Jeff?
    Jeff C.  that url takes me to a page with a link to office hours and team training QA
    brntbeer  hit the "n" key
    or the questionmark key
    you have to manually move through the slide deck, just like you would a power point presentation
    jordanmccullough  shift key + /
    brntbeer  arrow keys work too
    jordanmccullough  They sure do.
    brntbeer  you have to move and progress the slides as you would a presentation
    Jeff C.  thanks, what is that? I'm a window guy never seen a presentation like that before.
    sorry for the trouble
    jordanmccullough  We'll be here tomorrow Jeff, and I'll be supporting chat, so feel free to list out any questions and I'll help out.
    brntbeer  oh no problem at all!
    jordanmccullough  It's my framework for slides.
    http://github.com/jordanmccullough/hydeslides
    brntbeer  it's actually something jordanmccullough made. called Hydeslides
    jordanmccullough  Open source. Feel free to check it out.
    brntbeer  heading out to lunch now! see you tomorrow!
    Jeff C.  nice :) I don't feel so bad for not knowing what to do with it.
    Jeff C.  thanks again

## Chat History Day 2

    jordanmccullough  Good morning Wei. Thanks for joining us for part two of Git Foundations class.
    jordanmccullough  Good morning. Thanks for joining.
    wei h.  the commit ID is sha-1 digest, right? sha-1 digest is 160 bits, or 20 bytes. But commit ID is 40 bytes long. is it composed of 2 digests?
    jordanmccullough  Hmmmm... Good question Wei, give me a moment to think about that.
    jordanmccullough  The SHA-1 digest is 20 bytes or 160 bits
    jordanmccullough  And then represented in hexadecimal form...
    jordanmccullough  of 0-9 a-f, so I think that makes sense.
    wei h.  got it.
    Tim L.  Audio is fine
    brntbeer  whew!
    jordanmccullough  Thanks for letting us know Tim.
    Nolan L.  Sounds good here.
    jordanmccullough  Great.
    Jan E.  It is actually getting lower.
    Peter  you got quieter
    Steven O.  You are more soft now. Are you directing your face to the mic?
    Tim L.  Much better
    Andrew H.  Sounds good now
    Elaine H.  sounds good
    David E.  better now
    Keith  by golly, you got it
    jordanmccullough  Thanks everyone.
    Andrew H.  lol
    jordanmccullough  Andrew, can I help explain something?
    Andrew H.  Nope, just liked the magic renaming of the current branch!
    jordanmccullough  Great. Just be sure that when you're moving, you have to be on a different branch than the one you're renaming.
    Git does not permit renaming the branch you are "checked out" to.
    Micah  yeah this is way too fast!
    lydia l.  can you merge two branches?
    jordanmccullough  We'll run through a few scenarios to help make sense of it all and cement in the concpets and commands.
    Definitely. Any branches can be merged in to any branch.
    Micah  so we should mostly just watch what he does for now?
    jordanmccullough  For example, if you have two feature branches you would want to merge first, you could `git merge feature1` while checked out to the feature2 branch and so forth.
    Micah, you're welcome, and encouraged to follow along.
    Let me know if I can clarify and help though. Here to assist through the learning process.
    Keith  is there ever a time whee you need to declare a recursive merge versus a fast-forward?
    jordanmccullough  the --no-ff option is possible to always avoid a fast forward, if that pattern is desired.
    This is preferred, often times, by teams that want distinct markers showing the commit marker as a merge point.
    Keith  ok, can we touch on that when we get to FF merging?
    jordanmccullough  Certainly. Or I'm happy to explain along here in chat as well.
    Jeff C.  Why did the text editor open when you did the previous merge?
    jordanmccullough  Because the two branches had distinct and unique commits (the two had "diverged" from their original base commit)
    therefore when merging, a "recursive strategy" is applied, and the commit created...
    Micah  was it ever explained why to use "git rm" vs just "rm"?
    jordanmccullough  is a commit representing the joining of those two histories, which is the commit has two parent commits.
    Jeff C.  so brent visually confirmed that the merge was correct in the text editor?
    jordanmccullough  All commits require a message, so the prompt is shown with the editor so you can provide a commit message for the merge.
    Jeff C.  ah, gotcha. thx
    jordanmccullough  In a way, yes, but more so a message to explain the action of the merge's result.
    Micah  is it common in regular projects to create and then usually delete those branches when everything is merged?
    jordanmccullough  Yes.
    Nolan L.  Is it possible to have two or more branches ahead of HEAD? How would fastforward work in that scenario?
    jordanmccullough  There is only one HEAD at any given time. The HEAD is the pointer or indicator as to where you are checked out.
    jordanmccullough  So you are either in a branch "feature1" for example, or a branch "master"
    but never both at the same time.
    Does that help clarify?
    Micah  so branches are usually just temporary timelines and a developer could/should use several different branches throughout development?
    jordanmccullough  Micah, to your question about deleting branches, yes, it is very common to delete the branch once it has been merged.
    Most certainly.
    You could have various development efforts in separate branches...
    Micah  i guess my impression was that a dev would continue to use the same branch throughout
    Nolan L.  Uh, I'm thinking if you are in a team environment. If there are two developers on two different branches which are ahead of HEAD?
    jordanmccullough  Ah! I see your question. Keep in mind that even now with branches, we are only working locally.
    The repository has not yet been distributed, so other contributors are not yet an element of this repo yet.
    Nolan L.  I see. Thanks.
    jordanmccullough  Once we "distribute" the repo for this class to a host, in this case GitHub, you will see how the other commiters' work plays a part.
    Thanks for asking!
    Peter  I am correct that in a ff merge, there is no new commit made?
    jordanmccullough  That is correct.
    For example, merging in a feature branch to master resulting in a fast forward, the result is the master branch ref simply becoming the same commit ref as that in the feature branch.
    Thus the fast forward.
    Great question!
    Micah  will this type of merge conflict be shown using the Github GUI so we can see it in a different way?
    jordanmccullough  Merge conflict resolution can be addressed command line.
    Alternatively, in place of actually editing and resolving the file in VI, you could setup a mergetool with Git configuration to use a visual tool, such as P4Merge, Araxis, OpenDiff, etc.
    Peter  that example cleared up a lot for me
    Keith  is there a switch where you can define to keep all changes from one branch while resolving conflicts?
    jordanmccullough  Absolutely!
    `--ours` and `--theirs`
    If you wanted to replace a conflicted file...
    for resolution, and simply opt for one "side" of the merge conflict, just `git checkout --ours -- <filepath>`
    Keith  would this be done on a per file basis?
    jordanmccullough  and the copy of that specified file for the branch you are on would be the chosed file for the resolution.
    Alternatively, you could `git checkout --theirs -- <filepath>` for the incoming file from the branch to be merged.
    Keith  ok, so just to confirm.. I would
    jordanmccullough  yes, as you would be resolving per-path.
    Keith  git merge mybranch
    conflicts happen
    then i 'checkout --theirs -- myfile.php'
    or --ours appropriately
    jordanmccullough  And the file in the directory to stage to resolve the conflict would be from the clean snapshot from that side of the commits.
    Yes!
    Keith  ok. would I still need to add and commit at the end of resolving the conflicts?
    Keith  this is a specific pain point as you can probably tell
    jordanmccullough  One of my favorite quick ways of resolving conflicts when I know that one side has the clean code during a conflict.
    Yes, would need to stage that file, then commit to finish the merge.
    Keith  right, that is exactly where I am coming from
    jordanmccullough  Throw those scenarios at me! I'm here to help.
    :-)
    Keith  thanks
    Peter  it sounds like once you do a git merge, you are in that 'mode' until the merge is complete. is there a way to exit the merge? Or am I incorrect in assuming that?
    jordanmccullough  `git merge --abort`
    to undo from the merge, given you are in a conflict-resolution state.
    That would simply undo the action, clean up the working directory, and abort the merge.
    Peter  are we going to talk about the the multi window vim conflict editor?
    jordanmccullough  Given the pace and the core commands, we'll be providing some info in class notes on setting up a visual editor for merge conflicts.
    These will definitely be in the class notes though, but if we have time, we'll try to show that in this session.
    Peter  thanks :)
    jordanmccullough  Certainly.
    Max B.  I think I missed the part why we have a local branch + a remote branch, both on our local machine...?
    Jeff C.  Is it correct to say that the Remote Branch is a local copy of some upstream branch?
    jordanmccullough  http://github.com/signup/free
    If you don't already have an account, please do sign up.
    Jeff, yes, the Remote Branch is a snapshot from the last time the local repository has "synced" with the remote.
    Max: Did audio cut out, or would you like me to just recap?
    Max B.  just a recap!
    jordanmccullough  Local Branches and Remote Branches are both specifically on your development machine.
    jordanmccullough  The Upstream Branch are branches and the repository that live exclusively on the hosted (GitHub) repository.
    https://github.com/githubteacher/hellogitworld
    Max B.  Got it, thanks
    Steven O.  So, we fork from the CLI and not from Github?
    jordanmccullough  Visiting the https://github.com/githubteacher/hellogitworld page in a web browser.
    And clicking the "Fork" button in the upper right corner will, when signed in, provide a fork of the original repository and make a copy into your own account.
    Steven O.  The Fork button. I missed that. Thanks.
    Jan E.  Will you still get to talk about rebasing later? The slides seem hard to understand without comment.
    jordanmccullough  Jan: We'll certainly visit the topic of rebasing. It's often better to grasp the entire distributed concept first, as there are repuercussions to keep in mind on rebasing and how it impacts sharing repository commits.
    lydia l.  i can't paste in my git bash.
    Steven O.  We are not seeing his CLI.
    Jan E.  Oh, okay, sounds good. =)
    jordanmccullough  On Windows, you should be able to control+click to paste in the copied URL.
    lydia l.  i fix my bash
    Steven O.  I guess my view of his screen is frozen.
    jordanmccullough  On screen right now is Brent's command line.
    Is that not showing?
    Steven O.  Now. Not updating.
    Peter  I can see his cli just fine
    Ed L.  I'm stuck at 80%
    Steven O.  I see scratch new project.
    jordanmccullough  Ed: On the clone it says 80%?
    Steven O.  There seems to be slowly updating visually. Maybe I am buffering video.
    Ed L.  Receiving objects: 80% ...
    jordanmccullough  Hmm...
    Ed L.  finally done
    jordanmccullough  Good to hear it.
    Now the `hellogitworld` project should be in your development directory, and you can `cd` into the project.
    William B.  is there a way of undoing something I added (git add file) before committing?
    jordanmccullough  For un-stagaing, yes! And undoing commited things as well.
    To unstage a file that is in the staging area...
    `git reset HEAD <filename>`
    William B.  I asked before about class notes and you answered that they would be sent by email. I didn't receive the ones from yesterday - where they already sent?
    jordanmccullough  William: We'll be sending notes after today's second session for both parts of class.
    Thanks for the reminder on clarifying.
    lydia l.  I am a bit confused about the recursive merger and the FF merger. the diff I see is the FF merger, master branch does not have any commit from the branch point. the git commands are the same, so why do you need to decide if it you are doing recursive or FF.
    jordanmccullough  Lydia: You've capture it as far as what's happening, that's great news. As for "deciding"
    jordanmccullough  The only time you can "decide" which it will be is 1) If you examine the graph and understand what will happen 2) use the merge --no-ff flag to avoid any fast-forward merges to clearly mark where branches join.
    lydia l.  teacher should take a breather now and then to give studetns time to take note.
    Ed L.  does the audio sound weird to others
    it is intermittent
    Peter  audio if fine here
    Ed L.  sounds like a robot
    Steven O.  intermittent breaking
    Jan E.  Sounds fine mostly. Occasional stutter
    jordanmccullough  Ed: How does the audio sound now?
    Steven O.  I don't see his CLI again.
    Ed L.  ok now but occassional stutter like Jan said
    jordanmccullough  Screen showing right now is the slide deck in the background, the CLi on the right side of screen.
    Steven O.  Right side? I have one window.
    jordanmccullough  Is that showing for you Steven?
    Yes, sorry, as part of Brent's screen.
    So right now we're just showing the slide for Network Remotes
    Steven O.  Oh, he was describing what he sees but was not showing it. I was confused.
    jordanmccullough  Ah, gotcha.
    Peter  what does the -u do?
    jordanmccullough  Let me bring that up on audio.... :)
    Steven O.  I have that 403 problem at home. What is it?
    Peter  what happens if the initial git push does not have the -u?
    jordanmccullough  The branch is only pushed this one time and no "wiring" is established.
    Therefore, to push any updates, you would need to `git push origin <your-branch>` each time.
    To check our remote, type:
    git remote -v
    Peter  ah. so if I user git push -u origin branch. the next time, I can just type git push branch
    jordanmccullough  the "origin" should show with the URL to your repository address on GitHub.com
    Peter: Correct!
    Just type: `git push`
    David M.  didn't prompt me for username or password, just went through
    jordanmccullough  no branch name need be specified.
    Did you already have a GitHub account? Are you using SSH or HTTP protocol?
    David M.  https
    jordanmccullough  And the push succeeded?
    David M.  yes
    wei h.  when I go "git push -u origin whou_feature", I got error "Gtk-WARNING **: can not open display:"
    jordanmccullough  It might be your environment is already setup with credential caching.
    David M.  I didn't change anything, seems like the default setup took care of this
    jordanmccullough  Wei: Can you share what this command returns: `git remote -v`
    wei h.  origin https://gi....
    jordanmccullough  David: As long as the branch shows up on your GitHub account, your set then. :)
    Wei, the entire URL did not show up. Can you try re-pasting in again?
    wei h.  origin https://github.com/whou/hellogitworld (fetch)
    jordanmccullough  Alright, that looks good.
    wei h.  origin https://github.com/whou/hellogitworld (push)
    jordanmccullough  and can you confirm your branch name by pasting in what shows for `git branch` as well? Thanks.
    jordanmccullough  Trying to capture the entire picture so I can help diagnose.
    John K.  Where is the "pull" pulling from? sending a pull request seems odd.
    jordanmccullough  Good question. The Pull Request signifies that a merge from a specified branch (in this case, a student's branch) be retrieved and integrated with the Teacher's master branch.
    John K.  Is it that you student is requesting that the teacher "pull" their file?
    Jeff C.   I did the push. I can see my branch through github, but I can't see my jeff_student.txt file.
    jordanmccullough  That is correct.
    John K.  thanks
    Jeff C.  I got this message in the console after the push:
    wei h.  View paste 
    git branch
    master
    * whou_feature
    Elaine H.  went to push and got an Authentication failed message.
    Jeff C.  View paste 
    jclark@JCLARK-W520 ~/blah/hellogitworld (jeff_feature)
    $ git push -u origin jeff_feature
    Username for 'https://github.com': jclarkGit
    Password for 'https://jclarkGit@github.com':
    Total 0 (delta 0), reused 0 (delta 0)
    To https://github.com/jclarkGIT/hellogitworld.git
     * [new branch]      jeff_feature -> jeff_feature
    Branch jeff_feature set up to track remote branch jeff_feature from origin.
    lydia l.  i did a push and I can't see my branch
    Micah  how do i revert my pull request?
    jordanmccullough  Elaine: If authentication failed, please verify the username and password were input on the command line correctly. Or just retry--there might have been a GitHub issue a few moments ago.
    jordanmccullough  So Pull Requests can be closed with the "Close" button at bottom.
    But they cannot, once sent, be entirely "destroyed
    lydia l.  how do I push my commit file I added?
    jordanmccullough  Jeff: Awesome. Looks like you successfully pushed your branch.
    Jeff C.  I was expecting to see my jeff_student.txt file from github.
    I do not
    Steven O.  What is the social aspect of this feature? If I create a series of changes, should I wait for the first pull request to be discussed before submitting others; or do I send them at each time I think a feature is finished?
    jordanmccullough  Ah, so there is a dropdown box indicating which Branch working directory is shown.
    wei h.  hi, I can't move on due to the error after doing "git push ..."
    jordanmccullough  Jeff: Click the dropdown to change the branch to your pushed branch with the expected change.
    Investigating Wei. Thanks! one moment and I'll see. Reviewing your provided info...
    Wei: Can you try this, just to see what the error is one more time:
    Elaine H.  I had mis-typed my pwd. good now. thx
    jordanmccullough  git push origin whou_feature
    Jeff C.  thanks. I forgot to commit my jeff_student.txt file before I pushed my jeff_feature branch.
    jordanmccullough  Thanks for the update Jeff.
    Elaine: Good to hear. Glad it's working for you.
    wei h.  the same error: "gnome-ssh-askpass:1671): Gtk-WARNING **: cannot open display
    Ed L.  jordan, I'm having trouble understanding how a web team could collaborate
    lydia l.  I am getting this error when pull request:
    Oops! githubteacher:master is already up-to-date with lydia-le:master Try a different branch?
    jordanmccullough  If you are using HTTP protocol (as your git remote -v indicated) I'm not sure why you are receiving the SSH error.
    Ed L.  how does the teacher test a page and decide if the change is worth accepting
    Steven O.  So, is "Forking" and "Pull Requests" a feature of Github or Git? (Can you fork and pull outside of Github?)
    jordanmccullough  Wei: It looks like your environment might have an SSH configuration variable getting in the way. Could you take a look at this:
    http://kartzontech.blogspot.com/2011/04/how-to-...
    Forking and Pull Requests are GitHub.com feature.
    Jan E.  Wei: if you use Ubuntu, try: unset SSH_ASKPASS
    wei h.  Jordan: it is hard for me to try things while the teacher is moving on. I could not catch up with his teaching.
    I tried "unset SSH_ASKPASS", no help, I got the same error.
    brntbeer  wei hou: im simply just moving around the page, you're not missing out i promise! Going to be going over this stuff for a bit longer too!
    brntbeer  =)
    Ed L.  perfect
    i get it
    brntbeer  Steven Orr: Forking and Pull-Request are just GitHub features.
    wei h.  I am using Ret Hat linux
    brntbeer: I did not follow you after I could not do "git push" since I was asked to try different things...
    Steven O.  We have not seen a conflict in the Pull yet. Can this all be handled in Github or do you reject the request and ask them to work it out before resubmitting?
    jordanmccullough  Wei: Sorry to hear our environment setting is for SSH is blocking HTTPS protocol pushes with GitHub.
    GitHub Pull Requests will show a "cannot merge" Pull Request Merge button...which is another scenario where you would need to use the command line instructions (just pointed out on audio).
    The process wouuld then be identical to merge conflict resolution.
    Nolan L.  When do we ever want to do a git fetch over a git pull?
    jordanmccullough  Typically I like to use fetch when I do "airplane" mode. That is, when I watch to retrieve all the branches of development (that even other contributes may have put on the remote repository) and be able to retrieve while offline or at another time.
    Then I could methodically assess, diff, compare, and merge those "fetched" branches whenever I choose, without any need for connection to the remote.
    Nolan L.  I see. So it is when you are working without network after the fetch?
    jordanmccullough  Or when you are not quite ready to integration/merge a particular branch, but want it all locally to compare, diff, etc.
    jordanmccullough  For example, you could `git fetch origin` to retrieve all branches.
    Then, at any time (online, offline, it doesn't matter) `git diff master origin/featureABC`
    Nolan L.  Alright. That makes perfect sense.
    jordanmccullough  to compare, but not make the merge to compare the two branches for example.
    Nolan L.  I see. Thanks!
    jordanmccullough  If the diff makes sense, you could `git merge origin/featureABC` and then push master branch.
    Steven O.  I am confused. Did he purposely delete his student_feature? Why add new remote?
    jordanmccullough  The Pull Request woul automatically close, the master would then be updated, etc.
    We are adding a new remote that points to the "original" Teacher's repository so that our Fork (copy) of it can be brought up to date and synced with the changes that changed (merges the Teacher brought into their repository)
    That is, adding a remote to our Fork repository.
    This is another place where Fetch is useful.
    Jeff C.  Are we adding a new remote because we want to keep our original fork, but also get the changes that have been added to teacher?
    jordanmccullough  Jeff: Exactly!
    As there are changes/commits on the Teacher repository that we do not have in our Forks. So we're getting the remote, fetching, and then going to get our Master of our fork up to date.
    David M.  that failed for me: I got the following error:
    View paste 
    fatal: https://github.com/githubteacher/hellowitworld.git/info/refs?service=git-upload-pack not found: did you run git u
    pdate-server-info on the server?
    Jeff C.  but if I just wanted what was in the teacher branch and was happy to have the teacher changes overwrite what I have in my fork?
    jordanmccullough  David: can you paste in what `git remote -v` returns?
    Jan E.  Can I just fetch a branch from teacher instead of all of them?
    Jeff C.  a "get latest revision" so to speak
    jordanmccullough  Jeff: Then you could use `git pull teacher <desired-branch>`
    David M.  View paste 
    origin  https://github.com/ddmcleod/hellogitworld.git (fetch)
    origin  https://github.com/ddmcleod/hellogitworld.git (push)
    teacher https://github.com/githubteacher/hellowitworld.git (fetch)
    teacher https://github.com/githubteacher/hellowitworld.git (push)
    upstream
    Jeff C.  thanks
    jordanmccullough  and the specified branch will merge into the branch of where your HEAD is.
    The URL has a typo in it David.
    For teacher. Please remote and add again. Like so:
    1) git remote remove teacher
    2) git remote add teacher http://github.com/githubteacher/hellogitworld.git
    Jan: yes. `git fetch <remote-name> <desired-branch>`
    David M.  that worked
    jordanmccullough  :-)
    wei h.  Jordan: I am totally lost after the step "git push" due to possible IT issue. I will need to talk to you after the class.
    David M.  i think i have a mental disconnect; I don't understand the difference between pull and fetch
    jordanmccullough  David: Fetch retrieves the remote's branches and stores them in the LOCAL remote branches. In other words, off to the side, but entirely local so you can asssess any of the branches on your machine.
    Pull performs the same operation as Fetch, but if there are any branches that were originally set with `-u` the branch will also be merged into the matching branch locally (bringing it up to date with the remote)
    Wei: Were you able to resolve the ASKPASS issue for your OS environment?
    David M.  does that mean that fetch OVERWRITES existing files?
    jordanmccullough  It brings the remote branches, again, the ones stored locally, up to date. So yes, it always writes the retrieved content from the remote to the remote branches.
    This is a safe operation though....
    as this is not affecting your working local branches.
    http://teach.github.com/presentations/git-foundations.html
    This might help connect that explanation with the visual.
    (down arrow keys to build out the diagram to see the different commands demonstrated)
    Steven O.  Too bad it wasn't named: Remote, Near, and Local. Then it would be more clear concerning different remotes.
    jordanmccullough  Steven: I'll mention that to one of the core Git commiters and see what he says. ;-)
    Jeff C.  slightly off topic... I see GitGUI installed as well as GitBash. Is GitGUI the tool I should use if I didn't want to work in GitBash? A way to manage my local file adds and commits? While gitHub is a way for me to manage my relationship with a remote (upstream) repository?
    jordanmccullough  GitGui is a tcl/tk visual app for staging and commiting.
    It's still a great idea to know the core command line operations.
    But you're welcome to give it a try. I would recommend the visual, native tools http://windows.github.com or http://mac.github.com as alternatives, which have a much easier to use interface. :)
    Jeff C.  so if someone on my team hates command line, that person could use a combination of GitGUI and GitHub to manage environments?
    great, I'll look into the windows.github.com tools. thx
    jordanmccullough  GitHub will fundamentally be the "remote" and "collaboration" area for a repository. But for those that "hate" CLI, yes, the visual editors should help them.
    Also, keep in mind that merge conflicts will still require some command line skills. Just an FYI.
    wei h.  Jordan: I don't know how to resolve. I think before the training, github should have sent out a script to check the students' environment and fix issues before the training. I can try the steps in other machine later to see if "git push" works. But the problem is that I could not catch up with what the teacher said after that step...
    Jeff C.  coming from a world of tortoise svn and Perforce P4V, some team members will freak out.
    :)
    Jan E.  Does the commit still exist after a reset? I mean, the object that Git stores for a commit? So that it can be rescued?
    Doug M.  any way to undo that hard reset?
    Max B.  Unrelated question: let's assume I have done 10 commits and then I'm doing a push request. Will only the most recent commit be pushed to the remote repository, or all 10 of them?
    Nolan L.  Has there been an example of detached head?
    Keith  can we review --mixed again?
    Dianna O.  Can we remove a remote branch?
    jordanmccullough  Keith: --mixed will move the HEAD, and write any changes from the un-done commits back to the working directory (as unstaged changes)
    Dianna: Yes. `git remote remove <remote-name>`
    Keith  got it..thanks
    jordanmccullough  to remove the remote itself.
    If the remote branch itself has been removed....
    from the remote, and you want your local to reflect that, then:
    `git fetch --prune <remote-name>`
    Peter  I thought --soft set changes to stage
    lydia l.  I feel like 1990 with all these unix like commands :)
    jordanmccullough  Nolan: Brent spoke earlier during branching and switching between branches about detached head.
    Lydia: The good ol' days. ;)
    Peter: `git reset --soft` will move HEAD, and the commits undone by that will be placed as staged changes.
    Max: A push will publish all changes to the remote.
    So if you push a branch that has 10 local commits that the remote does not, all 10 will be pushed up to the server.
    Peter  got it. thanks.
    jordanmccullough  Wei: Feel free to drop us a line at training@github.com and we'll take care of you.
    John K.  What the url to get the slide at?
    jordanmccullough  For the Reset slides?
    John: Which slides? Here is the entire deck, if that's what you needed:
    http://teach.github.com/presentations/git-foundations.html
    Elaine H.  when the bottom of his screen says (END)...how do you get out of that?
    jordanmccullough  Q
    Elaine H.  thx
    jordanmccullough  http://teach.github.com/presentations/git-foundations.html
    http://github.com/githubtraining/feedback
    Andrew H.  Thanks guys!
    brntbeer  Thank you!
    Peter  Great course. Thanks!
    jordanmccullough  Thank you for joining.
    Keith  Thanks guys
    jordanmccullough  Glad to hear it. Best of luck on your journey wih using Git.
    Peter  will the next level of coursework cover rebasing?
    jordanmccullough  We do have an Advanced course July 2, 2013, which does a deep dive into Rebasing and other more advanced topics (as the title indicates).
    http://training.github.com/web/advanced-git/
    Peter  I will be there.
    jordanmccullough  Awesome!
    Thanks and look forward to having you there.
