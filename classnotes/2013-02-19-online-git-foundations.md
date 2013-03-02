---
layout: bare
title: GitHub Foundations
description: GitHub Foundations Online class notes
tags: [notes, event]
path: classnotes/ 2013-02-19-online-git-foundations.md
eventdate: 2013-02-12
---

# Event Date: 2013-02-19
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
	git config --local user.name "Jordan McCullough"
	git config user.name
	vi README
	git status
	git add .
	git commit -m'Changed a single word to Readme'
	git log -3
	git log --author=Jordan
	git log --author=Trainer
	git config --local --unset user.name
	git config user.name
	git log
	git log -5 --abbrev-commit
	git status
	git rm bio.txt
	ls
	git status
	git commit -m'Removing extraneous bio file'
	git status
	ls
	git log --oneline --stat
	ls
	git log --online -4
	git log --oneline -4
	echo "meeting notes and stuff" > meeting-notes.md
	ls
	git status
	git add meeting-notes.md 
	git status
	git commit -m'Lots of file commits (oops!)'
	ls
	git log --oneline
	git rm --cached meeting-notes.md
	ls
	git status
	git commit -m'Accidental add of meeting notes to repo'
	git log --oneline --stat
	git status
	rm meeting-notes.md 
	git status
	generaterandomchanges 5 oops txt
	git log -5 --oneline --stat
	git rm oops2.txt
	git rm oops1.txt
	git status
	open .
	git status
	git add oops3.txt
	git add -u
	git status
	git commit -m'Removing all OOPS files'
	git status
	ls
	git mv carroll.txt poem.txt
	git status
	git commit -m'Renaming from author name to poem for clarity'
	ls
	git status
	git mv poem.txt poem.md
	git status
	vi poem.md
	git status
	git diff
	git status
	git add poem.md
	git status
	git diff --staged
	git status
	git commit -m'Renamed to md, added formatting'
	git log --stat -3
	git log --stat -2 -M
	git log --stat -2 -M90
	git log --stat -2 -M60
	git status
	git log --stat -2 -M60
	git log -- poem.md
	git log --stat -2 -M60
	git log --follow -- poem.md
	git status
	ls
	generaterandomchange 5 moving txt
	generaterandomchanges 5 moving txt
	git log -6 --oneline
	ls
	mkdir sub
	ls
	git mv moving1.txt sub/moving1.txt
	git status
	open .
	git status
	git add -u
	git status
	git add sub/moving*
	git status
	git commit -m'Moving test move files to sub dir'
	git status
	git log -10 --oneline --stat
	git log -10 --oneline --stat -M
	git status
	echo "cruft" > cruft.log
	git status
	ls
	echo "production" > sub/production.log
	ls
	ls sub
	git status
	vi .gitignore
	git status
	git status
	git add .gitignore
	git status
	git commit -m'First commit of ignore file'
	git status
	echo "notes on project" > build.note
	git status
	vi .gitignore
	git status
	git diff
	git add .gitignore
	git status
	git commit -m'Ignoring .note files'
	git status
	ls
	cat .gitignore
	cd sub
	pwd
	vi .gitignore
	cd ..
	git status
	git add sub/.gitignore
	git status
	git commit -m'Not ignoring logs in sub dir'
	git status
	git add sub/production.log 
	git status
	git commit -m'Prod logs for sub directory only'
	git status
	vi .gitignore
	git status
	git add .gitignore
	git status
	git commit -m'Removing DS_Store pattern'
	git status
	cat ~/.gitignore
	git config --global core.excludesfile ~/.gitignore
	git config --global --list
	git status
	ls -la
	echo "stuff" > proj.info
	git status
	git add proj.info
	git commit -m'Info file first commit'
	ls
	vi .gitignore
	git status
	echo "more info" > proj.info
	git status
	git diff .gitignore
	git add .gitignore
	git commit -m'Ignoring info file'
	git status
	git rm --cached proj.info
	ls
	git status
	git commit -m'No longer tracking proj info artifacts'
	git status
	ls
	echo "even more stuff" > proj.info
	git status
	ls
	vi poem.md
	git status
	git add poem.md
	git status
	git reset HEAD poem.md
	git status
	git help add
	git branch
	git branch feature1
	git branch
	generaterandomchanges 3 main txt
	ls
	git status
	git checkout -- poem.md
	git status
	ls
	git checkout feature1
	ls
	git branch feature2 35603b9
	git checkout feature2
	ls
	git checkout master
	git branch -d feature2
	git checkout feature1
	ls
	vi poem.md
	git status
	git add poem.md
	git status
	git commit -m'Maxome foe'
	generaterandomchanges 3 feature txt
	git branch
	git checkout master
	git status
	git merge feature1
	git branch -d feature1
	git branch
	git branch feature2
	git branch -d feature2
	git branch feature2 b51940
	git branch -d feature2
	git branch feature2
	git checkout feature2
	generaterandomchanges 5 feat2 txt
	git checkout master
	ls
	git merge feature2
	git checkout -b feature3 b51940e
	generaterandomchanges 3 feat-three txt
	git checkout master
	git merge feature3
	git log --oneline -10
	generaterandomchanges 8 mainline txt
	git branch
	git branch -d feature2
	git branch -d feature3
	git branch
	git checkout -b feature4
	ls
	vi poem.md
	git status
	git add .
	git status
	git commit -m'new line of poetry'
	vi poem.txt
	vi poem.md
	git add .
	git status
	git commit -m'Eyes of flame'
	git checkout master
	ls
	git rm feat*
	git status
	git commit -m'Removing feature sample files'
	git checkout feature4
	git rebase master
	git checkout master
	git merge feature4
	git branch
	git branch -d feature4
	git branch
	git checkout -b feature5
	git rebase master
	git checkout master
	git merge feature5
	git branch
	vi poem.md
	git status
	git add .
	git commit -m'Jabberwookies!'
	git checkout feature5
	vi poem.md
	git status
	git add .
	git commit -a -m'Loise Carroll'
	git rebase master
	git status
	vi poem.md
	git status
	git add poem.md
	git status
	git rebase --continue
	git checkout master
	git merge feature5
	git branch
	git branch -d feature5
	git rebase -i 8e42546
	git checkout -b feature6
	generaterandomchanges 3 other txt
	ls
	echo "some change" other3.txt
	echo "some change 2" other2.txt
	git status
	echo "some change 2"> other2.txt
	git status
	git stash
	git status
	git checkout master
	ls
	git checkout feature6
	git stash pop
	cat other2.txt
	git stash
	git stash list
	ls
	echo "more change for 1" > other1.txt
	git status
	git stash
	git stash list
	git checkout master
	git checkout -b feature7 d16bdd
	git stash list
	git stash pop
	git stash list
	git status
	git stash list
	git stash apply stash@{0}
	git add .
	git commit -m'Other text stuff'
	git checkout feature6
	git stash list
	git status
	git stash list
	git stash list
	git stash pop
	git checkout master
	git status
	git checkout -- other2.txt
	git checkout master
	git branch
	git branch -d feature7
	git branch -D feature7
	git remote
	git remote add origin https://github.com/githubtrainer/jabberwocky.git
	git remote
	git remote -v
	git push -u origin master
	git branch
	git branch -a
	git remote -v
	git remote add backup1 https://github.com/githubtrainer/jabberwocky.git
	git remote -v
	cd ..
	mkdir student
	student
	cd student
	git clone https://github.com/githubstudent/jabberwocky.git
	ls
	cd jabberwocky/
	git branch
	git remote -v
	git checkout -b jordan
	ls
	git rm main*
	git status
	git commit -m'Tidy and removing extra files'
	git log -3 --oneline
	git push origin jordan
	pwd
	ls
	rm -rf sub
	git status
	git add -u "Removing all sub directories"
	git commit -am"Removing all sub directories"
	git status
	git log -
	git log -3
	git push origin jordan
	git log --oneline
	git checkout master
	git remote -v
	git remote add trainer https://github.com/githubtrainer/jabberwocky.git
	git remote -v
	git fetch trainer
	pwd
	ls
	git merge trainer/master
	ls
	git checkout jordan
	git rebase master
	ls
	git log --oneline
	cd ..
	cd ..
	ls
	cd jabberwocky/
	pwd
	git fetch https://github.com/ilizarr/jabberwocky.git ivan
	git status
	git pull origin master
	git fetch https://github.com/ilizarr/jabberwocky.git ivan
	git merge FETCH_HEAD
	vi poem.md
	git status
	git add poem.md
	git status
	git commit -m"Merging in Ivan's completion of poem"
	git push origin master
	cd ..
	cd student/
	ls
	cd jabberwocky/
	git checkout -b jordan2
	git remote -v
	git remote -d origin
	git remote -v
	git remote add student git@github.com:githubtrainer/jabberwocky.git
	git remote -v
	generaterandomchanges 5 hello txt
	git push student jordan2
	git remote -v
	git remote add student https://github.com/githubtrainer/jabberwocky.git
	git remote add student-owner https://github.com/githubtrainer/jabberwocky.git
	git remote -v
	git push student-owner jordan2
	pwd
	cd ..
	cd ..
	cd jabberwocky/
	git status
	git fetch origin
	git pull origin
	ls
	git log --oneline -10
	git status
	generaterandomfiles 5 goodbye txt
	git status
	ls
	git rm hell*
	git status
	git config --global alias.s "status -s"
	git s
	git s
	git config --global alias.lgs "log --abbrev-commit --oneline"
	git lgs
	git reflog -10
	git log --oneline -10
	git reset --hard HEAD@{5}
	git reset --hard 3a1eb6b
	git log --oneline -15
	ls
	vi "poem" > poem.md
	subl .bash_history
	subl ~/.bash_history
	exit
	cd scratch/jabberwocky/
	git status
	git add poem.md
	git s
	git reset --mixed HEAD
	git s
	echo "hello" > newfile.txt
	git s
	git commit -am"newfile.txt"
	git reset --soft HEAD^
	git status
	git commit -m'Improved commit message for new poem content'
	git commit --amend
	git status
	goodbye
