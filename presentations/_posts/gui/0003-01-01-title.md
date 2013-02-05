---
chapter: GUIs
layout: slide
title: 'Diff & Merge'
tags: ['gui']
---

	# Diff Tool
	git config diff.tool "myaraxis"
	git config difftool.myaraxis.cmd araxisgitdiff ONE $LOCAL THREE FOUR $REMOTE
	git config difftool.prompt false
	

	# Merge Tool
	git config merge.tool "araxis"
	git config mergetool.prompt false
	