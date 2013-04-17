---
layout: bare
title: Rich Web Experience Git/GitHub Advanced Workshop
description: A half-day Git workshop at the Rich Web Experience 2012
tags: [notes, conference, workshop]
path: classnotes/2012-11-30-richweb-git-advanced.md
eventdate: 2012-11-30
---

Held on November 30, 2012 and presented by Matthew McCullough ([Twitter](http://twitter.com/matthewmccull), [GitHub](https://github.com/matthewmccullough))

## Command Line History

    git.nr helloworld
    
    git clone git://10.0.1.17/hellogitworld 
    git clone git://10.0.1.17/helloworld 
    open helloworld/.git
    git remote add newhost git://10.0.1.17/helloworld
    git tag MATTHEWSGOODPOINT
    git push --mirror newhost
    git remote hostnumber2 git://10.0.1.17/helloworld
    git remote add hostnumber2 git://10.0.1.17/helloworld
    git fetch --all
    git fetch --multiple newhost hostnumber2
    git notes add 
    git push newhost master
    mate .git/config
    git help branch
    git branch --track newhost/master
    git branch -a
    git branch --set-upstream newhost/master master
    git push newhost
    git config --global url."git://10.0.1.17".insteadOf "rwxm://"
    git config --global url.'git://10.0.1.17'.insteadOf 'rwxm://'
    mate ~/.gitconfig
    git config --global url."git://10.0.1.17".pushInsteadOf "rwxm://"
    git clone rwxm://helloworld hgw1
    git clone rwxm://helloworld hgw2
    cd hgw2
    cat .git/config
    generaterandomchanges 2 matthew txt
    git push -f
    git push origin master
    open .
    git servehere
    git pull
    git log --format=raw
    git pull --rebase
    git branch matthewfeature
    git checkout matthewfeature
    git commit -m"Line one"
    vim matthewfeature.txt
    git commit -a -m"Line two"
    
    cd /Users/mccm06/Documents/Scratch/hgw2/
    git graphlive 8
    
    cd helloworld
    generaterandomchanges 2 bugfix txt
    generaterandomchanges 2 bugfixmore txt
    git fetch origin
    git clone https://github.com/githubstudent/hellogitworld.git
    cd hello
    cd hellogitworld
    git checkout bisect
    git bisect good 1f4b
    git bisect bad 9387
    cat pom.xml
    cat src/test/java/com/ambientideas/AppTest.java
    git bisect bad
    git bisect start
    cd ../hellogitworld
    gitx .
    git bisect good 56cb
    git bisect bad a909
    git bisect run mvn test
    git bisect visualize
    git bisect log
    git bisect reset
    git bundle create ../myfirst.bundle master
    git bundle verify ../myfirst.bundle
    git ls-remote ../myfirst.bundle
    git fetch ../myfirst.bundle
    git fetch ../myfirst.bundle refs/heads/master
    git merge FETCH_HEAD
    git merge --abort
    git branch jordanbundle FETCH_HEAD
    git merge jordanbundle
    git bundle create ../mysecond.bundle master~5..HEAD
    git remote add thebundlescannedbysecops file://../mysecond.bundle
    git checkout --orphan examples
    git rm -rf .
    rm -rf target
    echo EXAMPLE > example.txt
    git commit -m"My first example"
    vim example.txt
    git commit -m"One more example"
    gitk --all &
    git checkout -b feature10
    echo ONE > one.txt ; git add .; git commit -m"One"
    echo TWO > two.txt ; git add .; git commit -m"Two"
    echo THREE > three.txt ; git add .; git commit -m"Three"
    git log --format=raw -3
    git config user.name "Bug patcher"
    git cherry-pick 8fcc8b6
    git reflog
    git reset --hard HEAD@{1}
    git cherry-pick -x 8fcc8b6
    git log --format=raw -1
    git log
    git cherry-pick -x b933118d0f9ac6 8b
    git cherry-pick -x b933118d0f9ac6 8fcc8b6
    open .git
    git help cherry-pick
    git checkout feature10
    git cherry master
    git log -p
    git log -S junit
    git log -p -S junit
    git log -p -S junit -- src/
    git log -S junit -- src/
    git log -G '.*junit.*' -- src/
    git log -G '.*junit\.org.*' -- src/
    git log -G '.*[jJ]unit.*' -- src/
    git log -p -G '.*[jJ]unit.*' -- src/
    git log -G '.*[jJ]unit.*' --diff-filter=D -- src/
    git log -G '.*[jJ]unit.*' --diff-filter=A -- src/
    git log -G '.*[jJ]unit.*' --diff-filter=M -- src/
    git log -G '.*[jJ]unit.*' --diff-filter=A --before=9.months.ago -- src/
    git log -G '.*[jJ]unit.*' --diff-filter=A --before=4.months.ago -- src/
    git log -G '.*[jJ]unit.*' --diff-filter=A --since=12.months.ago --before=4.months.ago -- src/
    git help log
    git log -G '.*[jJ]unit.*' --diff-filter=A --since=12.months.ago --before=4.months.ago --no-merges -- src/
    git log --graph --no-merges -- src/
    git log --oneline
    git tag POINT1 78f4771
    git log --before=POINT1
    git log --oneline --decorate
    git log --before=POINT1 --oneline --decorate
    git log --before=POINT1  --decorate
    touch newfiles.txt
    git clean -n
    git clean -nX
    git grep "junit" 
    git grep "junit" -C 5
    git grep -C 5"junit"
    git grep -C 5 "junit"
    git grep -C 5 "junit" HEAD~5
    git grep -C 5 "junit" HEAD~15 -- src/
    git grep -C 5 "junit" HEAD~10 -- src/
    git grep -C 5 "junit" HEAD~07 -- src/
    git grep -C 5 "junit" HEAD~7 -- src/
    git grep -C 5 "junit" HEAD~5 -- src/
    echo test >> fix.txt
    git stash
    git show stash@{1}
    git show stash@{0}
    git graphlive 5
    cd temp1
    git init 
    git commit -m"This will ship but the others wont"
