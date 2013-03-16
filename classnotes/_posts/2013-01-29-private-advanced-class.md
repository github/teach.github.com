---
layout: bare
title: Private Advanced Class
description: A three-day Advanced Git class
tags: [notes, class, workshop]
path: classnotes/2013-01-29-private-advanced-class.md
eventdate: 2013-01-29
---

# Instructors
* Tim Berglund ([Twitter](http://twitter.com/tlberglund), [GitHub](https://github.com/tlberglund))

# Resources
* [Free Office Hours](http://training.github.com/web/free-classes/)
* [Ask a Git or GitHub Question](https://github.com/githubtraining/feedback)
* [Hot or Not Slides](http://cl.ly/1z1C410S422a/content)
* [Workshop Slides](http://cl.ly/1l3d1Z1r3p3b/content)
* [Cheat Sheets](http://teach.github.com/articles/git-cheatsheets/)
* [Visual Merge Tools](http://www.youtube.com/watch?v=xfh13LcgqIU)
* [Git & GitHub Public Videos](http://www.youtube.com/github)
* [Slides](http://teach.github.com/articles/course-slides/)
* [Slide PDF 1](http://githubtraining.s3.amazonaws.com/github-git-training-slides.pdf)
* [Slide PDF 2](http://githubtraining.s3.amazonaws.com/github-git-training-slides-advanced.pdf)
* [Open Source Git Ignores](https://github.com/github/gitignore)


# Class Outline

* Git's Three Stage Thinking
* Versioning Files in Git
* Viewing History in Git
* Understanding Git's Content Tracking 
* Moving and copying files
* Branching and Merging in Git
* Rebase and interactive rebase
* RefLog as a safety net
* Reset and revert
* Tags
* Aliases
* .gitignore
* Submodules
* filter-branch
* add interactive
* add patch
* rerere
* Binary merge conflict
  * checkout --ours/checkout --theirs
* cherry-pick
* git grep
* notes
* GHfW
* GHfM
* bundles
* .gitattributes



# Command Line History

    git init newproject 
    ls
    rm -rf trainer-poetry
    ls
    cd newproject
    ls
    ls -a
    ls -la
    tree .git 
    git config --list 
    git config user.name
    git config user.email
    git config --global user.name "Tim Berglund"
    git config --global user.email "tlberglund@github.com"
    git config color.ui
    git config --global color.ui auto
    git status
    set
    echo $?
    git status
    echo $?
    ls
    ls -la
    pwd
    vi caesar.txt 
    git status
    git add caesar.txt
    echo $?
    git status
    git commit -m "Initial commit"
    git status
    vi caesar.txt
    git status
    git add caesar.txt
    git status
    git commit -m "The noblest man"
    git status
    git diff
    vi caesar.txt
    git diff
    git add caesar.txt
    git diff
    git status
    git diff --staged 
    git status
    vi caesar.txt
    git status
    git diff --staged
    git diff
    git diff HEAD
    git diff
    git diff --color-words 
    git diff --word-diff 
    vi caesar.txt
    git diff
    git diff -w
    vi caesar.txt
    git diff
    git status
    git diff --staged
    git commit -m "Costly blood"
    git status
    git add caesar.txt
    git status
    git commit -m "Fixed line so it obviously scans as iambic pentameter"
    git status
    git log 
    git help log 
    git log --format=medium
    git log --format=fuller
    git log --format=email
    git log --stat
    git log --patch
    git log --format=email --patch
    git log --stat -1
    git log --stat -2
    git log --format=oneline
    git log --format=oneline --abbrev-commit 
    git log --format=oneline --abbrev-commit --graph
    git log --format=raw
    git log --pretty=oneline --describe --abbrev-commit
    git help 
    git log --pretty=oneline --decorate --abbrev-commit
    git lg 
    git config alias.lg
    git log --graph --pretty=format:'%Cred%h%Creset - %d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit  --all
    git log --graph --pretty=format:'%Cred%h%Creset - %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit  --all --decorate
    git log
    git log --stat
    history
    ls
    generaterandomfiles 5 junk txt
    ls
    cat junk1.txt
    cat junk2.txt
    git status
    git add .
    git status
    git commit -m "Added some files prepared for destruction:\n"
    git log -1
    git commit --amend 
    git log -1
    git lgo
    git log
    git status
    ls -l
    git rm junk1.txt 
    ls -l
    git status
    rm junk2.txt
    ls -l
    git status
    git checkout -- junk2.txt
    git status
    ls
    ls -l
    git log
    git log -- junk2.txt 
    git log --stat -- junk2.txt 
    git log --stat
    git status
    ls -l
    rm junk2.txt
    git status
    git rm junk2.txt
    git status
    open .
    git status
    git add .
    git status
    git add --update .
    git status
    git commit -m "Deleted all of the cruft"
    git log --stat -2
    ls -l
    git log
    ls
    generaterandomfiles 5 file txt
    ls
    ls -l ~ > listing.txt
    ls -
    ls -l
    git status
    git add .
    git status
    git commit -m "Added some files to move around"
    mkdir files
    tree
    tree .git -L 1
    tree .git/objects | less
    ls
    tree
    git mv file1.txt files/
    tree
    git status
    mv file2.txt files/
    tree
    git status
    git rm file2.txt
    git status
    git add files/file2.txt
    git status
    git add -A .
    git status
    git commit -m "Moved most of the files"
    git log --stat
    git log --stat -M 
    tree
    vi listing.txt
    git diff
    git add -A .
    git status
    git commit -m "Moved and changed a file (madness)"
    git log --stat
    git log --stat -M -1
    git log --stat -M90 -1
    git log --stat -M25 -1
    vi files/listing.txt
    git add .
    git status
    git commit -m "changed the file after a move"
    git log --stat -- files/listing.txt
    git log --follow --stat -- files/listing.txt
    git log -M90 --follow --stat -- files/listing.txt
    git help gc
    git help prune
    git help repack
    git help pack-objects
    git help rev-list
    git log
    git status
    git branch 
    ls -l .git
    cat .git/config
    git config --local core.bare
    tree .git/refs
    git branch
    cat .git/refs/heads/master
    git log -1
    cat .git/HEAD
    git branch feature
    git branch
    cat .git/H
    cat .git/HEAD
    tree .git/refs
    export PS1="$ "
    tr.g
    tr.git
    cd scratch/newproject/
    git loglive
    git config alias.lg
    vi ~/scripts/git-loglive 
    git loglive
    git branch
    vi caesar.txt
    git status
    git add .
    git status
    git commit -m "Ruby lips"
    git branch
    git status
    cat .git/HEAD
    cat caesar.txt
    git checkout feature 
    cat caesar.txt
    vi caesar.txt
    git add .
    git status
    git commit -m "Added a title to Caesar"
    git lg
    git checkout master
    cat caesar.txt
    git merge feature -m "Merged in my feature branch"
    git help merge
    git branch -d feature
    tree .git/refs
    git branch feature
    git .git/re
    tree .git/refs
    vi caesar.txt
    git add .
    git commit -m "Domestic fury"
    git checkout feature
    vi caesar.txt
    vi raven.txt
    git status
    git add .
    git status
    git commit 
    git lg
    git checkout master
    git merge feature
    git status
    vi caesar.txt
    git add .
    git status
    cat caesar.txt
    git commit
    git lg
    git reset --hard 552d
    git lg
    cat caesar.txt
    git merge feature
    vi caesar.txt
    git status
    history
    git stauts
    git status
    cat caesar.txt
    git show :1:caesar.txt
    git show :2:caesar.txt
    git show :3:caesar.txt
    cat caesar.txt
    git add caesar.txt
    git status
    git commit
    git lg
    p4merge
    kdiff3
    git lg
    git reset --hard 552d
    git lg
    git merge feature
    git config --global merge.tool p4merge
    which p4merge
    cat `which p4merge`
    git config --global mergetool.keepBackups false
    git help config
    git config --global mergetool.keepBackup false
    git config --global mergetool.keepTemporaries false
    git config --global --unset mergetool.keepBackups
    git help config 
    git config --global mergetool.prompt false
    git status
    git mergetool
    git status
    git config --global diff.tool p4merge
    git config --global difftool.prompt false
    git difftool --staged -- caesar.txt
    git commit
    git lg
    git branch -d feature
    git branch feature2
    vi caesar.txt
    git add .
    git commit -m "Blood and destruction"
    git checkout feature2
    vi raven.txt
    git add .
    git commit -m "Sorry about Lenore"
    vi raven.txt
    git add .
    git commit -m "Nameless here"
    git lg
    git checkout master
    git merge feature2 --no-commit 
    git status
    git merge --abort 
    git status
    cat caesar.txt
    cat raven.txt
    git merge feature2 --no-commit
    cat raven.txt
    git merge --abort
    git merge --squash feature2
    git status
    cat raven.txt
    git commit
    git lg
    git status
    vi README
    git add README
    git status
    git reset HEAD README
    git status
    git help reset
    git lg
    git log HEAD..HEAD~3
    git log HEAD~3..HEAD
    git help gitrevisions
    git rev-parse HEAD
    git rev-parse HEAD^
    git e1877^2^^
    git rev-parse e1877^2^^
    export GIT_TRACE=2
    git log -1
    git diff HEAD^^
    export GIT_TRACE=
    git diff HEAD^^
    git help config
    git lg
    git reset --hard HEAD^
    history
    git branch
    git checkout feature2
    git rebase master
    git checkout master
    git merge feature2
    git branch -d feature2
    git branch 3
    vi caesar.txt
    history
    git lg
    git status
    rm README
    git branch
    open .git
    open .git/
    git help branch
    git branch -m 3 feature3
    git add .
    git commit -m "Smiley mothers"
    git checkout feature3
    cd files
    tree
    tree ..
    generaterandomchanges 10 random txt
    git loglive -15
    git rebase -i HEAD~10
    ls
    vi random1.txt
    git status
    vi random7.txt
    git status
    git add .
    git rebase --continue 
    git log --stat -2
    git rebase -i HEAD^^
    git commit --amend
    git log --stat -1
    git branch
    git rebase master
    git checkout master
    git merge feature3
    git branch -d feature3
    git branch feature4
    git checkout feature4
    ll
    generaterandomchanges 10 monkey txt
    git reflog
    git rebase -i HEAD~10
    git reflog
    git reset --hard HEAD@{11}
    history
    git reflog
    git branch feature5 HEAD@{1}
    git lg
    git pull
    jekyll --server
    git help
    man git
    git help gitattributes
    git help bundle
    git help filter-branch
    git lf
    git lg
    git help lg
    git log --pretty=oneline --abbrev-commit --graph
    git lol
    git config --global alias.lol "log --pretty=oneline --abbrev-commit --graph"
    git lol
    vi ~/.gitconfig
    git config --list
    git config --list --global
    git config --list --local
    git config -e
    git config -e --global 
    git config --global alias.sync "\!git pull && git push"
    git alias.sync
    git config alias.sync
    git sync
    git config --unset --global alias.sync
    git sync
    git lol
    ls
    cd ..
    ls 
    ll files
    ls -l
    mkdir target
    mkdir bin
    echo "blah" > target/Monkey.class
    echo "foo" > target/Bar.class
    ll ~ > console.log
    git status
    git status -u
    git status
    vi .gitignore 
    cat .git
    cat .gitignore
    git status
    vi .gitignore 
    git add .gitignore
    git status
    git commit -m "Added a .gitignore"
    ll
    mkdir -p src/test/java
    rm -rf src
    mkdir -p src/main/resources
    cd src/main/resources
    vi resource.log 
    git status
    pwd
    vi .gitignore
    git status
    git status -u 
    cd .. 
    cd ..
    git stauts -u
    git status -u
    git add .
    cd ..
    git status -u
    git commit -m "Showed how to un-ignore stuff"
    git lg
    git show feature5
    git lg
    git checkout feature5
    git cherry-pick feature4^
    git cherry-pick feature4
    git help cherry-pick
    git lg
    git reset --hard 1fbaef7
    git lg
    git cherry-pick feature4^..feature4
    git reflog
    git reset --hard HEAD@{1}
    git cherry-pick feature4 feature4^
    git branch -d feature4
    git branch -D feature4
    history
    git rebase -i HEAD~2
    git rev-parse HEAD~2
    git tag
    git tag TAGGED_COMMIT
    git tag
    tree .git/refs
    cat .git/refs/tags/TAGGED_COMMIT
    git show TAGGED_COMMIT
    git show e67a
    git tag DOMESTIC_FURY 552d
    tree .git/refs
    git tag -a CAESAR_TITLE 1ae77a6
    tree .git/objects
    tree .git/refs
    cat .git/refs/CA
    cat .git/refs/tags/CAESAR_TITLE
    git show CAESAR_TITLE
    git log --describe 1ae77
    git log --decorate 1ae77
    tree .git/refs
    cat .git/refs/tags/CAESAR_TITLE
    git cat-file f85d23d5f058ddea9cabd56c3c145df742b7f893
    git cat-file -t f85d23
    git cat-file -s f85d23
    git cat-file -p f85d23
    git tag -s SIGNED_BY_TIM afbae
    git tag -s SIGNED_BY_TIM 1
    git tag -s SIGNED_BY_TIM 1fbae
    git config signing.key
    vi ~/.gitconfig
    git config user.signingkey
    git help tag
    git help config
    git ls-tree HEAD
    git ls-tree e18b954b98793a032d4ce4f4096003be88d9fdd0
    git cat-file -s f2e79f4285815d10843f6f7e6a228f788f22afeb
    git cat-file -p f2e79f4285815d10843f6f7e6a228f788f22afeb
    git help
    cd ..
    git help
    git log --oneline --graph --decorate --all
    git lol
    git remote add origin https://github.com/githubtrainer/poetry.git
    git remote
    git remote -v
    cat .git/config
    git push -u origin master
    cat .git/config
    git branch
    git lg
    git branch
    git checkout master
    git branch
    git branch -a
    tree .git/refs
    ls files
    git merge feature5
    git branch -d feature5
    git status
    git push 
    git help config
    git config --global push.default simple
    git push 
    git lg
    git log -1
    git config user.email "training+githubtrainer@github.com"
    git config user.name "GitHub Trainer"
    export PS1="$ "
    tr.git
    cd scratch
    ll
    cd newproject
    ll
    cd c..
    cd ..
    ls
    git clone https://github.com/githubtrainer/poetry.git
    git fetch
    cd poetry
    git fetch
    vi caesar.txt
    git commit -m "Choked pity"
    git add .
    git commit -m "Choked pity"
    git push
    git fetch
    git help config
    ll
    pwd
    git remote -v
    git branch
    git remote -v
    ll
    vi caesar.txt
    git add .
    git commit -m "Caesar rage"
    git push
    git config user.email "training+githubstudent@github.com"
    git config user.name "GitHub Student"
    git help commit
    git commit --amend --reset-author
    git log -1
    git push
    git lg
    git pull
    vi caesar.txt
    git add caesar.txt
    git commit
    git lg
    git show 51e9400
    git push
    git --version
    git config --global credential.helper cache 
    git push
    git pull && git push
    git lg
    git loglive -15
    git pull
    git status
    git help config
    git help gitcredentials
    git credential-cache
    git config --global credential.helper "cache --timeout 3600000"
    git status
    git lg
    git fetch 
    git lg
    ls
    git lg
    ls
    git lg
    git merge origin/master 
    ls
    cat bruce.txt
    cat tan.txt
    cat raven1.txt
    ls -l
    git lg
    git pull --rebase 
    vi ca
    ll
    git log --stat
    git lg
    git log --stat
    git lg
    git log --stat
    git log --author="George"
    git log --author="George" --stat
    git revert b97ea16610fd7e73d26bbac1dc90c28b4ee84bc9
    git help revert
    git show b97ea16610fd7e73d26bbac1dc90c28b4ee84bc9
    git show 455ce43
    git log --stat
    git show 4a299bd
    git show 455ce43
    git show 775c80d
    git show f512d1a
    git lg
    git log --stat
    git revert b97ea16 -m 1
    ll
    git revert b97ea16 -m 2
    ll
    cat caesar.txt
    history
    git lg
    git status
    vi caesar.txt
    git push
    git lg
    git fetch
    git lg
    git fetch
    git lg
    git pull --rebase
    git fetch
    git lg
    git fetch
    git lg
    git fetch
    git lg
    git pull --rebase
    git lg
    git config --global branch.autosetuprebase always
    git config branch.master.rebase true
    cat .git/config
    vi caesar.txt
    git add .
    git commit -m "Cry HAVOC"
    git push
    git config credential.helper
    git push
    git pull && git push
    git lg
    git config credential.helper
    git fetch
    git show 7174
    git fetch
    git lg
    git rebase -i HEAD~15
    git rebase --abort
    git lg
    git log -15
    git log -15 --oneline
    git rebase -i 6b4e4f7^
    git lg
    ls
    ls -l
    git branch
    git branch -a
    git checkout -b tlberglund 
    git branch
    vi caesar.txt
    git add .
    git commit -m "Carrion men"
    git lg
    git push -u origin tlberglund 
    git branch -a
    git fetch
    cat .git/config
    git lg
    git branch
    git checkout master
    git merge tlberglund
    git lg
    git status
    git merge origin/moltke
    vi bruce.txt
    git add bruce.txt
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git commit
    git lg
    git branch -a
    git checkout TheErrorEmporium 
    git branch -a
    ls
    vi raven.txt
    git add .
    git commit -m "Weak and weary"
    git push
    git lg
    git checkout master
    git merge TheErrorEmporium
    ll
    git log --stat
    git revert --no-commit a560647d93de4e49390e4631bdd50f4bbf70d22e
    git status
    vi caesar.txt
    git add caesar.txt
    ca caesar.txt
    cat caesar.txt
    vi caesar.txt
    git add caesar.txt
    git commit
    ll
    git lg
    git branch -a
    git merge origin/bparo
    git merge origin/ggray
    git merge origin/godSbranch
    git merge origin/ower
    git merge origin/owen
    git merge origin/peter
    vi owen.txt
    git add owen.txt
    git commit
    git branch -a
    git merge peter
    git merge origin/peter
    git merge origin/stromei
    git lg
    git pull
    git status
    vi bruce.txt
    git add bruce.txt
    git rebase --continue
    git status
    git rebase --continue
    git rebase --skip
    git status
    vi tan.txt
    git add tan.txt
    git rebase --continue
    git status
    git rebase --skip
    git status
    vi tan.txt
    git status
    git add tan.txt
    git status
    git rebase --continue
    git status
    vi .ssh/id_rsa
    git add .
    git status
    git rebase --continue
    git status
    vi caesar.txt
    git add .
    git rebase --continue
    git status
    vi owen.txt
    git add .
    git rebase --continue
    git status
    vi tan.txt
    git add .
    git rebase --continue
    git status
    git rebase --skip
    git status
    vi caesar.txt
    git add caesar.txt
    git status
    git rebase --continue
    git status
    git lg
    git push
    cd ..
    ls
    git clone https://github.com/githubstudent/poetry.git poetry-1
    cd poetry-1
    git lg
    pwd
    git remote -v
    git config user.email "training+githubstudent@github.com"
    git config user.name "GitHub Stoodent"
    vi raven.txt
    git add .
    git commit -m "Some visitor"
    git push
    ls
    git pull
    ll
    cd presentations
    ll
    ll _posts
    subl .
    curl https://api.github.com/authorizations
    curl https://api.github.com/authorizations/1
    man curl
    curl -X POST https://api.github.com/authorizations
    curl https://api.github.com/repos/tlberglund
    curl -i https://api.github.com/users/octocat/orgs
    man curl
    curl -u githubtraining https://api.github.com
    curl -u githubtrainer https://api.github.com
    curl -u githubtrainer -X POST https://api.github.com/authorizations
    curl -u githubtrainer -X GET https://api.github.com/authorizations
    curl -u githubtrainer { -X GET https://api.github.com/authorizations
    curl -u githubtrainer -d '{"scopes":["public_repo"]}' -X GET https://api.github.com/authorizations
    curl -u githubtrainer -d '{"scopes":["public_repo"]}' -X POST https://api.github.com/authorizations
    curl -H "Authorization: token 95e416d90a66869337c7e27155db15c18b9c314f" https://api.github.com/users/tlberglund
    curl -i https://api.github.com/users/tlberglund
    curl -i -H "Authorization: token 95e416d90a66869337c7e27155db15c18b9c314f" https://api.github.com/users/tlberglund
    jp
    jps
    jq
    man jq
    curl https://api.github.com/gitignore/templates/Java
    curl https://api.github.com/gitignore/templates/Java | jq "source"
    curl https://api.github.com/gitignore/templates/Java | jq ".source"
    curl https://api.github.com/gitignore/templates/Java | jq ".source | tostring"
    curl https://api.github.com/gitignore/templates/Java | jq "{.source}"
    curl -i -H "Authorization: token 95e416d90a66869337c7e27155db15c18b9c314f" https://api.github.com/user/repos\?type\=private
    curl -i -H "Authorization: token 95e416d90a66869337c7e27155db15c18b9c314f" https://api.github.com/user/repos\?type\=public
    git branch
    git pull
    git lg
    git fetch https://github.com/lfort/poetry.git master
    ls -l .git
    git merge FETCH_HEAD
    vi raven.txt
    git status
    git add raven.txt
    git commit
    history
    git push
    ls .git
    ls -1
    ls -1 .git
    cat .git/TAG_EDITMSG
    git pull
    git ls-remote origin 
    git ls-remote origin
    git fetch origin refs/pulls/9/head 
    git fetch origin refs/pull/9/head 
    git diff FETCH_HEAD
    git merge FETCH_HEAD
    git status
    vi raven.txt
    git add raven.txt
    git commit
    git push
    git loglive -10
    git pull
    ll
    vi raven.txt
    git status
    git stash 
    git status
    cat raven.txt
    git lg
    vi RE
    vi README
    git add .
    git commit -m "Added a README"
    git stash list
    git help sstash
    git help stash
    git stash pop 
    git status
    git add .
    git commit -m "Pallid bust of Pallas"
    git loglive -12
    git remote -v
    git pull
    git remote -v
    git remote add trainer https://github.com/githubtrainer/poetry.git
    git fetch trainer
    git remote -v
    git branch -a 
    git branch
    git merge trainer/master
    git push
    git remote -v
    git lg
    git branch -a
    git checkout stromei
    git checkout ggray
    git branch --track ggray trainer/ggray
    git checkoug ggray
    git checkout ggray
    git checkout master
    git branch -a
    git push origin :bparo 
    git push --delete origin owen
    git branch -a
    history
    cat .git/config
    git branch -a
    git checkout peter 
    git branch
    git branch -a
    git checkout peter
    git checkout monkey
    git help
    git help checkout
    git checkout -b peter origin/peter 
    git help checkout
    cat .git/config
    git checkout origin/ggrayt
    git checkout origin/ggray
    git lg
    cat .git/HEAD
    git checkout af77f3
    cat .git/HEAD
    git branch tim_work
    cat .git/H
    cat .git/HEAD
    git checkout tim_work
    cat .git/HEAD
    git checkout master
    git checkout tim_work
    ls
    git checkout master
    ls
    touch README.md
    echo "blah" > README.md
    git stauts
    git status
    git clean -f
    mkdir monkey
    echo "The monkey is angry" > monkey/status.txt
    git status -u
    git clean -fd
    git lg
    git show HEAD^:raven.txt
    history
    cat raven.txt
    git checkout HEAD^ -- raven.txt
    git status
    cat raven.txt
    git show HEAD
    git status
    git lg
    history
    history | tail -n 100 | less
    git help init
    curl -i https://api.github.com/users/tlberglund
    export PS1="$ "
    curl -i https://api.github.com/users/tlberglund
    curl -i https://api.github.com/user/repos
    curl -i https://api.github.com/user/tlberglund/repos
    curl -u tlberglund -i https://api.github.com/user/tlberglund/repos
    curl -i https://api.github.com/user/repos
    curl -u tlberglund -i https://api.github.com/user/repos
    curl -u githubtrainer -i https://api.github.com/user/repos
    curl -i -u githubtrainer -X POST -d '{"scopes":["repo"]}' https://api.github.com/authorizations
    curl -i -H "Authorization: token bb99410632b6278ca10b1e565e9e9ea3b5345fb0"  https://api.github.com/user/repos
    history | grep curl
    curl -i -H "Authorization: token bb99410632b6278ca10b1e565e9e9ea3b5345fb0"  https://api.github.com/user/repos | jq "[].url"
    curl -i -H "Authorization: token bb99410632b6278ca10b1e565e9e9ea3b5345fb0"  https://api.github.com/user/repos | jq ".[].url"
    curl -i -H "Authorization: token bb99410632b6278ca10b1e565e9e9ea3b5345fb0"  https://api.github.com/user/repos | jq ".url"
    curl https://www.google.com
    curl -i https://www.google.com
    man curl
    curl --proxy-user : --proxy-ntlm --proxy internetproxy:3128 http://google.com
    curl -i -H "Authorization: token bb99410632b6278ca10b1e565e9e9ea3b5345fb0"  https://api.github.com/user/repos
    git lg
    cd .git
    ls -l
    tree refs
    ll
    tree objects | less
    cd hooks
    ll
    pwd
    mv commit-msg.sample commit-msg
    vi commit-msg
    cd ..
    ls
    mv .git/hooks .
    ls
    ln -s hooks .git/hooks/
    ln -s hooks/ .git/hooks/
    ln -s .git/hooks hooks
    ll .git
    ll
    ll hooks
    rm hooks/hooks
    ln -s ./hooks/ .git/hooks/
    mv hooks .git/
    git help init
    ll /usr/share/git-core/templates
    vi .git/hooks/commit-msg
    pwd
    cd ..
    ll
    cd ..
    ll
    cd hellogitworld
    git remote -v
    git remote set-url origin https://github.com/githubtrainer/hellogitworld.git
    git remote -v
    git pull
    git remote show origin
    git branch
    git help bisect
    ll
    mvn test
    git lg
    git bisect start
    git bisect good HEAD~5
    git bisect HEAD
    git bisect bad HEAD
    git bisect run mvn test
    git bisect log
    git lg
    git help bisect
    git pwd
    pwd
    cd ../scratch/newproject
    git blame caesar.txt
    git blame raven.txt
    git branch
    git checkout master
    git blame caesar.txt
    git blame raven.txt
    git help checkout
    git help revert
    git checkout 71662b50 --patch -- raven.txt
    git cat-file 71662b50:raven.txt > raven2.txt
    cat 
    git show 71662b50:raven.txt
    ll
    ln -s files monkey
    ll
    git status 
    rm raven2.txt
    git add .
    git status
    git commit -m "Added a symlink"
    git ls-tree HEAD
    git push
    git remote -v
    git branch
    git pull trainer master
    ll
    chmod 400 peter.txt
    git status
    vi peter.txt
    git status
    git add .
    ll
    git add .
    git commit -m "Modified Peter"
    git ls-tree HEAD
    vi monkey.txt
    chmod 400 monkey.txt
    ll
    git add monkey.txt
    git commit -m "A hard-to-change angry monkey"
    git ls-tree HEAD
    git config --list
    git config --list --local
    git help config
    pwd
    ll
    ll .gitignore
    cat .git
    cat .gitignore
    ll | grep target
    git clean -fd
    ll | grep target
    git clean -fdx
    ll
    chmod 000 .git
    git status
    gitmod 400 .git
    chmod 400 .git
    git status
    ll -a
    chmod 500 .git
    git status
    vi README
    git add .
    chmod 777 .git
    git add .
    git gui
    gitx
    gitk
    cd ..
    git branch
    git diff --stat
    git diff --stat reveal-slides..HEAD
    git lg
    git branch -a
    git diff --stat peter..master
    git diff --stat peter..master | cut -d ''
    git diff --stat peter..master | cut -d ' ' -f 2
    git diff --stat peter..master | cut -d ' ' -f 2 | sort
    git log --name-only
    git log --name-only --format:""
    git log --name-only --pretty:format=""
    git log --name-only --pretty="format:"
    git log --name-only --pretty="format:" | sort -u
    git log --name-only --pretty="format:" peter..master | sort -u 
    git gitattributes
    git help gitattributes
    vi .gitattributes
    vi anger.xml
    git add .
    git statut
    git status
    git commit
    git ls-tree HEAD | grep xml
    git ls-tree HEAD 
    git lg
    it lg
    git help gitrevisions
    pwd
    git gc
    git remote -v
    git checkout --orphan -b gh-pages
    git branch
    git branch --orphan gh-pages
    git help branch
    git checkout --orphan gh-pages
    git branch
    git log
    git remote -v
    ll
    git status
    git clean -fdx
    git status
    git reset HEAD *
    git reset *
    git status
    rm .git/index
    git status
    git clean -fdx
