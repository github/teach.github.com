---
layout: bare
title: Git Push Contention
description: TODO
path: technology/_posts/2001-01-01-lesson-git-push-contention.md
---

When attempting to push commits to an upstream Git server such as GitHub, the push only succeeds if your local repository possesses all the upstream commits in the same branch. If not, it fails, reminding you with a hint that you can _merge in the remote changes_ and then attempt to push, with a higher likelihood of success.

The command line output of such a failure in Git 1.7.12 appears as follows. 

	git push

	To git@github.com:someusername/somereponame.git
	 ! [rejected]        master -> master (non-fast-forward)
	 error: failed to push some refs to 'git@github.com:someusername/somereponame.git'
	 hint: Updates were rejected because the tip of your current branch is behind
	 hint: its remote counterpart. Merge the remote changes (e.g. 'git pull')
	 hint: before pushing again.
	 hint: See the 'Note about fast-forwards' in 'git push --help' for details.
