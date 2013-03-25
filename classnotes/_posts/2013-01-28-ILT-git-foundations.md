---
layout: bare
title: GitHub Foundations
description: GitHub Foundations ILT class notes
tags: [notes, event]
path: classnotes/ 2013-01-28-ILT-git-foundations.md
eventdate: 2013-01-28
---

# Event Date: 2013-01-28
## Delivered by Jordan McCullough

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
	git init jabberywocky
	ls 
	cd jabberwocky
	ls
	cd jabberywocky/
	tree -L 1 .git
	cd ./git/refs
	cd .git
	ls
	cd refs
	ls- la
	cd ..
	generaterandomchanges 5 test txt
	mkdir ../sample2
	cp -r .git ../sample2/
	cd ..
	cd sample2/
	ls -la
	git log -5
	ls -la
	cd ..
	mkdir sample3
	cd sample3
	echo "hello" > hi.txt
	ls -la
	cd ..
	ls
	cd sample3
	git init
	git status
	echo "goodbye" > bye.txt
	git status
	git add .
	git status
	git commit -m"First messages"
	git config --list
	git config --global user.name "Jordan McCullough"
	git config --global user.email "jmcculough@github.com"
	git config --local user.name "JAM"
	git config --local user.name
	cd ..
	git config --global user.name
	git config --list
	git config user.name
	cd sample3
	git config --list
	cd ..
	ls
	cd jabberywocky/
	vi poem.md
	git status
	git add poem.md
	git status
	git config --global color.ui auto
	git commit
	git status
	vi poem.md
	git status -s
	git add poem.md
	git status -s
	git status
	vi poem.md
	git status
	git add poem.md
	git status
	git reset HEAD poem.md
	git status
	git diff
	git add poem.md
	git status
	vi poem.md
	git status
	git diff
	git diff --staged
	git diff HEAD
	git status
	git add .
	git status
	git commit -m"Tidied up second verse"
	git status
	git log
	git log --format=fuller
	git log --format=full
	git log --oneline
	git log --oneline --stat
	git log -2 --stat --patch
	vi poem.md
	git status
	git add poem.md
	git s
	git status
	git commit -m'Wookies!'
	git log -2 --online
	git log -2 --oneline
	git log --patch --word-diff
	vi poem.md
	git add poem.md
	git commit -m"Fixed wookie text"
	vi poem.md
	git status
	git diff --color-words
	git diff --word-diff
	git log --graph --oneline
	git rm test1.txt
	git status
	git commit -m"Removing Test1"
	git status
	vi hello.md
	git add .
	git commit -m'Hello'
	ls
	git ls-files
	git rm --cached -- hello.md
	git status
	git commit -m'Removed accidental commit of hello'
	git ls-files
	git status
	vi goodbye.md
	git status
	git add goodbye.md
	git status
	git add hello.md
	git status
	git status
	git reset HEAD hello.md
	git status
	git status
	git reset --hard
	git status
	rm hello.md
	git status
	git ls-files
	open .
	git status
	git add -u .
	git status
	git commit -m'Removing test txt files'
	git status
	rm .DS_Store
	git status
	git status
	git ls-files
	rm poem.md
	git status
	git checkout -- poem.md
	git status
	git ls-files
	cat poem.md
	git status
	mkdir sub
	ls -la
	git mv poem.md sub/poem.md
	git status
	git commit -m'Moved poem to sub'
	git status
	generaterandomchange 3 moveme txt
	generaterandomchanges 3 moveme txt
	git log --oneline
	open .
	git status
	git add -u .
	git status
	git add sub/
	git status
	git commit -m'Moved all text files'
	vi otherjabber.txt
	git add .
	git status
	git reset HEAD .DS_Store 
	git status
	git commit -m'Vorpal sword"
	git status
	git ls-files
	vi otherjabber.txt
	mv otherjabber.txt sub/otherjabber.txt
	git status
	git add -u
	git add sub/otherjabber.txt 
	git status
	git commit -m'Moved and modified otherjabber'
	git log -2
	git log --stat
	git log --stat -M
	git log -2 -M100
	git log -2 -M100 --stat
	git log -2 -M50 --stat
	git log -2 -M50 --stat
	git log -2 -M20 --stat
	git log -2 -M=100 --stat
	git log -M100 --stat -1
	git log -M100% --stat -1
	git log sub/otherjabber.txt 
	git log --follow  sub/otherjabber.txt
	vi README
	git status
	vi .gitignore
	git status
	git add .
	git status
	git commit -m'Our first ignore file!'
	git status
	ls -la
	cd sub
	vi README
	git status
	vi .gitignore
	git status
	cd ..
	git status
	vi something.tgz
	echo "something" > something.tgz
	git status
	git config --global core.excludesfile ~/.gitignore
	git config core.excludesfile
	git status
	git status
	git log --oneline -3
	git checkout 5fc4e18
	git ls-files
	cat sub/poem.md
	git checkout master
	ls-files
	cd sub
	vi poem.md
	echo "hey there" >> moveme1.txt 
	git status
	git checkout moveme1.txt
	git status
	git log -3 
	git branch
	git branch feature1 5fc4e1
	git branch
	git ls-files
	vi otherjabber.txt
	git commit -am'Removed last line'
	git checkout feature1
	git branch
	vi README
	git status
	git add .
	git status
	git commit -m'Changes to the readme'
	generaterandomchanges 5 branching txt
	git checkout master
	git merge feature1 -m'Folding in random changes'
	git status
	git ls-files
	git log --online -9
	git log --oneline -9
	git status
	generaterandomchanges 3 main txt
	git branch feature2
	git checkour feature2
	git checkout feature2
	generaterandomchanges 3 main txt
	git checkout master
	git merge feature2
	generaterandomchanges 5  prod md
	git checkout feature2
	git rebase master
	git checkout master
	ls -la
	vi roses.txt
	git status
	git add .
	git commit -m'First two lines of Roses'
	git branch ilovegit
	git checkout ilovegit
	cat roses.txt
	vi roses.txt
	git status
	git add .
	git commit -m'Petunias'
	git status
	git checkout master
	vi roses.txt
	git status
	git add .
	git status
	git commit -m'Git is blue'
	git checkout ilovegit
	git rebase master
	vi roses.txt
	git add roses.txt
	git rebase --continue
	git log -5 --oneline
	generaterandomchanges 4 poetry md
	git log -6 --oneline
	git rebase -i c0a7edf
	git reflog -5
	git reflog -10
	git checkout HEAD@{9}
	git branch
	git checkout ilovegit
	git reflog -9
	git branch HEAD@{8}
	git branch backup  HEAD@{8}
	git reflog
	git rebase master
	git checkout master
	vi poem.md
	git status
	git add .
	git commit -m'Warning daughter'
	git checkout ilovegit
	git branch
	git branch -d backup
	git checkout master
	git branch -d backup
	git branch -D backup
	git checkout ilovegit
	vi poem.md
	git add .
	git status
	git commit -m'Bad content'
	git rebase master
	git rebase --abort
	git checkout master
	git branch
	git checkout feature2
	git log -5
	git log --online --stat
	git log --oneline --stat
	git status
	git reset 6570075
	git status
	git reset --hard HEAD
	vi pro1.txt
	git status
	git add .
	git commit -m'sdlfkjas'
	git commit --amend
	git log -1 --oneline
	vi prod2.md
	git add .
	git stats
	git status
	git commit -m'Changed to MORE'
	git reset --soft HEAD^
	git status
	git reset HEAD prod2.md
	git status
	cd ..
	git checkout master
	git status
	git add .
	git status
	git commit -m'Stuff'
	git status
	git remote add origin https://github.com/githubstudent/jabberwocky.git
	git remote
	git remote -v
	git push -u origin
	git push -u -f origin
