---
layout: bare
title: Advanced Git Open Enrollment
description: Advanced Git Open Enrollment Class Notes
tags: [notes]
path: classnotes/2013-10-09-advanced-class.md
eventdate: 2013-10-09
---

## Teacher
* Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

# Advanced Git & GitHub Course

Many Git workshops successfully focus on the basics for those new to DVCS. However, with Git having a full 5 years on the street now, there is a growing desire to address the maturing users of this innovative DVCS. This workshop will take existing Git users and bring them to a heightened level of productivity by leveraging Git’s powerful, yet underused “advanced” features.

## Topics
* Common Branching Strategies
* Branching Models
* Applying Branching Strategies
* Branch Pull Options
* Reusing Small Pieces of Code
* Inserting Commits Into Existing History
* Building Custom Commands via Aliases
* Undoing and Re-doing Almost Anything
* Minimizing Repetitive Conflict Resolution
* Log History Searches
* Advanced Interactive Rebase
* Commit Data Structure Internals
* Refspecs

## Objectives
* Enabling Git users to effectively migrate repositories from other formats.
* Facilitate history modification of Git repositories.
* Establish time-tested branching and merging strategies.
* Enhance knowledge of Git tools to simplify history.
* Search Git history with ease and precision.
* Move to and reuse code on other branches via commits and tags.
* Understand Git’s tagging and GPG signing process.

## Reference Material



## Transcript

* jordanmccullough    Good morning everyone. I'm Jordan McCullough, GitHub trainer, and will be here in chat assisting through the class.  
* matthewmccullough   Bob Fields: Morning!  
* jordanmccullough    Welcome Jim, thanks for joining us.  
* jordanmccullough    We've setup a class outline for today's content as well, which is available here:  
* http://teach.github.com/classnotes/2013-10-09-advanced-git-class.html
* jordanmccullough    Hello MJ.  
* I'll be here in chat providing any question support during today's class.  
* jordanmccullough    Welcome Kyle M., Josue P.  
* All questions are welcome. If anything comes up, please ask here and I'll be available to assist.  
* matthewmccullough   https://github.com/githubteacher?tab=repositories  
* Mark B. has entered the room  
* jordanmccullough    Hello Mark.  
* Matthew's scripts repository and collection, including the git-graphlive is available here:  
* https://github.com/matthewmccullough/scripts  
* kdaigle +1  
* jordanmccullough    Questions are welcome. I can bring these to Matthew's attention or raise on audio.  
* Jason T.    Good review so far  
* Bill    What arguments do you use for the git-graphlive script?  
* jordanmccullough    That would a script that loops every 2 seconds, and runs:  
* git log --graph --all --decorate --oneline  
* Greg    has entered the room  
* jordanmccullough    Welcome Greg.  
* matthewmccullough   https://github.com/githubteacher/example-branches
* Jason T.    :+1  
* Venkatdev   has entered the room  
* jordanmccullough    Welcome Venkat.  
* matthewmccullough   http://nvie.com/posts/a-successful-git-branching-model/
* Bob F.  GitFlow doesn't have the concept of an 'integration' branch where all changes are merged and CI run and tested before reviewing to merge / pull request into a develop branch. develop branch should be reserved for what we call 'candidate release builds'.  
* Trigg R.    has entered the room  
* Edric   has entered the room  
* jordanmccullough    Thanks for that insight Bob F.  
* Bob F.  Matthew covered autosetuprebase in the intro class, very well.  
* jordanmccullough    Bob F. Glad you were able to join for the Foundations class and get the intro to it.  
* Bob F.  This is very good additional info, thanks  
* jordanmccullough    https://github.com/matthewmccullough/scripts  
* Both the `generaterandomchanges` and a `generaterandomfiles` helper scripts are within this repository.  
* kdaigle All three? coffee  
* jordanmccullough    Great choice, kdaigle.  
* matthewmccullough   Thanks for being here everyone! Hope class is going great for you.  
* I know I've said it a bunch, but we love questions and challenges.  
* Don't hold back!  
* Jason T.    Is there anything interactive we will need to do in this class?  
* jordanmccullough    Jason T. You're welcome to follow along with the examples Matthew is walking through, just take notes, or watch and soak it all in.  
* Of course, if there's anything that needs more detail or clarification, just keep the questions coming and I'll help answer them or bring them up on audio.  
* Bill    Will any of the later rebase topics include how to deal with conflicts during a rebase?  
* jordanmccullough    I'll keep that in mind so I can bring that up with Matthew when we're there.  
* Thanks Bill.  
* Bill    thanks  
* Bob F.  It would be great to have the workflow strategy info in the class PDF. Some info is covered in the 'Teams and Orgs' pdf.  
* matthewmccullough   https://github.com/githubteacher?tab=repositories  
* Dee has entered the room  
* matthewmccullough   https://github.com/githubstudent/hellogitworld  
* https://github.com/githubteacher/hellogitworld  
* forked it  
* to your personal account  
* Jason T.    Got it  
* jordanmccullough    Bob F. Thanks for that suggestion. We're always pursuing providing more post-class materials, so I'll put that in the ears of my team members.  
* We also have the Advanced Slide Deck here:  
* http://teach.github.com/presentations/git-advanced.html
* Press the "?" for controls help panel. :)  
* kdaigle I always get confused. Does squash (when it says "into previous commit") does that mean the commit positioned below it in the list? Previous being the "parent of this commit"?  
* jordanmccullough    Squash works upwards.  
* kdaigle Ah, ok! +1  
* jordanmccullough    So the commit above the commit with the "s" for squash is the receiving object.  
* Great question kdaigle  
* rshapiro    back to interactive rebase for a second - sometimes I want to restructure the commits completely and it seems better to me to use a mixed reset to a given baseline and start over with the raw changes since that baseline, rather than interactive rebase. Any opinions ?  
* jordanmccullough    The important difference is that reset is discarding history (commits), where as rebase allows a mixing/tidying/revising to existing commits.  
* matthewmccullough   http://git-scm.com/2011/07/11/reset.html  
* jordanmccullough    I'd say that's the biggest take away to call out the differences. But either are usable techniques to manipulate history.  
* Bernard O.  has entered the room  
* Bernard O.  Thanks for the answer  
* jordanmccullough    Just repeating the question for anyone else that's interested:  
* Is there a difference between git reset --hard HEAD and git checkout somefile ?  
* Yes, the reset is rewriting the working tree for all paths for the specified ref.  
* Checkout is specifying a particular path/directory/file.  
* Happy to assist Bernard. Thanks for asking.  
* rshapiro    does rerere also work with rebase?  
* matthewmccullough   https://github.com/git/git  
* rshapiro    log -S is searching for matches in the modifications or the commit message?  
* jordanmccullough    -S is for string matching to the patch of any commit.  
* -G is for using a regular expression pattern.  
* and just for clarification, --grep="<your-pattern>" returns a log for a match of commit message.  
* rshapiro    answered the question I was just about to ask ...  
* jordanmccullough    If you're looking at the MAN page for `log`  
* jordanmccullough    -S<string> --pickaxe-regex has the same effect as -G. The latter being easier to type and use.  
* :)  
* jordanmccullough    http://teach.github.com/presentations/git-foundations.html
* jordanmccullough    http://teach.github.com/classnotes/2013-10-09-advanced-git-class.html
* mj  Thank you.  
* Jim A.  thanks guys! Great class.  
* Bernard O.  Thanks for the class was great  
* rshapiro    couple of topics you might consider: git bundle, this is really important in secure environments where some hosts are offline  
* jordanmccullough    Thanks for attending. Have a great rest of the day and happing coding.  
* matthewmccullough   Thanks all! Had a great time teaching it.  
* Trigg R.    Thank you!  
* matthewmccullough   rshapiro Good suggestion. We had broadly negative "doesn't apply to me" feedback when that was part of the class last year, so that presents a real challenge to have it or not. Will ponder anew! Maybe it should come back!  
* rshapiro    2) somewhat off-topic but only a little -- maybe think about a offering a course specifically on Git in Eclipse, so many of us use it there.  
* matthewmccullough   Trigg Russell: Thanks for being here  
* rshapiro: That's a great idea. In fact, I've done just that as a free class  
* Harald  has left the room  
* matthewmccullough   and maybe it is time to bring it back again as something for a free class in the closing months of this year.  
* jordanmccullough    Thanks again everyone.  
* Trigg R.    It would be great if there was a way to blend in more time to do hands on work. With so much material to cover, that's challenging in 3 hours.  
* matthewmccullough   Trigg Russell: Good feedback. We could break the class into multiple sessions, but signups dropped off then as students told us that it was hard to ask for more time off from work. Pondering. Such a challenge, but I want that as well. We're on the same page. :)  
* Trigg R.    As a reminder, what are the best references to use as I build my knowledge? I've saved all the URLs you've provided, plus github.com. Anything else that's a great resource?  
* jordanmccullough    Trigg R. We'll be updating the Class Notes file with references, resources, and today's CLI.  
* Trigg R.    Awesome. Many thanks!  
* jordanmccullough    So I'd highly recommend checking that file out in a bit once we update it we those resources :)  
* Sorry if we didn't mention that earlier.  
* Trigg R.    You did but I did not see anything. Forgot you had to upload :-)  

## Command Line History

    git clone https://github.com/githubstudent/example-branches.git
    cd example-branches
    git branch -a
    git checkout -b topic1
    ls
    vim index.html
    git commit -a -m"Topic 1 commit"
    git checkout master
    git merge topic1 
    cd example-branches
    clear
    git graphlive 25
    git reflog
    git reset --hard aac9e37
    git merge --no-ff topic1 
    git checkout -b topic2
    vim index.html
    git commit -a -m"Topic 2 change"
    cd .git
    ls
    tail -f config
    git push -u origin topic2
    tail -f config
    git graphlive 25
    git checkout master
    git push 
    git pull
    git-flow
    git checkout master
    vim index.html
    git commit -a -m"Local master changes"
    git pull
    git reflog
    git reset --hard 1718509
    git pull --rebase 
    mate ~/.gitconfig
    git checkout -b topic3
    git push -u origin topic3
    cat .git/config
    mate .git/config
    clear
    git status
    git checkout master
    git checkout -b topic4
    touch faster.rb
    git add faster.rb
    git commit -m"Faster"
    vim faster.rb
    git commit -a -m"Faster still"
    git branch -a
    git checkout topic3
    git cherry-pick topic4
    git status
    git merge --abort
    git cherry-pick --abort
    git checkout topic4 -- faster.rb
    ls
    git checkout topic4 -- faster.rb index.html
    git status
    git commit -C topic4
    git checkout master
    git branch topic5
    git branch topic6
    git checkout topic5
    generaterandomchanges 4 sample txt
    git checkout topic6
    generaterandomchanges 4 topicsix txt
    git cherry-pick f4044be
    git show
    git reflog
    git reset --hard 768e4e4
    git cherry-pick -x f4044be
    git show
    git push -u origin topic6
    git checkout topic5
    git push -u origin topic5
    cd .
    cd ..
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hellogitworld
    git log --oneline --graph
    git checkout -b practicerebase
    cd ..
    cd he
    pwd
    cd ..
    cd hellogitworld
    git graphlive 25
    git rebase -i 8d2636d
    touch missed.txt
    git add missed.txt
    git status
    git commit --amend 
    git rebase --continue
    git push -u origin practicerebase 
    generaterandomchanges 5 showoff txt
    git rebase -i origin/practicerebase 
    generaterandomchanges 5 autorebase txt
    echo onemorething >> autorebase3.txt
    git add .
    git commit -m"fixup! A random change of 764"
    git rebase -i --autosquash origin/practicerebase 
    git show 237e3dd
    git s
    git br
    git config --global alias.stplus git status -u -v
    git config --global alias.stplus "git status -u -v"
    git stplus 
    git config --global alias.stplus "status -u -v"
    git stplus 
    git help
    git help -a
    which -a git-graphlive
    cat /Users/mccm06/.dotfiles/scripts/git-graphlive
    mate .git/config
    mate ~/.gitconfig
    git stplus -a
    git stplus --long
    clear
    git status
    git checkout master
    git status
    git reset --hard 
    git reset --hard HEAD
    echo "Use reset hard to forcefully go back to a known state"
    echo stuff >> fix.txt
    git status
    git reset --hard
    git status
    echo stuff >> fix.txt
    git commit -a -m"Fixing things"
    git reset --hard a13dba1
    cat fix.txt
    git reflog
    git reset --hard 57b2b01
    git reset --hard a13dba1
    git reset --hard 57b2b01
    git reset --hard a13dba1
    git reflog
    git checkout a13dba1 -- fix.txt
    git status
    git reset --hard 57b2b01
    git checkout a13dba1 -- fix.txt
    git status
    git show a13dba1:fix.txt 
    git show 57b2b01:fix.txt 
    git checkout practicerebase 
    git reset --soft origin/practicerebase
    git status
    git commit -m"Fixes everything"
    git checkout master
    git reset --hard origin/master
    clear
    git branch feature1
    git branch hotfix1
    git checkout feature1
    ls
    vim pom.xml
    git commit -m"Upgrade Junit to 3.8.8"
    git commit -am"Upgrade Junit to 3.8.8"
    generaterandomchanges 5 sample txt
    git checkout hotfix1 
    vim pom.xml
    git commit -a -m"Hotfix upgrade of Junit to 3.8.2"
    git checkout master
    git merge hotfix1 
    git config --local rerere.enabled true
    cd .git
    treelive 2
    treelive 1
    cd rr-cache
    ls
    treelive 2
    git checkout feature1
    git merge master
    vim pom.xml
    git commit 
    git commit -a 
    git reset --hard HEAD~1
    generaterandomchanges 3 more txt
    git merge master
    git status
    head pom.xml
    vim pom.xml
    git add pom.xml
    git status
    git commit -a 
    git rerere 
    git help rerere 
    z git_git
    git pull
    clear
    pwd
    git log
    git log --pretty=raw
    git log --oneline --graph --all --decorate
    git help log
    git log --oneline --graph --all --decorate --simplify-by-decoration
    git log --oneline --graph --decorate --simplify-by-decoration
    git log --oneline --merges
    git log --oneline --no-merges
    git status
    git log --oneline --no-merges
    git log --pretty=raw --patch --since=1.week.ago
    git fetch
    git log --pretty=raw --patch --since=12.week.ago
    git log --pretty=full --patch --since=12.week.ago
    git log --patch --since=12.week.ago
    git log --patch --since=12.week.ago --author=king
    git log --patch --since=12.week.ago --author="jeff king"
    git log --patch --since=12.week.ago --author="Jeff King"
    git log --oneline --since=12.week.ago --author="Jeff King"
    git log --oneline --since=12.week.ago --author="Jeff King" -S test
    git log --oneline --since=12.week.ago --author="Jeff King" -G '.*te.*'
    git log --pretty=raw --merges
    clear
    cd .git
    cat config
    z git_git
    cd .git
    cd refs
    tree
    git ls-remote 
    z hellogitworld
    pwd
    git ls-remote https://github.com/bk8190/hellogitworld/ 
    git fetch https://github.com/bk8190/hellogitworld/ refs/heads/practicerebase
