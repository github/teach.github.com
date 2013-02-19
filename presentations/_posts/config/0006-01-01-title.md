---
chapter: Config
layout: slide
title: 'Useful Settings'
tags: ['config']
categories: ['slidecontent']
---

	#Colorize console output for legibility
	git config --global color.ui auto

	#Force files to be LF in the repo, even on Mac/Linux
	git config --global core.autocrlf input

	#Force Windows to convert to CRLF
	# on checkout and to LF on `add`
	git config --global core.autocrlf true


{% include hydeslides/notes-open.html %}
Warn, but allow line ending conversion to proceed (the default)
git config --global core.safecrlf warn

Do not allow line ending conversion to proceed
git config --global core.safecrlf true

http://help.github.com/dealing-with-lineending
{% include hydeslides/notes-close.html %}