---
layout: bare
title: GitHub Foundations
description: GitHub Foundations ILT class notes
tags: [notes, event]
path: classnotes/ 2013-02-11-ILT-git-foundations.md
eventdate: 2013-02-11
---

# Event Date: 2013-02-11
## Delivered by Jordan McCullough, Brent Beer

# Presentation Outlines

* Class Slide Deck 
  * [http://teach.github.com/presentations/git-foundations.html](http://teach.github.com/presentations/git-foundations.html)

# Helpful Links
* Git-SCM
  * [http://www.git-scm.com](http://www.git-scm.com)
* Free-Online Git Pro Book
	* [http://git-scm.com/book](http://git-scm.com/book)
* GitHub Free Online Classes
	* [https://training.github.com/web/free-classes/](https://training.github.com/web/free-classes/)
* Training Team Q&A
	* [https://github.com/githubtraining/feedback](https://github.com/githubtraining/feedback)
* Shell Scripts
	* [https://github.com/matthewmccullough/scripts](https://github.com/matthewmccullough/scripts)


# CLI History
	git status
	git add poem.txt
	git status
	git commit -m"First few lines of Jabberwocky"
	git status
	vi poem.txt
	git status
	git add poem.txt
	git status
	vi poem.txt
	clear
	git status
	git add poem.txt
	clear
	git status
	git commit -m'More lines about the JubJub bird"
	vi poem.txt
	clear
	git status
	ls
	echo "2" > poem2.txt
	echo "3" > poem3.txt
	clear
	git status
	git add poem2.txt poem3.txt
	git status
	git commit -m'New peom files'
	git status
	git add poem.txt
	git status
	git reset HEAD poem.txt
	git status
	git add poem.txt
	git status
	echo "Two" > poem2.txt
	git status
	git add poem2.txt
	git status
	git reset HEAD
	clear
	git status
	git add poem.txt poem2.txt
	git status
	git reset HEAD
	clear
	git status
	echo "new file" > newfile.txt
	git status
	git add newfile.txt
	git status
	clear
	git status
	git reset HEAD newfile.txt
	git status
	rm newfile.txt
	git status
	git add -u
	git status
	ls
	echo "Two Two Two" > poem2.txt
	git status
	git add .
	git status
	git commit -m'More poetry!"
	.txt

	git status
	clear
	vi poem.txt
	git status
	git diff
	git diff --color-words
	git diff --word-diff
	subl poem.txt
	vi poem.txt
	git status
	git diff
	git diff -w
	git diff -w --color-words
	git status
	git diff --color-words
	git add poem.txt
	clear
	git diff
	git status
	git diff --staged
	git diff --staged -w --color-words
	vi poem.txt
	git status
	git diff
	clear
	git diff --color-words
	git status
	clear
	git diff HEAD
	git diff HEAD
	git status
	git add -u
	git status
	git commit -m'Changed gender on character, changed sword to vapor'
	git status
	clear
	git log
	clear
	git log --abbrev-commit
	clear
	git log -2 --abbrev-commit
	clear
	git log --format=raw -1
	clear 
	git log --format=raw -2
	clear
	git log -1 --stat
	clear
	git log --abbrev-commit -3 --stat --format=raw
	clear
	git log --oneline
	git log --oneline --stat
	clear
	git log --graph
	clear
	ls
	git status
	git rm poem2.txt
	git status
	git status
	git commit -m'Removing extra poem 2 file'
	git log --oneline -3
	git log -1 --format=raw
	git log -1 --format=raw --stat
	clear
	git log -2 --patch
	clear
	ls
	git rm --cached poem3.txt
	git status
	git commit -m'No longer tracking poem3 file'
	git status
	git ls-files
	git status
	git ls-files
	generaterandomchanges 3 test txt
	clear
	git log --oneline
	ls
	git rm test1.txt
	git status
	ls
	git status
	git commit -m'Removing test 1'
	git status
	rm poem3.txt
	clear
	git status
	open .
	git status
	git add -u
	git status
	git commit -m'Removing test 2 and 3 files'
	ls
	git status
	pwd
	ls
	open .
	ls
	git mv poem.txt carroll/poem.txt
	git status
	git commit -m'Moved Carroll poetry to own dir'
	git status
	pwd
	cd carroll/
	subl walrus.txt
	git status
	pwd
	mv walrus.txt ../walrus.txt
	git status
	cd ..
	pwd
	git status
	git add walrus.txt
	git commit -m'First commit of Walrus'
	git status
	git ls-files
	open .
	git status
	vi carroll/walrus.txt
	git status
	git add -A
	git status
	git commit -m'Moved and changed Walrus poem'
	clear
	git log --stat -2
	clear
	git log --stat -2 -M
	clear
	git log --stat -2 -M99
	clear
	git log --stat -2 -M91
	clear
	git log --stat -2 -M89
	clear
	git log --sta
	clear
	git log --stat -2 -M
	clear
	ls
	ls carroll
	git log walrus.txt
	git log --follow  walrus.txt
	pwd
	clear
	pwd
	ls
	git log --follow carroll/walrus.txt
	git log --follow carroll/walrus.txt --stat
	git log --stat --follow carroll/walrus.txt
	clear
	git log --oneline -5
	git reset --hard 27be
	git log --oneline -5
	git reset --soft b424352
	clear
	git status
	git commit -m'Really moving carroll poems this time'
	git log --oneline -5
	git reset --mixed b424352
	git status
	clear
	git status
	git status
	git reset --hard HEAD
	git status
	clear
	git log --oneline --stat -5
	clear
	git log --oneline
	git status
	git reset --hard 056743d
	clear
	git status
	ls carroll/
	rm -rf carroll
	cler
	clear
	git status
	clear
	git log --oneline
	ls
	git diff fb1ce79
	clear
	git log --oneline
	git diff 7157882 dc9d64b
	clear
	git log --stat
	clear
	git log --oneline --patch
	clear
	git log --oneline
	git diff fb1ce79 7157882 poem.txt
	ls
	vi poem.txt
	git status
	clear
	git status
	git diff poem.txt
	git status
	git checkout poem.txt
	git status
	cat poem.txt
	clear
	git checkout 71578
	clear
	ls
	cat poem.txt
	git status
	git rev-parse HEAD
	git checkout master
	clear
	git branch
	git branch experiment
	git branch
	git checkout experiment
	generaterandomchanges 5 junk txt
	git checkout master
	generaterandomchanges 3 mainline txt
	git branch
	git merge experiment
	git branch
	git checkout experiment
	git branch
	git branch e88e187
	git branch -d e88d187
	git branch -d e88e187
	clear
	git branch
	git branch prototype e88e187
	git branch
	git checkout prototype
	generaterandomchanges 5 proto txt
	git branch
	git branch -d experiment
	git branch
	git checkout master
	git branch -d experiment
	git branch experiment 80a6733
	git branch
	git checkout experiment
	git checkout master
	git branch
	git branch -D experiment
	git branch -D prototype
	generaterandomchanges 3 hello txt
	git branch feature2
	generaterandomchanges 2 master txt
	git branch
	git status
	git checkout feature2
	generaterandomchanges 2 feature2 txt
	git branch
	git checkout master
	git merge feature2
	git branch feature3
	git checkout feature3
	generaterandomchanges 3 feat3 md
	git branch
	git checkout master
	git merge feature3
	git branch
	git branch feature4
	ls
	vi poem.txt
	git branch
	git status
	git add poem.txt
	git status
	git commit -m'Silly end of poem'
	git branch
	git checkout feature4
	vi poem.txt
	git status
	git add poem.txt
	git status
	git commit -m'Doesn't this end better this way'
	ckout master
	ge feature4

	git commit -m"Doesn't this end better this way"
	git status
	git branch
	git checkout master
	git merge feature4
	git status
	vi poem.txt
	vi poem.txt
	git status
	git add poem.txt
	git status
	git add peom.txt
	clear
	git status
	git log --oneline -3
	git commit
	git branch
	git branch -d feature2
	git branch -d feature3
	git branch -d feature4
	clear
	git branch feature
	generaterandomchanges 3 main txt
	git checkout feature
	generaterandomchanges 2 feature txt
	git branch
	git rebase master
	git branch
	git checkout master
	git merge feature
	vi poem.txt
	git status
	git branch
	git add poem.txt
	git commit -m'Messing with last line'
	git checkout feature
	vi poem.txt
	git status
	git add poem.txt
	git status
	git commt -m"Feature changes to last line"
	git commit -m"Feature changes to last line"
	git branch
	git rebase master
	vi poem.txt
	git status
	git add poem.txt
	git status
	git rebase --continue
	generaterandomchanges 10 lots txt
	git branch
	git rebase master
	git rebase -i 776f7
	git branch -a
	git remote -v
	git checkout master
	git push master
	git push origin  master
	git remote -v
	git remote add backup https://github.com/githubstudent/carroll.git
	git remote -v
	pwd
	git push --up-stream backup master
	git push --upstream backup master
	git push -u backup master
	git branch -vvv
	generaterandomchanges 4 other md
	git push backup
	clear
	git remote -v
	cd ..
	clera
	clear
	pwd
	git clone https://github.com/githubtrainer/carroll.git
	git log --oneline -5
	ls
	cd carroll
	clear
	pwd
	git log --oneline -5
	git branch
	git branch jordan-feature
	git checkout jordan-feature
	git branch
	ls
	vi poem.txt
	git status
	git add .
	git commit -m'Removing first stanza'
	git origin -v
	git origin -v
	git remote -v
	git push -u origin jordan-feature
	git status
	vi poem.txt
	ls
	git rm master*
	git status
	git add -A
	git status
	git commit -m"Morechanges"
	git remote -v
	git push origin jordan-feature
	ls
	git rm other*
	git status
	git commit -m"tidy"
	git push origin jordna-feature
	git push origin jordan-feature
	git remote -v
	git remote add authority https://github.com/githubstudent/carroll.git
	git remote -v
	git pull authority master
	git checkout master
	clear
	git log
	clear
	git pull authority master
	git remote -v
	git branch
	git branch jam2
	git checkout jam2
	git branch -d jordan-feature
	git branch -D jordan-feature
	git status
	clear
	git checkout master
	git remote -v
	git fetch authority master
	git branch -r
	git merge FETCH_HEAD
	git status
	git fetch authority
	git branch -r
	clear
	git status
	git gui
	git gui
	gitk --all
	gitk
	git status
	git status
	git config --global alias.s "status -s"
	ls
	git rm feature*
	git status
	git s
	git remote -v
	cd ..
	pwd
	ls
	cd project2
	git remote -v
