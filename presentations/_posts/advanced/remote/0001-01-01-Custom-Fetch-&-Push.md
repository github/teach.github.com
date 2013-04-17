---
chapter: Customizing Remotes
layout: slide
tags: ['advanced/remote']
---
 
	# Name Spacing Branches for Fetch
	git config --add remote.<remote-name>.fetch ↴
		'+refs/heads/<name-space>/*: ↴
			refs/remotes/<remote-name>/<name-space>/*

	# Name Spacing Branches for Push
	git config --add remote.origin.push ↴
		'+refs/heads/<branch-name>: ↴
			refs/heads/<name-space>/<branch-name>