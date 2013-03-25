---
layout: bare
title: Private Git/GitHub Class
description: Private Git/GitHub Class
tags: [notes, event, private]
path: classnotes/ 2013-02-25-private-git-class.md
eventdate: 2013-02-25
---

# Instructors

* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))
* Brent Beer ([Twitter](http://twitter.com/brntbeer), [GitHub](https://github.com/brentbeer))
* David Graham ([Twitter](http://twitter.com/davidgraham), [GitHub](https://github.com/davidgraham))
* Markus Olsen ([Twitter](http://twitter.com/niik), [GitHub](https://github.com/niik))


* Class Slide Deck 
  * [http://teach.github.com/presentations/git-foundations.html](http://teach.github.com/presentations/git-foundations.html)

# Helpful Links
* Git-SCM
  * [http://www.git-scm.com](http:/www.git-scm.com)
* Free-Online Git Pro Book
  * [http://http://git-scm.com/book](http://http://git-scm.com/book)
* GitHub Free Online Classes
	* [https://training.github.com/web/free-classes/](https://training.github.com/web/free-classes/)
* Training Team Q&A
	* [https://github.com/githubtraining/feedback](https://github.com/githubtraining/feedback)
* Shell Scripts
	* [https://github.com/matthewmccullough/scripts](https://github.com/matthewmccullough/scripts)


* Campfire room
	* https://githubtraining.campfirenow.com/c635d

# Outline

# Command Line History
	git init newproject
	cd newproject
	ls
	ls -la
	open .git
	git config user.name
	git config user.email
	vi ~/.gitconfig
	git config --global user.name "Tim Berglund"
	git config --global user.email "tlberglund@gmail.com"
	git config --global color.ui auto 
	vi raven.txt
	git status
	git add raven.txt
	git status
	git commit -m "Initial commit"
	vi raven.txt
	git status
	git add raven.txt
	git status
	git commit -m "Eagerly wishing the morrow"
	git status
	ls .git
	git help diff 
	vi raven.txt
	cat raven.txt
	git diff
	git add raven.txt
	git diff
	git diff --staged
	git status
	vi raven.txt
	git status
	git diff
	git diff --staged
	git diff HEAD
	git status
	git diff --staged
	git commit -m "Radient maiden"
	git status
	git add .
	git commit -m "Nameless forever. So sad."
	vi raven.txt
	git diff
	git diff --color-words
	vi raven.txt
	git diff --color-words
	vi raven.txt
	git diff --color-words
	git diff --word-diff 
	vi raven.txt
	git diff
	git diff -w 
	vi status
	git status
	git checkout HEAD -- raven.txt
	git status
	git diff HEAD^^
	git help log
	git log
	git log --stat 
	git log --patch 
	vi raven.txt
	git diff --word-diff
	git add .
	git commit -m "Fix horrible typo"
	git log --patch
	git log --stat
	git log --patch --color-words 
	git log --patch --color-words --stat
	git log -2
	git log -1
	git log --format=full
	git log --format=email
	git log --format=email --patch
	git log --format=raw
	git config --unset --global alias.lol
	git log --pretty=oneline
	git log --pretty=oneline --abbrev-commit
	git log --pretty=oneline --abbrev-commit --graph
	git log --pretty=oneline --abbrev-commit --graph --decorate
	git log --pretty=oneline --abbrev-commit --graph --decorate --all
	git config --global alias.lol "log --pretty=oneline --abbrev-commit --graph --decorate --all"
	git lol
	vi ~/scripts/git-loglive
	ls
	generaterandomfiles 6 file txt
	ll
	cat file1.txt
	cat file2.txt
	git status
	git add .
	git status
	git commit -m "Added some files prepared for destruction"
	git log --stat
	ls
	git rm file1.txt
	ls
	git statu
	git status
	rm file2.txt 
	git status
	git rm file2.txt 
	git status
	git add .
	git status
	git add -u .
	git status
	git commit -m "Deleted most of the cruft"
	git log --stat
	ls
	git rm --cached file6.txt
	ls
	git status
	git commit -m "Cleaned up the rest of the cruft"
	ls
	git status
	rm file6.txt
	tree .git/objects | less
	generaterandomfiles 5 file txt
	ll ~ > listing.txt
	vi listing.txt
	cat file1.txt
	cat file2.txt
	ls -l
	git status
	git add .
	git commit -m "Added some files for future moving"
	tree
	git status
	mkdir files
	tree
	git mv file1.txt
	git mv file1.txt files/
	tree
	git status
	mv file2.txt files/
	tree
	git status
	git add files/file2.txt
	git status
	git rm file2.txt
	git status
	git add -A .
	git status
	git commit -m "Moved some files"
	vi listing.txt
	git status
	git add -A .
	git status
	git commit -m "Moved and changed
	git commit -m "Moved and changed"
	git log --stat
	git log --stat -M 
	git log --stat -M80
	vi files/listing.txt
	git add .
	git commit -m "Small change to listing"
	git log --stat -M
	git log --stat -- files/listing.txt
	git log --follow --stat -- files/listing.txt
	git log -M85 --follow --stat -- files/listing.txt
	tr.git
	cd scratch/newproject
	git loglive
	git lol
	git loglive
	which git-loglive
	git loglive
	cat /Users/tlberglund/scripts/git-loglive
	watch -n 1 "git lol"
	git status
	git branch
	git lol
	ls -l .git
	tree .git/refs
	cat .git/refs/heads/master
	git branch
	git branch feature 
	cat .git/refs/heads/master
	cat .git/refs/heads/feature
	git branc
	git branch
	vi raven.txt
	git status
	git add .
	git status
	git commit -m "Silky curtain"
	git lol
	git checkout feature
	git lol
	cat raven.txt
	vi raven.txt
	git add .
	git commit -m "Midnight dreary"
	git lol
	git checkout master
	git merge feature
	git lol
	cat raven.txt
	git lol
	git branch -d feature
	tree .git/refs
	git branch feature f077
	git branch -d feature
	git lol
	git branch feature2
	vi raven.txt
	git add .
	git commit -m "Curious lore"
	git checkout feature2
	vi raven.txt
	git status
	vi tolkien.txt
	git status
	git add .
	git status
	git commit -m "Added Tolkien, broke Poe"
	git lol
	git checkout master
	git merge feature
	git merge feature2
	git status
	vi raven.txt
	git status
	cat raven.txt
	git add raven.txt
	git status
	git commit 
	git branch -d feature2
	git lol
	git branch feature3
	vi raven.txt
	git add .
	git commit -m "Gentle rapper"
	git checkout feature3
	vi raven.txt
	git add .
	git commit -m "Fantastic terrors"
	git lol
	git lol -5
	git rebase master 
	git branch stop-the-madness 0b03fea
	git branch -D stop-the-madness
	git branch
	git checkout master
	git merge feature3
	git lol
	vi raven.txt
	git add .
	git commit -m "Two lines changed"
	git checkout feature3
	vi raven.txt
	git add
	git add .
	git commit -m "Only this"
	vi raven.txt
	git status
	git add .
	git commit -m "A commit that is only bad, and not at all good"
	git lol
	git rebase master
	git status
	vi raven.txt
	git rebase --continue
	git add raven.txt
	git status
	git rebase --continue
	vi raven.txt
	git status
	git add raven.txt
	git status
	vi raven.txt
	git add raven.txt
	git status
	vi raven.txt
	git add raven.txt
	git status
	git rebase --skip 
	git status
	git lol
	git reflog
	git reset --hard HEAD@{3}
	git reflog
	git lol
	git rebase master
	vi raven.txt
	git add .
	git rebase --continue
	git checkout --theirs -- raven.txt
	cat raven.txt
	git checkout --ours -- raven.txt
	cat raven.txt
	git status
	git add raven.txt
	git status
	git rebase --skip
	git lo
	git lol
	git rev-parse HEAD
	git rev-parse HEAD^
	git log --pretty=raw -1
	git rev-parse feature3
	git rev-parse master
	git rev-parse master~10
	git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
	git branch
	git checkout master
	git merge feature3
	git branch -d feature3
	git checkout -b feature4
	tree
	cd files
	generaterandomchanges 10 random txt
	git rebase -i HEAD~10 
	git log --stat 1
	git log --stat -1
	git reflog
	git reset --hard HEAD@{10}
	git rebase -i HEAD~10
	git status
	ls
	vi random5.txt
	vi random4.txt
	git status
	git add .
	git rebase --continue  
	ls
	cat random5.txt
	git rebase -i HEAD~2
	git lol
	git lol -5
	git commit --amend
	git lol -5
	git checkout master
	git merge feature4
	git branch -d feature4
	tr.git
	cd scratch
	export PS1="$ "
	ls
	git lol
	git help remote
	git remote add origin https://github.com/githubteacher/poetry.git
	cat .git/con
	cd ..
	cat .git/con
	cat .git/config
	git push -u origin master 
	cat .git/config
	git lol
	vi tolkien.txt
	git add .
	git commit -m "Deep roots"
	git branch -a
	git push
	git fetch
	ls
	git lol
	vi tolkien.txt
	git add .
	git commit -m "From ashes"
	git push
	git pull 
	ls
	git clone https://github.com/githubstudent/poetry.git poetry-fork 
	cd poetry-fork
	ls -l
	git config user.name
	git config user.email
	git config --local user.email "training+githubstudent@github.com"
	git config user.name "GitHub Student"
	git config user.name
	vi caesar.txt
	git add .
	git commit -m "Cry Havoc, yo"
	git log -1
	git push
	vi tolkien.txt
	git commit -a -m "Light from shadows"
	git push
	vi tolkien.txt
	git commit -a -m "Crownless kinged"
	git push
	git loglive -15
	git pull
	git fetch https://github.com/fmmr/poetry.git master
	git diff FETCH_HEAD
	git merge FETCH_HEAD
	vi ibsen.txt
	git add ibsen.txt
	git status
	git commit
	git push
	cd ..
	pwd
	ls
	git clone https://github.com/githubteacher/poetry.git
	cd poetry-fork
	git config user.email
	git config user.email|pbcopy
	cd ../poetry
	git config user.email training+githubstudent@github.com
	git config user.name "GitHub Student"
	git checkout -b tlberglund
	git checkout -b githubstudent
	git branch -d tlberglund
	git branch
	git lol
	git branch
	pwd
	git remote -v
	ll
	ll shakespeare
	ll
	vi caesar.txt
	git add .
	git commit -m "Added Caesar back in"
	git lol -10
	git push -u origin githubstudent
	git fetch
	git lol
	git branch -a
	git branch -a  | less
	git branch
	git merge origin/tmh 
	git merge origin/flesaker
	git checkout brntbeer-feature 
	git branch
	git loglive -10
	ll
	cat runme.sh
	./runme.sh
	vi runthis.sh
	git add runthis.sh
	git commit -m "Groovy, yo"
	git push
	git fetch
	git checkout master
	git status
	git lol
	git status
	git merge brntbeer-feature
	git reflog
	git branch -d brntbeer-feature
	git merge origin/githubstudent
	git push --delete origin githubstudent 
	git help daemon
	git help gitattributes
	curl http://lcamtuf.coredump.cx/squirrel/
	curl http://lcamtuf.coredump.cx/squirrel/ > squirrel.jpg
	vi squirrel.jpg
	tr.git
	cd scratch
	ll
	git init monkey
	cd monkey
	cp ~/squirrel.jpg .
	ll
	mv squirrel.jpg squirrel.txt
	git add .
	git status
	git commit -m "commit"
	vi squirrel.txt
	git help gitattributes
	git help bundle
	man sed
	tr.git
	cd scratch
	ll
	cp newproject temp
	cp -r newproject temp
	cd temp
	sed "s/nameless/unknown/g" *.txt
	sed "s/Nameless/unknown/g" *.txt
	man sed
	ll
	git man bundle
	git help bundle
	git bundle create ../temp.bundle -10 master
	ll -h ..
	git bundle create ../temp.bundle -100 master
	ll ..
	ll .. -h
	ll -h ..
	cd ..
	git init monkey
	cd monkey
	git remote add origin ../temp.bundle
	git fetch
	git checkout master
	ll
	cd ..
	rm -rf monkey
	git init monkey
	cd monkey
	git remote add origin ../temp.bundle
	git fetch
	git pull
	git pull origin master
	ll
	git lg
	cd .
	cd ..
	rm temp.bundle
	rm -rm monkey
	ll
	rm -rf monkey
	git help rerere
	ll
	cd ..
	ll
	cd hellogitworld
	git bisect abort
	git bisect reset
	git checkout master
	git pull
	git remote -a
	git remove -v
	git remote -v
	git remote set-url origin https://github.com/githubteacher/hellogitworld.git
	git pull
	ll
	git branch -a
	git loglive -15
	git loglive -12
	git branch -a
	git branch -a | less
	git rev-parse origin/philosophical-question
	git checkout origin/philosophical-question
	git checkout master
	tree .git/refs
	tree .git/refs | less
	cat .git/HEAD
	git checkout 6b99469
	cat .git/HEAD
	ll
	vi README.md
	git add README.md
	git status
	git commit -m "This is a risky thing to do"
	git checkout master
	git branch foo 87f5
	git checkout foo
	git checkout master
	git branch -D foo
	git checkout origin/philosophical-question
	ls
	cat question.txt
	git checkout master
	git checkout philosphical-quesiton 
	git checkout philosophical-quesiton 
	git checkout philosophical-question 
	git branch
	vi question.txt
	git add .
	git commit -m "More questions"
	git push
	git checkout
	git branch -a
	git checkout --track -b smudge origin/smudge
	git lol
	git status
	ls
	vi dingo.txt
	git add .
	git commit -m "dingo FTW"
	git checkout master
	git merge smudge
	git psh
	git push
	git pull
	git push
	git branch -d smudge
	git merge smudge
	git branch -D smudge
	git push origin :smudge 
	git branch
	git branch -d philosophical-question
	git branch
	git --version 
	git config --global credential.helper cache 
	ls -l
	vi caesar.txt
	git add .
	git commit -m "Carrion men, yo"
	git push
	git pull && git push
	git fetch
	git pull
	git merge --abord
	git merge --abort
	git pull
	git push
	git loglive -10
	git fetch
	git pull
	pwd
	git pull
	gitk --all
	gitk --all &
	git pull
	tr.git
	cd scratch/newproject
	gitk --all
	git pull
	vi raven.txt
	git add raven.txt
	git commit -m "Some late visitor"
	git push
	git pull --rebase
	git push
	git pull
	git loglive -15
	git pull
	git pull --rebase
	git loglive -20
	git pull --rebase
	ll
	cat keats.txt
	git pull --rebase
	git config --global branch.autosetuprebase always 
	git branch -a 
	git checkout romeo
	cat .git/config
	git config branch.master.rebase true
	git loglive -25
	pwd
	ll
	vi raven.txt
	git add .
	git commit -m "Some late visitor"
	git pull && git push
	git pull
	cat .git/config
	git pull
	git push
	git fetch
	git branch
	git checkout master
	git pull
	git loglive -15
	git pull
	vi caesar.txt
	git add .
	git commit -m "Blood and destruction"
	git push
	git pull
	git push
	git pull && git push
	git pull
	git loglive -25
	git pull
	git loglive -30
	git pull
	git show mybranchistheBest
	git show origin/mybranchistheBest
	git show origin/mybranchistheBest^
	git show origin/mybranchistheBest
	git show origin/mybranchistheBest^
	git branch
	git rev-parse origin/mybranchistheBest
	git rev-parse origin/mybranchistheBest^
	git cherry-pick origin/mybranchistheBest^ 
	git log --format=full -1
	git push
	git pull
	git log origin/tomeven -2
	git log origin/tomeven -2 --patch
	git cherry-pick -x origin/tomeven
	git status
	git checkout --theirs -- kongharald.txt
	git status
	vi kongharald.txt
	git add kongharald.txt
	git status
	git commit 
	git pull
	git push
	git loglive -20
	ls -l ~ > localhost.log
	ls
	mkdir build
	touch build/Monkey.class
	touch build/Gradle.class
	git status
	git status -u 
	vi .gitignore
	git status
	git add .
	git status
	git commit -m "Added a .gitignore file"
	vi .gitignore
	git status
	git add .
	git commit -m "Who ignores the ignorers?"
	git rm --cached .gitignore
	git status
	git commit -m "Untracked .gitignore"
	git status
	vi .gitignore
	git status
	vi .git
	vi .gitignore
	git status
	git add .
	git commit -m "Tracked gitignore again--phew"
	mkdir -p src/main/resources
	cd src/main/resources
	echo "this is important" > resource.log
	git status
	pwd
	vi .gitignore
	cd ../../..
	git status
	git status -u
	mkdir -p src/test/java
	git status -u
	touch src/test/java/.gitignore
	git status -u
	git add .
	git status
	git commit -m "MOAR fun with .gitignore"
	ls
	git branch
	git pull
	git push
	git branch -d romeo
	git branch
	git branch -a
	git checkout -b messy_feature
	ls
	vi raven.txt
	git stauts
	git status
	git stash
	git status
	git stash list
	git checkout master
	vi README.md
	git add .
	git commit -m "Critical hotfix to README"
	git checkout messy_feature
	git stash pop
	vi raven.txt
	git add .
	git commit -m "Bird or fiend"
	vi ra
	vi raven.txt
	git stash
	git stash list
	git help stash
	git stash branch raven_work
	git branch
	git stash
	git stash list
	git stash clean
	git stash clear
	git stash list
	git lol
	git rebase master
	git checkout master
	git merge messy_feature
	git branch -d messy_feature
	git lol
	git merge raven_work
	git branch -d raven_work
	git lol
	git tag ACCIDENTAL_MERGE
	tree .git/refs
	tree .git/refs | less
	cat .git/refs/tags/ACCIDENTAL_MERGE
	git pull
	git status
	git push
	git push --tags
	tree .git/objects| less
	git tag -a TAKK_TINA 77c6a 
	tree .git/refs
	cat .git/refs/tags/TAKK_TINA
	tree .git/objects
	git tag -a -m "Don't open vi for me" BIRD_OR_FIEND 971fb
	git push
	git pull
	git push origin TAKK_TINA
	git loglive -15
	git tag -s RELEASE_0.1.4
	git config user.signingkey
	git show ACCIDENTAL_MERGE
	git show TAKK_TINA
	git show RELEASE_0.1.4
	git tag -v RELEASE_0.1.4
	tr.git
	cd scratch/newproject
	vi .git/config
	git lol
	git checkout TAKK_TINA
	git branch tina
	git checkout tina
	git checkout master
	git branch -d tina
	git help filter-branch
	git help commit-tree
	git help rebase
	git loglive
	git loglive -15
	git loglive -10
	cat `which git-loglive`
	ll ~/scripts
	cd ..
	git clone https://gist.github.com/5037863.git
	cd 5037863
	ll
	git lol
	cd ..
	git pull
	cd newproject
	git pull
	git show 8f4b
	git revert 8f4b36
	git merge --abord
	git merge --abort
	git revert --abord
	git revert --abort
	git lol
	git show 690123e
	git revert 690123e
	ls -l | grep sissel
	git lol
	git show HEAD
	git show 690123ed
	git diff
	git diff HEAD~3
	git difftool HEAD~3
	git difftool -t kdiff3 HEAD~3
	git difftool -t p4merge HEAD~3
	p4merge 
	which `p4merge`
	which p4merge
	cat `which p4merge`
	git config --global mergetool.prompt false
	git diff --stat HEAD~3
	git difftool -t p4merge HEAD~3 -- saabye.txt
	git config --global diff.tool p4merge
	git difftool HEAD~3
	pwd
	cd ..
	git init commit
	cd commit
	cd ../commit
	watch -n 1 tree .git/objects
	watch -n 1 tree .git
	ls
	git status
	git log
	echo "So. The Shield-Danes in days gone by had courage and greatness. We have heard of these princes' noble campaigns." 
	echo "So. The Shield-Danes in days gone by had courage and greatness. We have heard of these princes' noble campaigns." | git hash-object -w --stdin 
	git cat-file -p 415d6da6106860a5c614ec78034ca147851eb54e
	git update-index --add --cacheinfo 100644 415d6da6106860a5c614ec78034ca147851eb54e beowulf.txt 
	git status
	ls
	git write-tree
	git cat-file -p 7461286b3e57916da715d38cc475176cf872b4ab
	git commit-tree 7461286b3e57916da715d38cc475176cf872b4ab -m "Beowulf FTW"
	git cat-file -p 2059c78f9d2813c4cd735fe174cecfb7d9994a10
	git status
	git log
	gti update-ref refs/heads/master 2059c78f9d2813c4cd735fe174cecfb7d9994a10
	git update-ref refs/heads/master 2059c78f9d2813c4cd735fe174cecfb7d9994a10
	git status
	git lol
	ls
	git checkout HEAD -- beowulf.txt
	ls
	git status
	cd ../../hellogitworld
	git branch
	git branch -a
	git checkout bisect
	git lol
	git bisect start 
	ls -l .git
	git bisect bad HEAD
	git bisect 93870
	git bisect good 93870
	git bisect start
	git bisect bad HEAD
	git bisect good 93870
	git bisect run mvn test 
	git bisect log
	git lol
	tree .git/refs
	cd ..
	pwd
	cd scratch
	ls
	ls -l
	cp -r ~/code/ratpack .
	cd ratpack
	ls
	git lol
	ls -l
	git help filter-branch
	git filter-branch --subdirectory-filter=ratpack-core
	git filter-branch --subdirectory-filter ratpack-core
	ls -l
	git lol
	ls
	ll
	ll ~/code/ratpack
	ll
	ll ratpack-gradle-plugin
	git help filter-branch
	cd ../newproject
	git loglive -20
	cd .git/hooks
	ls
	mv commit-msg.sample commit-msg
	ls
	ls -l
	vi commit-msg
	cd ..
	git status
	pwd
	cd ..
	git status
	vi README.md
	git add README.md
	git commit -m "Cleaned up README"
	git status
	git commit -m "Cleaned up README (with no angry MONKEYs)"
	vi .git/hooks/commit-msg
	git commit -m "Cleaned up README (with no angry monkey)"
	vi .git/hooks/commit-msg
	vi .git/hooks/pre-commit.sample
	ls -l. git
	ls -l .git
	git status
	mv .git/hooks/commit-msg .git/hooks/commit-msg.sample
	git status
	git commit
	git status
	git config --global core.editor emacs
	git commit
	git config --global core.editor "mate -w"
	git commit
	git lol
	git rebase -i HEAD~6
	cat .git/hooks/commit-msg.sample
	mv .git/hooks/commit-msg.sample .git/hooks/commit-msg
	vi .git/hooks/commit-msg
	vi README.md
	git add .
	git commit -m "There is no"
	vi .git/hooks/commit-msg
	git commit -m "There is no"
	git commit -m "There is a monkey"
	git help git
	git pull
	git rebase --abort
	git pull 
	git push
	git lol
	git show 9d5c2f0
	git show 9d5c2f0 --format=raw
	git checkout --orphan -b gh-pages
	git branch --orphan  gh-pages
	git help checkout
	git checkout --orphan gh-pages
	git branch
	git status
	git branch
	git status | less
	ls
	git status
	git reset 
	git status | less
	git rm --cached *
	git status | less
	ls .git
	rm .git/index
	git status
	ls
	git clean -fdx
	ls
	vi index.html
	git add index.html
	git status
	git commit -m "Got started on the project site"
	git commit -m "Got started on the project site, you monkey"
	gitk --all
	git push -u origin gh-pages
	git checkout master
	ls
	git checkout gh-pages
	ls
	git checkout mater
	git checkout master
	pwd
	git bundle create np.bundle master --since=3.days
	ll -h ..
	git statu
	git status
	mv np.bundle ..
	ll -h ..
	cd ..
	rm -rf temp
	git init temp
	cd temp
	ll
	du -sh
	ls
	git remote add bundle ../np.bundle
	git remote -v
	git ls-origin
	git ls-remote
	git ls-remote bundle
	git fetch bundle
	ls
	git status
	du -sh 
	git pull bundle master
	ll
	cd ../newproject
	ifconfig
	git daemon --base-path=.
	git daemon --base-path=..
	git daemon --export-all --base-path=..
	git remote -v
	pwd
	cd ../poetry-fork
	git remote -v
	git pull
	got lol
	git lol
	git remote
	git remote add upstream https://github.com/githubteacher/poetry.git
	git remote -v
	git pull upstream master
	git status



