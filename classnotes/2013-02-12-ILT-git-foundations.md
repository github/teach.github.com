---
layout: bare
title: GitHub Foundations
description: GitHub Foundations ILT class notes
tags: [notes, event]
path: classnotes/ 2013-02-12-ILT-git-foundations.md
eventdate: 2013-02-12
---

# Event Date: 2013-02-12
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
	git --version
	clear
	git config --list
	clear
	git config --global user.name "Jordan McCullough"
	git config --global user.name
	git config --global user.email "jmccullough@github.com"
	git config --system --list
	git config --global --list
	clear
	git config --global color.ui auto
	git config color.ui
	git config --global core.autocrlf input
	git config core.autocrlf
	git init walrus
	cd walrus
	clear
	ls -la
	ls
	tree -L 2 -d
	tree -L2
	ls -la
	cd .git
	clear
	ls -la
	subl config
	cd ..
	git config --local user.name "githubtrainer"
	git config --local user.name
	git config --local user.email "training@github.com"
	git config --local user.email
	cd ..
	git config user.name
	git config user.email
	cd walrus/
	git config user.email
	git config user.name
	git config --list
	git config --local -l
	cd ..
	mkdir newproj
	ls
	cd newproj/
	echo "some file" > newfile.txt
	ls
	ls -al
	git init
	git add .
	git commit -m"This is my first commit"
	ls -la
	cd ..
	cd walrus/
	vi poem.txt
	git status
	git add poem.txt
	git status
	git commit -m"Intro to the Walrus"
	git status
	vi poem.txt
	git status
	git add poem.txt
	git status
	clear
	git status
	vi poem.txt
	git status
	git add poem.txt
	git status
	git commit -m'Billows smooth and bright'
	vi poem.txt
	git add poem.txt
	git status
	git reset HEAD poem.txt
	git status
	git status
	clear
	git status
	git diff
	vi poem.txt
	git status
	git diff
	git diff --color-words
	vi poem.txt
	git diff --color-words
	git diff
	git status
	git add poem.txt
	clear
	git diff
	git status
	git diff --staged
	git commit -m"Changed sea to land, sun to moon"
	git status
	vi poem.txt
	git diff
	git diff --word-diff
	git add poem.txt
	git diff
	git diff --staged
	vi poem.txt
	git status
	clear
	git diff
	git diff --staged
	clear
	git diff HEAD --color-words
	git add poem.txt
	git status
	git commit -m'More of stanzas'
	clear
	git log
	clear
	git log -2
	clear
	git log --stat -2
	clear
	git log --patch -2
	clear
	git log --patch -2 --color-words
	clear
	git log --patch --color-words
	clear
	git log --oneline
	git diff 81fe8c2..580550d
	clear
	git diff 81fe8c2..580550d --color-words
	git diff 580550d..81fe8c2 --color-words
	clear
	git log --format=fuller
	git log --format=raw
	git log --author=github
	clear
	git log -S=sun
	git log -S=Sun
	git log -S=moon
	git log --grep=moon
	clear
	echo "sample" > sample.txt
	git status
	git add .
	git commit -m"a new file"
	git status
	clear
	echo "hello world" > sample.txt
	git status
	git add sample.txt
	echo "hello again" >> sample.txt
	git status
	git diff
	git diff --staged
	git commit -am"Staging and Working Copy" sample.txt 
	git commit -am"Staging and Working Copy" -- sample.txt
	git commit -am"Staging and Working Copy"
	git log --stat
	clear
	ls
	git rm sample.txt
	git status
	ls
	git commit -m'Removing example file'
	git status
	git log
	clear
	generaterandomfiles 5 removeme txt
	git status
	git add .
	git status
	git commit -m'Removeme example files added'
	ls
	open .
	git status
	git add .
	git status
	git add -u
	git status
	git commit -m'Removing sample remove files'
	git status
	ls
	git rm removeme1.txt 
	git status
	git checkout -- removeme1.txt
	git reset HEAD removeme1.txt
	git status
	git checkout -- removeme1.txt
	ls
	open .
	git status
	git checkout -- removeme1.txt
	ls
	git status
	clear
	ls
	git rm --cached -- removeme1.txt
	ls
	git status
	git commit -m'No longer tracking removeme txt files'
	git status
	clear
	git log --oneline -10
	clear
	git status
	rm removeme1.txt
	git status
	generaterandomchanges 3 moveme txt
	clear
	git log --oneline
	clear
	ls
	mkdir temp
	ls
	git mv moveme1.txt temp/moveme1.txt
	git status
	git commit -m"Moving moveme to temp dir"
	clear
	git log -3 --stat -M
	clear
	git log -3 --stat 
	git ls-files
	git sttus
	git status
	clear
	git status
	echo "log file with stuff" > info.log
	git status
	vi .gitignore
	git status
	git add .gitignore
	git status
	git commit -m"Adding ignore file"
	git status
	echo "another file" > history.log
	git status
	ls
	git add .
	git status
	mkdir logs
	ls
	cd logs
	echo "overview" > overview.log
	cd ..
	echo "production" > logs/production.log
	git status
	echo "this is a key" > api_key
	git status
	vi .gitignore
	git status
	git diff
	git add .gitignore
	git commit -m'Ignoring api_key file'
	git status
	cd logs
	pwd
	ls
	echo "this is the build" > build.log
	git status
	pwd
	vi .gitignore
	ls
	ls -la
	git status
	cd ..
	git status logs/
	git add logs/.gitignore 
	git commit -m'Adding log ignore negation for builds'
	git status
	git add .
	git status
	git commit -m'Build log file added for first time'
	git status
	git config --global core.excludesfile
	clear
	cat ~/.gitignore
	clear
	git branch feature1
	git branch
	git checkout feature1
	ls
	git branch
	vi poem.txt
	git status
	git add poem.txt
	git commit -m"More of third stanza"
	vi poem.txt
	git status
	git add .
	git status
	git commit -m"Sands and Sea stuff"
	git status
	git checkout master
	vi poem.txt
	git branch
	git status
	git add .
	git commit -m'Removing credit to L. Carroll'
	git branch prototype
	git branch
	git checkout prototype
	generaterandomchanges 3 prototype txt
	git branch
	git checkout master
	git branch -d prototype
	git branch -D prototype
	git branch feature2
	ls
	vi poem.txt
	git status
	ls
	echo "move me 3" > moveme3.txt
	git status
	git add moveme3.txt 
	git status
	git checkout feature2
	git status
	git add poem.txt
	git status
	git commit -m'Stuff happens'
	git status
	git status
	git checkout master
	git status
	git checkout feature2
	git branch feature2-1
	git branch
	git branch -d feature2-1
	clear
	git branch topic 978f
	git checkout topic
	generaterandomchange 3 topic txt
	generaterandomchanges 3 topic txt
	git checkout master
	git merge feature1
	clear
	git log --oneline -7
	git branch breakme
	vi poem.txt
	git status
	git add poem.txt
	git commit -m"Breaking last line"
	git checkout breakme
	vi poem.txt
	git add .
	git status
	git commit -m'Messy sandy beach'
	git status
	git checkout master
	clear
	git merge breakme
	git status
	git diff
	vi poem.txt
	git status
	git add poem.txt
	git status
	git commit -m"Folding in breakme changes'

	git branch
	git branch -d breakme
	git branch breakme 07a19
	git branch 
	git branch -d breakme
	git branch breakme d88e9
	git checkout breakme
	git log -7 --oneline
	git checkout master
	gitk --all
	git branch 
	git branch -d breakme
	git branch -d feature1
	git branch -d feature2
	git branch -D feature2
	git branch
	git branch -D topic
	git branch experient
	git branch -d experient
	git branch experiment
	git branch exp
	git branch -d experiment
	generaterandomchanges 5 main txt
	git checkout exp
	generaterandomchanges 4 experiment txt
	git rebase master
	git checkout master
	git remote add origin https://github.com/githubtrainer/walrus.git
	git remote -v
	git push -u origin master
	git push
	clear
	cd ..
	clear
	git clone https://github.com/githubstudent/walrus.git
	open .
	clear
	git clone https://github.com/githubstudent/walrus.git
	cd walrus
	git log -5 --oneline
	git log -5
	ls
	vi poem.txt
	git status
	git add poem.txt
	git commit -m'Jordan was here change'
	git log -3
	git status
	git push -u origin master
	git branch -a
	ls
	git rm main*
	git status
	git commit -m'Tidying up loose ends'
	git push
	git remote -v
	git remote add trainer https://github.com/githubtrainer/walrus.git
	git remote -v
	git pull trainer master
	git status
	git push origin master
	clear
	git branch -a
	git remove -v
	git remote -v
	git branch -a
	git fetch trainer
	git branch -a
	git fetch trainer
	git fetch trainer
	git branch -a
	git merge trainer/brent-branch
	git pull trainer brent-branch
	git branch -a
	git pull trainer
	git branch -a

